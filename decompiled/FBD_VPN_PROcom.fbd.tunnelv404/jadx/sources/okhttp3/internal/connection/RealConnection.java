package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.Proxy;
import java.net.Socket;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.Connection;
import okhttp3.ConnectionListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.FlowControlListener;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000b\u0018\u0000 \u0086\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u0086\u0001Bk\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001bH\u0000¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010!\u001a\u00020\u001bH\u0000¢\u0006\u0004\b \u0010\u001dJ\r\u0010\"\u001a\u00020\u001b¢\u0006\u0004\b\"\u0010\u001dJ'\u0010*\u001a\u00020'2\u0006\u0010$\u001a\u00020#2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010%H\u0000¢\u0006\u0004\b(\u0010)J\u001f\u00102\u001a\u00020/2\u0006\u0010,\u001a\u00020+2\u0006\u0010.\u001a\u00020-H\u0000¢\u0006\u0004\b0\u00101J\u0017\u00108\u001a\u0002052\u0006\u00104\u001a\u000203H\u0000¢\u0006\u0004\b6\u00107J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u00109J\u000f\u0010:\u001a\u00020\u001bH\u0016¢\u0006\u0004\b:\u0010\u001dJ\u000f\u0010\f\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010;J\u0015\u0010=\u001a\u00020'2\u0006\u0010<\u001a\u00020'¢\u0006\u0004\b=\u0010>J\u0017\u0010A\u001a\u00020\u001b2\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ\u001f\u0010G\u001a\u00020\u001b2\u0006\u0010D\u001a\u00020C2\u0006\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bG\u0010HJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000e\u0010IJ'\u0010O\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020+2\u0006\u0010J\u001a\u00020\b2\u0006\u0010L\u001a\u00020KH\u0000¢\u0006\u0004\bM\u0010NJ!\u0010S\u001a\u00020\u001b2\u0006\u0010Q\u001a\u00020P2\b\u0010R\u001a\u0004\u0018\u00010KH\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010UJ\u000f\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\bW\u0010XR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`R\u001a\u0010\t\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\ba\u0010b\u001a\u0004\bc\u00109R\u001a\u0010\u0018\u001a\u00020\u00178\u0000X\u0080\u0004¢\u0006\f\n\u0004\bd\u0010e\u001a\u0004\bf\u0010gR\"\u0010\u001c\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\"\u0010t\u001a\u00020\u00158\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bn\u0010o\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR#\u0010{\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020P0v0u8\u0006¢\u0006\f\n\u0004\bw\u0010x\u001a\u0004\by\u0010zR&\u0010\u0083\u0001\u001a\u00020|8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0004\b}\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001\"\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0016\u0010\u0085\u0001\u001a\u00020'8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0084\u0001\u0010k¨\u0006\u0087\u0001"}, d2 = {"Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/internal/http2/Http2Connection$Listener;", "Lokhttp3/Connection;", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionPool", "Lokhttp3/Route;", "route", "Ljava/net/Socket;", "rawSocket", "socket", "Lokhttp3/Handshake;", "handshake", "Lokhttp3/Protocol;", "protocol", "Lokio/BufferedSource;", "source", "Lokio/BufferedSink;", "sink", "", "pingIntervalMillis", "Lokhttp3/ConnectionListener;", "connectionListener", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;Ljava/net/Socket;Lokhttp3/Handshake;Lokhttp3/Protocol;Lokio/BufferedSource;Lokio/BufferedSink;ILokhttp3/ConnectionListener;)V", "", "noNewExchanges", "()V", "noCoalescedConnections$okhttp", "noCoalescedConnections", "incrementSuccessCount$okhttp", "incrementSuccessCount", "start", "Lokhttp3/Address;", "address", "", "routes", "", "isEligible$okhttp", "(Lokhttp3/Address;Ljava/util/List;)Z", "isEligible", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/internal/http/RealInterceptorChain;", "chain", "Lokhttp3/internal/http/ExchangeCodec;", "newCodec$okhttp", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/ExchangeCodec;", "newCodec", "Lokhttp3/internal/connection/Exchange;", "exchange", "Lokhttp3/internal/ws/RealWebSocket$Streams;", "newWebSocketStreams$okhttp", "(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/ws/RealWebSocket$Streams;", "newWebSocketStreams", "()Lokhttp3/Route;", "cancel", "()Ljava/net/Socket;", "doExtensiveChecks", "isHealthy", "(Z)Z", "Lokhttp3/internal/http2/Http2Stream;", "stream", "onStream", "(Lokhttp3/internal/http2/Http2Stream;)V", "Lokhttp3/internal/http2/Http2Connection;", "connection", "Lokhttp3/internal/http2/Settings;", "settings", "onSettings", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V", "()Lokhttp3/Handshake;", "failedRoute", "Ljava/io/IOException;", "failure", "connectFailed$okhttp", "(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V", "connectFailed", "Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, "e", "trackFailure", "(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V", "()Lokhttp3/Protocol;", "", "toString", "()Ljava/lang/String;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/internal/concurrent/TaskRunner;", "getTaskRunner", "()Lokhttp3/internal/concurrent/TaskRunner;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokhttp3/internal/connection/RealConnectionPool;", "getConnectionPool", "()Lokhttp3/internal/connection/RealConnectionPool;", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Lokhttp3/Route;", "getRoute", "뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠", "Lokhttp3/ConnectionListener;", "getConnectionListener$okhttp", "()Lokhttp3/ConnectionListener;", "뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁", "Z", "getNoNewExchanges", "()Z", "setNoNewExchanges", "(Z)V", "뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨", "I", "getRouteFailureCount$okhttp", "()I", "setRouteFailureCount$okhttp", "(I)V", "routeFailureCount", "", "Ljava/lang/ref/Reference;", "뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅", "Ljava/util/List;", "getCalls", "()Ljava/util/List;", "calls", "", "뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡", "J", "getIdleAtNs", "()J", "setIdleAtNs", "(J)V", "idleAtNs", "isMultiplexed$okhttp", "isMultiplexed", "Companion", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n+ 2 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,441:1\n320#2,4:442\n320#2,4:449\n334#2,4:453\n1747#3,3:446\n1#4:457\n*S KotlinDebug\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n*L\n179#1:442,4\n232#1:449,4\n301#1:453,4\n224#1:446,3\n*E\n"})
/* loaded from: classes3.dex */
public final class RealConnection extends Http2Connection.Listener implements Connection, ExchangeCodec.Carrier {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final long IDLE_CONNECTION_HEALTHY_NS = 10000000000L;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final TaskRunner taskRunner;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final RealConnectionPool connectionPool;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public final Route route;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Socket f3187x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final Socket f3188x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final Handshake f3189x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final Protocol f3190x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public final BufferedSource f3191x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public final BufferedSink f3192x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public final int f3193x9d12c1f4;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters and from kotlin metadata */
    public final ConnectionListener connectionListener;

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public Http2Connection f3195xd2bcb0cf;

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁, reason: contains not printable characters and from kotlin metadata */
    public boolean noNewExchanges;

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
    public boolean f3197x1aebc6d9;

