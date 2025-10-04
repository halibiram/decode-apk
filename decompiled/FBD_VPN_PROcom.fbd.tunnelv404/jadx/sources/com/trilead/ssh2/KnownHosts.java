package com.trilead.ssh2;

import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.crypto.Base64;
import com.trilead.ssh2.crypto.digest.Digest;
import com.trilead.ssh2.crypto.digest.MD5;
import com.trilead.ssh2.crypto.digest.MessageMac;
import com.trilead.ssh2.crypto.digest.SHA1;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.signature.KeyAlgorithm;
import com.trilead.ssh2.signature.KeyAlgorithmManager;
import defpackage.AbstractC0749x8313616e;
import java.io.BufferedReader;
import java.io.CharArrayReader;
import java.io.CharArrayWriter;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Vector;

/* loaded from: classes3.dex */
public class KnownHosts {
    public static final int HOSTKEY_HAS_CHANGED = 2;
    public static final int HOSTKEY_IS_NEW = 1;
    public static final int HOSTKEY_IS_OK = 0;
    private static final Logger LOGGER = Logger.getLogger(KnownHosts.class);
    private static final SecureRandom SECURE_RANDOM = RandomFactory.create();
    private final LinkedList<KnownHostsEntry> publicKeys = new LinkedList<>();

    /* loaded from: classes3.dex */
    public class KnownHostsEntry {
        private final String algorithm;
        private final PublicKey key;
        private final String[] patterns;

        public /* synthetic */ KnownHostsEntry(KnownHosts knownHosts, String[] strArr, PublicKey publicKey, String str, int i) {
            this(strArr, publicKey, str);
        }

        private KnownHostsEntry(String[] strArr, PublicKey publicKey, String str) {
            this.patterns = strArr;
            this.key = publicKey;
            this.algorithm = str;
        }
    }

    public KnownHosts() {
    }

