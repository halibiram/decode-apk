package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import defpackage.AbstractC1192x185baab5;
import defpackage.AbstractC1197x89633db9;
import defpackage.C0522x5cef0f65;
import defpackage.C0635x2b917e10;
import java.io.IOException;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.ConnectionListener;
import okhttp3.ConnectionSpec;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RoutePlanner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 T2\u00020\u00012\u00020\u0002:\u0001TBi\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001e\u0010\u001cJ%\u0010&\u001a\u00020\u00002\f\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\r2\u0006\u0010#\u001a\u00020\"H\u0000¢\u0006\u0004\b$\u0010%J'\u0010(\u001a\u0004\u0018\u00010\u00002\f\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\r2\u0006\u0010#\u001a\u00020\"H\u0000¢\u0006\u0004\b'\u0010%J\u000f\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b*\u0010+J!\u0010/\u001a\u00020.2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020.H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020.H\u0016¢\u0006\u0004\b3\u00102J\u000f\u00104\u001a\u00020\u0001H\u0016¢\u0006\u0004\b4\u00105J\r\u00106\u001a\u00020.¢\u0006\u0004\b6\u00102R\u001a\u0010\f\u001a\u00020\u000b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u001a\u0010\u0013\u001a\u00020\u000f8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010BR\u001a\u0010\u0015\u001a\u00020\u00148\u0000X\u0080\u0004¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bE\u0010FR\u001a\u0010\u0017\u001a\u00020\u00168\u0000X\u0080\u0004¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR$\u0010R\u001a\u0004\u0018\u00010K8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u0014\u0010S\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bS\u0010F¨\u0006U"}, d2 = {"Lokhttp3/internal/connection/ConnectPlan;", "Lokhttp3/internal/connection/RoutePlanner$Plan;", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/internal/connection/RealRoutePlanner;", "routePlanner", "Lokhttp3/Route;", "route", "", "routes", "", "attempt", "Lokhttp3/Request;", "tunnelRequest", "connectionSpecIndex", "", "isTlsFallback", "Lokhttp3/ConnectionListener;", "connectionListener", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealCall;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZLokhttp3/ConnectionListener;)V", "Lokhttp3/internal/connection/RoutePlanner$ConnectResult;", "connectTcp", "()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;", "connectTlsEtc", "connectTunnel$okhttp", "connectTunnel", "Lokhttp3/ConnectionSpec;", "connectionSpecs", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "planWithCurrentOrInitialConnectionSpec$okhttp", "(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;", "planWithCurrentOrInitialConnectionSpec", "nextConnectionSpec$okhttp", "nextConnectionSpec", "Lokhttp3/internal/connection/RealConnection;", "handleSuccess", "()Lokhttp3/internal/connection/RealConnection;", "Ljava/io/IOException;", "e", "", "trackFailure", "(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V", "noNewExchanges", "()V", "cancel", "retry", "()Lokhttp3/internal/connection/RoutePlanner$Plan;", "closeQuietly", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "Lokhttp3/Route;", "getRoute", "()Lokhttp3/Route;", "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤", "Ljava/util/List;", "getRoutes$okhttp", "()Ljava/util/List;", "뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷", "I", "getConnectionSpecIndex$okhttp", "()I", "뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎", "Z", "isTlsFallback$okhttp", "()Z", "뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠", "Lokhttp3/ConnectionListener;", "getConnectionListener$okhttp", "()Lokhttp3/ConnectionListener;", "Ljava/net/Socket;", "뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "setSocket$okhttp", "(Ljava/net/Socket;)V", "socket", "isReady", "Companion", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConnectPlan.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectPlan.kt\nokhttp3/internal/connection/ConnectPlan\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,539:1\n1#2:540\n*E\n"})
/* loaded from: classes3.dex */
public final class ConnectPlan implements RoutePlanner.Plan, ExchangeCodec.Carrier {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final OkHttpClient f3120xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final RealCall f3121x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Interceptor.Chain f3122x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final RealRoutePlanner f3123x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
    public final Route route;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters and from kotlin metadata */
    public final List routes;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final int f3126x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public final Request f3127x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters and from kotlin metadata */
    public final int connectionSpecIndex;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters and from kotlin metadata */
    public final boolean isTlsFallback;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters and from kotlin metadata */
    public final ConnectionListener connectionListener;

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public final EventListener f3131xd2bcb0cf;

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁, reason: contains not printable characters */
    public volatile boolean f3132x8c6fc18a;

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
    public Socket f3133x1aebc6d9;

