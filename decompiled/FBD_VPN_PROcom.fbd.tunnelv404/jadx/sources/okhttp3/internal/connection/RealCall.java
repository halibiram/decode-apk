package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0590xf7db57e6;
import defpackage.AbstractC0720xaa9ccb5a;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.CertificatePinner;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.connection.RoutePlanner;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;
import okio.AsyncTimeout;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002:\u0002ijB\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001e\u0010\u0016J\u000f\u0010 \u001a\u00020\u0017H\u0000¢\u0006\u0004\b\u001f\u0010\u0019J%\u0010$\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%J\u0017\u0010)\u001a\u00020&2\u0006\u0010#\u001a\u00020\"H\u0000¢\u0006\u0004\b'\u0010(J\u0015\u0010,\u001a\u00020\u00122\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b,\u0010-J;\u00106\u001a\u00028\u0000\"\n\b\u0000\u0010/*\u0004\u0018\u00010.2\u0006\u00100\u001a\u00020&2\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u00028\u0000H\u0000¢\u0006\u0004\b4\u00105J\u001b\u00109\u001a\u0004\u0018\u00010.2\b\u00103\u001a\u0004\u0018\u00010.H\u0000¢\u0006\u0004\b7\u00108J\u0011\u0010=\u001a\u0004\u0018\u00010:H\u0000¢\u0006\u0004\b;\u0010<J\r\u0010>\u001a\u00020\u0012¢\u0006\u0004\b>\u0010\u0014J\u0017\u0010B\u001a\u00020\u00122\u0006\u0010?\u001a\u00020\u0007H\u0000¢\u0006\u0004\b@\u0010AJ\r\u0010C\u001a\u00020\u0007¢\u0006\u0004\bC\u0010\u0016J\u000f\u0010G\u001a\u00020DH\u0000¢\u0006\u0004\bE\u0010FR\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010KR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010\u0011R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010\u0016R\u001a\u0010W\u001a\u00020R8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010VR(\u0010+\u001a\u0004\u0018\u00010*2\b\u0010X\u001a\u0004\u0018\u00010*8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R(\u0010a\u001a\u0004\u0018\u00010&2\b\u0010X\u001a\u0004\u0018\u00010&8\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`R \u0010h\u001a\b\u0012\u0004\u0012\u00020c0b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bd\u0010e\u001a\u0004\bf\u0010g¨\u0006k"}, d2 = {"Lokhttp3/internal/connection/RealCall;", "Lokhttp3/Call;", "", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/Request;", "originalRequest", "", "forWebSocket", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "clone", "()Lokhttp3/Call;", "request", "()Lokhttp3/Request;", "", "cancel", "()V", "isCanceled", "()Z", "Lokhttp3/Response;", "execute", "()Lokhttp3/Response;", "Lokhttp3/Callback;", "responseCallback", "enqueue", "(Lokhttp3/Callback;)V", "isExecuted", "getResponseWithInterceptorChain$okhttp", "getResponseWithInterceptorChain", "newRoutePlanner", "Lokhttp3/internal/http/RealInterceptorChain;", "chain", "enterNetworkInterceptorExchange", "(Lokhttp3/Request;ZLokhttp3/internal/http/RealInterceptorChain;)V", "Lokhttp3/internal/connection/Exchange;", "initExchange$okhttp", "(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/connection/Exchange;", "initExchange", "Lokhttp3/internal/connection/RealConnection;", "connection", "acquireConnectionNoEvents", "(Lokhttp3/internal/connection/RealConnection;)V", "Ljava/io/IOException;", ExifInterface.LONGITUDE_EAST, "exchange", "requestDone", "responseDone", "e", "messageDone$okhttp", "(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;", "messageDone", "noMoreExchanges$okhttp", "(Ljava/io/IOException;)Ljava/io/IOException;", "noMoreExchanges", "Ljava/net/Socket;", "releaseConnectionNoEvents$okhttp", "()Ljava/net/Socket;", "releaseConnectionNoEvents", "timeoutEarlyExit", "closeExchange", "exitNetworkInterceptorExchange$okhttp", "(Z)V", "exitNetworkInterceptorExchange", "retryAfterFailure", "", "redactedUrl$okhttp", "()Ljava/lang/String;", "redactedUrl", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/OkHttpClient;", "getClient", "()Lokhttp3/OkHttpClient;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokhttp3/Request;", "getOriginalRequest", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Z", "getForWebSocket", "Lokhttp3/EventListener;", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "Lokhttp3/EventListener;", "getEventListener$okhttp", "()Lokhttp3/EventListener;", "eventListener", "<set-?>", "뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎", "Lokhttp3/internal/connection/RealConnection;", "getConnection", "()Lokhttp3/internal/connection/RealConnection;", "뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻", "Lokhttp3/internal/connection/Exchange;", "getInterceptorScopedExchange$okhttp", "()Lokhttp3/internal/connection/Exchange;", "interceptorScopedExchange", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lokhttp3/internal/connection/RoutePlanner$Plan;", "뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬", "Ljava/util/concurrent/CopyOnWriteArrayList;", "getPlansToCancel$okhttp", "()Ljava/util/concurrent/CopyOnWriteArrayList;", "plansToCancel", "AsyncCall", "CallReference", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,577:1\n1#2:578\n320#3,4:579\n334#3,4:583\n334#3,4:587\n320#3,4:591\n350#4,7:595\n*S KotlinDebug\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall\n*L\n283#1:579,4\n358#1:583,4\n362#1:587,4\n394#1:591,4\n397#1:595,7\n*E\n"})
/* loaded from: classes3.dex */
public final class RealCall implements Call, Cloneable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final OkHttpClient client;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final Request originalRequest;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public final boolean forWebSocket;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final RealConnectionPool f3164x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
    public final EventListener eventListener;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final RealCall$timeout$1 f3166x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final AtomicBoolean f3167x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public Object f3168x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public ExchangeFinder f3169x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters and from kotlin metadata */
    public RealConnection connection;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public boolean f3171x1db10c9d;

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters and from kotlin metadata */
    public Exchange interceptorScopedExchange;

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁, reason: contains not printable characters */
    public boolean f3173x8c6fc18a;

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
    public boolean f3174x1aebc6d9;

    /* renamed from: 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨, reason: contains not printable characters */
    public boolean f3175xab142723;

    /* renamed from: 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐, reason: contains not printable characters */
    public volatile boolean f3176x85f0360e;

    /* renamed from: 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌, reason: contains not printable characters */
    public volatile Exchange f3177xad53da1a;

    /* renamed from: 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬, reason: contains not printable characters and from kotlin metadata */
    public final CopyOnWriteArrayList plansToCancel;

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\n\u0010\u0007\u001a\u00060\u0000R\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0013\u001a\u00020\b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015R$\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00168\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010 \u001a\u00020\u001d8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010$\u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0011\u0010'\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b%\u0010&¨\u0006("}, d2 = {"Lokhttp3/internal/connection/RealCall$AsyncCall;", "Ljava/lang/Runnable;", "Lokhttp3/Callback;", "responseCallback", "<init>", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/Callback;)V", "Lokhttp3/internal/connection/RealCall;", "other", "", "reuseCallsPerHostFrom", "(Lokhttp3/internal/connection/RealCall$AsyncCall;)V", "Ljava/util/concurrent/ExecutorService;", "executorService", "executeOn", "(Ljava/util/concurrent/ExecutorService;)V", "Ljava/util/concurrent/RejectedExecutionException;", "e", "failRejected$okhttp", "(Ljava/util/concurrent/RejectedExecutionException;)V", "failRejected", "run", "()V", "Ljava/util/concurrent/atomic/AtomicInteger;", "<set-?>", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Ljava/util/concurrent/atomic/AtomicInteger;", "getCallsPerHost", "()Ljava/util/concurrent/atomic/AtomicInteger;", "callsPerHost", "", "getHost", "()Ljava/lang/String;", "host", "Lokhttp3/Request;", "getRequest", "()Lokhttp3/Request;", "request", "getCall", "()Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall$AsyncCall\n+ 2 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,577:1\n334#2,4:578\n208#2,9:582\n*S KotlinDebug\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall$AsyncCall\n*L\n516#1:578,4\n539#1:582,9\n*E\n"})
    /* loaded from: classes3.dex */
    public final class AsyncCall implements Runnable {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final Callback f3179xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
        public volatile AtomicInteger callsPerHost;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
        public final /* synthetic */ RealCall f3181x1378447b;

        public AsyncCall(@NotNull RealCall realCall, Callback responseCallback) {
            Intrinsics.checkNotNullParameter(responseCallback, "responseCallback");
            this.f3181x1378447b = realCall;
            this.f3179xfbe0c504 = responseCallback;
            this.callsPerHost = new AtomicInteger(0);
        }

        public static /* synthetic */ void failRejected$okhttp$default(AsyncCall asyncCall, RejectedExecutionException rejectedExecutionException, int i, Object obj) {
            if ((i & 1) != 0) {
                rejectedExecutionException = null;
            }
            asyncCall.failRejected$okhttp(rejectedExecutionException);
        }

        public final void executeOn(@NotNull ExecutorService executorService) {
            Intrinsics.checkNotNullParameter(executorService, "executorService");
            RealCall realCall = this.f3181x1378447b;
            Dispatcher dispatcher = realCall.getClient().dispatcher();
            if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(dispatcher)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + dispatcher);
            }
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e) {
                    failRejected$okhttp(e);
                    realCall.getClient().dispatcher().finished$okhttp(this);
                }
            } catch (Throwable th) {
                realCall.getClient().dispatcher().finished$okhttp(this);
                throw th;
            }
        }

        public final void failRejected$okhttp(@Nullable RejectedExecutionException e) {
            InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
            interruptedIOException.initCause(e);
            RealCall realCall = this.f3181x1378447b;
            realCall.noMoreExchanges$okhttp(interruptedIOException);
            this.f3179xfbe0c504.onFailure(realCall, interruptedIOException);
        }

        @NotNull
        /* renamed from: getCall, reason: from getter */
        public final RealCall getF3181x1378447b() {
            return this.f3181x1378447b;
        }

        @NotNull
        public final AtomicInteger getCallsPerHost() {
            return this.callsPerHost;
        }

        @NotNull
        public final String getHost() {
            return this.f3181x1378447b.getOriginalRequest().url().host();
        }

        @NotNull
        public final Request getRequest() {
            return this.f3181x1378447b.getOriginalRequest();
        }

        public final void reuseCallsPerHostFrom(@NotNull AsyncCall other) {
            Intrinsics.checkNotNullParameter(other, "other");
            this.callsPerHost = other.callsPerHost;
        }

        @Override // java.lang.Runnable
        public void run() {
            Dispatcher dispatcher;
            Callback callback = this.f3179xfbe0c504;
            StringBuilder sb = new StringBuilder("OkHttp ");
            RealCall realCall = this.f3181x1378447b;
            sb.append(realCall.redactedUrl$okhttp());
            String sb2 = sb.toString();
            Thread currentThread = Thread.currentThread();
            String name = currentThread.getName();
            currentThread.setName(sb2);
            try {
                realCall.f3166x9e171bf9.enter();
                boolean z = false;
                try {
                    try {
                    } catch (Throwable th) {
                        realCall.getClient().dispatcher().finished$okhttp(this);
                        throw th;
                    }
                } catch (IOException e) {
                    e = e;
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    callback.onResponse(realCall, realCall.getResponseWithInterceptorChain$okhttp());
                    dispatcher = realCall.getClient().dispatcher();
                } catch (IOException e2) {
                    e = e2;
                    z = true;
                    if (z) {
                        Platform.INSTANCE.get().log("Callback failure for " + RealCall.access$toLoggableString(realCall), 4, e);
                    } else {
                        callback.onFailure(realCall, e);
                    }
                    dispatcher = realCall.getClient().dispatcher();
                    dispatcher.finished$okhttp(this);
                } catch (Throwable th3) {
                    th = th3;
                    z = true;
                    realCall.cancel();
                    if (!z) {
                        IOException iOException = new IOException("canceled due to " + th);
                        AbstractC0720xaa9ccb5a.addSuppressed(iOException, th);
                        callback.onFailure(realCall, iOException);
                    }
                    throw th;
                }
                dispatcher.finished$okhttp(this);
            } finally {
                currentThread.setName(name);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\b\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lokhttp3/internal/connection/RealCall$CallReference;", "Ljava/lang/ref/WeakReference;", "Lokhttp3/internal/connection/RealCall;", "referent", "", "callStackTrace", "<init>", "(Lokhttp3/internal/connection/RealCall;Ljava/lang/Object;)V", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/lang/Object;", "getCallStackTrace", "()Ljava/lang/Object;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class CallReference extends WeakReference<RealCall> {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final Object callStackTrace;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CallReference(@NotNull RealCall referent, @Nullable Object obj) {
            super(referent);
            Intrinsics.checkNotNullParameter(referent, "referent");
            this.callStackTrace = obj;
        }

        @Nullable
        public final Object getCallStackTrace() {
            return this.callStackTrace;
        }
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [okio.Timeout, okhttp3.internal.connection.RealCall$timeout$1] */
    public RealCall(@NotNull OkHttpClient client, @NotNull Request originalRequest, boolean z) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        this.client = client;
        this.originalRequest = originalRequest;
        this.forWebSocket = z;
        this.f3164x75d576dc = client.connectionPool().getDelegate();
        this.eventListener = client.eventListenerFactory().create(this);
        ?? r4 = new AsyncTimeout() { // from class: okhttp3.internal.connection.RealCall$timeout$1
            @Override // okio.AsyncTimeout
            public void timedOut() {
                RealCall.this.cancel();
            }
        };
        r4.timeout(client.callTimeoutMillis(), TimeUnit.MILLISECONDS);
        this.f3166x9e171bf9 = r4;
        this.f3167x34271fae = new AtomicBoolean();
        this.f3175xab142723 = true;
        this.plansToCancel = new CopyOnWriteArrayList();
    }

    public static final String access$toLoggableString(RealCall realCall) {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        if (realCall.getF3176x85f0360e()) {
            str = "canceled ";
        } else {
            str = "";
        }
        sb.append(str);
        if (realCall.forWebSocket) {
            str2 = "web socket";
        } else {
            str2 = NotificationCompat.CATEGORY_CALL;
        }
        sb.append(str2);
        sb.append(" to ");
        sb.append(realCall.redactedUrl$okhttp());
        return sb.toString();
    }

    public final void acquireConnectionNoEvents(@NotNull RealConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(connection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + connection);
        }
        if (this.connection == null) {
            this.connection = connection;
            connection.getCalls().add(new CallReference(this, this.f3168x95f25580));
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    @Override // okhttp3.Call
    public void cancel() {
        if (this.f3176x85f0360e) {
            return;
        }
        this.f3176x85f0360e = true;
        Exchange exchange = this.f3177xad53da1a;
        if (exchange != null) {
            exchange.cancel();
        }
        Iterator it = this.plansToCancel.iterator();
        while (it.hasNext()) {
            ((RoutePlanner.Plan) it.next()).mo2591cancel();
        }
        this.eventListener.canceled(this);
    }

    @Override // okhttp3.Call
    public void enqueue(@NotNull Callback responseCallback) {
        Intrinsics.checkNotNullParameter(responseCallback, "responseCallback");
        if (this.f3167x34271fae.compareAndSet(false, true)) {
            this.f3168x95f25580 = Platform.INSTANCE.get().getStackTraceForCloseable("response.body().close()");
            this.eventListener.callStart(this);
            this.client.dispatcher().enqueue$okhttp(new AsyncCall(this, responseCallback));
            return;
        }
        throw new IllegalStateException("Already Executed");
    }

    public final void enterNetworkInterceptorExchange(@NotNull Request request, boolean newRoutePlanner, @NotNull RealInterceptorChain chain) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        CertificatePinner certificatePinner;
        ExchangeFinder sequentialExchangeFinder;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(chain, "chain");
        if (this.interceptorScopedExchange == null) {
            synchronized (this) {
                try {
                    if (!this.f3174x1aebc6d9) {
                        if (this.f3173x8c6fc18a) {
                            throw new IllegalStateException("Check failed.");
                        }
                    } else {
                        throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (newRoutePlanner) {
                OkHttpClient okHttpClient = this.client;
                HttpUrl url = request.url();
                boolean isHttps = url.isHttps();
                OkHttpClient okHttpClient2 = this.client;
                if (isHttps) {
                    sSLSocketFactory = okHttpClient2.sslSocketFactory();
                    hostnameVerifier = okHttpClient2.hostnameVerifier();
                    certificatePinner = okHttpClient2.certificatePinner();
                } else {
                    sSLSocketFactory = null;
                    hostnameVerifier = null;
                    certificatePinner = null;
                }
                RealRoutePlanner realRoutePlanner = new RealRoutePlanner(okHttpClient, new Address(url.host(), url.port(), okHttpClient2.dns(), okHttpClient2.socketFactory(), sSLSocketFactory, hostnameVerifier, certificatePinner, okHttpClient2.proxyAuthenticator(), okHttpClient2.proxy(), okHttpClient2.protocols(), okHttpClient2.connectionSpecs(), okHttpClient2.proxySelector()), this, chain, this.f3164x75d576dc.getConnectionListener());
                if (this.client.getFastFallback()) {
                    sequentialExchangeFinder = new FastFallbackExchangeFinder(realRoutePlanner, this.client.getTaskRunner());
                } else {
                    sequentialExchangeFinder = new SequentialExchangeFinder(realRoutePlanner);
                }
                this.f3169x3db60231 = sequentialExchangeFinder;
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    @Override // okhttp3.Call
    @NotNull
    public Response execute() {
        OkHttpClient okHttpClient = this.client;
        if (this.f3167x34271fae.compareAndSet(false, true)) {
            enter();
            this.f3168x95f25580 = Platform.INSTANCE.get().getStackTraceForCloseable("response.body().close()");
            this.eventListener.callStart(this);
            try {
                okHttpClient.dispatcher().executed$okhttp(this);
                return getResponseWithInterceptorChain$okhttp();
            } finally {
                okHttpClient.dispatcher().finished$okhttp(this);
            }
        }
        throw new IllegalStateException("Already Executed");
    }

    public final void exitNetworkInterceptorExchange$okhttp(boolean closeExchange) {
        Exchange exchange;
        synchronized (this) {
            if (!this.f3175xab142723) {
                throw new IllegalStateException("released");
            }
        }
        if (closeExchange && (exchange = this.f3177xad53da1a) != null) {
            exchange.detachWithViolence();
        }
        this.interceptorScopedExchange = null;
    }

    @NotNull
    public final OkHttpClient getClient() {
        return this.client;
    }

    @Nullable
    public final RealConnection getConnection() {
        return this.connection;
    }

    @NotNull
    /* renamed from: getEventListener$okhttp, reason: from getter */
    public final EventListener getEventListener() {
        return this.eventListener;
    }

    public final boolean getForWebSocket() {
        return this.forWebSocket;
    }

    @Nullable
    /* renamed from: getInterceptorScopedExchange$okhttp, reason: from getter */
    public final Exchange getInterceptorScopedExchange() {
        return this.interceptorScopedExchange;
    }

    @NotNull
    public final Request getOriginalRequest() {
        return this.originalRequest;
    }

    @NotNull
    public final CopyOnWriteArrayList<RoutePlanner.Plan> getPlansToCancel$okhttp() {
        return this.plansToCancel;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0091  */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Response getResponseWithInterceptorChain$okhttp() {
        ArrayList arrayList = new ArrayList();
        OkHttpClient okHttpClient = this.client;
        AbstractC0590xf7db57e6.addAll(arrayList, okHttpClient.interceptors());
        arrayList.add(new RetryAndFollowUpInterceptor(okHttpClient));
        arrayList.add(new BridgeInterceptor(okHttpClient.cookieJar()));
        arrayList.add(new CacheInterceptor(okHttpClient.cache()));
        arrayList.add(ConnectInterceptor.INSTANCE);
        boolean z = this.forWebSocket;
        if (!z) {
            AbstractC0590xf7db57e6.addAll(arrayList, okHttpClient.networkInterceptors());
        }
        arrayList.add(new CallServerInterceptor(z));
        boolean z2 = false;
        try {
            Response proceed = new RealInterceptorChain(this, arrayList, 0, null, this.originalRequest, okHttpClient.connectTimeoutMillis(), okHttpClient.readTimeoutMillis(), okHttpClient.writeTimeoutMillis()).proceed(this.originalRequest);
            if (!getF3176x85f0360e()) {
                noMoreExchanges$okhttp(null);
                return proceed;
            }
            _UtilCommonKt.closeQuietly(proceed);
            throw new IOException("Canceled");
        } catch (IOException e) {
            try {
                IOException noMoreExchanges$okhttp = noMoreExchanges$okhttp(e);
                Intrinsics.checkNotNull(noMoreExchanges$okhttp, "null cannot be cast to non-null type kotlin.Throwable");
                throw noMoreExchanges$okhttp;
            } catch (Throwable th) {
                th = th;
                z2 = true;
                if (!z2) {
                    noMoreExchanges$okhttp(null);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            if (!z2) {
            }
            throw th;
        }
    }

    @NotNull
    public final Exchange initExchange$okhttp(@NotNull RealInterceptorChain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        synchronized (this) {
            try {
                if (this.f3175xab142723) {
                    if (!this.f3174x1aebc6d9) {
                        if (this.f3173x8c6fc18a) {
                            throw new IllegalStateException("Check failed.");
                        }
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } else {
                    throw new IllegalStateException("released");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ExchangeFinder exchangeFinder = this.f3169x3db60231;
        Intrinsics.checkNotNull(exchangeFinder);
        Exchange exchange = new Exchange(this, this.eventListener, exchangeFinder, exchangeFinder.find().newCodec$okhttp(this.client, chain));
        this.interceptorScopedExchange = exchange;
        this.f3177xad53da1a = exchange;
        synchronized (this) {
            this.f3173x8c6fc18a = true;
            this.f3174x1aebc6d9 = true;
        }
        if (!this.f3176x85f0360e) {
            return exchange;
        }
        throw new IOException("Canceled");
    }

    @Override // okhttp3.Call
    /* renamed from: isCanceled, reason: from getter */
    public boolean getF3176x85f0360e() {
        return this.f3176x85f0360e;
    }

    @Override // okhttp3.Call
    public boolean isExecuted() {
        return this.f3167x34271fae.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:43:0x0012, B:12:0x0021, B:14:0x0025, B:15:0x0027, B:17:0x002c, B:21:0x0035, B:23:0x0039, B:9:0x001b), top: B:42:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0025 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:43:0x0012, B:12:0x0021, B:14:0x0025, B:15:0x0027, B:17:0x002c, B:21:0x0035, B:23:0x0039, B:9:0x001b), top: B:42:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final <E extends IOException> E messageDone$okhttp(@NotNull Exchange exchange, boolean requestDone, boolean responseDone, E e) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Intrinsics.checkNotNullParameter(exchange, "exchange");
        if (!Intrinsics.areEqual(exchange, this.f3177xad53da1a)) {
            return e;
        }
        synchronized (this) {
            z = false;
            if (requestDone) {
                try {
                    if (!this.f3173x8c6fc18a) {
                    }
                    if (requestDone) {
                        this.f3173x8c6fc18a = false;
                    }
                    if (responseDone) {
                        this.f3174x1aebc6d9 = false;
                    }
                    z3 = this.f3173x8c6fc18a;
                    if (z3 && !this.f3174x1aebc6d9) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (!z3 && !this.f3174x1aebc6d9) {
                        if (!this.f3175xab142723) {
                            z = true;
                        }
                    }
                    z2 = z;
                    z = z4;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!responseDone || !this.f3174x1aebc6d9) {
                z2 = false;
            }
            if (requestDone) {
            }
            if (responseDone) {
            }
            z3 = this.f3173x8c6fc18a;
            if (z3) {
            }
            z4 = false;
            if (!z3) {
                if (!this.f3175xab142723) {
                }
            }
            z2 = z;
            z = z4;
        }
        if (z) {
            this.f3177xad53da1a = null;
            RealConnection realConnection = this.connection;
            if (realConnection != null) {
                realConnection.incrementSuccessCount$okhttp();
            }
        }
        if (z2) {
            return (E) m2596xfbe0c504(e);
        }
        return e;
    }

    @Nullable
    public final IOException noMoreExchanges$okhttp(@Nullable IOException e) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.f3175xab142723) {
                this.f3175xab142723 = false;
                if (!this.f3173x8c6fc18a) {
                    if (!this.f3174x1aebc6d9) {
                        z = true;
                    }
                }
            }
        }
        if (z) {
            return m2596xfbe0c504(e);
        }
        return e;
    }

    @NotNull
    public final String redactedUrl$okhttp() {
        return this.originalRequest.url().redact();
    }

    @Nullable
    public final Socket releaseConnectionNoEvents$okhttp() {
        RealConnection realConnection = this.connection;
        Intrinsics.checkNotNull(realConnection);
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(realConnection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + realConnection);
        }
        List<Reference<RealCall>> calls = realConnection.getCalls();
        Iterator<Reference<RealCall>> it = calls.iterator();
        int i = 0;
        while (true) {
            if (it.hasNext()) {
                if (Intrinsics.areEqual(it.next().get(), this)) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i != -1) {
            calls.remove(i);
            this.connection = null;
            if (calls.isEmpty()) {
                realConnection.setIdleAtNs(System.nanoTime());
                if (this.f3164x75d576dc.connectionBecameIdle(realConnection)) {
                    return realConnection.socket();
                }
            }
            return null;
        }
        throw new IllegalStateException("Check failed.");
    }

    @Override // okhttp3.Call
    @NotNull
    public Request request() {
        return this.originalRequest;
    }

    public final boolean retryAfterFailure() {
        RealConnection realConnection;
        Exchange exchange = this.f3177xad53da1a;
        if (exchange != null && exchange.getHasFailure()) {
            ExchangeFinder exchangeFinder = this.f3169x3db60231;
            Intrinsics.checkNotNull(exchangeFinder);
            RoutePlanner routePlanner = exchangeFinder.getRoutePlanner();
            Exchange exchange2 = this.f3177xad53da1a;
            if (exchange2 != null) {
                realConnection = exchange2.getConnection$okhttp();
            } else {
                realConnection = null;
            }
            if (routePlanner.hasNext(realConnection)) {
                return true;
            }
        }
        return false;
    }

    @Override // okhttp3.Call
    @NotNull
    public Timeout timeout() {
        return this.f3166x9e171bf9;
    }

    public final void timeoutEarlyExit() {
        if (!this.f3171x1db10c9d) {
            this.f3171x1db10c9d = true;
            exit();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final IOException m2596xfbe0c504(IOException iOException) {
        IOException interruptedIOException;
        Socket releaseConnectionNoEvents$okhttp;
        boolean z = _UtilJvmKt.assertionsEnabled;
        if (z && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        RealConnection realConnection = this.connection;
        if (realConnection != null) {
            if (z && Thread.holdsLock(realConnection)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + realConnection);
            }
            synchronized (realConnection) {
                releaseConnectionNoEvents$okhttp = releaseConnectionNoEvents$okhttp();
            }
            if (this.connection == null) {
                if (releaseConnectionNoEvents$okhttp != null) {
                    _UtilJvmKt.closeQuietly(releaseConnectionNoEvents$okhttp);
                }
                this.eventListener.connectionReleased(this, realConnection);
                realConnection.getConnectionListener().connectionReleased(realConnection, this);
                if (releaseConnectionNoEvents$okhttp != null) {
                    realConnection.getConnectionListener().connectionClosed(realConnection);
                }
            } else if (releaseConnectionNoEvents$okhttp != null) {
                throw new IllegalStateException("Check failed.");
            }
        }
        if (this.f3171x1db10c9d || !exit()) {
            interruptedIOException = iOException;
        } else {
            interruptedIOException = new InterruptedIOException("timeout");
            if (iOException != null) {
                interruptedIOException.initCause(iOException);
            }
        }
        if (iOException != null) {
            EventListener eventListener = this.eventListener;
            Intrinsics.checkNotNull(interruptedIOException);
            eventListener.callFailed(this, interruptedIOException);
        } else {
            this.eventListener.callEnd(this);
        }
        return interruptedIOException;
    }

    @Override // okhttp3.Call
    @NotNull
    public Call clone() {
        return new RealCall(this.client, this.originalRequest, this.forWebSocket);
    }
}
