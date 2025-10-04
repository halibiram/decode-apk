package kotlin.uuid;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import defpackage.AbstractC0362x4440ab85;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.HexExtensionsKt;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;

/* renamed from: kotlin.uuid.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0306x3271d0aa extends AbstractC0305xfbe0c504 {
    public static final String access$truncateForErrorMessage(String str, int i) {
        if (str.length() <= i) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(0, i);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        sb.append(substring);
        sb.append("...");
        return sb.toString();
    }

    public static final void checkHyphenAt(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.charAt(i) == '-') {
            return;
        }
        StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Expected '-' (hyphen) at index ", ", but was '");
        m2939xab142723.append(str.charAt(i));
        m2939xab142723.append('\'');
        throw new IllegalArgumentException(m2939xab142723.toString().toString());
    }

    @ExperimentalUuidApi
    public static final void formatBytesIntoCommonImpl(long j, @NotNull byte[] dst, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(dst, "dst");
        int i4 = 7 - i2;
        int i5 = 8 - i3;
        if (i5 > i4) {
            return;
        }
        while (true) {
            int i6 = HexExtensionsKt.getBYTE_TO_LOWER_CASE_HEX_DIGITS()[(int) ((j >> (i4 << 3)) & 255)];
            int i7 = i + 1;
            dst[i] = (byte) (i6 >> 8);
            i += 2;
            dst[i7] = (byte) i6;
            if (i4 != i5) {
                i4--;
            } else {
                return;
            }
        }
    }

    public static final long getLongAtCommonImpl(@NotNull byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return (bArr[i + 7] & 255) | ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    public static final void setLongAtCommonImpl(@NotNull byte[] bArr, int i, long j) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        int i2 = 7;
        while (-1 < i2) {
            bArr[i] = (byte) (j >> (i2 << 3));
            i2--;
            i++;
        }
    }

    @ExperimentalUuidApi
    @NotNull
    public static final Uuid uuidFromRandomBytes(@NotNull byte[] randomBytes) {
        Intrinsics.checkNotNullParameter(randomBytes, "randomBytes");
        byte b = (byte) (randomBytes[6] & Ascii.SI);
        randomBytes[6] = b;
        randomBytes[6] = (byte) (b | SignedBytes.MAX_POWER_OF_TWO);
        byte b2 = (byte) (randomBytes[8] & Utf8.REPLACEMENT_BYTE);
        randomBytes[8] = b2;
        randomBytes[8] = (byte) (b2 | 128);
        return Uuid.Companion.fromByteArray(randomBytes);
    }

    @ExperimentalUuidApi
    @NotNull
    public static final Uuid uuidParseHexCommonImpl(@NotNull String hexString) {
        Intrinsics.checkNotNullParameter(hexString, "hexString");
        return Uuid.Companion.fromLongs(HexExtensionsKt.hexToLong$default(hexString, 0, 16, null, 4, null), HexExtensionsKt.hexToLong$default(hexString, 16, 32, null, 4, null));
    }

    @ExperimentalUuidApi
    @NotNull
    public static final Uuid uuidParseHexDashCommonImpl(@NotNull String hexDashString) {
        Intrinsics.checkNotNullParameter(hexDashString, "hexDashString");
        long hexToLong$default = HexExtensionsKt.hexToLong$default(hexDashString, 0, 8, null, 4, null);
        checkHyphenAt(hexDashString, 8);
        long hexToLong$default2 = HexExtensionsKt.hexToLong$default(hexDashString, 9, 13, null, 4, null);
        checkHyphenAt(hexDashString, 13);
        long hexToLong$default3 = HexExtensionsKt.hexToLong$default(hexDashString, 14, 18, null, 4, null);
        checkHyphenAt(hexDashString, 18);
        long hexToLong$default4 = HexExtensionsKt.hexToLong$default(hexDashString, 19, 23, null, 4, null);
        checkHyphenAt(hexDashString, 23);
        return Uuid.Companion.fromLongs((hexToLong$default << 32) | (hexToLong$default2 << 16) | hexToLong$default3, (hexToLong$default4 << 48) | HexExtensionsKt.hexToLong$default(hexDashString, 24, 36, null, 4, null));
    }
}
