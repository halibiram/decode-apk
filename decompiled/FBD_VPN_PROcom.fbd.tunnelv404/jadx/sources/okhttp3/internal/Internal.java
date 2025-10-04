package okhttp3.internal;

import java.nio.charset.Charset;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okhttp3.Cache;
import okhttp3.CipherSuite;
import okhttp3.ConnectionListener;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealConnection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u008c\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0000\u001a \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0000\u001a \u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u001a\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0000\u001a\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0000\u001a\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0013H\u0000\u001a\"\u0010#\u001a\u0004\u0018\u00010!2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\tH\u0000\u001a\u000e\u0010)\u001a\u00020**\u0004\u0018\u00010+H\u0000\u001a\u001c\u0010,\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0006\u0012\u0004\u0018\u00010+0-*\u0004\u0018\u00010+H\u0000\u001a%\u0010.\u001a\b\u0012\u0004\u0012\u00020\t0/*\u00020\u000f2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\t0/H\u0000¢\u0006\u0002\u00101\u001a\u0014\u00102\u001a\u000203*\u0002032\u0006\u0010\u0018\u001a\u00020\u0019H\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u00064"}, d2 = {"connection", "Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/Response;", "getConnection", "(Lokhttp3/Response;)Lokhttp3/internal/connection/RealConnection;", "addHeaderLenient", "Lokhttp3/Headers$Builder;", "builder", "line", "", "name", "value", "applyConnectionSpec", "", "connectionSpec", "Lokhttp3/ConnectionSpec;", "sslSocket", "Ljavax/net/ssl/SSLSocket;", "isFallback", "", "buildConnectionPool", "Lokhttp3/ConnectionPool;", "connectionListener", "Lokhttp3/ConnectionListener;", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "cacheGet", "cache", "Lokhttp3/Cache;", "request", "Lokhttp3/Request;", "cookieToString", "cookie", "Lokhttp3/Cookie;", "forObsoleteRfc2965", "parseCookie", "currentTimeMillis", "", "url", "Lokhttp3/HttpUrl;", "setCookie", "charsetOrUtf8", "Ljava/nio/charset/Charset;", "Lokhttp3/MediaType;", "chooseCharset", "Lkotlin/Pair;", "effectiveCipherSuites", "", "socketEnabledCipherSuites", "(Lokhttp3/ConnectionSpec;[Ljava/lang/String;)[Ljava/lang/String;", "taskRunnerInternal", "Lokhttp3/OkHttpClient$Builder;", "okhttp"}, k = 2, mv = {1, 9, 0}, xi = 48)
@JvmName(name = "Internal")
/* loaded from: classes3.dex */
public final class Internal {
    @NotNull
    public static final Headers.Builder addHeaderLenient(@NotNull Headers.Builder builder, @NotNull String line) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(line, "line");
        return builder.addLenient$okhttp(line);
    }

    public static final void applyConnectionSpec(@NotNull ConnectionSpec connectionSpec, @NotNull SSLSocket sslSocket, boolean z) {
        Intrinsics.checkNotNullParameter(connectionSpec, "connectionSpec");
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        connectionSpec.apply$okhttp(sslSocket, z);
    }

    @NotNull
    public static final ConnectionPool buildConnectionPool(@NotNull ConnectionListener connectionListener, @NotNull TaskRunner taskRunner) {
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        return new ConnectionPool(0, 0L, null, taskRunner, connectionListener, 7, null);
    }

    @Nullable
    public static final Response cacheGet(@NotNull Cache cache, @NotNull Request request) {
        Intrinsics.checkNotNullParameter(cache, "cache");
        Intrinsics.checkNotNullParameter(request, "request");
        return cache.get$okhttp(request);
    }

    @NotNull
    public static final Charset charsetOrUtf8(@Nullable MediaType mediaType) {
        Charset charset$default;
        if (mediaType == null || (charset$default = MediaType.charset$default(mediaType, null, 1, null)) == null) {
            return Charsets.UTF_8;
        }
        return charset$default;
    }

    @NotNull
    public static final Pair<Charset, MediaType> chooseCharset(@Nullable MediaType mediaType) {
        Charset charset = Charsets.UTF_8;
        if (mediaType != null) {
            Charset charset$default = MediaType.charset$default(mediaType, null, 1, null);
            if (charset$default == null) {
                mediaType = MediaType.INSTANCE.parse(mediaType + "; charset=utf-8");
            } else {
                charset = charset$default;
            }
        }
        return TuplesKt.to(charset, mediaType);
    }

    @NotNull
    public static final String cookieToString(@NotNull Cookie cookie, boolean z) {
        Intrinsics.checkNotNullParameter(cookie, "cookie");
        return cookie.toString$okhttp(z);
    }

    @NotNull
    public static final String[] effectiveCipherSuites(@NotNull ConnectionSpec connectionSpec, @NotNull String[] socketEnabledCipherSuites) {
        Intrinsics.checkNotNullParameter(connectionSpec, "<this>");
        Intrinsics.checkNotNullParameter(socketEnabledCipherSuites, "socketEnabledCipherSuites");
        if (connectionSpec.getCipherSuitesAsString() != null) {
            return _UtilCommonKt.intersect(connectionSpec.getCipherSuitesAsString(), socketEnabledCipherSuites, CipherSuite.INSTANCE.getORDER_BY_NAME$okhttp());
        }
        return socketEnabledCipherSuites;
    }

    @NotNull
    public static final RealConnection getConnection(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        Exchange exchange = response.getExchange();
        Intrinsics.checkNotNull(exchange);
        return exchange.getConnection$okhttp();
    }

    @Nullable
    public static final Cookie parseCookie(long j, @NotNull HttpUrl url, @NotNull String setCookie) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(setCookie, "setCookie");
        return Cookie.INSTANCE.parse$okhttp(j, url, setCookie);
    }

    @NotNull
    public static final OkHttpClient.Builder taskRunnerInternal(@NotNull OkHttpClient.Builder builder, @NotNull TaskRunner taskRunner) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        return builder.taskRunner$okhttp(taskRunner);
    }

    @NotNull
    public static final Headers.Builder addHeaderLenient(@NotNull Headers.Builder builder, @NotNull String name, @NotNull String value) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        return builder.addLenient$okhttp(name, value);
    }
}
