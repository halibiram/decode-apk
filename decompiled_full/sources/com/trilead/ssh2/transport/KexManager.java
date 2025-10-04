package com.trilead.ssh2.transport;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.ConnectionInfo;
import com.trilead.ssh2.DHGexParameters;
import com.trilead.ssh2.ServerHostKeyVerifier;
import com.trilead.ssh2.crypto.CryptoWishList;
import com.trilead.ssh2.crypto.KeyMaterial;
import com.trilead.ssh2.crypto.cipher.BlockCipherFactory;
import com.trilead.ssh2.crypto.dh.DhExchange;
import com.trilead.ssh2.crypto.dh.DhGroupExchange;
import com.trilead.ssh2.crypto.digest.MessageMac;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.PacketKexDHInit;
import com.trilead.ssh2.packets.PacketKexDHReply;
import com.trilead.ssh2.packets.PacketKexDhGexGroup;
import com.trilead.ssh2.packets.PacketKexDhGexInit;
import com.trilead.ssh2.packets.PacketKexDhGexReply;
import com.trilead.ssh2.packets.PacketKexDhGexRequest;
import com.trilead.ssh2.packets.PacketKexDhGexRequestOld;
import com.trilead.ssh2.packets.PacketKexInit;
import com.trilead.ssh2.packets.PacketNewKeys;
import com.trilead.ssh2.signature.KeyAlgorithm;
import com.trilead.ssh2.signature.KeyAlgorithmManager;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class KexManager implements MessageHandler {
    ClientServerHello csh;
    final String hostname;
    KeyMaterial km;
    KexState kxs;
    CryptoWishList nextKEXcryptoWishList;
    final int port;
    final SecureRandom rnd;
    byte[] sessionId;
    final TransportManager tm;
    ServerHostKeyVerifier verifier;
    private static final Logger log = Logger.getLogger(KexManager.class);
    private static final List<String> DEFAULT_KEY_ALGORITHMS = buildDefaultKeyAlgorithms();
    int kexCount = 0;
    final Object accessLock = new Object();
    ConnectionInfo lastConnInfo = null;
    boolean connectionClosed = false;
    boolean ignore_next_kex_packet = false;
    DHGexParameters nextKEXdhgexParameters = new DHGexParameters();

    public KexManager(TransportManager transportManager, ClientServerHello clientServerHello, CryptoWishList cryptoWishList, String str, int i, ServerHostKeyVerifier serverHostKeyVerifier, SecureRandom secureRandom) {
        this.tm = transportManager;
        this.csh = clientServerHello;
        this.nextKEXcryptoWishList = cryptoWishList;
        this.hostname = str;
        this.port = i;
        this.verifier = serverHostKeyVerifier;
        this.rnd = secureRandom;
    }

    private static List<String> buildDefaultKeyAlgorithms() {
        ArrayList arrayList = new ArrayList();
        Iterator<KeyAlgorithm<PublicKey, PrivateKey>> it = KeyAlgorithmManager.getSupportedAlgorithms().iterator();
        while (it.hasNext()) {
            arrayList.add(arrayList.size(), it.next().getKeyFormat());
        }
        return arrayList;
    }

    public static void checkKexAlgorithmList(String[] strArr) {
        for (String str : strArr) {
            if (!new ObfuscatedString(new long[]{2881891824737489806L, 2732964866900722229L, 6922415224141315042L, -1779448824175652538L, -682286375008883391L, -4121852501248800098L}).toString().equals(str) && !new ObfuscatedString(new long[]{-3740149635580848211L, -7888643125112689253L, 7422286713515729278L, 7483489765261839742L, 793753900663678928L}).toString().equals(str) && !new ObfuscatedString(new long[]{-7174421803829676203L, 4370831493921209921L, -8637167276201192423L, -188009208059716337L, -4864416617751411484L}).toString().equals(str) && !new ObfuscatedString(new long[]{5879762571513224177L, -807791164992255707L, 566521199818546098L, 593974085797880560L, -4463818872849666660L, 1316419705248365313L}).toString().equals(str)) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-5252796250056238052L, 719514099858156899L, -248165106307931641L, 9049819840993565363L}).toString());
                sb.append(str);
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8528617435879833103L, 8965243959294621325L}), sb));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
    
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void checkServerHostkeyAlgorithmsList(String[] strArr) {
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            String str = strArr[i];
            Iterator<KeyAlgorithm<PublicKey, PrivateKey>> it = KeyAlgorithmManager.getSupportedAlgorithms().iterator();
            while (it.hasNext()) {
                if (it.next().getKeyFormat().equals(str)) {
                    break;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{5805750461683323306L, -1529143942161039134L, 1926691080038570799L, 3336669984376743642L, 9007441763288621287L, 1343490770441281414L}).toString());
            sb.append(str);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8700803208460430070L, -823398775287203651L}), sb));
        }
    }

    private boolean compareFirstOfNameList(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null) {
            if (strArr.length == 0 && strArr2.length == 0) {
                return true;
            }
            if (strArr.length == 0 || strArr2.length == 0) {
                return false;
            }
            return strArr[0].equals(strArr2[0]);
        }
        throw new IllegalArgumentException();
    }

    private boolean establishKeyMaterial() {
        try {
            int keyLength = MessageMac.getKeyLength(this.kxs.np.mac_algo_client_to_server);
            int keySize = BlockCipherFactory.getKeySize(this.kxs.np.enc_algo_client_to_server);
            int blockSize = BlockCipherFactory.getBlockSize(this.kxs.np.enc_algo_client_to_server);
            int keyLength2 = MessageMac.getKeyLength(this.kxs.np.mac_algo_server_to_client);
            int keySize2 = BlockCipherFactory.getKeySize(this.kxs.np.enc_algo_server_to_client);
            int blockSize2 = BlockCipherFactory.getBlockSize(this.kxs.np.enc_algo_server_to_client);
            String hashAlgorithm = this.kxs.getHashAlgorithm();
            KexState kexState = this.kxs;
            this.km = KeyMaterial.create(hashAlgorithm, kexState.H, kexState.K, this.sessionId, keySize, blockSize, keyLength, keySize2, blockSize2, keyLength2);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    private void finishKex() {
        if (this.sessionId == null) {
            this.sessionId = this.kxs.H;
        }
        establishKeyMaterial();
        this.tm.sendKexMessage(new PacketNewKeys().getPayload());
        try {
            String str = this.kxs.np.enc_algo_client_to_server;
            KeyMaterial keyMaterial = this.km;
            this.tm.changeSendCipher(BlockCipherFactory.createCipher(str, true, keyMaterial.enc_key_client_to_server, keyMaterial.initial_iv_client_to_server), new MessageMac(this.kxs.np.mac_algo_client_to_server, this.km.integrity_key_client_to_server));
            this.tm.kexFinished();
        } catch (IllegalArgumentException unused) {
            throw new IOException(new ObfuscatedString(new long[]{4874680091497316299L, -3241790763808458518L, 9173929976823344170L, -4699606396600355369L, 4833971709538083671L}).toString());
        }
    }

    public static String[] getDefaultKexAlgorithmList() {
        return new String[]{new ObfuscatedString(new long[]{6170877802365045149L, 1317754402690934175L, 1891825895558707904L, 7922936608585692325L, -4319406379037044878L, -2335801080760056527L}).toString(), new ObfuscatedString(new long[]{2648759426342146890L, 8395991777300504570L, -3159153514421482612L, 2540500643351759220L, 6827685592149864667L, 4299353501769601606L}).toString(), new ObfuscatedString(new long[]{-253188398184588095L, -2880302928014643132L, 1082958692442076529L, -2859856014259405491L, 45886955955007209L}).toString(), new ObfuscatedString(new long[]{-5947512496447844082L, -4638648649211400209L, -5272299611796557604L, -5987851624774815495L, -2264596046032691445L}).toString()};
    }

    public static String[] getDefaultServerHostkeyAlgorithmList() {
        return (String[]) DEFAULT_KEY_ALGORITHMS.toArray(new String[0]);
    }

    private String getFirstMatch(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null) {
            if (strArr.length == 0) {
                return null;
            }
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (str.equals(str2)) {
                        return str;
                    }
                }
            }
            throw new NegotiateException();
        }
        throw new IllegalArgumentException();
    }

    private boolean isGuessOK(KexParameters kexParameters, KexParameters kexParameters2) {
        if (kexParameters != null && kexParameters2 != null) {
            if (!compareFirstOfNameList(kexParameters.kex_algorithms, kexParameters2.kex_algorithms)) {
                return false;
            }
            return compareFirstOfNameList(kexParameters.server_host_key_algorithms, kexParameters2.server_host_key_algorithms);
        }
        throw new IllegalArgumentException();
    }

    private NegotiatedParameters mergeKexParameters(KexParameters kexParameters, KexParameters kexParameters2) {
        NegotiatedParameters negotiatedParameters = new NegotiatedParameters();
        try {
            negotiatedParameters.kex_algo = getFirstMatch(kexParameters.kex_algorithms, kexParameters2.kex_algorithms);
            Logger logger = log;
            logger.log(30, new ObfuscatedString(new long[]{-5016075482783980099L, -3714423637939028728L, 7581055825677262661L}).toString() + negotiatedParameters.kex_algo);
            negotiatedParameters.server_host_key_algo = getFirstMatch(kexParameters.server_host_key_algorithms, kexParameters2.server_host_key_algorithms);
            logger.log(30, new ObfuscatedString(new long[]{-1290617062267028381L, 5198187480353063799L, -4251864028900011689L, -1555483002202170604L}).toString() + negotiatedParameters.server_host_key_algo);
            negotiatedParameters.enc_algo_client_to_server = getFirstMatch(kexParameters.encryption_algorithms_client_to_server, kexParameters2.encryption_algorithms_client_to_server);
            negotiatedParameters.enc_algo_server_to_client = getFirstMatch(kexParameters.encryption_algorithms_server_to_client, kexParameters2.encryption_algorithms_server_to_client);
            logger.log(30, new ObfuscatedString(new long[]{716808425251821636L, -6542712670110708684L, -9126020139293129239L, 8577715050740854034L, -8327012828209560079L}).toString() + negotiatedParameters.enc_algo_client_to_server);
            logger.log(30, new ObfuscatedString(new long[]{819315541584847511L, 7981643371652180734L, 1050835481774237530L, 134419438690949439L, -7339527303780376588L}).toString() + negotiatedParameters.enc_algo_server_to_client);
            negotiatedParameters.mac_algo_client_to_server = getFirstMatch(kexParameters.mac_algorithms_client_to_server, kexParameters2.mac_algorithms_client_to_server);
            negotiatedParameters.mac_algo_server_to_client = getFirstMatch(kexParameters.mac_algorithms_server_to_client, kexParameters2.mac_algorithms_server_to_client);
            logger.log(30, new ObfuscatedString(new long[]{3127264717100863169L, 852735306720978452L, -4173230482705270932L, 1139301382390802419L, -3823514725051230288L}).toString() + negotiatedParameters.mac_algo_client_to_server);
            logger.log(30, new ObfuscatedString(new long[]{3690067999791904119L, 5186657553498731300L, 6830910629009168430L, 9143565956578408779L, -8308912827767550627L}).toString() + negotiatedParameters.mac_algo_server_to_client);
            negotiatedParameters.comp_algo_client_to_server = getFirstMatch(kexParameters.compression_algorithms_client_to_server, kexParameters2.compression_algorithms_client_to_server);
            negotiatedParameters.comp_algo_server_to_client = getFirstMatch(kexParameters.compression_algorithms_server_to_client, kexParameters2.compression_algorithms_server_to_client);
            logger.log(30, new ObfuscatedString(new long[]{-5019947424850014198L, -4887236354314791132L, 179564724521663150L, -3894289648744380945L, 3000105029858836765L}).toString() + negotiatedParameters.comp_algo_client_to_server);
            logger.log(30, new ObfuscatedString(new long[]{2450154078184077611L, 6077106581339935314L, 1291684038558603640L, 8586371313028398622L, -2333019390640020263L}).toString() + negotiatedParameters.comp_algo_server_to_client);
            try {
                negotiatedParameters.lang_client_to_server = getFirstMatch(kexParameters.languages_client_to_server, kexParameters2.languages_client_to_server);
            } catch (NegotiateException unused) {
                negotiatedParameters.lang_client_to_server = null;
            }
            try {
                negotiatedParameters.lang_server_to_client = getFirstMatch(kexParameters.languages_server_to_client, kexParameters2.languages_server_to_client);
            } catch (NegotiateException unused2) {
                negotiatedParameters.lang_server_to_client = null;
            }
            if (isGuessOK(kexParameters, kexParameters2)) {
                negotiatedParameters.guessOK = true;
            }
            return negotiatedParameters;
        } catch (NegotiateException unused3) {
            return null;
        }
    }

    private boolean verifySignature(byte[] bArr, byte[] bArr2) {
        for (KeyAlgorithm<PublicKey, PrivateKey> keyAlgorithm : KeyAlgorithmManager.getSupportedAlgorithms()) {
            if (keyAlgorithm.getKeyFormat().equals(this.kxs.np.server_host_key_algo)) {
                PublicKey decodePublicKey = keyAlgorithm.decodePublicKey(bArr2);
                return keyAlgorithm.verifySignature(this.kxs.H, keyAlgorithm.decodeSignature(bArr), decodePublicKey);
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{1845359681872579148L, -6821578850450856743L, 5915243168215724749L, 3910156492125908039L, -4447351338368670200L, 8942601174324116242L}).toString());
        sb.append(this.kxs.np.server_host_key_algo);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4273816783767736432L, -6203543173739325600L}), sb));
    }

    public ConnectionInfo getOrWaitForConnectionInfo(int i) {
        ConnectionInfo connectionInfo;
        synchronized (this.accessLock) {
            while (true) {
                try {
                    connectionInfo = this.lastConnInfo;
                    if (connectionInfo == null || connectionInfo.keyExchangeCounter < i) {
                        if (!this.connectionClosed) {
                            try {
                                this.accessLock.wait();
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        } else {
                            throw new IOException(new ObfuscatedString(new long[]{5048071606300436046L, -6268570659592975893L, 2134336115383304047L, 10703981068328443L, -2056523280582651679L, 3230019303796034439L, -7122334570941965714L, -7309605493434975784L}).toString(), this.tm.getReasonClosedCause());
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return connectionInfo;
    }

    @Override // com.trilead.ssh2.transport.MessageHandler
    public void handleEndMessage(Throwable th) {
        synchronized (this.accessLock) {
            this.connectionClosed = true;
            this.accessLock.notifyAll();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
    
        r4 = new com.trilead.ssh2.transport.KexState();
        r20.kxs = r4;
        r4.dhgexParameters = r20.nextKEXdhgexParameters;
        r4 = new com.trilead.ssh2.packets.PacketKexInit(r20.nextKEXcryptoWishList, r20.rnd);
        r20.kxs.localKEX = r4;
        r20.tm.sendKexMessage(r4.getPayload());
     */
    @Override // com.trilead.ssh2.transport.MessageHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void handleMessage(byte[] bArr, int i) {
        KexState kexState;
        try {
            kexState = this.kxs;
            if (kexState == null && bArr[0] != 20) {
                throw new IOException(new ObfuscatedString(new long[]{2803195113070999921L, 574217709500633108L, -5770846670534722499L, 6993752461125158716L, 6135202965016679867L}).toString() + ((int) bArr[0]) + new ObfuscatedString(new long[]{639251554098111492L, 8221551893867009904L}).toString());
            }
        } catch (Throwable th) {
            throw th;
        }
        if (this.ignore_next_kex_packet) {
            this.ignore_next_kex_packet = false;
            return;
        }
        byte b = bArr[0];
        if (b == 20) {
            if (kexState != null && kexState.state != 0) {
                throw new IOException(new ObfuscatedString(new long[]{3326737764116383244L, -2677350584965835209L, -1609499763245532161L, -5617329112522240192L, -1978879681324480403L, -1399385522779050814L, -4888313941710132620L, 1098268394557907976L, 5124785681700666970L}).toString());
            }
            PacketKexInit packetKexInit = new PacketKexInit(bArr, 0, i);
            KexState kexState2 = this.kxs;
            kexState2.remoteKEX = packetKexInit;
            kexState2.np = mergeKexParameters(kexState2.localKEX.getKexParameters(), this.kxs.remoteKEX.getKexParameters());
            KexState kexState3 = this.kxs;
            if (kexState3.np != null) {
                if (kexState3.remoteKEX.isFirst_kex_packet_follows() && !this.kxs.np.guessOK) {
                    this.ignore_next_kex_packet = true;
                }
                if (!this.kxs.np.kex_algo.equals(new ObfuscatedString(new long[]{4668390854157857479L, -819884320202073401L, -6015881972895696942L, -6460392034010497187L, -5261746111343668581L, 4401746299729079367L}).toString()) && !this.kxs.np.kex_algo.equals(new ObfuscatedString(new long[]{-8391837960647401789L, -3453559123751146685L, 3115221459045269519L, -691005100201412372L, -2360422289745084062L, -182279149286298964L}).toString())) {
                    if (!this.kxs.np.kex_algo.equals(new ObfuscatedString(new long[]{-7141588713885715811L, 3821679149134186045L, 521104137713572790L, 6159232774300617776L, -7050800009232499341L}).toString()) && !this.kxs.np.kex_algo.equals(new ObfuscatedString(new long[]{460743488399931492L, -9032433335839031740L, 4798320886786004487L, 8541043355502515674L, -720926328267535243L}).toString())) {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{8496108037007714229L, 7732238677012275331L, 1146755795334891534L, -8252869764613445701L}).toString());
                    }
                    this.kxs.dhx = new DhExchange(new ObfuscatedString(new long[]{-3541401731740412024L, 7190648780871118250L}).toString());
                    if (this.kxs.np.kex_algo.equals(new ObfuscatedString(new long[]{8862865339637899045L, -6399340379687631507L, -737489662436014851L, 918954786123876539L, 7016764551499764358L}).toString())) {
                        this.kxs.dhx.init(1, this.rnd);
                    } else {
                        this.kxs.dhx.init(14, this.rnd);
                    }
                    this.tm.sendKexMessage(new PacketKexDHInit(this.kxs.dhx.getE()).getPayload());
                    KexState kexState4 = this.kxs;
                    kexState4.state = 1;
                    kexState4.setHashAlgorithm(kexState4.dhx.getHashAlgorithm());
                    return;
                }
                if (this.kxs.dhgexParameters.getMin_group_len() == 0) {
                    this.tm.sendKexMessage(new PacketKexDhGexRequestOld(this.kxs.dhgexParameters).getPayload());
                } else {
                    this.tm.sendKexMessage(new PacketKexDhGexRequest(this.kxs.dhgexParameters).getPayload());
                }
                KexState kexState5 = this.kxs;
                kexState5.state = 1;
                if (kexState5.np.kex_algo.endsWith(new ObfuscatedString(new long[]{-1201353599064869578L, -5199386388937291289L}).toString())) {
                    this.kxs.setHashAlgorithm(new ObfuscatedString(new long[]{880285642293751108L, -8070035958954262584L}).toString());
                } else {
                    this.kxs.setHashAlgorithm(new ObfuscatedString(new long[]{-6894613166571369002L, 6661696281886829662L}).toString());
                }
                return;
            }
            throw new IOException(new ObfuscatedString(new long[]{9068088275152950517L, 2764499975970456222L, 1617892991408381158L, -8850253231872616905L, -926414076780948541L, -3841159716216828570L, -4794432501377075966L}).toString());
        }
        if (b == 21) {
            KeyMaterial keyMaterial = this.km;
            if (keyMaterial != null) {
                try {
                    this.tm.changeRecvCipher(BlockCipherFactory.createCipher(kexState.np.enc_algo_server_to_client, false, keyMaterial.enc_key_server_to_client, keyMaterial.initial_iv_server_to_client), new MessageMac(this.kxs.np.mac_algo_server_to_client, this.km.integrity_key_server_to_client));
                    ConnectionInfo connectionInfo = new ConnectionInfo();
                    int i2 = this.kexCount + 1;
                    this.kexCount = i2;
                    KexState kexState6 = this.kxs;
                    NegotiatedParameters negotiatedParameters = kexState6.np;
                    connectionInfo.keyExchangeAlgorithm = negotiatedParameters.kex_algo;
                    connectionInfo.keyExchangeCounter = i2;
                    connectionInfo.clientToServerCryptoAlgorithm = negotiatedParameters.enc_algo_client_to_server;
                    connectionInfo.serverToClientCryptoAlgorithm = negotiatedParameters.enc_algo_server_to_client;
                    connectionInfo.clientToServerMACAlgorithm = negotiatedParameters.mac_algo_client_to_server;
                    connectionInfo.serverToClientMACAlgorithm = negotiatedParameters.mac_algo_server_to_client;
                    connectionInfo.serverHostKeyAlgorithm = negotiatedParameters.server_host_key_algo;
                    connectionInfo.serverHostKey = kexState6.hostkey;
                    synchronized (this.accessLock) {
                        this.lastConnInfo = connectionInfo;
                        this.accessLock.notifyAll();
                    }
                    this.kxs = null;
                    return;
                } catch (IllegalArgumentException unused) {
                    throw new IOException(new ObfuscatedString(new long[]{-8456201387019433763L, -5438518613932284222L, -5847024453516698217L, -6976048300478949120L, -28721434483593334L}).toString());
                }
            }
            throw new IOException(new ObfuscatedString(new long[]{4471481719110734080L, -5069590892484622812L, 7596964311952637353L, -4590087280530859181L, 734474688374833561L, -6145113121616820705L, 229299844999702301L, -3284840379473378662L, 2912411549585287524L}).toString());
        }
        if (kexState != null && kexState.state != 0) {
            if (!kexState.np.kex_algo.equals(new ObfuscatedString(new long[]{3579647625013508269L, -6526330952548012180L, -7606615294545766579L, 5697097234283742894L, 2412841353791887956L, 291496883706852007L}).toString()) && !this.kxs.np.kex_algo.equals(new ObfuscatedString(new long[]{1684566402087455537L, 5224678418068695207L, 1465056275726537765L, -7592427071813445965L, 8835957262078388480L, -273184320111187815L}).toString())) {
                if ((this.kxs.np.kex_algo.equals(new ObfuscatedString(new long[]{5015151489854559180L, 2930615603470653405L, -6042066131497748431L, -5178292984512737372L, -1038588339154048986L}).toString()) || this.kxs.np.kex_algo.equals(new ObfuscatedString(new long[]{-7452473500440205597L, 2882849483889665690L, 1912425753153191681L, 2206285851796203276L, -8708060289578902332L}).toString())) && this.kxs.state == 1) {
                    PacketKexDHReply packetKexDHReply = new PacketKexDHReply(bArr, 0, i);
                    this.kxs.hostkey = packetKexDHReply.getHostKey();
                    ServerHostKeyVerifier serverHostKeyVerifier = this.verifier;
                    if (serverHostKeyVerifier != null) {
                        try {
                            String str = this.hostname;
                            int i3 = this.port;
                            KexState kexState7 = this.kxs;
                            if (!serverHostKeyVerifier.verifyServerHostKey(str, i3, kexState7.np.server_host_key_algo, kexState7.hostkey)) {
                                throw new IOException(new ObfuscatedString(new long[]{360209128663923095L, 7108380929680989114L, -7237991471337249596L, 2780449354734156337L, 6194580176220833497L, 6261702801522286132L, -3150640516962050711L, 1744260145571984736L, -78305094426494992L}).toString());
                            }
                        } catch (Exception e) {
                            throw new IOException(new ObfuscatedString(new long[]{5332401269300529467L, -5333827921257635807L, 7768540598866768124L, -8990720147602560415L, 3091243981821882069L, 4469977221888077316L, -6956405092717465750L, -7874421490379682427L, -3815388661375698462L}).toString(), e);
                        }
                    }
                    this.kxs.dhx.setF(packetKexDHReply.getF());
                    try {
                        KexState kexState8 = this.kxs;
                        kexState8.H = kexState8.dhx.calculateH(this.csh.getClientString(), this.csh.getServerString(), this.kxs.localKEX.getPayload(), this.kxs.remoteKEX.getPayload(), packetKexDHReply.getHostKey());
                        if (verifySignature(packetKexDHReply.getSignature(), this.kxs.hostkey)) {
                            KexState kexState9 = this.kxs;
                            kexState9.K = kexState9.dhx.getK();
                            finishKex();
                            this.kxs.state = -1;
                            return;
                        }
                        throw new IOException(new ObfuscatedString(new long[]{4781354948191688190L, -8225497251157599014L, -3689254078678803426L, 5424568812266657452L, -1524559496937668413L, 5731107861409849022L, 5084140120405595078L}).toString());
                    } catch (IllegalArgumentException e2) {
                        throw new IOException(new ObfuscatedString(new long[]{3552527823971041779L, 8592590677435500549L, -8487454521027879223L}).toString(), e2);
                    }
                }
                throw new IllegalStateException(new ObfuscatedString(new long[]{-2680308767642887090L, -933290683105198181L, -3331401097829973249L, -7973731861269577537L}).toString() + this.kxs.np.kex_algo + new ObfuscatedString(new long[]{473910375279203448L, -1784033011640523791L}).toString());
            }
            int i4 = this.kxs.state;
            if (i4 == 1) {
                PacketKexDhGexGroup packetKexDhGexGroup = new PacketKexDhGexGroup(bArr, 0, i);
                KexState kexState10 = this.kxs;
                kexState10.dhgx = new DhGroupExchange(kexState10.getHashAlgorithm(), packetKexDhGexGroup.getP(), packetKexDhGexGroup.getG());
                this.kxs.dhgx.init(this.rnd);
                this.tm.sendKexMessage(new PacketKexDhGexInit(this.kxs.dhgx.getE()).getPayload());
                this.kxs.state = 2;
                return;
            }
            if (i4 == 2) {
                PacketKexDhGexReply packetKexDhGexReply = new PacketKexDhGexReply(bArr, 0, i);
                this.kxs.hostkey = packetKexDhGexReply.getHostKey();
                ServerHostKeyVerifier serverHostKeyVerifier2 = this.verifier;
                if (serverHostKeyVerifier2 != null) {
                    try {
                        String str2 = this.hostname;
                        int i5 = this.port;
                        KexState kexState11 = this.kxs;
                        if (!serverHostKeyVerifier2.verifyServerHostKey(str2, i5, kexState11.np.server_host_key_algo, kexState11.hostkey)) {
                            throw new IOException(new ObfuscatedString(new long[]{-8887431110074780147L, -6198989265277701994L, -5221638378197166712L, -4245339081548879183L, 2432204979574117167L, 8936298628172116177L, 5318213651301569912L, 6958991521589823521L, 3943156437566364260L}).toString());
                        }
                    } catch (Exception e3) {
                        throw new IOException(new ObfuscatedString(new long[]{1293388535684743514L, 1450726915808064951L, 5211883484131006503L, -2226316184538069566L, -4828628728071418864L, 4330934723757943103L, 7987822088582455696L, -5071767992692716767L, 5528431794487308005L}).toString(), e3);
                    }
                }
                this.kxs.dhgx.setF(packetKexDhGexReply.getF());
                try {
                    KexState kexState12 = this.kxs;
                    kexState12.H = kexState12.dhgx.calculateH(this.csh.getClientString(), this.csh.getServerString(), this.kxs.localKEX.getPayload(), this.kxs.remoteKEX.getPayload(), packetKexDhGexReply.getHostKey(), this.kxs.dhgexParameters);
                    if (verifySignature(packetKexDhGexReply.getSignature(), this.kxs.hostkey)) {
                        KexState kexState13 = this.kxs;
                        kexState13.K = kexState13.dhgx.getK();
                        finishKex();
                        this.kxs.state = -1;
                        return;
                    }
                    throw new IOException(new ObfuscatedString(new long[]{-3032830390798336827L, 315624003224871037L, -6236520532234909932L, 8112968860978595014L, -1197906567879613267L, -6666691002579340306L, 801570803049995795L}).toString());
                } catch (IllegalArgumentException e4) {
                    throw new IOException(new ObfuscatedString(new long[]{-660556317609907468L, 2312301158799082068L, -3322207889642656412L}).toString(), e4);
                }
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{-7000314002115771130L, 9118629981193491144L, -6274192790903917243L, 2347113164933363378L, -7036290860193091156L}).toString());
        }
        throw new IOException(new ObfuscatedString(new long[]{2996734533282795988L, 891564560581251498L, 6472539602632492596L, 6210519963878052879L, 6237851573158862299L}).toString());
        throw th;
    }

    public synchronized void initiateKEX(CryptoWishList cryptoWishList, DHGexParameters dHGexParameters) {
        this.nextKEXcryptoWishList = cryptoWishList;
        this.nextKEXdhgexParameters = dHGexParameters;
        if (this.kxs == null) {
            KexState kexState = new KexState();
            this.kxs = kexState;
            kexState.dhgexParameters = this.nextKEXdhgexParameters;
            PacketKexInit packetKexInit = new PacketKexInit(this.nextKEXcryptoWishList, this.rnd);
            this.kxs.localKEX = packetKexInit;
            this.tm.sendKexMessage(packetKexInit.getPayload());
        }
    }
}
