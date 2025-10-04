package okhttp3.internal.http;

import defpackage.AbstractC1197x89633db9;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okio.GzipSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/http/BridgeInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/CookieJar;", "cookieJar", "<init>", "(Lokhttp3/CookieJar;)V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBridgeInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n1864#2,3:119\n*S KotlinDebug\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n*L\n112#1:119,3\n*E\n"})
/* loaded from: classes3.dex */
public final class BridgeInterceptor implements Interceptor {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final CookieJar f3239xfbe0c504;

    public BridgeInterceptor(@NotNull CookieJar cookieJar) {
        Intrinsics.checkNotNullParameter(cookieJar, "cookieJar");
        this.f3239xfbe0c504 = cookieJar;
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) {
        boolean z;
        ResponseBody body;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        Request.Builder newBuilder = request.newBuilder();
        RequestBody body2 = request.body();
        if (body2 != null) {
            MediaType f2838x75d576dc = body2.getF2838x75d576dc();
            if (f2838x75d576dc != null) {
                newBuilder.header("Content-Type", f2838x75d576dc.toString());
            }
            long contentLength = body2.contentLength();
            if (contentLength != -1) {
                newBuilder.header("Content-Length", String.valueOf(contentLength));
                newBuilder.removeHeader("Transfer-Encoding");
            } else {
                newBuilder.header("Transfer-Encoding", "chunked");
                newBuilder.removeHeader("Content-Length");
            }
        }
        int i = 0;
        if (request.header("Host") == null) {
            newBuilder.header("Host", _UtilJvmKt.toHostHeader$default(request.url(), false, 1, null));
        }
        if (request.header("Connection") == null) {
            newBuilder.header("Connection", "Keep-Alive");
        }
        if (request.header("Accept-Encoding") == null && request.header("Range") == null) {
            newBuilder.header("Accept-Encoding", "gzip");
            z = true;
        } else {
            z = false;
        }
        HttpUrl url = request.url();
        CookieJar cookieJar = this.f3239xfbe0c504;
        List<Cookie> loadForRequest = cookieJar.loadForRequest(url);
        if (!loadForRequest.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (Object obj : loadForRequest) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                Cookie cookie = (Cookie) obj;
                if (i > 0) {
                    sb.append("; ");
                }
                sb.append(cookie.name());
                sb.append('=');
                sb.append(cookie.value());
                i = i2;
            }
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
            newBuilder.header("Cookie", sb2);
        }
        if (request.header("User-Agent") == null) {
            newBuilder.header("User-Agent", _UtilCommonKt.userAgent);
        }
        Request build = newBuilder.build();
        Response proceed = chain.proceed(build);
        HttpHeaders.receiveHeaders(cookieJar, build.url(), proceed.headers());
        Response.Builder request2 = proceed.newBuilder().request(build);
        if (z && AbstractC1197x89633db9.equals("gzip", Response.header$default(proceed, "Content-Encoding", null, 2, null), true) && HttpHeaders.promisesBody(proceed) && (body = proceed.body()) != null) {
            GzipSource gzipSource = new GzipSource(body.getF3002x75d576dc());
            request2.headers(proceed.headers().newBuilder().removeAll("Content-Encoding").removeAll("Content-Length").build());
            request2.body(new RealResponseBody(Response.header$default(proceed, "Content-Type", null, 2, null), -1L, Okio.buffer(gzipSource)));
        }
        return request2.build();
    }
}
