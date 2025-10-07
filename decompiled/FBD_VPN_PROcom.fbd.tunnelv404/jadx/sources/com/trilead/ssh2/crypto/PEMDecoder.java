package com.trilead.ssh2.crypto;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.crypto.cipher.AES;
import com.trilead.ssh2.crypto.cipher.CBCMode;
import com.trilead.ssh2.crypto.cipher.DES;
import com.trilead.ssh2.crypto.cipher.DESede;
import com.trilead.ssh2.crypto.digest.MD5;
import com.trilead.ssh2.signature.DSAPrivateKey;
import com.trilead.ssh2.signature.KeyAlgorithm;
import com.trilead.ssh2.signature.KeyAlgorithmManager;
import com.trilead.ssh2.signature.RSAPrivateKey;
import defpackage.AbstractC0749x8313616e;
import java.io.BufferedReader;
import java.io.CharArrayReader;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class PEMDecoder {
    private static final Logger LOGGER = Logger.getLogger(PEMDecoder.class.getName());
    private static final int PEM_DSA_PRIVATE_KEY = 2;
    private static final int PEM_RSA_PRIVATE_KEY = 1;

    @Deprecated
    public static Object decode(char[] cArr, String str) {
        PEMStructure parsePEM = parsePEM(cArr);
        if (isPEMEncrypted(parsePEM)) {
            if (str != null) {
                decryptPEM(parsePEM, str.getBytes(StandardCharsets.ISO_8859_1));
            } else {
                throw new IOException(new ObfuscatedString(new long[]{-2010732952925659229L, -2621035283786281002L, 1087381551533325563L, -2825628477123262293L, -4314389037186645964L, -9059822043563892171L, -969638240590437205L}).toString());
            }
        }
        int i = parsePEM.pemType;
        if (i == 2) {
            SimpleDERReader simpleDERReader = new SimpleDERReader(parsePEM.data);
            byte[] readSequenceAsByteArray = simpleDERReader.readSequenceAsByteArray();
            if (simpleDERReader.available() == 0) {
                simpleDERReader.resetInput(readSequenceAsByteArray);
                BigInteger readInt = simpleDERReader.readInt();
                if (readInt.compareTo(BigInteger.ZERO) == 0) {
                    BigInteger readInt2 = simpleDERReader.readInt();
                    BigInteger readInt3 = simpleDERReader.readInt();
                    BigInteger readInt4 = simpleDERReader.readInt();
                    BigInteger readInt5 = simpleDERReader.readInt();
                    BigInteger readInt6 = simpleDERReader.readInt();
                    if (simpleDERReader.available() == 0) {
                        return new DSAPrivateKey(readInt2, readInt3, readInt4, readInt5, readInt6);
                    }
                    throw new IOException(new ObfuscatedString(new long[]{-8128671179180360785L, 5991244613002768856L, 5414472508839218264L, -5756352284204147733L, -4169535046658330086L, -426705274713305431L}).toString());
                }
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{5088980239603792853L, 2727599504370654056L, -2780612602918428200L}).toString());
                sb.append(readInt);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7844520246295993066L, -6752708775379595942L, 8669531248455584680L, 2708149993325812521L, 3225926160046439503L}), sb));
            }
            throw new IOException(new ObfuscatedString(new long[]{8189124366149692346L, -7784652952989215047L, -8158274004870381113L, 7141815839338389505L, 2006830995400066864L, -2632538212670780524L}).toString());
        }
        if (i == 1) {
            SimpleDERReader simpleDERReader2 = new SimpleDERReader(parsePEM.data);
            byte[] readSequenceAsByteArray2 = simpleDERReader2.readSequenceAsByteArray();
            if (simpleDERReader2.available() == 0) {
                simpleDERReader2.resetInput(readSequenceAsByteArray2);
                BigInteger readInt7 = simpleDERReader2.readInt();
                if (readInt7.compareTo(BigInteger.ZERO) != 0 && readInt7.compareTo(BigInteger.ONE) != 0) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(new ObfuscatedString(new long[]{4309623903548650259L, -3761233992940202992L, 4907822593541771006L}).toString());
                    sb2.append(readInt7);
                    throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3568792760269212024L, 5831751341884676366L, 7111174414281609170L, -1493359893231228523L, 30796643294920121L}), sb2));
                }
                BigInteger readInt8 = simpleDERReader2.readInt();
                return new RSAPrivateKey(simpleDERReader2.readInt(), simpleDERReader2.readInt(), readInt8);
            }
            throw new IOException(new ObfuscatedString(new long[]{6109893404218442837L, 1299984024171823611L, 4800115858161227750L, 3702169492206340439L, 720660867835243520L, 1742665254287525840L}).toString());
        }
        throw new IOException(new ObfuscatedString(new long[]{6591603106109302195L, -4456082208169087435L, 8118925325862528177L, -2404351073839562069L, 2491513801228355846L, -8316690820764692263L}).toString());
    }

    public static KeyPair decodeKeyPair(char[] cArr, String str) {
        Iterator<KeyAlgorithm<PublicKey, PrivateKey>> it = KeyAlgorithmManager.getSupportedAlgorithms().iterator();
        while (it.hasNext()) {
            for (CertificateDecoder certificateDecoder : it.next().getCertificateDecoders()) {
                try {
                    PEMStructure parsePEM = parsePEM(cArr, certificateDecoder);
                    if (isPEMEncrypted(parsePEM)) {
                        if (str != null) {
                            decryptPEM(parsePEM, str.getBytes(StandardCharsets.ISO_8859_1));
                        } else {
                            throw new IOException(new ObfuscatedString(new long[]{5905543586078686436L, 3660331070337160088L, -6379977656546576997L, -9146378291872970532L, -1161521547013628168L, -5091970573538741510L, 5259616144388357228L}).toString());
                        }
                    }
                    return certificateDecoder.createKeyPair(parsePEM, str);
                } catch (IOException e) {
                    LOGGER.log(Level.FINE, new ObfuscatedString(new long[]{-8081337748339791308L, -3581859243747406707L, 1073008278183160815L, -7303824029301730549L, -3464498306081878335L, -827651925580128553L, -5120313894062019316L}).toString() + certificateDecoder.getClass().getName(), (Throwable) e);
                }
            }
        }
        throw new IOException(new ObfuscatedString(new long[]{6951198151639133445L, -1486944242119011278L, 585240287715603190L, -8743202086510827832L, 209221415123706848L, -2436417424119385484L}).toString());
    }

    private static void decryptPEM(PEMStructure pEMStructure, byte[] bArr) {
        CBCMode cBCMode;
        String[] strArr = pEMStructure.dekInfo;
        if (strArr != null) {
            if (strArr.length == 2) {
                String str = strArr[0];
                byte[] hexToByteArray = hexToByteArray(strArr[1]);
                if (str.equals(new ObfuscatedString(new long[]{-7181735540587642770L, 3320496733850895026L, 642167540740929894L}).toString())) {
                    DESede dESede = new DESede();
                    dESede.init(false, generateKeyFromPasswordSaltWithMD5(bArr, hexToByteArray, 24));
                    cBCMode = new CBCMode(dESede, hexToByteArray, false);
                } else if (str.equals(new ObfuscatedString(new long[]{4313168651174043583L, 227423757240282096L}).toString())) {
                    DES des = new DES();
                    des.init(false, generateKeyFromPasswordSaltWithMD5(bArr, hexToByteArray, 8));
                    cBCMode = new CBCMode(des, hexToByteArray, false);
                } else if (str.equals(new ObfuscatedString(new long[]{5403506110597087310L, 2567544324153499185L, -3879510403497777093L}).toString())) {
                    AES aes = new AES();
                    aes.init(false, generateKeyFromPasswordSaltWithMD5(bArr, hexToByteArray, 16));
                    cBCMode = new CBCMode(aes, hexToByteArray, false);
                } else if (str.equals(new ObfuscatedString(new long[]{-1225194902518108820L, -2162990450923368596L, -6334218363467124168L}).toString())) {
                    AES aes2 = new AES();
                    aes2.init(false, generateKeyFromPasswordSaltWithMD5(bArr, hexToByteArray, 24));
                    cBCMode = new CBCMode(aes2, hexToByteArray, false);
                } else if (str.equals(new ObfuscatedString(new long[]{-5182152299447935799L, 9119557104614062525L, 3841075549225848674L}).toString())) {
                    AES aes3 = new AES();
                    aes3.init(false, generateKeyFromPasswordSaltWithMD5(bArr, hexToByteArray, 32));
                    cBCMode = new CBCMode(aes3, hexToByteArray, false);
                } else {
                    throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{4975218104835377263L, 2557920222296038862L, -8404419225562344028L, -7694792458653192077L, -9058290729563134388L, -3723808394653711330L, -4263210994822033901L}), new StringBuilder(), str));
                }
                if (pEMStructure.data.length % cBCMode.getBlockSize() == 0) {
                    byte[] bArr2 = new byte[pEMStructure.data.length];
                    for (int i = 0; i < pEMStructure.data.length / cBCMode.getBlockSize(); i++) {
                        cBCMode.transformBlock(pEMStructure.data, cBCMode.getBlockSize() * i, bArr2, cBCMode.getBlockSize() * i);
                    }
                    pEMStructure.data = removePadding(bArr2, cBCMode.getBlockSize());
                    pEMStructure.dekInfo = null;
                    pEMStructure.procType = null;
                    return;
                }
                throw new IOException(new ObfuscatedString(new long[]{-5188922199753669744L, -6569211364609806779L, 2776280042005590251L, 8883856690893873606L, 8155620961703227081L, -8618964464606311586L, 7860135901107929039L, 5642369025699961963L, -8925834894115725009L, -5461563410575342676L}).toString() + cBCMode.getBlockSize());
            }
            throw new IOException(new ObfuscatedString(new long[]{-3335389066587940932L, -8609571406673179937L, 760500101156312996L, 4151188124920163072L, 7794440987839063009L, -2804582190437523749L}).toString());
        }
        throw new IOException(new ObfuscatedString(new long[]{-1399856415220873466L, -8297893069797625955L, 1778985208256119238L, 6548338087274514826L, -5597645669828100078L, 7478210468343684521L, -3686814717625047940L, 147395798225613224L, -3883093815302559385L}).toString());
    }

    public static byte[] generateKeyFromPasswordSaltWithMD5(byte[] bArr, byte[] bArr2, int i) {
        if (bArr2.length >= 8) {
            MD5 md5 = new MD5();
            byte[] bArr3 = new byte[i];
            int digestLength = md5.getDigestLength();
            byte[] bArr4 = new byte[digestLength];
            int i2 = i;
            while (true) {
                md5.update(bArr, 0, bArr.length);
                md5.update(bArr2, 0, 8);
                int min = Math.min(i2, digestLength);
                md5.digest(bArr4, 0);
                System.arraycopy(bArr4, 0, bArr3, i - i2, min);
                i2 -= min;
                if (i2 == 0) {
                    return bArr3;
                }
                md5.update(bArr4, 0, digestLength);
            }
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{5151490459117047812L, 6356843433261398619L, -871094623930115975L, -6499355636788228039L, 2960970452282592718L, 6001824887470490129L, -4700063790572639814L, 8342874484519781403L}).toString());
        }
    }

    private static byte[] hexToByteArray(String str) {
        if (str != null) {
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    int i2 = i * 2;
                    bArr[i] = (byte) ((hexToInt(str.charAt(i2)) * 16) + hexToInt(str.charAt(i2 + 1)));
                }
                return bArr;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{8400424240246871974L, -7803952572294319005L, 30635490443790252L, 5812476335474327191L, 6902868175283262175L, -6464799569439623453L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8390033827929552366L, 371851753726379820L, 8128315789202040339L}).toString());
    }

    private static int hexToInt(char c) {
        if (c >= 'a' && c <= 'f') {
            return c - 'W';
        }
        if (c >= 'A' && c <= 'F') {
            return c - '7';
        }
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{1368088429536052726L, -8095990384517482735L, 7568519590231531346L}).toString());
    }

    public static boolean isPEMEncrypted(PEMStructure pEMStructure) {
        String[] strArr = pEMStructure.procType;
        if (strArr == null) {
            return false;
        }
        if (strArr.length == 2) {
            if (new ObfuscatedString(new long[]{-1290824031678545922L, -1754099430007668775L}).toString().equals(pEMStructure.procType[0])) {
                return new ObfuscatedString(new long[]{2923216971392193627L, -4473072663548385494L, -4491661385632266785L}).toString().equals(pEMStructure.procType[1]);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-3600834872919436901L, 7553553159484226909L, -2431425040453629395L, -8709745273044455929L, 6698953156402659722L}).toString());
            sb.append(pEMStructure.procType[0]);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1452032942346747796L, 4195375500040076839L}), sb));
        }
        throw new IOException(new ObfuscatedString(new long[]{3554791574000087801L, -7409245960890737504L, 4019066501917442972L, -1829018609574966012L}).toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0067, code lost:
    
        r4 = r6.readLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x006b, code lost:
    
        if (r4 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x006d, code lost:
    
        r4 = r4.trim();
        r7 = r4.indexOf(58);
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0079, code lost:
    
        if (r7 != (-1)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00e9, code lost:
    
        r7 = r7 + 1;
        r8 = r4.substring(0, r7);
        r4 = r4.substring(r7).split(new com.panda912.muddy.ObfuscatedString(new long[]{7055112936870294908L, 5442788707665096392L}).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0105, code lost:
    
        if (r9 >= r4.length) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0107, code lost:
    
        r4[r9] = r4[r9].trim();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0123, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(new long[]{8358397482509679925L, 8650864343691596647L, -3753629283108468286L}).toString().equals(r8) == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x013b, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(new long[]{2136543929589180301L, 5764200506295081702L, -837131663169452769L}).toString().equals(r8) == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x013d, code lost:
    
        r5.dekInfo = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0125, code lost:
    
        r5.procType = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
    
        r0 = new java.lang.StringBuilder();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0080, code lost:
    
        if (r4 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0082, code lost:
    
        r2 = r4.trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008a, code lost:
    
        if (r2.startsWith(r11) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b4, code lost:
    
        r0.append(r2);
        r4 = r6.readLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008c, code lost:
    
        r11 = r0.length();
        r1 = new char[r11];
        r0.getChars(0, r11, r1, 0);
        r11 = com.trilead.ssh2.crypto.Base64.decode(r1);
        r5.data = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009c, code lost:
    
        if (r11.length == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009e, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b3, code lost:
    
        throw new java.io.IOException(new com.panda912.muddy.ObfuscatedString(new long[]{-196723009781876063L, -6691249350032614957L, 3284691530213985349L, -4309782781290060826L, -6372365811383088681L, 604855445693434276L}).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00bc, code lost:
    
        r2 = new java.lang.StringBuilder();
        r2.append(new com.panda912.muddy.ObfuscatedString(new long[]{8947942069662200483L, -3374557469344021689L, -698924836894411004L, -1974528817956447437L}).toString());
        r2.append(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e8, code lost:
    
        throw new java.io.IOException(defpackage.AbstractC0749x8313616e.m3332x9d12c1f4(new com.panda912.muddy.ObfuscatedString(new long[]{3170960287989829212L, 6572236059892538260L}), r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0141, code lost:
    
        r2 = new java.lang.StringBuilder();
        r2.append(new com.panda912.muddy.ObfuscatedString(new long[]{2447377282299026028L, -2723371747391295365L, -4776915042500480760L, -2409788110655014248L}).toString());
        r2.append(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x016d, code lost:
    
        throw new java.io.IOException(defpackage.AbstractC0749x8313616e.m3332x9d12c1f4(new com.panda912.muddy.ObfuscatedString(new long[]{-2175033771810659540L, -207851399371757276L}), r2));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static PEMStructure parsePEM(char[] cArr) {
        String obfuscatedString;
        PEMStructure pEMStructure = new PEMStructure();
        BufferedReader bufferedReader = new BufferedReader(new CharArrayReader(cArr));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                String trim = readLine.trim();
                if (trim.startsWith(new ObfuscatedString(new long[]{-2563488816272957064L, -5869881607583609454L, 8807956129727203142L, -1306753550240600964L, 3044059565440357489L}).toString())) {
                    obfuscatedString = new ObfuscatedString(new long[]{8385612686767357483L, -8333425746545050231L, -3125039356600001606L, 3194386799405349747L, -3522440210575306220L}).toString();
                    pEMStructure.pemType = 2;
                    break;
                }
                if (trim.startsWith(new ObfuscatedString(new long[]{6268882676966755621L, 3637823489385567098L, 8757340519542808725L, -8801628454647010502L, 581706773607133279L}).toString())) {
                    obfuscatedString = new ObfuscatedString(new long[]{7588994036417448571L, 1723901588214660684L, -6346053013825884504L, 7213350361832976541L, -8288720903555302343L}).toString();
                    pEMStructure.pemType = 1;
                    break;
                }
            } else {
                throw new IOException(new ObfuscatedString(new long[]{-1148795058051448696L, -7506156223099567562L, -1620267713879904200L, 8230949805899706361L, -8872044038621594634L, -2154710909003499341L, -6696402991142456429L}).toString());
            }
        }
    }

    private static byte[] removePadding(byte[] bArr, int i) {
        int i2 = bArr[bArr.length - 1] & 255;
        if (i2 >= 1 && i2 <= i) {
            for (int i3 = 2; i3 <= i2; i3++) {
                if (bArr[bArr.length - i3] != i2) {
                    throw new IOException(new ObfuscatedString(new long[]{-5089550624962139319L, 239142520719146323L, -5060578700834157347L, -7707946222975152013L, 421302788500510369L, -6132979751840487005L, 8654602697754679389L, -3618655344340974802L, -4239946537943490660L, -8712059581468232095L}).toString());
                }
            }
            byte[] bArr2 = new byte[bArr.length - i2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length - i2);
            return bArr2;
        }
        throw new IOException(new ObfuscatedString(new long[]{-1944079056037065613L, -8785194088329251822L, -503052838419908573L, 3311721608299182592L, 6539826453300998349L, -3404758732977462304L, -5739292022100092007L, 8170755973062414776L, 875672551173816980L, -9121684025632536301L}).toString());
    }

    private static PEMStructure parsePEM(char[] cArr, CertificateDecoder certificateDecoder) {
        String readLine;
        PEMStructure pEMStructure = new PEMStructure();
        BufferedReader bufferedReader = new BufferedReader(new CharArrayReader(cArr));
        do {
            readLine = bufferedReader.readLine();
            if (readLine == null) {
                throw new IOException(new ObfuscatedString(new long[]{8357105041170135448L, 4523057787687423860L, -5272536840039064331L, -4293107499946923612L, 3154869187051200386L, 566914412539666354L, 5407648470873574343L}).toString());
            }
        } while (!readLine.trim().startsWith(certificateDecoder.getStartLine()));
        String endLine = certificateDecoder.getEndLine();
        while (true) {
            String readLine2 = bufferedReader.readLine();
            if (readLine2 != null) {
                String trim = readLine2.trim();
                int indexOf = trim.indexOf(58);
                if (indexOf == -1) {
                    StringBuilder sb = new StringBuilder();
                    while (trim != null) {
                        String trim2 = trim.trim();
                        if (trim2.startsWith(endLine)) {
                            int length = sb.length();
                            char[] cArr2 = new char[length];
                            sb.getChars(0, length, cArr2, 0);
                            byte[] decode = Base64.decode(cArr2);
                            pEMStructure.data = decode;
                            if (decode.length != 0) {
                                return pEMStructure;
                            }
                            throw new IOException(new ObfuscatedString(new long[]{-233572968469566293L, -3719790059368663705L, -2081129136277453364L, 4910583364932729436L, 3116989010257155540L, -6639247104323890540L}).toString());
                        }
                        sb.append(trim2);
                        trim = bufferedReader.readLine();
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(new ObfuscatedString(new long[]{-6725193890963098327L, 6313701333136553243L, -128307686646562980L, 1507303222469788407L}).toString());
                    sb2.append(endLine);
                    throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2701160162322636326L, 2568015332110898054L}), sb2));
                }
                int i = indexOf + 1;
                String substring = trim.substring(0, i);
                String[] split = trim.substring(i).split(new ObfuscatedString(new long[]{1070051170783866293L, 1540000065170535679L}).toString());
                for (int i2 = 0; i2 < split.length; i2++) {
                    split[i2] = split[i2].trim();
                }
                if (new ObfuscatedString(new long[]{3247466092868782505L, 3230587039712388532L, 4663492856595961627L}).toString().equals(substring)) {
                    pEMStructure.procType = split;
                } else if (new ObfuscatedString(new long[]{8967202879009996511L, -5229404667759724275L, 2463472703228397179L}).toString().equals(substring)) {
                    pEMStructure.dekInfo = split;
                }
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(new ObfuscatedString(new long[]{-6745504713167707725L, 5087403935430400803L, -957432815061972073L, 68274630075246801L}).toString());
                sb3.append(endLine);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{9071795447543188202L, 6265045586262543094L}), sb3));
            }
        }
    }
}
