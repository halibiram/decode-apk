package com.trilead.ssh2.auth;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.ConnectionMonitor;
import com.trilead.ssh2.InteractiveCallback;
import com.trilead.ssh2.crypto.PEMDecoder;
import com.trilead.ssh2.packets.PacketServiceAccept;
import com.trilead.ssh2.packets.PacketServiceRequest;
import com.trilead.ssh2.packets.PacketUserauthBanner;
import com.trilead.ssh2.packets.PacketUserauthFailure;
import com.trilead.ssh2.packets.PacketUserauthInfoRequest;
import com.trilead.ssh2.packets.PacketUserauthInfoResponse;
import com.trilead.ssh2.packets.PacketUserauthRequestInteractive;
import com.trilead.ssh2.packets.PacketUserauthRequestNone;
import com.trilead.ssh2.packets.PacketUserauthRequestPassword;
import com.trilead.ssh2.packets.PacketUserauthRequestPublicKey;
import com.trilead.ssh2.packets.TypesWriter;
import com.trilead.ssh2.signature.KeyAlgorithm;
import com.trilead.ssh2.signature.KeyAlgorithmManager;
import com.trilead.ssh2.transport.MessageHandler;
import com.trilead.ssh2.transport.TransportManager;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.Vector;

/* loaded from: classes3.dex */
public class AuthenticationManager implements MessageHandler {
    public static final String PROPERTY_TIMEOUT;
    public static final long TIMEOUT;
    TransportManager tm;
    Vector<byte[]> packets = new Vector<>();
    Vector<ConnectionMonitor> connMonitors = new Vector<>();
    boolean connectionClosed = false;
    String[] remainingMethods = new String[0];
    boolean isPartialSuccess = false;
    boolean authenticated = false;
    boolean initDone = false;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(AuthenticationManager.class.getName());
        String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8617972008534862199L, -1814006913978640860L}), sb);
        PROPERTY_TIMEOUT = m3332x9d12c1f4;
        TIMEOUT = Long.valueOf(System.getProperty(m3332x9d12c1f4, new ObfuscatedString(new long[]{3391909072163535337L, -7184245815187601944L}).toString())).longValue();
    }

    public AuthenticationManager(TransportManager transportManager) {
        this.tm = transportManager;
    }

    private boolean initialize(String str) {
        if (!this.initDone) {
            this.tm.registerMessageHandler(this, 0, 255);
            this.tm.sendMessage(new PacketServiceRequest(new ObfuscatedString(new long[]{-5382900137918240038L, -8811931133005579386L, -5531359506007740576L}).toString()).getPayload());
            this.tm.sendMessage(new PacketUserauthRequestNone(new ObfuscatedString(new long[]{-6893973937317016375L, 1301502628509149924L, 1040385506419438955L}).toString(), str).getPayload());
            byte[] nextMessage = getNextMessage();
            new PacketServiceAccept(nextMessage, 0, nextMessage.length);
            byte[] nextMessage2 = getNextMessage();
            this.initDone = true;
            byte b = nextMessage2[0];
            if (b == 52) {
                this.authenticated = true;
                this.tm.removeMessageHandler(this, 0, 255);
                return true;
            }
            if (b == 51) {
                PacketUserauthFailure packetUserauthFailure = new PacketUserauthFailure(nextMessage2, 0, nextMessage2.length);
                this.remainingMethods = packetUserauthFailure.getAuthThatCanContinue();
                this.isPartialSuccess = packetUserauthFailure.isPartialSuccess();
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{5831168377553857553L, 8923571761769063658L, -6192524322179423822L, -1227600135951881176L, -4121770059135496455L}).toString());
            sb.append((int) nextMessage2[0]);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4399727101223025024L, -3565010267057079153L}), sb));
        }
        return this.authenticated;
    }

    public boolean authenticateInteractive(String str, String[] strArr, InteractiveCallback interactiveCallback) {
        try {
            initialize(str);
            if (methodPossible(new ObfuscatedString(new long[]{1155881553698012796L, -7753629293716586275L, 5074309674094495541L, 4114989315585986217L}).toString())) {
                if (strArr == null) {
                    strArr = new String[0];
                }
                this.tm.sendMessage(new PacketUserauthRequestInteractive(new ObfuscatedString(new long[]{7834359711724807075L, 1363184742194879489L, 2629340448257593511L}).toString(), str, strArr).getPayload());
                while (true) {
                    byte[] nextMessage = getNextMessage();
                    byte b = nextMessage[0];
                    if (b == 52) {
                        this.authenticated = true;
                        this.tm.removeMessageHandler(this, 0, 255);
                        return true;
                    }
                    if (b == 51) {
                        PacketUserauthFailure packetUserauthFailure = new PacketUserauthFailure(nextMessage, 0, nextMessage.length);
                        this.remainingMethods = packetUserauthFailure.getAuthThatCanContinue();
                        this.isPartialSuccess = packetUserauthFailure.isPartialSuccess();
                        return false;
                    }
                    if (b == 60) {
                        PacketUserauthInfoRequest packetUserauthInfoRequest = new PacketUserauthInfoRequest(nextMessage, 0, nextMessage.length);
                        try {
                            String[] replyToChallenge = interactiveCallback.replyToChallenge(packetUserauthInfoRequest.getName(), packetUserauthInfoRequest.getInstruction(), packetUserauthInfoRequest.getNumPrompts(), packetUserauthInfoRequest.getPrompt(), packetUserauthInfoRequest.getEcho());
                            if (replyToChallenge != null) {
                                this.tm.sendMessage(new PacketUserauthInfoResponse(replyToChallenge).getPayload());
                            } else {
                                throw new IOException(new ObfuscatedString(new long[]{7717777067311955641L, -606978536866234835L, -1657505572965358659L, -1572316553576700077L, -6779349249213671387L, 4636657211605813180L}).toString());
                            }
                        } catch (Exception e) {
                            throw new IOException(new ObfuscatedString(new long[]{1221680902559642675L, 433603094172851980L, -3395070952476061849L, 2786266172202172928L}).toString(), e);
                        }
                    } else {
                        throw new IOException(new ObfuscatedString(new long[]{660801649051131423L, 8752733588910739900L, 1681385860760995627L, -6672046144857523073L, -8154664556546485718L}).toString() + ((int) nextMessage[0]) + new ObfuscatedString(new long[]{3124077171594499583L, -3647374239524764964L}).toString());
                    }
                }
            } else {
                throw new IOException(new ObfuscatedString(new long[]{5036893494970639310L, 8915166719022869621L, -3300686175820329381L, 347679696481612828L, 5148441207359368579L, -7773868342979602995L, -7531382229837925231L, -4888150305419135394L, -5850688220620880247L, -1112848108630051180L, 1667511956985017719L, 5805080324037857324L}).toString());
            }
        } catch (IOException e2) {
            this.tm.close(e2, false);
            throw new IOException(new ObfuscatedString(new long[]{-6618661467333738128L, -916369590222617199L, 7668453050252530473L, 3238103081521249960L, 2565411770454658240L, 8375766913825842827L, -1097650394897692157L}).toString(), e2);
        }
    }

    public boolean authenticateNone(String str) {
        try {
            initialize(str);
            return this.authenticated;
        } catch (IOException e) {
            this.tm.close(e, false);
            throw new IOException(new ObfuscatedString(new long[]{-1882519775739120138L, -1497379650013133514L, -4687745051780169777L, -2458138338103658578L, -6724913420498852867L}).toString(), e);
        }
    }

    public boolean authenticatePassword(String str, String str2) {
        try {
            initialize(str);
            if (methodPossible(new ObfuscatedString(new long[]{-5552670311330763832L, -6301417115979280905L}).toString())) {
                this.tm.sendMessage(new PacketUserauthRequestPassword(new ObfuscatedString(new long[]{7980697661918522832L, 6512013899534698484L, 2827540987423166376L}).toString(), str, str2).getPayload());
                byte[] nextMessage = getNextMessage();
                byte b = nextMessage[0];
                if (b == 52) {
                    this.authenticated = true;
                    this.tm.removeMessageHandler(this, 0, 255);
                    return true;
                }
                if (b == 51) {
                    PacketUserauthFailure packetUserauthFailure = new PacketUserauthFailure(nextMessage, 0, nextMessage.length);
                    this.remainingMethods = packetUserauthFailure.getAuthThatCanContinue();
                    this.isPartialSuccess = packetUserauthFailure.isPartialSuccess();
                    return false;
                }
                throw new IOException(new ObfuscatedString(new long[]{1494555737219206561L, 5289591346173610420L, -5286419888036423249L, -4660587570366196515L, 1209985671674122537L}).toString() + ((int) nextMessage[0]) + new ObfuscatedString(new long[]{-1069593222385723739L, -1009440224200337426L}).toString());
            }
            throw new IOException(new ObfuscatedString(new long[]{8824901343362833385L, -4150050570982147263L, -1700559428223269696L, -3749670606617303930L, 4237400455100163417L, 1331537454430956356L, -6180549973706590974L, 4426024220470689001L, 4501320660078019727L, 8641424692881991945L, -5116241216234202633L}).toString());
        } catch (IOException e) {
            this.tm.close(e, false);
            throw new IOException(new ObfuscatedString(new long[]{-678163932114586744L, -8521704590795624552L, 1761766128703727185L, 3806868470433567792L, 4050667733015113992L}).toString(), e);
        }
    }

    public boolean authenticatePublicKey(String str, AgentProxy agentProxy) {
        initialize(str);
        Iterator<AgentIdentity> it = agentProxy.getIdentities().iterator();
        while (it.hasNext()) {
            if (authenticatePublicKey(str, agentProxy, it.next())) {
                return true;
            }
        }
        return false;
    }

    public byte[] deQueue() {
        byte[] firstElement;
        synchronized (this.packets) {
            try {
                long currentTimeMillis = System.currentTimeMillis() + TIMEOUT;
                for (long currentTimeMillis2 = System.currentTimeMillis(); this.packets.size() == 0 && currentTimeMillis2 < currentTimeMillis; currentTimeMillis2 = System.currentTimeMillis()) {
                    if (!this.connectionClosed) {
                        try {
                            this.packets.wait(TIMEOUT);
                        } catch (InterruptedException e) {
                            throw new InterruptedIOException(e.getMessage());
                        }
                    } else {
                        throw new IOException(new ObfuscatedString(new long[]{-307979735063161785L, -2804941553045092036L, -429288208498572222L, 2772064390896441587L, 61046354995952615L}).toString(), this.tm.getReasonClosedCause());
                    }
                }
                if (this.packets.size() != 0) {
                    firstElement = this.packets.firstElement();
                    this.packets.removeElementAt(0);
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{4668590996297883468L, 2339542800349563105L, 3854312096945813972L, 6623921754438962791L}).toString() + TIMEOUT + new ObfuscatedString(new long[]{-6497477401751900588L, -47579050691570743L, 3385571918092888857L, 3917492009336550623L, 8674247303041563810L, -3723694622916534249L, 9078880477161104625L, -1177912240629386525L, -5532783982721933153L, -3536067125434565244L}).toString() + PROPERTY_TIMEOUT + new ObfuscatedString(new long[]{9048088698528052691L, -7876685210034286349L, -2094276785063033373L}).toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return firstElement;
    }

    public byte[] getNextMessage() {
        while (true) {
            byte[] deQueue = deQueue();
            if (deQueue[0] != 53) {
                return deQueue;
            }
            String banner = new PacketUserauthBanner(deQueue, 0, deQueue.length).getBanner();
            if (banner != null) {
                Iterator<ConnectionMonitor> it = this.connMonitors.iterator();
                while (it.hasNext()) {
                    it.next().onReceiveInfo(101, banner);
                }
            }
        }
    }

    public boolean getPartialSuccess() {
        return this.isPartialSuccess;
    }

    public String[] getRemainingMethods(String str) {
        initialize(str);
        return this.remainingMethods;
    }

    @Override // com.trilead.ssh2.transport.MessageHandler
    public void handleEndMessage(Throwable th) {
        synchronized (this.packets) {
            this.connectionClosed = true;
            this.packets.notifyAll();
        }
    }

    @Override // com.trilead.ssh2.transport.MessageHandler
    public void handleMessage(byte[] bArr, int i) {
        synchronized (this.packets) {
            try {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, i);
                this.packets.addElement(bArr2);
                this.packets.notifyAll();
                if (this.packets.size() > 5) {
                    this.connectionClosed = true;
                    throw new IOException(new ObfuscatedString(new long[]{-3444250615069950066L, -7991873369020857965L, 3587970749729908758L, -5209324028686949278L, 8101061436818825303L, 752975689834079056L, -4481308929814649746L, 628456978204111804L}).toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean methodPossible(String str) {
        String[] strArr = this.remainingMethods;
        if (strArr == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (str2.compareTo(str) == 0) {
                return true;
            }
        }
        return false;
    }

    public void setConnectionMonitors(Vector<ConnectionMonitor> vector) {
        this.connMonitors = (Vector) vector.clone();
    }

    public boolean authenticatePublicKey(String str, AgentProxy agentProxy, AgentIdentity agentIdentity) {
        if (methodPossible(new ObfuscatedString(new long[]{-3120526224491394071L, 6561260086666625958L, 1833930265534397431L}).toString())) {
            byte[] publicKeyBlob = agentIdentity.getPublicKeyBlob();
            if (publicKeyBlob == null) {
                return false;
            }
            TypesWriter typesWriter = new TypesWriter();
            byte[] sessionIdentifier = this.tm.getSessionIdentifier();
            typesWriter.writeString(sessionIdentifier, 0, sessionIdentifier.length);
            typesWriter.writeByte(50);
            typesWriter.writeString(str);
            typesWriter.writeString(new ObfuscatedString(new long[]{-7806298038812408633L, -4926137339828791184L, 7214059404648576083L}).toString());
            typesWriter.writeString(new ObfuscatedString(new long[]{7947058940137332643L, 8453429031984409202L, -2895383909154580773L}).toString());
            typesWriter.writeBoolean(true);
            typesWriter.writeString(agentIdentity.getAlgName());
            typesWriter.writeString(publicKeyBlob, 0, publicKeyBlob.length);
            this.tm.sendMessage(new PacketUserauthRequestPublicKey(new ObfuscatedString(new long[]{9123983491922697621L, -6775654446588651005L, -5282321617887049469L}).toString(), str, agentIdentity.getAlgName(), publicKeyBlob, agentIdentity.sign(typesWriter.getBytes())).getPayload());
            byte[] nextMessage = getNextMessage();
            byte b = nextMessage[0];
            if (b == 52) {
                this.authenticated = true;
                this.tm.removeMessageHandler(this, 0, 255);
                return true;
            }
            if (b == 51) {
                PacketUserauthFailure packetUserauthFailure = new PacketUserauthFailure(nextMessage, 0, nextMessage.length);
                this.remainingMethods = packetUserauthFailure.getAuthThatCanContinue();
                this.isPartialSuccess = packetUserauthFailure.isPartialSuccess();
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-5070250020348954071L, 7596769151411317683L, -1514705861923245008L, 3149626526120879852L, 2035819478952460278L}).toString());
            sb.append((int) nextMessage[0]);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8577919910334941846L, -4828682927412123109L}), sb));
        }
        throw new IOException(new ObfuscatedString(new long[]{-5253284663015226499L, 7994407979503113817L, -8115078017377620409L, -7533051476911733537L, -2262988104255140997L, -8200309053070780722L, 3283318273073210140L, 5107741005765874994L, 4768878120429578431L, 5761839501849558092L, 1839082985588684461L}).toString());
    }

    public boolean authenticatePublicKey(String str, char[] cArr, String str2, SecureRandom secureRandom) {
        try {
            initialize(str);
            if (methodPossible(new ObfuscatedString(new long[]{-9050378649863608924L, -2383561123961691204L, 3296378152764487608L}).toString())) {
                KeyPair decodeKeyPair = PEMDecoder.decodeKeyPair(cArr, str2);
                PrivateKey privateKey = decodeKeyPair.getPrivate();
                for (KeyAlgorithm<PublicKey, PrivateKey> keyAlgorithm : KeyAlgorithmManager.getSupportedAlgorithms()) {
                    if (keyAlgorithm.supportsKey(privateKey)) {
                        byte[] encodePublicKey = keyAlgorithm.encodePublicKey(decodeKeyPair.getPublic());
                        TypesWriter typesWriter = new TypesWriter();
                        byte[] sessionIdentifier = this.tm.getSessionIdentifier();
                        typesWriter.writeString(sessionIdentifier, 0, sessionIdentifier.length);
                        typesWriter.writeByte(50);
                        typesWriter.writeString(str);
                        typesWriter.writeString(new ObfuscatedString(new long[]{-2258041615398894951L, 7042188898121866550L, 1951170031103266066L}).toString());
                        typesWriter.writeString(new ObfuscatedString(new long[]{-5294325971774287104L, -8504713149769864110L, 1583666615100566790L}).toString());
                        typesWriter.writeBoolean(true);
                        typesWriter.writeString(keyAlgorithm.getKeyFormat());
                        typesWriter.writeString(encodePublicKey, 0, encodePublicKey.length);
                        this.tm.sendMessage(new PacketUserauthRequestPublicKey(new ObfuscatedString(new long[]{-8158998138594121299L, -6217196456970975255L, -4402140479283264495L}).toString(), str, keyAlgorithm.getKeyFormat(), encodePublicKey, keyAlgorithm.encodeSignature(keyAlgorithm.generateSignature(typesWriter.getBytes(), decodeKeyPair.getPrivate(), secureRandom))).getPayload());
                        byte[] nextMessage = getNextMessage();
                        byte b = nextMessage[0];
                        if (b == 52) {
                            this.authenticated = true;
                            this.tm.removeMessageHandler(this, 0, 255);
                            return true;
                        }
                        if (b == 51) {
                            PacketUserauthFailure packetUserauthFailure = new PacketUserauthFailure(nextMessage, 0, nextMessage.length);
                            this.remainingMethods = packetUserauthFailure.getAuthThatCanContinue();
                            this.isPartialSuccess = packetUserauthFailure.isPartialSuccess();
                            return false;
                        }
                        throw new IOException(new ObfuscatedString(new long[]{6888645123947092420L, -7408524711470845246L, -299705316085989638L, -7360073322654987420L, 732235610310013953L}).toString() + ((int) nextMessage[0]) + new ObfuscatedString(new long[]{5405357447215575658L, 7754198642752047412L}).toString());
                    }
                }
                throw new IOException(new ObfuscatedString(new long[]{-8891378930344234581L, -2463750606146088512L, -5944921290144731147L, 6293605737006872644L, -5861596046312921716L, -7290035263399244812L, -5599749484535137956L, 509834289142679065L}).toString());
            }
            throw new IOException(new ObfuscatedString(new long[]{651541708972516707L, 8296469118594572007L, -6274494152293333192L, -2437104340652305438L, -5755553097379927367L, -2147733867027171271L, -8083756297252427804L, 8305506397411575012L, -4019377067606338894L, -3819508978349839213L, -3712197129278344654L}).toString());
        } catch (IOException e) {
            this.tm.close(e, false);
            throw new IOException(new ObfuscatedString(new long[]{7591584058903058978L, -6346387228056814239L, -8503615506182972288L, 1057939465698771612L, 5417438053567234262L}).toString(), e);
        }
    }
}
