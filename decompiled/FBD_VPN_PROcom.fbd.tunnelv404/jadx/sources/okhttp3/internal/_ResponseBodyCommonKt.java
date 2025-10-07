package okhttp3.internal;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\f\u0010\u0007\u001a\u00020\b*\u00020\u0001H\u0000\u001a\f\u0010\t\u001a\u00020\n*\u00020\u0001H\u0000\u001a\f\u0010\u000b\u001a\u00020\f*\u00020\u0001H\u0000\u001aG\u0010\r\u001a\u0002H\u000e\"\b\b\u0000\u0010\u000e*\u00020\u000f*\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u000e0\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u00130\u0011H\u0080\bø\u0001\u0000¢\u0006\u0002\u0010\u0014\u001a\u0016\u0010\u0015\u001a\u00020\u0001*\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u0016\u0010\u0015\u001a\u00020\u0001*\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, d2 = {"commonAsResponseBody", "Lokhttp3/ResponseBody;", "Lokio/BufferedSource;", "contentType", "Lokhttp3/MediaType;", "contentLength", "", "commonByteString", "Lokio/ByteString;", "commonBytes", "", "commonClose", "", "commonConsumeSource", ExifInterface.GPS_DIRECTION_TRUE, "", "consumer", "Lkotlin/Function1;", "sizeMapper", "", "(Lokhttp3/ResponseBody;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "commonToResponseBody", "okhttp"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-ResponseBodyCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -ResponseBodyCommon.kt\nokhttp3/internal/_ResponseBodyCommonKt\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,73:1\n36#1,6:74\n42#1,5:102\n36#1,6:107\n42#1,5:135\n66#2:80\n52#2,21:81\n66#2:113\n52#2,21:114\n66#2:140\n52#2,21:141\n*S KotlinDebug\n*F\n+ 1 -ResponseBodyCommon.kt\nokhttp3/internal/_ResponseBodyCommonKt\n*L\n28#1:74,6\n28#1:102,5\n30#1:107,6\n30#1:135,5\n28#1:80\n28#1:81,21\n30#1:113\n30#1:114,21\n41#1:140\n41#1:141,21\n*E\n"})
/* loaded from: classes3.dex */
public final class _ResponseBodyCommonKt {
    @NotNull
    public static final ResponseBody commonAsResponseBody(@NotNull final BufferedSource bufferedSource, @Nullable final MediaType mediaType, final long j) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        return new ResponseBody() { // from class: okhttp3.internal._ResponseBodyCommonKt$commonAsResponseBody$1
            @Override // okhttp3.ResponseBody
            /* renamed from: contentLength, reason: from getter */
            public long getF3001x1378447b() {
                return j;
            }

            @Override // okhttp3.ResponseBody
            @Nullable
            /* renamed from: contentType, reason: from getter */
            public MediaType getF3000x3271d0aa() {
                return MediaType.this;
            }

            @Override // okhttp3.ResponseBody
            @NotNull
            /* renamed from: source, reason: from getter */
            public BufferedSource getF3002x75d576dc() {
                return bufferedSource;
            }
        };
    }

    @NotNull
    public static final ByteString commonByteString(@NotNull ResponseBody responseBody) {
        ByteString byteString;
        Intrinsics.checkNotNullParameter(responseBody, "<this>");
        long f3001x1378447b = responseBody.getF3001x1378447b();
        if (f3001x1378447b <= 2147483647L) {
            BufferedSource f3002x75d576dc = responseBody.getF3002x75d576dc();
            Throwable th = null;
            try {
                byteString = f3002x75d576dc.readByteString();
                if (f3002x75d576dc != null) {
                    try {
                        f3002x75d576dc.close();
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (Throwable th3) {
                if (f3002x75d576dc != null) {
                    try {
                        f3002x75d576dc.close();
                    } catch (Throwable th4) {
                        AbstractC0720xaa9ccb5a.addSuppressed(th3, th4);
                    }
                }
                byteString = null;
                th = th3;
            }
            if (th == null) {
                Intrinsics.checkNotNull(byteString);
                int size = byteString.size();
                if (f3001x1378447b != -1 && f3001x1378447b != size) {
                    throw new IOException("Content-Length (" + f3001x1378447b + ") and stream length (" + size + ") disagree");
                }
                return byteString;
            }
            throw th;
        }
        throw new IOException(AbstractC0749x8313616e.m3337xab142723("Cannot buffer entire body for content length: ", f3001x1378447b));
    }

    @NotNull
    public static final byte[] commonBytes(@NotNull ResponseBody responseBody) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(responseBody, "<this>");
        long f3001x1378447b = responseBody.getF3001x1378447b();
        if (f3001x1378447b <= 2147483647L) {
            BufferedSource f3002x75d576dc = responseBody.getF3002x75d576dc();
            Throwable th = null;
            try {
                bArr = f3002x75d576dc.readByteArray();
                if (f3002x75d576dc != null) {
                    try {
                        f3002x75d576dc.close();
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (Throwable th3) {
                if (f3002x75d576dc != null) {
                    try {
                        f3002x75d576dc.close();
                    } catch (Throwable th4) {
                        AbstractC0720xaa9ccb5a.addSuppressed(th3, th4);
                    }
                }
                bArr = null;
                th = th3;
            }
            if (th == null) {
                Intrinsics.checkNotNull(bArr);
                int length = bArr.length;
                if (f3001x1378447b != -1 && f3001x1378447b != length) {
                    throw new IOException("Content-Length (" + f3001x1378447b + ") and stream length (" + length + ") disagree");
                }
                return bArr;
            }
            throw th;
        }
        throw new IOException(AbstractC0749x8313616e.m3337xab142723("Cannot buffer entire body for content length: ", f3001x1378447b));
    }

    public static final void commonClose(@NotNull ResponseBody responseBody) {
        Intrinsics.checkNotNullParameter(responseBody, "<this>");
        _UtilCommonKt.closeQuietly(responseBody.getF3002x75d576dc());
    }

    @NotNull
    public static final <T> T commonConsumeSource(@NotNull ResponseBody responseBody, @NotNull Function1<? super BufferedSource, ? extends T> consumer, @NotNull Function1<? super T, Integer> sizeMapper) {
        T t;
        Intrinsics.checkNotNullParameter(responseBody, "<this>");
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        Intrinsics.checkNotNullParameter(sizeMapper, "sizeMapper");
        long f3001x1378447b = responseBody.getF3001x1378447b();
        if (f3001x1378447b <= 2147483647L) {
            BufferedSource f3002x75d576dc = responseBody.getF3002x75d576dc();
            Throwable th = null;
            try {
                t = consumer.invoke(f3002x75d576dc);
                InlineMarker.finallyStart(1);
                if (f3002x75d576dc != null) {
                    try {
                        f3002x75d576dc.close();
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                InlineMarker.finallyEnd(1);
            } catch (Throwable th3) {
                InlineMarker.finallyStart(1);
                if (f3002x75d576dc != null) {
                    try {
                        f3002x75d576dc.close();
                    } catch (Throwable th4) {
                        AbstractC0720xaa9ccb5a.addSuppressed(th3, th4);
                    }
                }
                InlineMarker.finallyEnd(1);
                th = th3;
                t = (Object) null;
            }
            if (th == null) {
                Intrinsics.checkNotNull(t);
                int intValue = sizeMapper.invoke(t).intValue();
                if (f3001x1378447b == -1 || f3001x1378447b == intValue) {
                    return t;
                }
                throw new IOException("Content-Length (" + f3001x1378447b + ") and stream length (" + intValue + ") disagree");
            }
            throw th;
        }
        throw new IOException(AbstractC0749x8313616e.m3337xab142723("Cannot buffer entire body for content length: ", f3001x1378447b));
    }

    @NotNull
    public static final ResponseBody commonToResponseBody(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return ResponseBody.INSTANCE.create(new Buffer().write(bArr), mediaType, bArr.length);
    }

    @NotNull
    public static final ResponseBody commonToResponseBody(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return ResponseBody.INSTANCE.create(new Buffer().write(byteString), mediaType, byteString.size());
    }
}
