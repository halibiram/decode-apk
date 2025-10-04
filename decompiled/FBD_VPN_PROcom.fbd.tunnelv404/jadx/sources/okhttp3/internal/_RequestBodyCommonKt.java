package okhttp3.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0002\u001a$\u0010\u0006\u001a\u00020\u0002*\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b\u001a\u0014\u0010\u0006\u001a\u00020\u0002*\u00020\r2\b\u0010\b\u001a\u0004\u0018\u00010\t¨\u0006\u000e"}, d2 = {"commonContentLength", "", "Lokhttp3/RequestBody;", "commonIsDuplex", "", "commonIsOneShot", "commonToRequestBody", "", "contentType", "Lokhttp3/MediaType;", TypedValues.CycleType.S_WAVE_OFFSET, "", "byteCount", "Lokio/ByteString;", "okhttp"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class _RequestBodyCommonKt {
    public static final long commonContentLength(@NotNull RequestBody requestBody) {
        Intrinsics.checkNotNullParameter(requestBody, "<this>");
        return -1L;
    }

    public static final boolean commonIsDuplex(@NotNull RequestBody requestBody) {
        Intrinsics.checkNotNullParameter(requestBody, "<this>");
        return false;
    }

    public static final boolean commonIsOneShot(@NotNull RequestBody requestBody) {
        Intrinsics.checkNotNullParameter(requestBody, "<this>");
        return false;
    }

    @NotNull
    public static final RequestBody commonToRequestBody(@NotNull final byte[] bArr, @Nullable final MediaType mediaType, final int i, final int i2) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        _UtilCommonKt.checkOffsetAndCount(bArr.length, i, i2);
        return new RequestBody() { // from class: okhttp3.internal._RequestBodyCommonKt$commonToRequestBody$1
            @Override // okhttp3.RequestBody
            public long contentLength() {
                return i2;
            }

            @Override // okhttp3.RequestBody
            @Nullable
            /* renamed from: contentType, reason: from getter */
            public MediaType getF2998xfbe0c504() {
                return MediaType.this;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(@NotNull BufferedSink sink) {
                Intrinsics.checkNotNullParameter(sink, "sink");
                sink.write(bArr, i, i2);
            }
        };
    }

    @NotNull
    public static final RequestBody commonToRequestBody(@NotNull final ByteString byteString, @Nullable final MediaType mediaType) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return new RequestBody() { // from class: okhttp3.internal._RequestBodyCommonKt$commonToRequestBody$2
            @Override // okhttp3.RequestBody
            public long contentLength() {
                return byteString.size();
            }

            @Override // okhttp3.RequestBody
            @Nullable
            /* renamed from: contentType, reason: from getter */
            public MediaType getF2998xfbe0c504() {
                return MediaType.this;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(@NotNull BufferedSink sink) {
                Intrinsics.checkNotNullParameter(sink, "sink");
                sink.write(byteString);
            }
        };
    }
}
