package okhttp3.internal.http;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Collection;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._ResponseCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http2.ConnectionShutdownException;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/OkHttpClient;", "client", "<init>", "(Lokhttp3/OkHttpClient;)V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "Companion", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final OkHttpClient f3259xfbe0c504;

    public RetryAndFollowUpInterceptor(@NotNull OkHttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        this.f3259xfbe0c504 = client;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static int m2604x3271d0aa(Response response, int i) {
        String header$default = Response.header$default(response, "Retry-After", null, 2, null);
        if (header$default == null) {
            return i;
        }
        if (new Regex("\\d+").matches(header$default)) {
            Integer valueOf = Integer.valueOf(header$default);
            Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
            return valueOf.intValue();
        }
        return Integer.MAX_VALUE;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00d6 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:4:0x001c, B:7:0x0022, B:10:0x0026, B:12:0x0030, B:13:0x0039, B:34:0x004d, B:36:0x0053, B:15:0x005a, B:17:0x0060, B:23:0x006a, B:30:0x007d, B:31:0x0093, B:81:0x00e7, B:82:0x00ee, B:41:0x0095, B:44:0x00a1, B:46:0x00a7, B:51:0x00ad, B:54:0x00b1, B:56:0x00b5, B:58:0x00b9, B:62:0x00d0, B:64:0x00d6, B:70:0x00c0, B:72:0x00c4, B:75:0x00cc, B:49:0x00e2, B:50:0x00e6), top: B:3:0x001c, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e2 A[EDGE_INSN: B:67:0x00e2->B:49:0x00e2 BREAK  A[LOOP:0: B:2:0x0019->B:28:0x0019], SYNTHETIC] */
    @Override // okhttp3.Interceptor
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Response intercept(@NotNull Interceptor.Chain chain) {
        RequestBody body;
        Response response;
        Exchange interceptorScopedExchange;
        Request m2605xfbe0c504;
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.getRequest();
        RealCall realCall = realInterceptorChain.getAndroidx.core.app.NotificationCompat.CATEGORY_CALL java.lang.String();
        List emptyList = CollectionsKt__CollectionsKt.emptyList();
        Response response2 = null;
        boolean z = true;
        int i = 0;
        while (true) {
            realCall.enterNetworkInterceptorExchange(request, z, realInterceptorChain);
            try {
                if (!realCall.getF3176x85f0360e()) {
                    try {
                        Response.Builder request2 = realInterceptorChain.proceed(request).newBuilder().request(request);
                        if (response2 != null) {
                            response = _ResponseCommonKt.stripBody(response2);
                        } else {
                            response = null;
                        }
                        response2 = request2.priorResponse(response).build();
                        interceptorScopedExchange = realCall.getInterceptorScopedExchange();
                        m2605xfbe0c504 = m2605xfbe0c504(response2, interceptorScopedExchange);
                    } catch (IOException e) {
                        boolean z2 = e instanceof ConnectionShutdownException;
                        if (!this.f3259xfbe0c504.retryOnConnectionFailure() || ((!z2 && (((body = request.body()) != null && body.isOneShot()) || (e instanceof FileNotFoundException))) || (e instanceof ProtocolException))) {
                            break;
                        }
                        if (e instanceof InterruptedIOException) {
                            if (!(e instanceof SocketTimeoutException) || !z2) {
                                break;
                            }
                            if (realCall.retryAfterFailure()) {
                                break;
                            }
                            emptyList = CollectionsKt___CollectionsKt.plus((Collection<? extends IOException>) emptyList, e);
                            realCall.exitNetworkInterceptorExchange$okhttp(true);
                            z = false;
                        } else {
                            if (e instanceof SSLHandshakeException) {
                                if (e.getCause() instanceof CertificateException) {
                                    break;
                                }
                            }
                            if (e instanceof SSLPeerUnverifiedException) {
                                break;
                            }
                            if (realCall.retryAfterFailure()) {
                            }
                        }
                        throw _UtilCommonKt.withSuppressed(e, emptyList);
                    }
                    if (m2605xfbe0c504 == null) {
                        if (interceptorScopedExchange != null && interceptorScopedExchange.getIsDuplex()) {
                            realCall.timeoutEarlyExit();
                        }
                        realCall.exitNetworkInterceptorExchange$okhttp(false);
                        return response2;
                    }
                    RequestBody body2 = m2605xfbe0c504.body();
                    if (body2 != null && body2.isOneShot()) {
                        realCall.exitNetworkInterceptorExchange$okhttp(false);
                        return response2;
                    }
                    _UtilCommonKt.closeQuietly(response2.body());
                    i++;
                    if (i <= 20) {
                        realCall.exitNetworkInterceptorExchange$okhttp(true);
                        request = m2605xfbe0c504;
                        z = true;
                    } else {
                        throw new ProtocolException("Too many follow-up requests: " + i);
                    }
                } else {
                    throw new IOException("Canceled");
                }
            } catch (Throwable th) {
                realCall.exitNetworkInterceptorExchange$okhttp(true);
                throw th;
            }
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Request m2605xfbe0c504(Response response, Exchange exchange) {
        Route route;
        String header$default;
        HttpUrl resolve;
        RealConnection connection$okhttp;
        RequestBody requestBody = null;
        if (exchange != null && (connection$okhttp = exchange.getConnection$okhttp()) != null) {
            route = connection$okhttp.route();
        } else {
            route = null;
        }
        int code = response.code();
        String method = response.request().method();
        boolean z = false;
        OkHttpClient okHttpClient = this.f3259xfbe0c504;
        if (code != 307 && code != 308) {
            if (code != 401) {
                if (code != 421) {
                    if (code != 503) {
                        if (code != 407) {
                            if (code != 408) {
                                switch (code) {
                                    case 300:
                                    case 301:
                                    case 302:
                                    case 303:
                                        break;
                                    default:
                                        return null;
                                }
                            } else {
                                if (!okHttpClient.retryOnConnectionFailure()) {
                                    return null;
                                }
                                RequestBody body = response.request().body();
                                if (body != null && body.isOneShot()) {
                                    return null;
                                }
                                Response priorResponse = response.priorResponse();
                                if ((priorResponse != null && priorResponse.code() == 408) || m2604x3271d0aa(response, 0) > 0) {
                                    return null;
                                }
                                return response.request();
                            }
                        } else {
                            Intrinsics.checkNotNull(route);
                            if (route.proxy().type() == Proxy.Type.HTTP) {
                                return okHttpClient.proxyAuthenticator().authenticate(route, response);
                            }
                            throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                        }
                    } else {
                        Response priorResponse2 = response.priorResponse();
                        if ((priorResponse2 != null && priorResponse2.code() == 503) || m2604x3271d0aa(response, Integer.MAX_VALUE) != 0) {
                            return null;
                        }
                        return response.request();
                    }
                } else {
                    RequestBody body2 = response.request().body();
                    if ((body2 != null && body2.isOneShot()) || exchange == null || !exchange.isCoalescedConnection$okhttp()) {
                        return null;
                    }
                    exchange.getConnection$okhttp().noCoalescedConnections$okhttp();
                    return response.request();
                }
            } else {
                return okHttpClient.authenticator().authenticate(route, response);
            }
        }
        if (!okHttpClient.followRedirects() || (header$default = Response.header$default(response, "Location", null, 2, null)) == null || (resolve = response.request().url().resolve(header$default)) == null) {
            return null;
        }
        if (!Intrinsics.areEqual(resolve.scheme(), response.request().url().scheme()) && !okHttpClient.followSslRedirects()) {
            return null;
        }
        Request.Builder newBuilder = response.request().newBuilder();
        if (HttpMethod.permitsRequestBody(method)) {
            int code2 = response.code();
            HttpMethod httpMethod = HttpMethod.INSTANCE;
            if (httpMethod.redirectsWithBody(method) || code2 == 308 || code2 == 307) {
                z = true;
            }
            if (httpMethod.redirectsToGet(method) && code2 != 308 && code2 != 307) {
                newBuilder.method(ShareTarget.METHOD_GET, null);
            } else {
                if (z) {
                    requestBody = response.request().body();
                }
                newBuilder.method(method, requestBody);
            }
            if (!z) {
                newBuilder.removeHeader("Transfer-Encoding");
                newBuilder.removeHeader("Content-Length");
                newBuilder.removeHeader("Content-Type");
            }
        }
        if (!_UtilJvmKt.canReuseConnectionFor(response.request().url(), resolve)) {
            newBuilder.removeHeader("Authorization");
        }
        return newBuilder.url(resolve).build();
    }
}
