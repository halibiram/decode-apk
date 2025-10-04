package kotlinx.serialization.internal;

import com.google.common.base.Ascii;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlinx/serialization/internal/InternalHexConverter;", "", "", "s", "", "parseHexBinary", "(Ljava/lang/String;)[B", "data", "", "lowerCase", "printHexBinary", "([BZ)Ljava/lang/String;", "", "n", "toHexString", "(I)Ljava/lang/String;", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPlatform.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Platform.common.kt\nkotlinx/serialization/internal/InternalHexConverter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,190:1\n1#2:191\n*E\n"})
/* loaded from: classes3.dex */
public final class InternalHexConverter {

    @NotNull
    public static final InternalHexConverter INSTANCE = new Object();

    public static /* synthetic */ String printHexBinary$default(InternalHexConverter internalHexConverter, byte[] bArr, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return internalHexConverter.printHexBinary(bArr, z);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static int m2385xfbe0c504(char c) {
        if ('0' <= c && c < ':') {
            return c - '0';
        }
        if ('A' <= c && c < 'G') {
            return c - '7';
        }
        if ('a' <= c && c < 'g') {
            return c - 'W';
        }
        return -1;
    }

    @NotNull
    public final byte[] parseHexBinary(@NotNull String s) {
        Intrinsics.checkNotNullParameter(s, "s");
        int length = s.length();
        if (length % 2 == 0) {
            byte[] bArr = new byte[length / 2];
            for (int i = 0; i < length; i += 2) {
                int m2385xfbe0c504 = m2385xfbe0c504(s.charAt(i));
                int i2 = i + 1;
                int m2385xfbe0c5042 = m2385xfbe0c504(s.charAt(i2));
                if (m2385xfbe0c504 != -1 && m2385xfbe0c5042 != -1) {
                    bArr[i / 2] = (byte) ((m2385xfbe0c504 << 4) + m2385xfbe0c5042);
                } else {
                    throw new IllegalArgumentException(("Invalid hex chars: " + s.charAt(i) + s.charAt(i2)).toString());
                }
            }
            return bArr;
        }
        throw new IllegalArgumentException("HexBinary string must be even length");
    }

    @NotNull
    public final String printHexBinary(@NotNull byte[] data, boolean lowerCase) {
        Intrinsics.checkNotNullParameter(data, "data");
        StringBuilder sb = new StringBuilder(data.length * 2);
        for (byte b : data) {
            sb.append("0123456789ABCDEF".charAt((b >> 4) & 15));
            sb.append("0123456789ABCDEF".charAt(b & Ascii.SI));
        }
        if (lowerCase) {
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
            String lowerCase2 = sb2.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            return lowerCase2;
        }
        String sb3 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final String toHexString(int n) {
        byte[] bArr = new byte[4];
        for (int i = 0; i < 4; i++) {
            bArr[i] = (byte) (n >> (24 - (i * 8)));
        }
        String trimStart = StringsKt__StringsKt.trimStart(printHexBinary(bArr, true), '0');
        if (trimStart.length() <= 0) {
            trimStart = null;
        }
        if (trimStart == null) {
            return "0";
        }
        return trimStart;
    }
}
