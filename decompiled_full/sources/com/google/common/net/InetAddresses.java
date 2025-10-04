package com.google.common.net;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.CharMatcher;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.hash.Hashing;
import com.google.common.io.ByteStreams;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import javax.annotation.CheckForNull;
import kotlin.UShort;

@GwtIncompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class InetAddresses {
    private static final int IPV4_PART_COUNT = 4;
    private static final int IPV6_PART_COUNT = 8;
    private static final char IPV4_DELIMITER = '.';
    private static final CharMatcher IPV4_DELIMITER_MATCHER = CharMatcher.is(IPV4_DELIMITER);
    private static final char IPV6_DELIMITER = ':';
    private static final CharMatcher IPV6_DELIMITER_MATCHER = CharMatcher.is(IPV6_DELIMITER);
    private static final Inet4Address LOOPBACK4 = (Inet4Address) forString(new ObfuscatedString(new long[]{-5337629025122131847L, -4000073847541302879L, 7038145623843038560L}).toString());
    private static final Inet4Address ANY4 = (Inet4Address) forString(new ObfuscatedString(new long[]{-8766015970059076916L, -3644681963671093636L}).toString());

    /* loaded from: classes2.dex */
    public static final class TeredoInfo {
        private final Inet4Address client;
        private final int flags;
        private final int port;
        private final Inet4Address server;

        public TeredoInfo(@CheckForNull Inet4Address inet4Address, @CheckForNull Inet4Address inet4Address2, int i, int i2) {
            boolean z;
            boolean z2 = false;
            if (i >= 0 && i <= 65535) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{2004867725872765357L, 2420567746132049413L, -8813968379229278948L, -6190186025051111088L, -9141265026747504052L, 1845819658592251164L, 8160192049525869501L}).toString(), i);
            if (i2 >= 0 && i2 <= 65535) {
                z2 = true;
            }
            Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{4766638422105247449L, -8062809429621683626L, 5964377412804646614L, -31427307273125240L, -534319789704840055L, -1996874303569777347L, -7358895398789980750L, 2109064877106268829L}).toString(), i2);
            this.server = (Inet4Address) MoreObjects.firstNonNull(inet4Address, InetAddresses.ANY4);
            this.client = (Inet4Address) MoreObjects.firstNonNull(inet4Address2, InetAddresses.ANY4);
            this.port = i;
            this.flags = i2;
        }

        public Inet4Address getClient() {
            return this.client;
        }

        public int getFlags() {
            return this.flags;
        }

        public int getPort() {
            return this.port;
        }

        public Inet4Address getServer() {
            return this.server;
        }
    }

    private InetAddresses() {
    }

    private static InetAddress bytesToInetAddress(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException e) {
            throw new AssertionError(e);
        }
    }

    public static int coerceToInteger(InetAddress inetAddress) {
        return ByteStreams.newDataInput(getCoercedIPv4Address(inetAddress).getAddress()).readInt();
    }

    private static void compressLongestRunOfZeroes(int[] iArr) {
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < iArr.length + 1; i4++) {
            if (i4 < iArr.length && iArr[i4] == 0) {
                if (i3 < 0) {
                    i3 = i4;
                }
            } else if (i3 >= 0) {
                int i5 = i4 - i3;
                if (i5 > i) {
                    i2 = i3;
                    i = i5;
                }
                i3 = -1;
            }
        }
        if (i >= 2) {
            Arrays.fill(iArr, i2, i + i2, -1);
        }
    }

    @CheckForNull
    private static String convertDottedQuadToHex(String str) {
        int lastIndexOf = str.lastIndexOf(58) + 1;
        String substring = str.substring(0, lastIndexOf);
        byte[] textToNumericFormatV4 = textToNumericFormatV4(str.substring(lastIndexOf));
        if (textToNumericFormatV4 == null) {
            return null;
        }
        String hexString = Integer.toHexString(((textToNumericFormatV4[0] & 255) << 8) | (textToNumericFormatV4[1] & 255));
        String hexString2 = Integer.toHexString((textToNumericFormatV4[3] & 255) | ((textToNumericFormatV4[2] & 255) << 8));
        StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(AbstractC1320xaf50c7e8.m4356x1378447b(AbstractC1320xaf50c7e8.m4356x1378447b(1, substring), hexString), hexString2));
        sb.append(substring);
        sb.append(hexString);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{7235168087550132792L, -73187771302638001L}), sb, hexString2);
    }

    public static InetAddress decrement(InetAddress inetAddress) {
        boolean z;
        byte[] address = inetAddress.getAddress();
        int length = address.length - 1;
        while (length >= 0 && address[length] == 0) {
            address[length] = -1;
            length--;
        }
        if (length >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{7192035872697583342L, -9023406132938084565L, -1477122381205303640L, -5449301199162666516L, -7291702829874060171L}).toString(), inetAddress);
        address[length] = (byte) (address[length] - 1);
        return bytesToInetAddress(address);
    }

    @CanIgnoreReturnValue
    public static InetAddress forString(String str) {
        byte[] ipStringToBytes = ipStringToBytes(str);
        if (ipStringToBytes != null) {
            return bytesToInetAddress(ipStringToBytes);
        }
        throw formatIllegalArgumentException(new ObfuscatedString(new long[]{-1855078535285058777L, -863842750853257910L, -3266505879631770035L, 250086881375249230L, 1565019240850794297L, 8823234899016227305L}).toString(), str);
    }

    public static InetAddress forUriString(String str) {
        InetAddress forUriStringNoThrow = forUriStringNoThrow(str);
        if (forUriStringNoThrow != null) {
            return forUriStringNoThrow;
        }
        throw formatIllegalArgumentException(new ObfuscatedString(new long[]{7850253572023356359L, -7527147858208784570L, -3882586509329141489L, -740702087873832574L, 1401995763529416373L}).toString(), str);
    }

    @CheckForNull
    private static InetAddress forUriStringNoThrow(String str) {
        int i;
        Preconditions.checkNotNull(str);
        if (str.startsWith(new ObfuscatedString(new long[]{5624575100486997939L, -1582846365001805406L}).toString()) && str.endsWith(new ObfuscatedString(new long[]{864660547212065112L, 6802510042779312434L}).toString())) {
            str = str.substring(1, str.length() - 1);
            i = 16;
        } else {
            i = 4;
        }
        byte[] ipStringToBytes = ipStringToBytes(str);
        if (ipStringToBytes != null && ipStringToBytes.length == i) {
            return bytesToInetAddress(ipStringToBytes);
        }
        return null;
    }

    private static IllegalArgumentException formatIllegalArgumentException(String str, Object... objArr) {
        return new IllegalArgumentException(String.format(Locale.ROOT, str, objArr));
    }

    private static InetAddress fromBigInteger(BigInteger bigInteger, boolean z) {
        boolean z2;
        int i;
        if (bigInteger.signum() >= 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-7819416480985534035L, -554414040618155502L, -4028077834940546122L, -116219871577882306L, -4564007129354759542L, -2482930278445783442L, -5632252189261154824L}).toString());
        if (z) {
            i = 16;
        } else {
            i = 4;
        }
        byte[] byteArray = bigInteger.toByteArray();
        byte[] bArr = new byte[i];
        int max = Math.max(0, byteArray.length - i);
        int length = byteArray.length - max;
        int i2 = i - length;
        for (int i3 = 0; i3 < max; i3++) {
            if (byteArray[i3] != 0) {
                throw formatIllegalArgumentException(new ObfuscatedString(new long[]{-2400113660650310042L, 4017924930603899245L, -7359252380053635757L, -4616071053770856372L, -3306045444333297159L, -3193495307741508158L, -2557626834296317917L, 6632255131847768248L, 5067305507314118270L, -5684582080970171020L, -4450576356208928078L, 3390069669006393427L}).toString(), Integer.valueOf(i), bigInteger);
            }
        }
        System.arraycopy(byteArray, max, bArr, i2, length);
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException e) {
            throw new AssertionError(e);
        }
    }

    public static Inet4Address fromIPv4BigInteger(BigInteger bigInteger) {
        return (Inet4Address) fromBigInteger(bigInteger, false);
    }

    public static Inet6Address fromIPv6BigInteger(BigInteger bigInteger) {
        return (Inet6Address) fromBigInteger(bigInteger, true);
    }

    public static Inet4Address fromInteger(int i) {
        return getInet4Address(Ints.toByteArray(i));
    }

    public static InetAddress fromLittleEndianByteArray(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[(bArr.length - i) - 1];
        }
        return InetAddress.getByAddress(bArr2);
    }

    public static Inet4Address get6to4IPv4Address(Inet6Address inet6Address) {
        Preconditions.checkArgument(is6to4Address(inet6Address), new ObfuscatedString(new long[]{-601583163534123619L, 5637010731306708406L, 2079595364255715035L, 5982748451855575795L, -2235596364753307019L, 8394371160774960318L}).toString(), toAddrString(inet6Address));
        return getInet4Address(Arrays.copyOfRange(inet6Address.getAddress(), 2, 6));
    }

    public static Inet4Address getCoercedIPv4Address(InetAddress inetAddress) {
        boolean z;
        long j;
        if (inetAddress instanceof Inet4Address) {
            return (Inet4Address) inetAddress;
        }
        byte[] address = inetAddress.getAddress();
        int i = 0;
        while (true) {
            if (i < 15) {
                if (address[i] != 0) {
                    z = false;
                    break;
                }
                i++;
            } else {
                z = true;
                break;
            }
        }
        if (z && address[15] == 1) {
            return LOOPBACK4;
        }
        if (z && address[15] == 0) {
            return ANY4;
        }
        Inet6Address inet6Address = (Inet6Address) inetAddress;
        if (hasEmbeddedIPv4ClientAddress(inet6Address)) {
            j = getEmbeddedIPv4ClientAddress(inet6Address).hashCode();
        } else {
            j = ByteBuffer.wrap(inet6Address.getAddress(), 0, 8).getLong();
        }
        int asInt = Hashing.murmur3_32_fixed().hashLong(j).asInt() | (-536870912);
        if (asInt == -1) {
            asInt = -2;
        }
        return getInet4Address(Ints.toByteArray(asInt));
    }

    public static Inet4Address getCompatIPv4Address(Inet6Address inet6Address) {
        Preconditions.checkArgument(isCompatIPv4Address(inet6Address), new ObfuscatedString(new long[]{-1838647677209788762L, 5542225475826058235L, 8461629404105861889L, 1357060673302942088L, 1182971497050841154L, -4475339975007834338L}).toString(), toAddrString(inet6Address));
        return getInet4Address(Arrays.copyOfRange(inet6Address.getAddress(), 12, 16));
    }

    public static Inet4Address getEmbeddedIPv4ClientAddress(Inet6Address inet6Address) {
        if (isCompatIPv4Address(inet6Address)) {
            return getCompatIPv4Address(inet6Address);
        }
        if (is6to4Address(inet6Address)) {
            return get6to4IPv4Address(inet6Address);
        }
        if (isTeredoAddress(inet6Address)) {
            return getTeredoInfo(inet6Address).getClient();
        }
        throw formatIllegalArgumentException(new ObfuscatedString(new long[]{3484524126748873732L, -8749138711588330243L, -1132474246900471538L, 5239306612577679756L, -4506547522045212565L, -2908291087417757384L}).toString(), toAddrString(inet6Address));
    }

    private static Inet4Address getInet4Address(byte[] bArr) {
        boolean z;
        if (bArr.length == 4) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-3915523704858450769L, -3919585131293580521L, -4869137929947956784L, -7821424937330667627L, 5932265940450940727L, -6691407618112655024L, 6081931700610166363L, -1709202070105214535L, -801504983487009514L}).toString(), bArr.length);
        return (Inet4Address) bytesToInetAddress(bArr);
    }

    public static Inet4Address getIsatapIPv4Address(Inet6Address inet6Address) {
        Preconditions.checkArgument(isIsatapAddress(inet6Address), new ObfuscatedString(new long[]{8793707482451027107L, -5177664514340210732L, 4186499053616998663L, -2700587619545803110L, -4246780568358209920L, -8226227087874901111L}).toString(), toAddrString(inet6Address));
        return getInet4Address(Arrays.copyOfRange(inet6Address.getAddress(), 12, 16));
    }

    public static TeredoInfo getTeredoInfo(Inet6Address inet6Address) {
        Preconditions.checkArgument(isTeredoAddress(inet6Address), new ObfuscatedString(new long[]{-8404280611556752793L, 6522533855331558069L, -7173048693729166477L, 4471952901051884509L, -6281474240164220681L, 994427963685992653L}).toString(), toAddrString(inet6Address));
        byte[] address = inet6Address.getAddress();
        Inet4Address inet4Address = getInet4Address(Arrays.copyOfRange(address, 4, 8));
        int readShort = ByteStreams.newDataInput(address, 8).readShort() & UShort.MAX_VALUE;
        int i = 65535 & (~ByteStreams.newDataInput(address, 10).readShort());
        byte[] copyOfRange = Arrays.copyOfRange(address, 12, 16);
        for (int i2 = 0; i2 < copyOfRange.length; i2++) {
            copyOfRange[i2] = (byte) (~copyOfRange[i2]);
        }
        return new TeredoInfo(inet4Address, getInet4Address(copyOfRange), i, readShort);
    }

    public static boolean hasEmbeddedIPv4ClientAddress(Inet6Address inet6Address) {
        if (!isCompatIPv4Address(inet6Address) && !is6to4Address(inet6Address) && !isTeredoAddress(inet6Address)) {
            return false;
        }
        return true;
    }

    private static String hextetsToIPv6String(int[] iArr) {
        boolean z;
        StringBuilder sb = new StringBuilder(39);
        int i = 0;
        boolean z2 = false;
        while (i < iArr.length) {
            if (iArr[i] >= 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                if (z2) {
                    sb.append(IPV6_DELIMITER);
                }
                sb.append(Integer.toHexString(iArr[i]));
            } else if (i == 0 || z2) {
                sb.append(new ObfuscatedString(new long[]{7816994626505046297L, 4464527357870711143L}).toString());
            }
            i++;
            z2 = z;
        }
        return sb.toString();
    }

    public static InetAddress increment(InetAddress inetAddress) {
        boolean z;
        byte[] address = inetAddress.getAddress();
        int length = address.length - 1;
        while (true) {
            z = false;
            if (length < 0 || address[length] != -1) {
                break;
            }
            address[length] = 0;
            length--;
        }
        if (length >= 0) {
            z = true;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{6855379518624894402L, -1634493063849739450L, -5796640314906035042L, -8735176645814829784L, -183577270429989680L}).toString(), inetAddress);
        address[length] = (byte) (address[length] + 1);
        return bytesToInetAddress(address);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0032, code lost:
    
        if (r3 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0034, code lost:
    
        if (r2 == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0036, code lost:
    
        r9 = convertDottedQuadToHex(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003a, code lost:
    
        if (r9 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x003c, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x003d, code lost:
    
        if (r1 == (-1)) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x003f, code lost:
    
        r9 = r9.substring(0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0047, code lost:
    
        return textToNumericFormatV6(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0048, code lost:
    
        if (r2 == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x004a, code lost:
    
        if (r1 == (-1)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x004c, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0051, code lost:
    
        return textToNumericFormatV4(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0052, code lost:
    
        return null;
     */
    @CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static byte[] ipStringToBytes(String str) {
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (true) {
            if (i < str.length()) {
                char charAt = str.charAt(i);
                if (charAt == '.') {
                    z = true;
                } else if (charAt == ':') {
                    if (z) {
                        return null;
                    }
                    z2 = true;
                } else {
                    if (charAt == '%') {
                        break;
                    }
                    if (Character.digit(charAt, 16) == -1) {
                        return null;
                    }
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
    }

    public static boolean is6to4Address(Inet6Address inet6Address) {
        byte[] address = inet6Address.getAddress();
        if (address[0] != 32 || address[1] != 2) {
            return false;
        }
        return true;
    }

    public static boolean isCompatIPv4Address(Inet6Address inet6Address) {
        byte b;
        if (!inet6Address.isIPv4CompatibleAddress()) {
            return false;
        }
        byte[] address = inet6Address.getAddress();
        if (address[12] == 0 && address[13] == 0 && address[14] == 0 && ((b = address[15]) == 0 || b == 1)) {
            return false;
        }
        return true;
    }

    public static boolean isInetAddress(String str) {
        if (ipStringToBytes(str) != null) {
            return true;
        }
        return false;
    }

    public static boolean isIsatapAddress(Inet6Address inet6Address) {
        if (isTeredoAddress(inet6Address)) {
            return false;
        }
        byte[] address = inet6Address.getAddress();
        if ((address[8] | 3) != 3 || address[9] != 0 || address[10] != 94 || address[11] != -2) {
            return false;
        }
        return true;
    }

    public static boolean isMappedIPv4Address(String str) {
        byte[] ipStringToBytes = ipStringToBytes(str);
        if (ipStringToBytes == null || ipStringToBytes.length != 16) {
            return false;
        }
        int i = 0;
        while (true) {
            if (i < 10) {
                if (ipStringToBytes[i] != 0) {
                    return false;
                }
                i++;
            } else {
                for (int i2 = 10; i2 < 12; i2++) {
                    if (ipStringToBytes[i2] != -1) {
                        return false;
                    }
                }
                return true;
            }
        }
    }

    public static boolean isMaximum(InetAddress inetAddress) {
        for (byte b : inetAddress.getAddress()) {
            if (b != -1) {
                return false;
            }
        }
        return true;
    }

    public static boolean isTeredoAddress(Inet6Address inet6Address) {
        byte[] address = inet6Address.getAddress();
        if (address[0] != 32 || address[1] != 1 || address[2] != 0 || address[3] != 0) {
            return false;
        }
        return true;
    }

    public static boolean isUriInetAddress(String str) {
        if (forUriStringNoThrow(str) != null) {
            return true;
        }
        return false;
    }

    private static short parseHextet(String str, int i, int i2) {
        int i3 = i2 - i;
        if (i3 > 0 && i3 <= 4) {
            int i4 = 0;
            while (i < i2) {
                i4 = (i4 << 4) | Character.digit(str.charAt(i), 16);
                i++;
            }
            return (short) i4;
        }
        throw new NumberFormatException();
    }

    private static byte parseOctet(String str, int i, int i2) {
        int i3 = i2 - i;
        if (i3 > 0 && i3 <= 3) {
            if (i3 > 1 && str.charAt(i) == '0') {
                throw new NumberFormatException();
            }
            int i4 = 0;
            while (i < i2) {
                int i5 = i4 * 10;
                int digit = Character.digit(str.charAt(i), 10);
                if (digit >= 0) {
                    i4 = i5 + digit;
                    i++;
                } else {
                    throw new NumberFormatException();
                }
            }
            if (i4 <= 255) {
                return (byte) i4;
            }
            throw new NumberFormatException();
        }
        throw new NumberFormatException();
    }

    @CheckForNull
    private static byte[] textToNumericFormatV4(String str) {
        if (IPV4_DELIMITER_MATCHER.countIn(str) + 1 != 4) {
            return null;
        }
        byte[] bArr = new byte[4];
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            int indexOf = str.indexOf(46, i);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            try {
                bArr[i2] = parseOctet(str, i, indexOf);
                i = indexOf + 1;
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return bArr;
    }

    @CheckForNull
    private static byte[] textToNumericFormatV6(String str) {
        int countIn = IPV6_DELIMITER_MATCHER.countIn(str);
        if (countIn >= 2 && countIn <= 8) {
            int i = 1;
            int i2 = countIn + 1;
            int i3 = 8 - i2;
            boolean z = false;
            for (int i4 = 0; i4 < str.length() - 1; i4++) {
                if (str.charAt(i4) == ':' && str.charAt(i4 + 1) == ':') {
                    if (z) {
                        return null;
                    }
                    int i5 = i3 + 1;
                    if (i4 == 0) {
                        i5 = i3 + 2;
                    }
                    if (i4 == str.length() - 2) {
                        i5++;
                    }
                    i3 = i5;
                    z = true;
                }
            }
            if (str.charAt(0) == ':' && str.charAt(1) != ':') {
                return null;
            }
            if (str.charAt(str.length() - 1) == ':' && str.charAt(str.length() - 2) != ':') {
                return null;
            }
            if (z && i3 <= 0) {
                return null;
            }
            if (!z && i2 != 8) {
                return null;
            }
            ByteBuffer allocate = ByteBuffer.allocate(16);
            try {
                if (str.charAt(0) != ':') {
                    i = 0;
                }
                while (i < str.length()) {
                    int indexOf = str.indexOf(58, i);
                    if (indexOf == -1) {
                        indexOf = str.length();
                    }
                    if (str.charAt(i) == ':') {
                        for (int i6 = 0; i6 < i3; i6++) {
                            allocate.putShort((short) 0);
                        }
                    } else {
                        allocate.putShort(parseHextet(str, i, indexOf));
                    }
                    i = indexOf + 1;
                }
                return allocate.array();
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public static String toAddrString(InetAddress inetAddress) {
        Preconditions.checkNotNull(inetAddress);
        if (inetAddress instanceof Inet4Address) {
            return inetAddress.getHostAddress();
        }
        Preconditions.checkArgument(inetAddress instanceof Inet6Address);
        byte[] address = inetAddress.getAddress();
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            int i2 = i * 2;
            iArr[i] = Ints.fromBytes((byte) 0, (byte) 0, address[i2], address[i2 + 1]);
        }
        compressLongestRunOfZeroes(iArr);
        return hextetsToIPv6String(iArr);
    }

    public static BigInteger toBigInteger(InetAddress inetAddress) {
        return new BigInteger(1, inetAddress.getAddress());
    }

    public static String toUriString(InetAddress inetAddress) {
        if (inetAddress instanceof Inet6Address) {
            String addrString = toAddrString(inetAddress);
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(2, addrString));
            sb.append(new ObfuscatedString(new long[]{-475561610422241719L, 8045597224119221507L}).toString());
            sb.append(addrString);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8564747836758843302L, -2087760543023078509L}), sb);
        }
        return toAddrString(inetAddress);
    }
}
