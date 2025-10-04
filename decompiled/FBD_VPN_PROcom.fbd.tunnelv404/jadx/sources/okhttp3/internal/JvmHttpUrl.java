package okhttp3.internal;

import com.google.common.base.Ascii;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001J]\u0010\u0013\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0000¢\u0006\u0004\b\u0011\u0010\u0012Jc\u0010\u0016\u001a\u00020\u0003*\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0000¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/JvmHttpUrl;", "", "Lokio/Buffer;", "", "input", "", "pos", "limit", "encodeSet", "", "alreadyEncoded", "strict", "plusIsSpace", "unicodeAllowed", "Ljava/nio/charset/Charset;", "charset", "", "writeCanonicalized$okhttp", "(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V", "writeCanonicalized", "canonicalizeWithCharset$okhttp", "(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;", "canonicalizeWithCharset", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class JvmHttpUrl {

    @NotNull
    public static final JvmHttpUrl INSTANCE = new Object();

    public static /* synthetic */ String canonicalizeWithCharset$okhttp$default(JvmHttpUrl jvmHttpUrl, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset, int i3, Object obj) {
        return jvmHttpUrl.canonicalizeWithCharset$okhttp(str, (i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? str.length() : i2, str2, (i3 & 8) != 0 ? false : z, (i3 & 16) != 0 ? false : z2, (i3 & 32) != 0 ? false : z3, (i3 & 64) != 0 ? false : z4, (i3 & 128) != 0 ? null : charset);
    }

    @NotNull
    public final String canonicalizeWithCharset$okhttp(@NotNull String str, int i, int i2, @NotNull String encodeSet, boolean z, boolean z2, boolean z3, boolean z4, @Nullable Charset charset) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(encodeSet, "encodeSet");
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || z4) && !StringsKt__StringsKt.contains$default((CharSequence) encodeSet, (char) codePointAt, false, 2, (Object) null) && ((codePointAt != 37 || (z && (!z2 || CommonHttpUrl.INSTANCE.isPercentEncoded$okhttp(str, i3, i2)))) && (codePointAt != 43 || !z3)))) {
                i3 += Character.charCount(codePointAt);
            } else {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, i3);
                writeCanonicalized$okhttp(buffer, str, i3, i2, encodeSet, z, z2, z3, z4, charset);
                return buffer.readUtf8();
            }
        }
        String substring = str.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public final void writeCanonicalized$okhttp(@NotNull Buffer buffer, @NotNull String input, int i, int i2, @NotNull String encodeSet, boolean z, boolean z2, boolean z3, boolean z4, @Nullable Charset charset) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(encodeSet, "encodeSet");
        int i3 = i;
        Buffer buffer2 = null;
        while (i3 < i2) {
            int codePointAt = input.codePointAt(i3);
            if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                String str = "+";
                if (codePointAt == 32 && encodeSet == CommonHttpUrl.FORM_ENCODE_SET) {
                    buffer.writeUtf8("+");
                } else if (codePointAt == 43 && z3) {
                    if (!z) {
                        str = "%2B";
                    }
                    buffer.writeUtf8(str);
                } else if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || z4) && !StringsKt__StringsKt.contains$default((CharSequence) encodeSet, (char) codePointAt, false, 2, (Object) null) && (codePointAt != 37 || (z && (!z2 || CommonHttpUrl.INSTANCE.isPercentEncoded$okhttp(input, i3, i2)))))) {
                    buffer.writeUtf8CodePoint(codePointAt);
                } else {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    if (charset != null && !Intrinsics.areEqual(charset, Charsets.UTF_8)) {
                        buffer2.writeString(input, i3, Character.charCount(codePointAt) + i3, charset);
                    } else {
                        buffer2.writeUtf8CodePoint(codePointAt);
                    }
                    while (!buffer2.exhausted()) {
                        byte readByte = buffer2.readByte();
                        buffer.writeByte(37);
                        CommonHttpUrl commonHttpUrl = CommonHttpUrl.INSTANCE;
                        buffer.writeByte((int) commonHttpUrl.getHEX_DIGITS$okhttp()[((readByte & 255) >> 4) & 15]);
                        buffer.writeByte((int) commonHttpUrl.getHEX_DIGITS$okhttp()[readByte & Ascii.SI]);
                    }
                }
            }
            i3 += Character.charCount(codePointAt);
        }
    }
}