    /* renamed from: 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨, reason: contains not printable characters and from kotlin metadata */
    public int routeFailureCount;

    /* renamed from: 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐, reason: contains not printable characters */
    public int f3199x85f0360e;

    /* renamed from: 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌, reason: contains not printable characters */
    public int f3200xad53da1a;

    /* renamed from: 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬, reason: contains not printable characters */
    public int f3201x952a0a9e;

    /* renamed from: 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅, reason: contains not printable characters */
    public final ArrayList f3202xc20437a5;

    /* renamed from: 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡, reason: contains not printable characters and from kotlin metadata */
    public long idleAtNs;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001J5\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/connection/RealConnection$Companion;", "", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionPool", "Lokhttp3/Route;", "route", "Ljava/net/Socket;", "socket", "", "idleAtNs", "Lokhttp3/internal/connection/RealConnection;", "newTestConnection", "(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;J)Lokhttp3/internal/connection/RealConnection;", "IDLE_CONNECTION_HEALTHY_NS", "J", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @NotNull
        public final RealConnection newTestConnection(@NotNull TaskRunner taskRunner, @NotNull RealConnectionPool connectionPool, @NotNull Route route, @NotNull Socket socket, long idleAtNs) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
            Intrinsics.checkNotNullParameter(route, "route");
            Intrinsics.checkNotNullParameter(socket, "socket");
            RealConnection realConnection = new RealConnection(taskRunner, connectionPool, route, null, socket, null, null, null, null, 0, ConnectionListener.INSTANCE.getNONE());
            realConnection.setIdleAtNs(idleAtNs);
            return realConnection;
        }
    }

    public RealConnection(@NotNull TaskRunner taskRunner, @NotNull RealConnectionPool connectionPool, @NotNull Route route, @Nullable Socket socket, @Nullable Socket socket2, @Nullable Handshake handshake, @Nullable Protocol protocol, @Nullable BufferedSource bufferedSource, @Nullable BufferedSink bufferedSink, int i, @NotNull ConnectionListener connectionListener) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
        this.taskRunner = taskRunner;
        this.connectionPool = connectionPool;
        this.route = route;
        this.f3187x75d576dc = socket;
        this.f3188x9738a56c = socket2;
        this.f3189x9e171bf9 = handshake;
        this.f3190x34271fae = protocol;
        this.f3191x95f25580 = bufferedSource;
        this.f3192x3db60231 = bufferedSink;
        this.f3193x9d12c1f4 = i;
        this.connectionListener = connectionListener;
        this.f3201x952a0a9e = 1;
        this.f3202xc20437a5 = new ArrayList();
        this.idleAtNs = Long.MAX_VALUE;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    /* renamed from: cancel */
    public void mo2591cancel() {
        Socket socket = this.f3187x75d576dc;
        if (socket != null) {
            _UtilJvmKt.closeQuietly(socket);
        }
    }

    public final void connectFailed$okhttp(@NotNull OkHttpClient client, @NotNull Route failedRoute, @NotNull IOException failure) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(failedRoute, "failedRoute");
        Intrinsics.checkNotNullParameter(failure, "failure");
        if (failedRoute.proxy().type() != Proxy.Type.DIRECT) {
            Address address = failedRoute.address();
            address.proxySelector().connectFailed(address.url().uri(), failedRoute.proxy().address(), failure);
        }
        client.getRouteDatabase().failed(failedRoute);
    }

    @NotNull
    public final List<Reference<RealCall>> getCalls() {
        return this.f3202xc20437a5;
    }

    @NotNull
    /* renamed from: getConnectionListener$okhttp, reason: from getter */
    public final ConnectionListener getConnectionListener() {
        return this.connectionListener;
    }

    @NotNull
    public final RealConnectionPool getConnectionPool() {
        return this.connectionPool;
    }

    public final long getIdleAtNs() {
        return this.idleAtNs;
    }

    public final boolean getNoNewExchanges() {
        return this.noNewExchanges;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    @NotNull
    public Route getRoute() {
        return this.route;
    }

    /* renamed from: getRouteFailureCount$okhttp, reason: from getter */
    public final int getRouteFailureCount() {
        return this.routeFailureCount;
    }

    @NotNull
    public final TaskRunner getTaskRunner() {
        return this.taskRunner;
    }

    @Override // okhttp3.Connection
    @Nullable
    /* renamed from: handshake, reason: from getter */
    public Handshake getF3189x9e171bf9() {
        return this.f3189x9e171bf9;
    }

    public final synchronized void incrementSuccessCount$okhttp() {
        this.f3199x85f0360e++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0151, code lost:
    
        if (r0.verify(r9, (java.security.cert.X509Certificate) r1) != false) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean isEligible$okhttp(@NotNull Address address, @Nullable List<Route> routes) {
        Handshake handshake;
        Intrinsics.checkNotNullParameter(address, "address");
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        if (this.f3202xc20437a5.size() >= this.f3201x952a0a9e || this.noNewExchanges || !getRoute().address().equalsNonHost$okhttp(address)) {
            return false;
        }
        if (Intrinsics.areEqual(address.url().host(), route().address().url().host())) {
            return true;
        }
        if (this.f3195xd2bcb0cf != null && routes != null) {
            List<Route> list = routes;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Route route = (Route) it.next();
                    Proxy.Type type = route.proxy().type();
                    Proxy.Type type2 = Proxy.Type.DIRECT;
                    if (type == type2 && getRoute().proxy().type() == type2 && Intrinsics.areEqual(getRoute().socketAddress(), route.socketAddress())) {
                        HostnameVerifier hostnameVerifier = address.hostnameVerifier();
                        OkHostnameVerifier okHostnameVerifier = OkHostnameVerifier.INSTANCE;
                        if (hostnameVerifier != okHostnameVerifier) {
                            return false;
                        }
                        HttpUrl url = address.url();
                        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
                            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
                        }
                        HttpUrl url2 = getRoute().address().url();
                        if (url.port() == url2.port()) {
                            if (!Intrinsics.areEqual(url.host(), url2.host())) {
                                if (!this.f3197x1aebc6d9 && (handshake = this.f3189x9e171bf9) != null) {
                                    Intrinsics.checkNotNull(handshake);
                                    List<Certificate> peerCertificates = handshake.peerCertificates();
                                    if (!peerCertificates.isEmpty()) {
                                        String host = url.host();
                                        Certificate certificate = peerCertificates.get(0);
                                        Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                                    }
                                }
                            }
                            try {
                                CertificatePinner certificatePinner = address.certificatePinner();
                                Intrinsics.checkNotNull(certificatePinner);
                                String host2 = address.url().host();
                                Handshake f3189x9e171bf9 = getF3189x9e171bf9();
                                Intrinsics.checkNotNull(f3189x9e171bf9);
                                certificatePinner.check(host2, f3189x9e171bf9.peerCertificates());
                                return true;
                            } catch (SSLPeerUnverifiedException unused) {
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final boolean isHealthy(boolean doExtensiveChecks) {
        long j;
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        long nanoTime = System.nanoTime();
        Socket socket = this.f3187x75d576dc;
        Intrinsics.checkNotNull(socket);
        Socket socket2 = this.f3188x9738a56c;
        Intrinsics.checkNotNull(socket2);
        BufferedSource bufferedSource = this.f3191x95f25580;
        Intrinsics.checkNotNull(bufferedSource);
        if (!socket.isClosed() && !socket2.isClosed() && !socket2.isInputShutdown() && !socket2.isOutputShutdown()) {
            Http2Connection http2Connection = this.f3195xd2bcb0cf;
            if (http2Connection != null) {
                return http2Connection.isHealthy(nanoTime);
            }
            synchronized (this) {
                j = nanoTime - this.idleAtNs;
            }
            if (j >= IDLE_CONNECTION_HEALTHY_NS && doExtensiveChecks) {
                return _UtilJvmKt.isHealthy(socket2, bufferedSource);
            }
            return true;
        }
        return false;
    }

    public final boolean isMultiplexed$okhttp() {
        if (this.f3195xd2bcb0cf != null) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ExchangeCodec newCodec$okhttp(@NotNull OkHttpClient client, @NotNull RealInterceptorChain chain) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Socket socket = this.f3188x9738a56c;
        Intrinsics.checkNotNull(socket);
        BufferedSource bufferedSource = this.f3191x95f25580;
        Intrinsics.checkNotNull(bufferedSource);
        BufferedSink bufferedSink = this.f3192x3db60231;
        Intrinsics.checkNotNull(bufferedSink);
        Http2Connection http2Connection = this.f3195xd2bcb0cf;
        if (http2Connection != null) {
            return new Http2ExchangeCodec(client, this, chain, http2Connection);
        }
        socket.setSoTimeout(chain.readTimeoutMillis());
        Timeout f3568xfbe0c504 = bufferedSource.getF3568xfbe0c504();
        long readTimeoutMillis = chain.getReadTimeoutMillis();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        f3568xfbe0c504.timeout(readTimeoutMillis, timeUnit);
        bufferedSink.getF3566xfbe0c504().timeout(chain.getWriteTimeoutMillis(), timeUnit);
        return new Http1ExchangeCodec(client, this, bufferedSource, bufferedSink);
    }

    @NotNull
    public final RealWebSocket.Streams newWebSocketStreams$okhttp(@NotNull final Exchange exchange) {
        Intrinsics.checkNotNullParameter(exchange, "exchange");
        Socket socket = this.f3188x9738a56c;
        Intrinsics.checkNotNull(socket);
        final BufferedSource bufferedSource = this.f3191x95f25580;
        Intrinsics.checkNotNull(bufferedSource);
        final BufferedSink bufferedSink = this.f3192x3db60231;
        Intrinsics.checkNotNull(bufferedSink);
        socket.setSoTimeout(0);
        noNewExchanges();
        return new RealWebSocket.Streams(bufferedSource, bufferedSink) { // from class: okhttp3.internal.connection.RealConnection$newWebSocketStreams$1
            @Override // okhttp3.internal.ws.RealWebSocket.Streams
            public void cancel() {
                exchange.cancel();
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                exchange.bodyComplete(-1L, true, true, null);
            }
        };
    }

    public final synchronized void noCoalescedConnections$okhttp() {
        this.f3197x1aebc6d9 = true;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public void noNewExchanges() {
        synchronized (this) {
            this.noNewExchanges = true;
        }
        this.connectionListener.noNewExchanges(this);
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public synchronized void onSettings(@NotNull Http2Connection connection, @NotNull Settings settings) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(settings, "settings");
        this.f3201x952a0a9e = settings.getMaxConcurrentStreams();
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public void onStream(@NotNull Http2Stream stream) {
        Intrinsics.checkNotNullParameter(stream, "stream");
        stream.close(ErrorCode.REFUSED_STREAM, null);
    }

    @Override // okhttp3.Connection
    @NotNull
    public Protocol protocol() {
        Protocol protocol = this.f3190x34271fae;
        Intrinsics.checkNotNull(protocol);
        return protocol;
    }

    @Override // okhttp3.Connection
    @NotNull
    public Route route() {
        return getRoute();
    }

    public final void setIdleAtNs(long j) {
        this.idleAtNs = j;
    }

    public final void setNoNewExchanges(boolean z) {
        this.noNewExchanges = z;
    }

    public final void setRouteFailureCount$okhttp(int i) {
        this.routeFailureCount = i;
    }

    @Override // okhttp3.Connection
    @NotNull
    public Socket socket() {
        Socket socket = this.f3188x9738a56c;
        Intrinsics.checkNotNull(socket);
        return socket;
    }

    public final void start() {
        FlowControlListener flowControlListener;
        this.idleAtNs = System.nanoTime();
        Protocol protocol = Protocol.HTTP_2;
        Protocol protocol2 = this.f3190x34271fae;
        if (protocol2 == protocol || protocol2 == Protocol.H2_PRIOR_KNOWLEDGE) {
            Socket socket = this.f3188x9738a56c;
            Intrinsics.checkNotNull(socket);
            BufferedSource bufferedSource = this.f3191x95f25580;
            Intrinsics.checkNotNull(bufferedSource);
            BufferedSink bufferedSink = this.f3192x3db60231;
            Intrinsics.checkNotNull(bufferedSink);
            socket.setSoTimeout(0);
            Object obj = this.connectionListener;
            if (obj instanceof FlowControlListener) {
                flowControlListener = (FlowControlListener) obj;
            } else {
                flowControlListener = null;
            }
            if (flowControlListener == null) {
                flowControlListener = FlowControlListener.None.INSTANCE;
            }
            Http2Connection build = new Http2Connection.Builder(true, this.taskRunner).socket(socket, getRoute().address().url().host(), bufferedSource, bufferedSink).listener(this).pingIntervalMillis(this.f3193x9d12c1f4).flowControlListener(flowControlListener).build();
            this.f3195xd2bcb0cf = build;
            this.f3201x952a0a9e = Http2Connection.INSTANCE.getDEFAULT_SETTINGS().getMaxConcurrentStreams();
            Http2Connection.start$default(build, false, 1, null);
        }
    }

    @NotNull
    public String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Connection{");
        sb.append(getRoute().address().url().host());
        sb.append(':');
        sb.append(getRoute().address().url().port());
        sb.append(", proxy=");
        sb.append(getRoute().proxy());
        sb.append(" hostAddress=");
        sb.append(getRoute().socketAddress());
        sb.append(" cipherSuite=");
        Handshake handshake = this.f3189x9e171bf9;
        if (handshake == null || (obj = handshake.cipherSuite()) == null) {
            obj = "none";
        }
        sb.append(obj);
        sb.append(" protocol=");
        sb.append(this.f3190x34271fae);
        sb.append('}');
        return sb.toString();
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public void trackFailure(@NotNull RealCall call, @Nullable IOException e) {
        boolean z;
        Intrinsics.checkNotNullParameter(call, "call");
        synchronized (this) {
            try {
                z = false;
                if (e instanceof StreamResetException) {
                    if (((StreamResetException) e).errorCode == ErrorCode.REFUSED_STREAM) {
                        int i = this.f3200xad53da1a + 1;
                        this.f3200xad53da1a = i;
                        if (i > 1) {
                            z = !this.noNewExchanges;
                            this.noNewExchanges = true;
                            this.routeFailureCount++;
                        }
                    } else if (((StreamResetException) e).errorCode != ErrorCode.CANCEL || !call.getF3176x85f0360e()) {
                        z = !this.noNewExchanges;
                        this.noNewExchanges = true;
                        this.routeFailureCount++;
                    }
                } else if (!isMultiplexed$okhttp() || (e instanceof ConnectionShutdownException)) {
                    z = !this.noNewExchanges;
                    this.noNewExchanges = true;
                    if (this.f3199x85f0360e == 0) {
                        if (e != null) {
                            connectFailed$okhttp(call.getClient(), getRoute(), e);
                        }
                        this.routeFailureCount++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            this.connectionListener.noNewExchanges(this);
        }
    }
}