    public static void addHostkeyToFile(File file, String[] strArr, String str, byte[] bArr) {
        if (strArr != null && strArr.length != 0) {
            if (str != null && bArr != null) {
                CharArrayWriter charArrayWriter = new CharArrayWriter();
                for (int i = 0; i < strArr.length; i++) {
                    if (i != 0) {
                        charArrayWriter.write(44);
                    }
                    charArrayWriter.write(strArr[i]);
                }
                charArrayWriter.write(32);
                charArrayWriter.write(str);
                charArrayWriter.write(32);
                charArrayWriter.write(Base64.encode(bArr));
                charArrayWriter.write(new ObfuscatedString(new long[]{2421746442307543242L, 7662458074933743253L}).toString());
                char[] charArray = charArrayWriter.toCharArray();
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, new ObfuscatedString(new long[]{-5240202378353215941L, 4373444400848725691L}).toString());
                long length = randomAccessFile.length();
                if (length > 0) {
                    randomAccessFile.seek(length - 1);
                    if (randomAccessFile.read() != 10) {
                        randomAccessFile.write(10);
                    }
                }
                randomAccessFile.write(new String(charArray).getBytes(StandardCharsets.ISO_8859_1));
                randomAccessFile.close();
                return;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1416421176324515774L, -8347683660818672477L, -2159340773319316869L, 4985121294178276708L, 4334473489190240946L, 4097667527255028566L}).toString());
    }

    private boolean checkHashed(String str, String str2) {
        int indexOf;
        if (!str.startsWith(new ObfuscatedString(new long[]{1740551169237912977L, -5036570634780797641L}).toString()) || (indexOf = str.indexOf(124, 3)) == -1) {
            return false;
        }
        String substring = str.substring(3, indexOf);
        String substring2 = str.substring(indexOf + 1);
        try {
            byte[] decode = Base64.decode(substring.toCharArray());
            byte[] decode2 = Base64.decode(substring2.toCharArray());
            if (decode.length != new SHA1().getDigestLength()) {
                return false;
            }
            byte[] hmacSha1Hash = hmacSha1Hash(decode, str2);
            for (int i = 0; i < hmacSha1Hash.length; i++) {
                if (hmacSha1Hash[i] != decode2[i]) {
                    return false;
                }
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private int checkKey(String str, PublicKey publicKey) {
        synchronized (this.publicKeys) {
            try {
                Iterator<KnownHostsEntry> it = this.publicKeys.iterator();
                int i = 1;
                while (it.hasNext()) {
                    KnownHostsEntry next = it.next();
                    if (hostnameMatches(next.patterns, str)) {
                        if (matchKeys(next.key, publicKey)) {
                            return 0;
                        }
                        i = 2;
                    }
                }
                return i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String createBubblebabbleFingerprint(String str, byte[] bArr) {
        return rawToBubblebabbleFingerprint(rawFingerPrint(new ObfuscatedString(new long[]{4131430165908954614L, -2633249475157919840L}).toString(), str, bArr));
    }

    public static String createHashedHostname(String str) {
        byte[] bArr = new byte[new SHA1().getDigestLength()];
        SECURE_RANDOM.nextBytes(bArr);
        byte[] hmacSha1Hash = hmacSha1Hash(bArr, str);
        String str2 = new String(Base64.encode(bArr));
        String str3 = new String(Base64.encode(hmacSha1Hash));
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{6301884485072332780L, 4491002435404784844L}).toString());
        sb.append(str2);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-3499410344935471376L, -3717380746737052696L}), sb, str3);
    }

    public static String createHexFingerprint(String str, byte[] bArr) {
        return rawToHexFingerprint(rawFingerPrint(new ObfuscatedString(new long[]{-4042990754189934521L, -1543588118449723558L}).toString(), str, bArr));
    }

    private PublicKey decodeHostKey(String str, byte[] bArr) {
        for (KeyAlgorithm<PublicKey, PrivateKey> keyAlgorithm : KeyAlgorithmManager.getSupportedAlgorithms()) {
            if (keyAlgorithm.getKeyFormat().equals(str)) {
                return keyAlgorithm.decodePublicKey(bArr);
            }
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{4246795766529864633L, -8924656078911886075L, -2497716495264916195L, -580072688795668130L}), new StringBuilder(), str));
    }

    private Vector<KnownHostsEntry> getAllKnownHostEntries(String str) {
        Vector<KnownHostsEntry> vector = new Vector<>();
        synchronized (this.publicKeys) {
            try {
                Iterator<KnownHostsEntry> it = this.publicKeys.iterator();
                while (it.hasNext()) {
                    KnownHostsEntry next = it.next();
                    if (hostnameMatches(next.patterns, str)) {
                        vector.addElement(next);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return vector;
    }

    private static byte[] hmacSha1Hash(byte[] bArr, String str) {
        if (bArr.length == 20) {
            MessageMac messageMac = new MessageMac(new ObfuscatedString(new long[]{-2030066872365495247L, -4213685484492584041L, -99741548933302751L}).toString(), bArr);
            byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
            messageMac.update(bytes, 0, bytes.length);
            byte[] bArr2 = new byte[20];
            messageMac.getMac(bArr2, 0);
            return bArr2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3105585997632597739L, 7849980180161552200L, 8791828144127873796L, 7061165640910548560L}).toString());
        sb.append(bArr.length);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7563812129582352892L, -4266723848906649274L}), sb));
    }

    private boolean hostnameMatches(String[] strArr, String str) {
        boolean z;
        String lowerCase = str.toLowerCase();
        boolean z2 = false;
        for (String str2 : strArr) {
            if (str2 != null) {
                if (str2.length() > 0 && str2.charAt(0) == '!') {
                    str2 = str2.substring(1);
                    z = true;
                } else {
                    z = false;
                }
                if (!z2 || z) {
                    if (str2.charAt(0) == '|') {
                        if (checkHashed(str2, lowerCase)) {
                            if (z) {
                                return false;
                            }
                            z2 = true;
                        } else {
                            continue;
                        }
                    } else {
                        String lowerCase2 = str2.toLowerCase();
                        if (lowerCase2.indexOf(63) == -1 && lowerCase2.indexOf(42) == -1) {
                            if (lowerCase2.compareTo(lowerCase) == 0) {
                                if (z) {
                                    return false;
                                }
                            } else {
                                int indexOf = lowerCase2.indexOf(58);
                                int indexOf2 = lowerCase2.indexOf(58);
                                if (indexOf > 0 && indexOf < lowerCase2.length() - 2 && indexOf == indexOf2) {
                                    if (!lowerCase2.startsWith("[" + lowerCase + ']')) {
                                        continue;
                                    } else if (z) {
                                        return false;
                                    }
                                }
                            }
                            z2 = true;
                        } else if (pseudoRegex(lowerCase2.toCharArray(), 0, lowerCase.toCharArray(), 0)) {
                            if (z) {
                                return false;
                            }
                            z2 = true;
                        } else {
                            continue;
                        }
                    }
                }
            }
        }
        return z2;
    }

    private void initialize(char[] cArr) {
        BufferedReader bufferedReader = new BufferedReader(new CharArrayReader(cArr));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return;
            }
            String trim = readLine.trim();
            if (!trim.startsWith(new ObfuscatedString(new long[]{-6051204456684288573L, -7642485123474736246L}).toString())) {
                String[] split = trim.split(new ObfuscatedString(new long[]{1084987704939592382L, 177616919224194203L}).toString());
                if (split.length >= 3) {
                    String str = split[1];
                    Iterator<KeyAlgorithm<PublicKey, PrivateKey>> it = KeyAlgorithmManager.getSupportedAlgorithms().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().getKeyFormat().equals(str)) {
                                try {
                                    addHostkey(split[0].split(new ObfuscatedString(new long[]{5436136107089931080L, -8832426149189254118L}).toString()), str, Base64.decode(split[2].toCharArray()));
                                    break;
                                } catch (IOWarningException e) {
                                    LOGGER.log(30, new ObfuscatedString(new long[]{-3847848972816768221L, -3412846116426696053L, -5427204726216062003L, -6168064434195323970L}).toString() + trim + new ObfuscatedString(new long[]{4198047488761429156L, -7918603842954507766L}).toString(), e);
                                }
                            }
                        } else {
                            LOGGER.log(1, new ObfuscatedString(new long[]{6232184307626136301L, -2602036831627639040L, -4403370700845549276L, -686445895826258981L}).toString() + str);
                            break;
                        }
                    }
                }
            }
        }
    }

    private boolean matchKeys(PublicKey publicKey, PublicKey publicKey2) {
        if (publicKey == null) {
            if (publicKey2 == null) {
                return true;
            }
            return false;
        }
        return publicKey.equals(publicKey2);
    }

    private boolean pseudoRegex(char[] cArr, int i, char[] cArr2, int i2) {
        while (cArr.length != i) {
            char c = cArr[i];
            if (c == '*') {
                int i3 = i + 1;
                if (cArr.length == i3) {
                    return true;
                }
                char c2 = cArr[i3];
                if (c2 == '*' || c2 == '?') {
                    while (!pseudoRegex(cArr, i3, cArr2, i2)) {
                        i2++;
                        if (cArr2.length == i2) {
                            return false;
                        }
                    }
                    return true;
                }
                do {
                    if (cArr[i3] == cArr2[i2] && pseudoRegex(cArr, i + 2, cArr2, i2 + 1)) {
                        return true;
                    }
                    i2++;
                } while (cArr2.length != i2);
                return false;
            }
            if (cArr2.length == i2) {
                return false;
            }
            if (c != '?' && c != cArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        if (cArr2.length != i2) {
            return false;
        }
        return true;
    }

    private static byte[] rawFingerPrint(String str, String str2, byte[] bArr) {
        Digest sha1;
        if (new ObfuscatedString(new long[]{-5542600569672671463L, 2817330529781598097L}).toString().equals(str)) {
            sha1 = new MD5();
        } else if (new ObfuscatedString(new long[]{5668486152176751980L, 4683075975583182683L}).toString().equals(str)) {
            sha1 = new SHA1();
        } else {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8876984471487054799L, -5263320988172639904L, -6620208364836616492L, 7393604454664018978L}), new StringBuilder(), str));
        }
        Iterator<KeyAlgorithm<PublicKey, PrivateKey>> it = KeyAlgorithmManager.getSupportedAlgorithms().iterator();
        while (it.hasNext()) {
            if (it.next().getKeyFormat().equals(str2)) {
                if (bArr != null) {
                    sha1.update(bArr);
                    byte[] bArr2 = new byte[sha1.getDigestLength()];
                    sha1.digest(bArr2);
                    return bArr2;
                }
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8149690431467587460L, -8520753833904323344L, 8422745271992621985L}).toString());
            }
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-9155211495719768030L, 2124675554503246019L, -8672032292704581398L, -7143567024178420910L}), new StringBuilder(), str2));
    }

    private static String rawToBubblebabbleFingerprint(byte[] bArr) {
        char[] charArray = new ObfuscatedString(new long[]{-1564353151697921335L, -2822206398200681860L}).toString().toCharArray();
        char[] charArray2 = new ObfuscatedString(new long[]{-5578231061484057532L, -6858405630217465476L, 957798441522106307L, -2249398490712138036L}).toString().toCharArray();
        StringBuilder sb = new StringBuilder("x");
        int length = (bArr.length / 2) + 1;
        int i = 0;
        int i2 = 1;
        while (i < length) {
            int i3 = i + 1;
            if (i3 >= length && bArr.length % 2 == 0) {
                sb.append(charArray[i2 % 6]);
                sb.append('x');
                sb.append(charArray[i2 / 6]);
            } else {
                int i4 = i * 2;
                sb.append(charArray[(((bArr[i4] >> 6) & 3) + i2) % 6]);
                sb.append(charArray2[(bArr[i4] >> 2) & 15]);
                sb.append(charArray[((i2 / 6) + (bArr[i4] & 3)) % 6]);
                if (i3 < length) {
                    int i5 = i4 + 1;
                    sb.append(charArray2[(bArr[i5] >> 4) & 15]);
                    sb.append('-');
                    sb.append(charArray2[bArr[i5] & Ascii.SI]);
                    i2 = ((((bArr[i4] & 255) * 7) + (bArr[i5] & 255)) + (i2 * 5)) % 36;
                }
            }
            i = i3;
        }
        sb.append('x');
        return sb.toString();
    }

    private static String rawToHexFingerprint(byte[] bArr) {
        char[] charArray = new ObfuscatedString(new long[]{4738185929021244409L, 7452164056106891425L, 7551969513405208029L}).toString().toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i++) {
            if (i != 0) {
                sb.append(':');
            }
            byte b = bArr[i];
            sb.append(charArray[(b & 255) >> 4]);
            sb.append(charArray[b & Ascii.SI]);
        }
        return sb.toString();
    }

    private String[] recommendHostkeyAlgorithms(String str) {
        Iterator<KnownHostsEntry> it = getAllKnownHostEntries(str).iterator();
        String str2 = null;
        while (it.hasNext()) {
            String str3 = it.next().algorithm;
            if (str2 != null) {
                if (!str2.equals(str3)) {
                    return null;
                }
            } else {
                str2 = str3;
            }
        }
        if (str2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<KeyAlgorithm<PublicKey, PrivateKey>> it2 = KeyAlgorithmManager.getSupportedAlgorithms().iterator();
        while (it2.hasNext()) {
            arrayList.add(arrayList.size(), it2.next().getKeyFormat());
        }
        if (arrayList.contains(str2)) {
            arrayList.remove(str2);
            arrayList.add(0, str2);
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public void addHostkey(String[] strArr, String str, byte[] bArr) {
        if (strArr != null) {
            for (KeyAlgorithm<PublicKey, PrivateKey> keyAlgorithm : KeyAlgorithmManager.getSupportedAlgorithms()) {
                if (str.equals(keyAlgorithm.getKeyFormat())) {
                    PublicKey decodePublicKey = keyAlgorithm.decodePublicKey(bArr);
                    synchronized (this.publicKeys) {
                        this.publicKeys.add(new KnownHostsEntry(this, strArr, decodePublicKey, str, 0));
                    }
                    return;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-3061824422895606254L, -5724430792587419757L, 7304667957390535209L, 6803692794873208898L}).toString());
            sb.append(str);
            throw new IOWarningException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4291320424578562598L, 7722413278535973811L}), sb));
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8218877922640187291L, 6249708202733830393L, -8224658210192439019L, -16503909912135222L, -135281517519602840L}).toString());
    }

    public void addHostkeys(char[] cArr) {
        initialize(cArr);
    }

    public String[] getPreferredServerHostkeyAlgorithmOrder(String str) {
        String[] recommendHostkeyAlgorithms = recommendHostkeyAlgorithms(str);
        if (recommendHostkeyAlgorithms != null) {
            return recommendHostkeyAlgorithms;
        }
        try {
            for (InetAddress inetAddress : InetAddress.getAllByName(str)) {
                String[] recommendHostkeyAlgorithms2 = recommendHostkeyAlgorithms(inetAddress.getHostAddress());
                if (recommendHostkeyAlgorithms2 != null) {
                    return recommendHostkeyAlgorithms2;
                }
            }
        } catch (UnknownHostException unused) {
        }
        return null;
    }

    public int verifyHostkey(String str, String str2, byte[] bArr) {
        PublicKey decodeHostKey = decodeHostKey(str2, bArr);
        int checkKey = checkKey(str, decodeHostKey);
        if (checkKey == 0) {
            return checkKey;
        }
        try {
            for (InetAddress inetAddress : InetAddress.getAllByName(str)) {
                int checkKey2 = checkKey(inetAddress.getHostAddress(), decodeHostKey);
                if (checkKey2 == 0) {
                    return checkKey2;
                }
                if (checkKey2 == 2) {
                    checkKey = 2;
                }
            }
        } catch (UnknownHostException unused) {
        }
        return checkKey;
    }

    public void addHostkeys(File file) {
        initialize(file);
    }

    public KnownHosts(char[] cArr) {
        initialize(cArr);
    }

    public KnownHosts(File file) {
        initialize(file);
    }

    private void initialize(File file) {
        char[] cArr = new char[512];
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        if (!file.createNewFile()) {
            LOGGER.log(10, new ObfuscatedString(new long[]{383784470759595084L, 7719089912308464229L, -6991692160859975091L, 1664465253452604352L, -6959673057271029365L, 8726780003997412407L}).toString());
        }
        FileReader fileReader = new FileReader(file);
        while (true) {
            try {
                int read = fileReader.read(cArr);
                if (read < 0) {
                    fileReader.close();
                    initialize(charArrayWriter.toCharArray());
                    return;
                }
                charArrayWriter.write(cArr, 0, read);
            } catch (Throwable th) {
                try {
                    fileReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }
}
