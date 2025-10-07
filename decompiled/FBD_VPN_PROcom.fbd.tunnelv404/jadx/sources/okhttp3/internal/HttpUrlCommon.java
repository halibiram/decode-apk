package okhttp3.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\bÀ\u0002\u0018\u00002\u00020\u0001J3\u0010\r\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\u000b\u0010\fJW\u0010\u0014\u001a\u00020\u0003*\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lokhttp3/internal/HttpUrlCommon;", "", "Lokio/Buffer;", "", "encoded", "", "pos", "limit", "", "plusIsSpace", "", "writePercentDecoded$okhttp", "(Lokio/Buffer;Ljava/lang/String;IIZ)V", "writePercentDecoded", "encodeSet", "alreadyEncoded", "strict", "unicodeAllowed", "canonicalize$okhttp", "(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;", "canonicalize", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class HttpUrlCommon {

    @NotNull
    public static final HttpUrlCommon INSTANCE = new Object();

    public static /* synthetic */ String canonicalize$okhttp$default(HttpUrlCommon httpUrlCommon, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, int i3, Object obj) {
        int i4;
        int i5;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        if ((i3 & 1) != 0) {
            i4 = 0;
        } else {
            i4 = i;
        }
        if ((i3 & 2) != 0) {
            i5 = str.length();
        } else {
            i5 = i2;
        }
        if ((i3 & 8) != 0) {
            z5 = false;
        } else {
            z5 = z;
        }
        if ((i3 & 16) != 0) {
            z6 = false;
        } else {
            z6 = z2;
        }
        if ((i3 & 32) != 0) {
            z7 = false;
        } else {
            z7 = z3;
        }
        if ((i3 & 64) != 0) {
            z8 = false;
        } else {
            z8 = z4;
        }
        return httpUrlCommon.canonicalize$okhttp(str, i4, i5, str2, z5, z6, z7, z8);
    }

    @NotNull
    public final String canonicalize$okhttp(@NotNull String str, int i, int i2, @NotNull String encodeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        String canonicalizeWithCharset$okhttp;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(encodeSet, "encodeSet");
        canonicalizeWithCharset$okhttp = JvmHttpUrl.INSTANCE.canonicalizeWithCharset$okhttp(str, (r23 & 1) != 0 ? 0 : i, (r23 & 2) != 0 ? str.length() : i2, encodeSet, (r23 & 8) != 0 ? false : z, (r23 & 16) != 0 ? false : z2, (r23 & 32) != 0 ? false : z3, (r23 & 64) != 0 ? false : z4, (r23 & 128) != 0 ? null : null);
        return canonicalizeWithCharset$okhttp;
    }

    public final void writePercentDecoded$okhttp(@NotNull Buffer buffer, @NotNull String encoded, int i, int i2, boolean z) {
        int i3;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(encoded, "encoded");
        while (i < i2) {
            int codePointAt = encoded.codePointAt(i);
            if (codePointAt == 37 && (i3 = i + 2) < i2) {
                int parseHexDigit = _UtilCommonKt.parseHexDigit(encoded.charAt(i + 1));
                int parseHexDigit2 = _UtilCommonKt.parseHexDigit(encoded.charAt(i3));
                if (parseHexDigit != -1 && parseHexDigit2 != -1) {
                    buffer.writeByte((parseHexDigit << 4) + parseHexDigit2);
                    i = Character.charCount(codePointAt) + i3;
                }
                buffer.writeUtf8CodePoint(codePointAt);
                i += Character.charCount(codePointAt);
            } else {
                if (codePointAt == 43 && z) {
                    buffer.writeByte(32);
                    i++;
                }
                buffer.writeUtf8CodePoint(codePointAt);
                i += Character.charCount(codePointAt);
            }
        }
    }
}
