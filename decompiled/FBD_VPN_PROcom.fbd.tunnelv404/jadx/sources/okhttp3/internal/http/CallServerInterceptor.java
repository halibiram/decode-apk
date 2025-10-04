package okhttp3.internal.http;

import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC1197x89633db9;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal._ResponseCommonKt;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http2.ConnectionShutdownException;
import okio.BufferedSink;
import okio.Okio;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/http/CallServerInterceptor;", "Lokhttp3/Interceptor;", "", "forWebSocket", "<init>", "(Z)V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CallServerInterceptor implements Interceptor {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final boolean f3240xfbe0c504;

    public CallServerInterceptor(boolean z) {
        this.f3240xfbe0c504 = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f2 A[Catch: IOException -> 0x00b9, TryCatch #0 {IOException -> 0x00b9, blocks: (B:65:0x00ab, B:67:0x00b4, B:22:0x00bc, B:26:0x00f2, B:28:0x00fb, B:29:0x00fe, B:30:0x0122, B:34:0x012d, B:35:0x0142, B:37:0x0150, B:45:0x0166, B:47:0x0175, B:48:0x0196, B:56:0x015b, B:57:0x0132), top: B:64:0x00ab }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0150 A[Catch: IOException -> 0x00b9, TryCatch #0 {IOException -> 0x00b9, blocks: (B:65:0x00ab, B:67:0x00b4, B:22:0x00bc, B:26:0x00f2, B:28:0x00fb, B:29:0x00fe, B:30:0x0122, B:34:0x012d, B:35:0x0142, B:37:0x0150, B:45:0x0166, B:47:0x0175, B:48:0x0196, B:56:0x015b, B:57:0x0132), top: B:64:0x00ab }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x019f  */
    /* JADX WARN: Type inference failed for: r10v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    @Override // okhttp3.Interceptor
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Response intercept(@NotNull Interceptor.Chain chain) {
        Response.Builder builder;
        boolean z;
        Response.Builder builder2;
        Response.Builder builder3;
        int code;
        boolean z2;
        Response build;
        ?? permitsRequestBody;
        Response.Builder builder4;
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Exchange exchange = realInterceptorChain.getExchange();
        Intrinsics.checkNotNull(exchange);
        Request request = realInterceptorChain.getRequest();
        RequestBody body = request.body();
        long currentTimeMillis = System.currentTimeMillis();
        try {
            exchange.writeRequestHeaders(request);
            permitsRequestBody = HttpMethod.permitsRequestBody(request.method());
        } catch (IOException e) {
            e = e;
            builder = null;
        }
        try {
            if (permitsRequestBody != 0 && body != null) {
                if (AbstractC1197x89633db9.equals("100-continue", request.header("Expect"), true)) {
                    exchange.flushRequest();
                    builder = exchange.readResponseHeaders(true);
                    try {
                        exchange.responseHeadersStart();
                        z = false;
                        builder4 = builder;
                    } catch (IOException e2) {
                        e = e2;
                        z = true;
                        builder2 = builder;
                        if (e instanceof ConnectionShutdownException) {
                        }
                    }
                } else {
                    builder4 = null;
                    z = true;
                }
                if (builder4 == null) {
                    if (body.isDuplex()) {
                        exchange.flushRequest();
                        body.writeTo(Okio.buffer(exchange.createRequestBody(request, true)));
                        permitsRequestBody = builder4;
                    } else {
                        BufferedSink buffer = Okio.buffer(exchange.createRequestBody(request, false));
                        body.writeTo(buffer);
                        buffer.close();
                        permitsRequestBody = builder4;
                    }
                } else {
                    exchange.noRequestBody();
                    permitsRequestBody = builder4;
                    if (!exchange.getConnection$okhttp().isMultiplexed$okhttp()) {
                        exchange.noNewExchangesOnConnection();
                        permitsRequestBody = builder4;
                    }
                }
            } else {
                exchange.noRequestBody();
                permitsRequestBody = 0;
                z = true;
            }
            if (body == null || !body.isDuplex()) {
                exchange.finishRequest();
            }
            e = null;
            builder3 = permitsRequestBody;
        } catch (IOException e3) {
            e = e3;
            builder2 = permitsRequestBody;
            if (e instanceof ConnectionShutdownException) {
                builder3 = builder2;
                if (!exchange.getHasFailure()) {
                    throw e;
                }
                if (builder3 == null) {
                }
                Response build2 = builder3.request(request).handshake(exchange.getConnection$okhttp().getF3189x9e171bf9()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
                code = build2.code();
                if (code != 100) {
                    z2 = false;
                    if (z2) {
                    }
                    exchange.responseHeadersEnd(build2);
                    if (!this.f3240xfbe0c504) {
                    }
                    build = build2.newBuilder().body(exchange.openResponseBody(build2)).build();
                    if (!AbstractC1197x89633db9.equals("close", build.request().header("Connection"), true)) {
                    }
                    exchange.noNewExchangesOnConnection();
                    if (code == 204) {
                    }
                    throw new ProtocolException("HTTP " + code + " had non-zero Content-Length: " + build.body().getF2990x1378447b());
                }
                z2 = true;
                if (z2) {
                }
                exchange.responseHeadersEnd(build2);
                if (!this.f3240xfbe0c504) {
                }
                build = build2.newBuilder().body(exchange.openResponseBody(build2)).build();
                if (!AbstractC1197x89633db9.equals("close", build.request().header("Connection"), true)) {
                }
                exchange.noNewExchangesOnConnection();
                if (code == 204) {
                }
                throw new ProtocolException("HTTP " + code + " had non-zero Content-Length: " + build.body().getF2990x1378447b());
            }
            throw e;
        }
        if (builder3 == null) {
            try {
                builder3 = exchange.readResponseHeaders(false);
                Intrinsics.checkNotNull(builder3);
                if (z) {
                    exchange.responseHeadersStart();
                    z = false;
                }
            } catch (IOException e4) {
                if (e != null) {
                    AbstractC0720xaa9ccb5a.addSuppressed(e, e4);
                    throw e;
                }
                throw e4;
            }
        }
        Response build22 = builder3.request(request).handshake(exchange.getConnection$okhttp().getF3189x9e171bf9()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        code = build22.code();
        if (code != 100 && (102 > code || code >= 200)) {
            z2 = false;
            if (z2) {
                Response.Builder readResponseHeaders = exchange.readResponseHeaders(false);
                Intrinsics.checkNotNull(readResponseHeaders);
                if (z) {
                    exchange.responseHeadersStart();
                }
                build22 = readResponseHeaders.request(request).handshake(exchange.getConnection$okhttp().getF3189x9e171bf9()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
                code = build22.code();
            }
            exchange.responseHeadersEnd(build22);
            if (!this.f3240xfbe0c504 && code == 101) {
                build = _ResponseCommonKt.stripBody(build22);
            } else {
                build = build22.newBuilder().body(exchange.openResponseBody(build22)).build();
            }
            if (!AbstractC1197x89633db9.equals("close", build.request().header("Connection"), true) || AbstractC1197x89633db9.equals("close", Response.header$default(build, "Connection", null, 2, null), true)) {
                exchange.noNewExchangesOnConnection();
            }
            if ((code == 204 && code != 205) || build.body().getF2990x1378447b() <= 0) {
                return build;
            }
            throw new ProtocolException("HTTP " + code + " had non-zero Content-Length: " + build.body().getF2990x1378447b());
        }
        z2 = true;
        if (z2) {
        }
        exchange.responseHeadersEnd(build22);
        if (!this.f3240xfbe0c504) {
        }
        build = build22.newBuilder().body(exchange.openResponseBody(build22)).build();
        if (!AbstractC1197x89633db9.equals("close", build.request().header("Connection"), true)) {
        }
        exchange.noNewExchangesOnConnection();
        if (code == 204) {
        }
        throw new ProtocolException("HTTP " + code + " had non-zero Content-Length: " + build.body().getF2990x1378447b());
    }
}