    /* renamed from: 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨, reason: contains not printable characters and from kotlin metadata */
    public Socket socket;

    /* renamed from: 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐, reason: contains not printable characters */
    public Handshake f3135x85f0360e;

    /* renamed from: 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌, reason: contains not printable characters */
    public Protocol f3136xad53da1a;

    /* renamed from: 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬, reason: contains not printable characters */
    public BufferedSource f3137x952a0a9e;

    /* renamed from: 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅, reason: contains not printable characters */
    public BufferedSink f3138xc20437a5;

    /* renamed from: 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡, reason: contains not printable characters */
    public RealConnection f3139x4440ab85;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ConnectPlan(@NotNull OkHttpClient client, @NotNull RealCall call, @NotNull Interceptor.Chain chain, @NotNull RealRoutePlanner routePlanner, @NotNull Route route, @Nullable List<Route> list, int i, @Nullable Request request, int i2, boolean z, @NotNull ConnectionListener connectionListener) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Intrinsics.checkNotNullParameter(routePlanner, "routePlanner");
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
        this.f3120xfbe0c504 = client;
        this.f3121x3271d0aa = call;
        this.f3122x1378447b = chain;
        this.f3123x75d576dc = routePlanner;
        this.route = route;
        this.routes = list;
        this.f3126x34271fae = i;
        this.f3127x95f25580 = request;
        this.connectionSpecIndex = i2;
        this.isTlsFallback = z;
        this.connectionListener = connectionListener;
        this.f3131xd2bcb0cf = call.getEventListener();
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static ConnectPlan m2587x1378447b(ConnectPlan connectPlan, int i, Request request, int i2, boolean z, int i3) {
        int i4;
        Request request2;
        int i5;
        boolean z2;
        if ((i3 & 1) != 0) {
            i4 = connectPlan.f3126x34271fae;
        } else {
            i4 = i;
        }
        if ((i3 & 2) != 0) {
            request2 = connectPlan.f3127x95f25580;
        } else {
            request2 = request;
        }
        if ((i3 & 4) != 0) {
            i5 = connectPlan.connectionSpecIndex;
        } else {
            i5 = i2;
        }
        if ((i3 & 8) != 0) {
            z2 = connectPlan.isTlsFallback;
        } else {
            z2 = z;
        }
        return new ConnectPlan(connectPlan.f3120xfbe0c504, connectPlan.f3121x3271d0aa, connectPlan.f3122x1378447b, connectPlan.f3123x75d576dc, connectPlan.getRoute(), connectPlan.routes, i4, request2, i5, z2, connectPlan.connectionListener);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    /* renamed from: cancel */
    public void mo2591cancel() {
        this.f3132x8c6fc18a = true;
        Socket socket = this.f3133x1aebc6d9;
        if (socket != null) {
            _UtilJvmKt.closeQuietly(socket);
        }
    }

    public final void closeQuietly() {
        Socket socket = this.socket;
        if (socket != null) {
            _UtilJvmKt.closeQuietly(socket);
        }
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    @NotNull
    /* renamed from: connectTcp */
    public RoutePlanner.ConnectResult getResult() {
        Socket socket;
        Socket socket2;
        ConnectionListener connectionListener = this.connectionListener;
        if (this.f3133x1aebc6d9 == null) {
            RealCall realCall = this.f3121x3271d0aa;
            realCall.getPlansToCancel$okhttp().add(this);
            boolean z = false;
            try {
                try {
                    this.f3131xd2bcb0cf.connectStart(realCall, getRoute().socketAddress(), getRoute().proxy());
                    connectionListener.connectStart(getRoute(), realCall);
                    m2588xfbe0c504();
                    z = true;
                    RoutePlanner.ConnectResult connectResult = new RoutePlanner.ConnectResult(this, null, null, 6, null);
                    realCall.getPlansToCancel$okhttp().remove(this);
                    return connectResult;
                } catch (IOException e) {
                    this.f3131xd2bcb0cf.connectFailed(this.f3121x3271d0aa, getRoute().socketAddress(), getRoute().proxy(), null, e);
                    connectionListener.connectFailed(getRoute(), realCall, e);
                    RoutePlanner.ConnectResult connectResult2 = new RoutePlanner.ConnectResult(this, null, e, 2, null);
                    realCall.getPlansToCancel$okhttp().remove(this);
                    if (!z && (socket = this.f3133x1aebc6d9) != null) {
                        _UtilJvmKt.closeQuietly(socket);
                    }
                    return connectResult2;
                }
            } catch (Throwable th) {
                realCall.getPlansToCancel$okhttp().remove(this);
                if (!z && (socket2 = this.f3133x1aebc6d9) != null) {
                    _UtilJvmKt.closeQuietly(socket2);
                }
                throw th;
            }
        }
        throw new IllegalStateException("TCP already connected");
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x01aa A[Catch: all -> 0x01b3, TryCatch #1 {all -> 0x01b3, blocks: (B:54:0x0181, B:56:0x01aa, B:60:0x01b5), top: B:53:0x0181 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01db  */
    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    @NotNull
    /* renamed from: connectTlsEtc */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RoutePlanner.ConnectResult mo2600connectTlsEtc() {
        ConnectPlan connectPlan;
        boolean z;
        ConnectPlan connectPlan2;
        BufferedSink bufferedSink;
        Buffer buffer;
        Buffer buffer2;
        OkHttpClient okHttpClient = this.f3120xfbe0c504;
        if (this.f3133x1aebc6d9 != null) {
            if (!isReady()) {
                List<ConnectionSpec> connectionSpecs = getRoute().address().connectionSpecs();
                RealCall realCall = this.f3121x3271d0aa;
                realCall.getPlansToCancel$okhttp().add(this);
                ConnectPlan connectPlan3 = null;
                try {
                    try {
                        if (this.f3127x95f25580 != null) {
                            RoutePlanner.ConnectResult connectTunnel$okhttp = connectTunnel$okhttp();
                            if (connectTunnel$okhttp.getNextPlan() != null || connectTunnel$okhttp.getThrowable() != null) {
                                realCall.getPlansToCancel$okhttp().remove(this);
                                Socket socket = this.socket;
                                if (socket != null) {
                                    _UtilJvmKt.closeQuietly(socket);
                                }
                                Socket socket2 = this.f3133x1aebc6d9;
                                if (socket2 != null) {
                                    _UtilJvmKt.closeQuietly(socket2);
                                }
                                return connectTunnel$okhttp;
                            }
                        }
                        SSLSocketFactory sslSocketFactory = getRoute().address().sslSocketFactory();
                        EventListener eventListener = this.f3131xd2bcb0cf;
                        if (sslSocketFactory != null) {
                            BufferedSource bufferedSource = this.f3137x952a0a9e;
                            if ((bufferedSource != null && (buffer2 = bufferedSource.getBuffer()) != null && !buffer2.exhausted()) || ((bufferedSink = this.f3138xc20437a5) != null && (buffer = bufferedSink.getBuffer()) != null && !buffer.exhausted())) {
                                throw new IOException("TLS tunnel buffered too many bytes!");
                            }
                            eventListener.secureConnectStart(realCall);
                            Socket createSocket = getRoute().address().sslSocketFactory().createSocket(this.f3133x1aebc6d9, getRoute().address().url().host(), getRoute().address().url().port(), true);
                            Intrinsics.checkNotNull(createSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
                            SSLSocket sSLSocket = (SSLSocket) createSocket;
                            ConnectPlan planWithCurrentOrInitialConnectionSpec$okhttp = planWithCurrentOrInitialConnectionSpec$okhttp(connectionSpecs, sSLSocket);
                            ConnectionSpec connectionSpec = connectionSpecs.get(planWithCurrentOrInitialConnectionSpec$okhttp.connectionSpecIndex);
                            connectPlan = planWithCurrentOrInitialConnectionSpec$okhttp.nextConnectionSpec$okhttp(connectionSpecs, sSLSocket);
                            try {
                                connectionSpec.apply$okhttp(sSLSocket, planWithCurrentOrInitialConnectionSpec$okhttp.isTlsFallback);
                                m2589x3271d0aa(sSLSocket, connectionSpec);
                                eventListener.secureConnectEnd(realCall, this.f3135x85f0360e);
                                connectPlan2 = connectPlan;
                            } catch (IOException e) {
                                e = e;
                                z = false;
                                try {
                                    this.f3131xd2bcb0cf.connectFailed(this.f3121x3271d0aa, getRoute().socketAddress(), getRoute().proxy(), null, e);
                                    this.connectionListener.connectFailed(getRoute(), realCall, e);
                                    if (okHttpClient.retryOnConnectionFailure()) {
                                        connectPlan3 = connectPlan;
                                    }
                                    RoutePlanner.ConnectResult connectResult = new RoutePlanner.ConnectResult(this, connectPlan3, e);
                                    realCall.getPlansToCancel$okhttp().remove(this);
                                    if (!z) {
                                    }
                                    return connectResult;
                                } catch (Throwable th) {
                                    th = th;
                                    realCall.getPlansToCancel$okhttp().remove(this);
                                    if (!z) {
                                        Socket socket3 = this.socket;
                                        if (socket3 != null) {
                                            _UtilJvmKt.closeQuietly(socket3);
                                        }
                                        Socket socket4 = this.f3133x1aebc6d9;
                                        if (socket4 != null) {
                                            _UtilJvmKt.closeQuietly(socket4);
                                        }
                                    }
                                    throw th;
                                }
                            }
                        } else {
                            this.socket = this.f3133x1aebc6d9;
                            List<Protocol> protocols = getRoute().address().protocols();
                            Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
                            if (!protocols.contains(protocol)) {
                                protocol = Protocol.HTTP_1_1;
                            }
                            this.f3136xad53da1a = protocol;
                            connectPlan2 = null;
                        }
                        try {
                            RealConnection realConnection = new RealConnection(okHttpClient.getTaskRunner(), okHttpClient.connectionPool().getDelegate(), getRoute(), this.f3133x1aebc6d9, this.socket, this.f3135x85f0360e, this.f3136xad53da1a, this.f3137x952a0a9e, this.f3138xc20437a5, okHttpClient.pingIntervalMillis(), okHttpClient.connectionPool().getConnectionListener$okhttp());
                            this.f3139x4440ab85 = realConnection;
                            realConnection.start();
                            eventListener.connectEnd(realCall, getRoute().socketAddress(), getRoute().proxy(), this.f3136xad53da1a);
                        } catch (IOException e2) {
                            e = e2;
                            connectPlan = connectPlan2;
                            z = false;
                            this.f3131xd2bcb0cf.connectFailed(this.f3121x3271d0aa, getRoute().socketAddress(), getRoute().proxy(), null, e);
                            this.connectionListener.connectFailed(getRoute(), realCall, e);
                            if (okHttpClient.retryOnConnectionFailure() && TlsHandshakeKt.retryTlsHandshake(e)) {
                                connectPlan3 = connectPlan;
                            }
                            RoutePlanner.ConnectResult connectResult2 = new RoutePlanner.ConnectResult(this, connectPlan3, e);
                            realCall.getPlansToCancel$okhttp().remove(this);
                            if (!z) {
                                Socket socket5 = this.socket;
                                if (socket5 != null) {
                                    _UtilJvmKt.closeQuietly(socket5);
                                }
                                Socket socket6 = this.f3133x1aebc6d9;
                                if (socket6 != null) {
                                    _UtilJvmKt.closeQuietly(socket6);
                                }
                            }
                            return connectResult2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z = false;
                    }
                } catch (IOException e3) {
                    e = e3;
                    connectPlan = null;
                }
                try {
                    RoutePlanner.ConnectResult connectResult3 = new RoutePlanner.ConnectResult(this, null, null, 6, null);
                    realCall.getPlansToCancel$okhttp().remove(this);
                    return connectResult3;
                } catch (IOException e4) {
                    e = e4;
                    connectPlan = connectPlan2;
                    z = true;
                    this.f3131xd2bcb0cf.connectFailed(this.f3121x3271d0aa, getRoute().socketAddress(), getRoute().proxy(), null, e);
                    this.connectionListener.connectFailed(getRoute(), realCall, e);
                    if (okHttpClient.retryOnConnectionFailure()) {
                    }
                    RoutePlanner.ConnectResult connectResult22 = new RoutePlanner.ConnectResult(this, connectPlan3, e);
                    realCall.getPlansToCancel$okhttp().remove(this);
                    if (!z) {
                    }
                    return connectResult22;
                } catch (Throwable th3) {
                    th = th3;
                    z = true;
                    realCall.getPlansToCancel$okhttp().remove(this);
                    if (!z) {
                    }
                    throw th;
                }
            }
            throw new IllegalStateException("already connected");
        }
        throw new IllegalStateException("TCP not connected");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00c8, code lost:
    
        if (r4 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00d5, code lost:
    
        return new okhttp3.internal.connection.RoutePlanner.ConnectResult(r13, null, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00d6, code lost:
    
        r0 = r13.f3133x1aebc6d9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00d8, code lost:
    
        if (r0 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00da, code lost:
    
        okhttp3.internal._UtilJvmKt.closeQuietly(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00dd, code lost:
    
        r3 = 1 + r13.f3126x34271fae;
        r1 = r13.f3121x3271d0aa;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00e4, code lost:
    
        if (r3 >= 21) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00e6, code lost:
    
        r13.f3131xd2bcb0cf.connectEnd(r1, getRoute().socketAddress(), getRoute().proxy(), null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x010e, code lost:
    
        return new okhttp3.internal.connection.RoutePlanner.ConnectResult(r13, m2587x1378447b(r13, r3, r4, 0, false, 12), null, 4, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x010f, code lost:
    
        r0 = new java.net.ProtocolException("Too many tunnel connections attempted: 21");
        r13.f3131xd2bcb0cf.connectFailed(r13.f3121x3271d0aa, getRoute().socketAddress(), getRoute().proxy(), null, r0);
        r13.connectionListener.connectFailed(getRoute(), r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0142, code lost:
    
        return new okhttp3.internal.connection.RoutePlanner.ConnectResult(r13, null, r0, 2, null);
     */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final RoutePlanner.ConnectResult connectTunnel$okhttp() {
        Request request;
        Request request2 = this.f3127x95f25580;
        Intrinsics.checkNotNull(request2);
        String str = "CONNECT " + _UtilJvmKt.toHostHeader(getRoute().address().url(), true) + " HTTP/1.1";
        while (true) {
            BufferedSource bufferedSource = this.f3137x952a0a9e;
            Intrinsics.checkNotNull(bufferedSource);
            BufferedSink bufferedSink = this.f3138xc20437a5;
            Intrinsics.checkNotNull(bufferedSink);
            Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, bufferedSource, bufferedSink);
            Timeout f3090xfbe0c504 = bufferedSource.getF3090xfbe0c504();
            long readTimeoutMillis = this.f3120xfbe0c504.readTimeoutMillis();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f3090xfbe0c504.timeout(readTimeoutMillis, timeUnit);
            bufferedSink.getF3647xfbe0c504().timeout(r7.writeTimeoutMillis(), timeUnit);
            http1ExchangeCodec.writeRequest(request2.headers(), str);
            http1ExchangeCodec.finishRequest();
            Response.Builder readResponseHeaders = http1ExchangeCodec.readResponseHeaders(false);
            Intrinsics.checkNotNull(readResponseHeaders);
            Response build = readResponseHeaders.request(request2).build();
            http1ExchangeCodec.skipConnectBody(build);
            int code = build.code();
            if (code != 200) {
                if (code == 407) {
                    Request authenticate = getRoute().address().proxyAuthenticator().authenticate(getRoute(), build);
                    if (authenticate != null) {
                        if (AbstractC1197x89633db9.equals("close", Response.header$default(build, "Connection", null, 2, null), true)) {
                            request = authenticate;
                            break;
                        }
                        request2 = authenticate;
                    } else {
                        throw new IOException("Failed to authenticate with proxy");
                    }
                } else {
                    throw new IOException("Unexpected response code for CONNECT: " + build.code());
                }
            } else {
                request = null;
                break;
            }
        }
    }

    @NotNull
    /* renamed from: getConnectionListener$okhttp, reason: from getter */
    public final ConnectionListener getConnectionListener() {
        return this.connectionListener;
    }

    /* renamed from: getConnectionSpecIndex$okhttp, reason: from getter */
    public final int getConnectionSpecIndex() {
        return this.connectionSpecIndex;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    @NotNull
    public Route getRoute() {
        return this.route;
    }

    @Nullable
    public final List<Route> getRoutes$okhttp() {
        return this.routes;
    }

    @Nullable
    /* renamed from: getSocket$okhttp, reason: from getter */
    public final Socket getSocket() {
        return this.socket;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    @NotNull
    /* renamed from: handleSuccess */
    public RealConnection mo2592handleSuccess() {
        this.f3121x3271d0aa.getClient().getRouteDatabase().connected(getRoute());
        RealConnection realConnection = this.f3139x4440ab85;
        Intrinsics.checkNotNull(realConnection);
        this.connectionListener.connectEnd(realConnection, getRoute(), this.f3121x3271d0aa);
        ReusePlan planReusePooledConnection$okhttp = this.f3123x75d576dc.planReusePooledConnection$okhttp(this, this.routes);
        if (planReusePooledConnection$okhttp != null) {
            return planReusePooledConnection$okhttp.getConnection();
        }
        synchronized (realConnection) {
            this.f3120xfbe0c504.connectionPool().getDelegate().put(realConnection);
            this.f3121x3271d0aa.acquireConnectionNoEvents(realConnection);
        }
        this.f3131xd2bcb0cf.connectionAcquired(this.f3121x3271d0aa, realConnection);
        realConnection.getConnectionListener().connectionAcquired(realConnection, this.f3121x3271d0aa);
        return realConnection;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public boolean isReady() {
        if (this.f3136xad53da1a != null) {
            return true;
        }
        return false;
    }

    /* renamed from: isTlsFallback$okhttp, reason: from getter */
    public final boolean getIsTlsFallback() {
        return this.isTlsFallback;
    }

    @Nullable
    public final ConnectPlan nextConnectionSpec$okhttp(@NotNull List<ConnectionSpec> connectionSpecs, @NotNull SSLSocket sslSocket) {
        boolean z;
        Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        int i = this.connectionSpecIndex;
        int size = connectionSpecs.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            if (connectionSpecs.get(i2).isCompatible(sslSocket)) {
                if (i != -1) {
                    z = true;
                } else {
                    z = false;
                }
                return m2587x1378447b(this, 0, null, i2, z, 3);
            }
        }
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public void noNewExchanges() {
    }

    @NotNull
    public final ConnectPlan planWithCurrentOrInitialConnectionSpec$okhttp(@NotNull List<ConnectionSpec> connectionSpecs, @NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        if (this.connectionSpecIndex != -1) {
            return this;
        }
        ConnectPlan nextConnectionSpec$okhttp = nextConnectionSpec$okhttp(connectionSpecs, sslSocket);
        if (nextConnectionSpec$okhttp != null) {
            return nextConnectionSpec$okhttp;
        }
        StringBuilder sb = new StringBuilder("Unable to find acceptable protocols. isFallback=");
        sb.append(this.isTlsFallback);
        sb.append(", modes=");
        sb.append(connectionSpecs);
        sb.append(", supported protocols=");
        String[] enabledProtocols = sslSocket.getEnabledProtocols();
        Intrinsics.checkNotNull(enabledProtocols);
        String arrays = Arrays.toString(enabledProtocols);
        Intrinsics.checkNotNullExpressionValue(arrays, "toString(...)");
        sb.append(arrays);
        throw new UnknownServiceException(sb.toString());
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    @NotNull
    /* renamed from: retry */
    public RoutePlanner.Plan mo2593retry() {
        return new ConnectPlan(this.f3120xfbe0c504, this.f3121x3271d0aa, this.f3122x1378447b, this.f3123x75d576dc, getRoute(), this.routes, this.f3126x34271fae, this.f3127x95f25580, this.connectionSpecIndex, this.isTlsFallback, this.connectionListener);
    }

    public final void setSocket$okhttp(@Nullable Socket socket) {
        this.socket = socket;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public void trackFailure(@NotNull RealCall call, @Nullable IOException e) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m2588xfbe0c504() {
        int i;
        Socket createSocket;
        Proxy.Type type = getRoute().proxy().type();
        if (type == null) {
            i = -1;
        } else {
            i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i != 1 && i != 2) {
            createSocket = new Socket(getRoute().proxy());
        } else {
            createSocket = getRoute().address().socketFactory().createSocket();
            Intrinsics.checkNotNull(createSocket);
        }
        this.f3133x1aebc6d9 = createSocket;
        if (!this.f3132x8c6fc18a) {
            createSocket.setSoTimeout(this.f3122x1378447b.readTimeoutMillis());
            try {
                Platform.INSTANCE.get().connectSocket(createSocket, getRoute().socketAddress(), this.f3122x1378447b.getConnectTimeoutMillis());
                try {
                    this.f3137x952a0a9e = Okio.buffer(Okio.source(createSocket));
                    this.f3138xc20437a5 = Okio.buffer(Okio.sink(createSocket));
                    return;
                } catch (NullPointerException e) {
                    if (!Intrinsics.areEqual(e.getMessage(), "throw with null exception")) {
                        return;
                    } else {
                        throw new IOException(e);
                    }
                }
            } catch (ConnectException e2) {
                ConnectException connectException = new ConnectException("Failed to connect to " + getRoute().socketAddress());
                connectException.initCause(e2);
                throw connectException;
            }
        }
        throw new IOException("canceled");
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final void m2589x3271d0aa(SSLSocket sSLSocket, ConnectionSpec connectionSpec) {
        Protocol protocol;
        Address address = getRoute().address();
        try {
            if (connectionSpec.supportsTlsExtensions()) {
                Platform.INSTANCE.get().configureTlsExtensions(sSLSocket, address.url().host(), address.protocols());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            Handshake.Companion companion = Handshake.INSTANCE;
            Intrinsics.checkNotNull(session);
            Handshake handshake = companion.get(session);
            HostnameVerifier hostnameVerifier = address.hostnameVerifier();
            Intrinsics.checkNotNull(hostnameVerifier);
            boolean verify = hostnameVerifier.verify(address.url().host(), session);
            String str = null;
            if (!verify) {
                List<Certificate> peerCertificates = handshake.peerCertificates();
                if (!peerCertificates.isEmpty()) {
                    Certificate certificate = peerCertificates.get(0);
                    Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    X509Certificate x509Certificate = (X509Certificate) certificate;
                    throw new SSLPeerUnverifiedException(AbstractC1192x185baab5.trimMargin$default("\n            |Hostname " + address.url().host() + " not verified:\n            |    certificate: " + CertificatePinner.INSTANCE.pin(x509Certificate) + "\n            |    DN: " + x509Certificate.getSubjectDN().getName() + "\n            |    subjectAltNames: " + OkHostnameVerifier.INSTANCE.allSubjectAltNames(x509Certificate) + "\n            ", null, 1, null));
                }
                throw new SSLPeerUnverifiedException("Hostname " + address.url().host() + " not verified (no certificates)");
            }
            CertificatePinner certificatePinner = address.certificatePinner();
            Intrinsics.checkNotNull(certificatePinner);
            Handshake handshake2 = new Handshake(handshake.tlsVersion(), handshake.cipherSuite(), handshake.localCertificates(), new C0522x5cef0f65(certificatePinner, handshake, address, 1));
            this.f3135x85f0360e = handshake2;
            certificatePinner.check$okhttp(address.url().host(), new C0635x2b917e10(handshake2, 0));
            if (connectionSpec.supportsTlsExtensions()) {
                str = Platform.INSTANCE.get().getSelectedProtocol(sSLSocket);
            }
            this.socket = sSLSocket;
            this.f3137x952a0a9e = Okio.buffer(Okio.source(sSLSocket));
            this.f3138xc20437a5 = Okio.buffer(Okio.sink(sSLSocket));
            if (str != null) {
                protocol = Protocol.INSTANCE.get(str);
            } else {
                protocol = Protocol.HTTP_1_1;
            }
            this.f3136xad53da1a = protocol;
            Platform.INSTANCE.get().afterHandshake(sSLSocket);
        } catch (Throwable th) {
            Platform.INSTANCE.get().afterHandshake(sSLSocket);
            _UtilJvmKt.closeQuietly(sSLSocket);
            throw th;
        }
    }
}
