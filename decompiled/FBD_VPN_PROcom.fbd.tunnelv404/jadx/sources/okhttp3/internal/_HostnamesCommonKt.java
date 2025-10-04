package okhttp3.internal;

import defpackage.AbstractC1197x89633db9;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.idn.IdnaMappingTableInstanceKt;
import okhttp3.internal.idn.Punycode;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0010\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0004\u0010\u0003\u001a\u0013\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0005\u0010\u0003\u001a)\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a7\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0017\u0010\u0011\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0017\u0010\u0015\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0015\u0010\u0012\u001a\u0015\u0010\u0016\u001a\u0004\u0018\u00010\u0000*\u00020\u0000H\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0018\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0019\u0010\u0017¨\u0006\u001a"}, d2 = {"", "", "canParseAsIpAddress", "(Ljava/lang/String;)Z", "containsInvalidLabelLengths", "containsInvalidHostnameAsciiCodes", "input", "", "pos", "limit", "", "decodeIpv6", "(Ljava/lang/String;II)[B", "address", "addressOffset", "decodeIpv4Suffix", "(Ljava/lang/String;II[BI)Z", "inet6AddressToAscii", "([B)Ljava/lang/String;", "canonicalizeInetAddress", "([B)[B", "inet4AddressToAscii", "toCanonicalHost", "(Ljava/lang/String;)Ljava/lang/String;", "host", "idnToAscii", "okhttp"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class _HostnamesCommonKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Regex f2991xfbe0c504 = new Regex("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    public static final boolean canParseAsIpAddress(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return f2991xfbe0c504.matches(str);
    }

    @NotNull
    public static final byte[] canonicalizeInetAddress(@NotNull byte[] address) {
        Intrinsics.checkNotNullParameter(address, "address");
        if (address.length == 16) {
            for (int i = 0; i < 10; i++) {
                if (address[i] != 0) {
                    return address;
                }
            }
            if (address[10] == -1 && address[11] == -1) {
                return ArraysKt___ArraysKt.sliceArray(address, AbstractC0296x1378447b.until(12, 16));
            }
            return address;
        }
        return address;
    }

    public static final boolean containsInvalidHostnameAsciiCodes(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Intrinsics.compare((int) charAt, 31) <= 0 || Intrinsics.compare((int) charAt, 127) >= 0 || StringsKt__StringsKt.indexOf$default((CharSequence) " #%/:?@[\\]", charAt, 0, false, 6, (Object) null) != -1) {
                return true;
            }
        }
        return false;
    }

    public static final boolean containsInvalidLabelLengths(@NotNull String str) {
        int i;
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        if (1 <= length && length < 254) {
            int i2 = 0;
            while (true) {
                int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, '.', i2, false, 4, (Object) null);
                if (indexOf$default == -1) {
                    i = str.length() - i2;
                } else {
                    i = indexOf$default - i2;
                }
                if (1 > i || i >= 64) {
                    break;
                }
                if (indexOf$default == -1 || indexOf$default == str.length() - 1) {
                    break;
                }
                i2 = indexOf$default + 1;
            }
            return false;
        }
        return true;
    }

    public static final boolean decodeIpv4Suffix(@NotNull String input, int i, int i2, @NotNull byte[] address, int i3) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(address, "address");
        int i4 = i3;
        while (i < i2) {
            if (i4 == address.length) {
                return false;
            }
            if (i4 != i3) {
                if (input.charAt(i) != '.') {
                    return false;
                }
                i++;
            }
            int i5 = i;
            int i6 = 0;
            while (i5 < i2) {
                char charAt = input.charAt(i5);
                if (Intrinsics.compare((int) charAt, 48) < 0 || Intrinsics.compare((int) charAt, 57) > 0) {
                    break;
                }
                if ((i6 == 0 && i != i5) || (i6 = ((i6 * 10) + charAt) - 48) > 255) {
                    return false;
                }
                i5++;
            }
            if (i5 - i == 0) {
                return false;
            }
            address[i4] = (byte) i6;
            i4++;
            i = i5;
        }
        if (i4 != i3 + 4) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x009a, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0070  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final byte[] decodeIpv6(@NotNull String input, int i, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(input, "input");
        byte[] bArr = new byte[16];
        int i4 = i;
        int i5 = 0;
        int i6 = -1;
        int i7 = -1;
        while (true) {
            if (i4 < i2) {
                if (i5 == 16) {
                    return null;
                }
                int i8 = i4 + 2;
                if (i8 <= i2 && AbstractC1197x89633db9.startsWith$default(input, "::", i4, false, 4, null)) {
                    if (i6 != -1) {
                        return null;
                    }
                    i5 += 2;
                    if (i8 == i2) {
                        i6 = i5;
                        break;
                    }
                    i7 = i8;
                    i6 = i5;
                    i4 = i7;
                    int i9 = 0;
                    while (i4 < i2) {
                    }
                    i3 = i4 - i7;
                    if (i3 == 0) {
                        break;
                    }
                    break;
                }
                if (i5 != 0) {
                    if (AbstractC1197x89633db9.startsWith$default(input, ":", i4, false, 4, null)) {
                        i4++;
                    } else {
                        if (!AbstractC1197x89633db9.startsWith$default(input, ".", i4, false, 4, null) || !decodeIpv4Suffix(input, i7, i2, bArr, i5 - 2)) {
                            return null;
                        }
                        i5 += 2;
                    }
                }
                i7 = i4;
                i4 = i7;
                int i92 = 0;
                while (i4 < i2) {
                    int parseHexDigit = _UtilCommonKt.parseHexDigit(input.charAt(i4));
                    if (parseHexDigit == -1) {
                        break;
                    }
                    i92 = (i92 << 4) + parseHexDigit;
                    i4++;
                }
                i3 = i4 - i7;
                if (i3 == 0 || i3 > 4) {
                    break;
                }
                int i10 = i5 + 1;
                bArr[i5] = (byte) ((i92 >>> 8) & 255);
                i5 += 2;
                bArr[i10] = (byte) (i92 & 255);
            } else {
                break;
            }
        }
        if (i5 != 16) {
            if (i6 == -1) {
                return null;
            }
            ArraysKt___ArraysJvmKt.copyInto(bArr, bArr, 16 - (i5 - i6), i6, i5);
            ArraysKt___ArraysJvmKt.fill(bArr, (byte) 0, i6, (16 - i5) + i6);
        }
        return bArr;
    }

    @Nullable
    public static final String idnToAscii(@NotNull String host) {
        Intrinsics.checkNotNullParameter(host, "host");
        Buffer writeUtf8 = new Buffer().writeUtf8(host);
        Buffer buffer = new Buffer();
        while (!writeUtf8.exhausted()) {
            if (!IdnaMappingTableInstanceKt.getIDNA_MAPPING_TABLE().map(writeUtf8.readUtf8CodePoint(), buffer)) {
                return null;
            }
        }
        writeUtf8.writeUtf8(_NormalizeJvmKt.normalizeNfc(buffer.readUtf8()));
        Punycode punycode = Punycode.INSTANCE;
        String decode = punycode.decode(writeUtf8.readUtf8());
        if (decode == null || !Intrinsics.areEqual(decode, _NormalizeJvmKt.normalizeNfc(decode))) {
            return null;
        }
        return punycode.encode(decode);
    }

    @NotNull
    public static final String inet4AddressToAscii(@NotNull byte[] address) {
        Intrinsics.checkNotNullParameter(address, "address");
        if (address.length == 4) {
            return new Buffer().writeDecimalLong(_UtilCommonKt.and(address[0], 255)).writeByte(46).writeDecimalLong(_UtilCommonKt.and(address[1], 255)).writeByte(46).writeDecimalLong(_UtilCommonKt.and(address[2], 255)).writeByte(46).writeDecimalLong(_UtilCommonKt.and(address[3], 255)).readUtf8();
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @NotNull
    public static final String inet6AddressToAscii(@NotNull byte[] address) {
        Intrinsics.checkNotNullParameter(address, "address");
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < address.length) {
            int i5 = i3;
            while (i5 < 16 && address[i5] == 0 && address[i5 + 1] == 0) {
                i5 += 2;
            }
            int i6 = i5 - i3;
            if (i6 > i4 && i6 >= 4) {
                i = i3;
                i4 = i6;
            }
            i3 = i5 + 2;
        }
        Buffer buffer = new Buffer();
        while (i2 < address.length) {
            if (i2 == i) {
                buffer.writeByte(58);
                i2 += i4;
                if (i2 == 16) {
                    buffer.writeByte(58);
                }
            } else {
                if (i2 > 0) {
                    buffer.writeByte(58);
                }
                buffer.writeHexadecimalUnsignedLong((_UtilCommonKt.and(address[i2], 255) << 8) | _UtilCommonKt.and(address[i2 + 1], 255));
                i2 += 2;
            }
        }
        return buffer.readUtf8();
    }

    @Nullable
    public static final String toCanonicalHost(@NotNull String str) {
        byte[] decodeIpv6;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) ":", false, 2, (Object) null)) {
            if (AbstractC1197x89633db9.startsWith$default(str, "[", false, 2, null) && AbstractC1197x89633db9.endsWith$default(str, "]", false, 2, null)) {
                decodeIpv6 = decodeIpv6(str, 1, str.length() - 1);
            } else {
                decodeIpv6 = decodeIpv6(str, 0, str.length());
            }
            if (decodeIpv6 == null) {
                return null;
            }
            byte[] canonicalizeInetAddress = canonicalizeInetAddress(decodeIpv6);
            if (canonicalizeInetAddress.length == 16) {
                return inet6AddressToAscii(canonicalizeInetAddress);
            }
            if (canonicalizeInetAddress.length == 4) {
                return inet4AddressToAscii(canonicalizeInetAddress);
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
        }
        String idnToAscii = idnToAscii(str);
        if (idnToAscii == null || idnToAscii.length() == 0 || containsInvalidHostnameAsciiCodes(idnToAscii) || containsInvalidLabelLengths(idnToAscii)) {
            return null;
        }
        return idnToAscii;
    }
}
