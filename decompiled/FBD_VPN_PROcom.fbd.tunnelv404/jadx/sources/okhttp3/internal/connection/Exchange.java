package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import defpackage.C0721xa55cc2a9;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.ws.RealWebSocket;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0002TUB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u000e¢\u0006\u0004\b\u0018\u0010\u0017J\r\u0010\u0019\u001a\u00020\u000e¢\u0006\u0004\b\u0019\u0010\u0017J\u0017\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001a\u001a\u00020\u0011¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b#\u0010$J\r\u0010&\u001a\u00020%¢\u0006\u0004\b&\u0010'J\r\u0010)\u001a\u00020(¢\u0006\u0004\b)\u0010*J\r\u0010+\u001a\u00020\u000e¢\u0006\u0004\b+\u0010\u0017J\r\u0010,\u001a\u00020\u000e¢\u0006\u0004\b,\u0010\u0017J\r\u0010-\u001a\u00020\u000e¢\u0006\u0004\b-\u0010\u0017J\r\u0010.\u001a\u00020\u000e¢\u0006\u0004\b.\u0010\u0017J9\u00106\u001a\u00028\u0000\"\n\b\u0000\u00100*\u0004\u0018\u00010/2\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u00020\u00112\u0006\u00104\u001a\u00020\u00112\u0006\u00105\u001a\u00028\u0000¢\u0006\u0004\b6\u00107J\r\u00108\u001a\u00020\u000e¢\u0006\u0004\b8\u0010\u0017R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u001a\u0010\u0007\u001a\u00020\u00068\u0000X\u0080\u0004¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR$\u0010J\u001a\u00020\u00112\u0006\u0010E\u001a\u00020\u00118\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010IR$\u0010M\u001a\u00020\u00112\u0006\u0010E\u001a\u00020\u00118\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\bK\u0010G\u001a\u0004\bL\u0010IR\u0014\u0010Q\u001a\u00020N8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bO\u0010PR\u0014\u0010S\u001a\u00020\u00118@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bR\u0010I¨\u0006V"}, d2 = {"Lokhttp3/internal/connection/Exchange;", "", "Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/EventListener;", "eventListener", "Lokhttp3/internal/connection/ExchangeFinder;", "finder", "Lokhttp3/internal/http/ExchangeCodec;", "codec", "<init>", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V", "Lokhttp3/Request;", "request", "", "writeRequestHeaders", "(Lokhttp3/Request;)V", "", "duplex", "Lokio/Sink;", "createRequestBody", "(Lokhttp3/Request;Z)Lokio/Sink;", "flushRequest", "()V", "finishRequest", "responseHeadersStart", "expectContinue", "Lokhttp3/Response$Builder;", "readResponseHeaders", "(Z)Lokhttp3/Response$Builder;", "Lokhttp3/Response;", "response", "responseHeadersEnd", "(Lokhttp3/Response;)V", "Lokhttp3/ResponseBody;", "openResponseBody", "(Lokhttp3/Response;)Lokhttp3/ResponseBody;", "Lokhttp3/Headers;", "trailers", "()Lokhttp3/Headers;", "Lokhttp3/internal/ws/RealWebSocket$Streams;", "newWebSocketStreams", "()Lokhttp3/internal/ws/RealWebSocket$Streams;", "webSocketUpgradeFailed", "noNewExchangesOnConnection", "cancel", "detachWithViolence", "Ljava/io/IOException;", ExifInterface.LONGITUDE_EAST, "", "bytesRead", "responseDone", "requestDone", "e", "bodyComplete", "(JZZLjava/io/IOException;)Ljava/io/IOException;", "noRequestBody", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/internal/connection/RealCall;", "getCall$okhttp", "()Lokhttp3/internal/connection/RealCall;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokhttp3/EventListener;", "getEventListener$okhttp", "()Lokhttp3/EventListener;", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Lokhttp3/internal/connection/ExchangeFinder;", "getFinder$okhttp", "()Lokhttp3/internal/connection/ExchangeFinder;", "<set-?>", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "Z", "isDuplex$okhttp", "()Z", "isDuplex", "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤", "getHasFailure$okhttp", "hasFailure", "Lokhttp3/internal/connection/RealConnection;", "getConnection$okhttp", "()Lokhttp3/internal/connection/RealConnection;", "connection", "isCoalescedConnection$okhttp", "isCoalescedConnection", "뒤뎹돛뒾딎뒹딝듰땨뒈땪땥디딠뒵디땭듨뎡딠디됨딄돳딤땦땅땠둡둔땹땱듨뒾둬뒀뎬딟땁딽딸땐돶딀돴땃됫뒾뎡딝뎡둑뒤땅디딨땄땝땡둬도돝돵딃드땣딅듽돸돰듸땳뒘뎡땯돳돸땟돶땯디땨땡뒾된땯뒨뎻뒈듌된됨둠되땨돵땦땭땱뎰됐뎻딎뒛됨땁딟된뒹뎻뒈뒹땪땩딃뒼뎬둑딽땁돷땠딹뒤땀둬땣듟딞땮", "ResponseBodySource", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Exchange {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final RealCall call;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final EventListener eventListener;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public final ExchangeFinder finder;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final ExchangeCodec f3143x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
    public boolean isDuplex;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters and from kotlin metadata */
    public boolean hasFailure;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0013\u001a\u00028\u0000\"\n\b\u0000\u0010\u0011*\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00028\u0000¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lokhttp3/internal/connection/Exchange$ResponseBodySource;", "Lokio/ForwardingSource;", "Lokio/Source;", "delegate", "", "contentLength", "<init>", "(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V", "Lokio/Buffer;", "sink", "byteCount", "read", "(Lokio/Buffer;J)J", "", "close", "()V", "Ljava/io/IOException;", ExifInterface.LONGITUDE_EAST, "e", "complete", "(Ljava/io/IOException;)Ljava/io/IOException;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nExchange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exchange.kt\nokhttp3/internal/connection/Exchange$ResponseBodySource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n1#2:334\n*E\n"})
    /* loaded from: classes3.dex */
    public final class ResponseBodySource extends ForwardingSource {

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public final long f3146x3271d0aa;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
        public long f3147x1378447b;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
        public boolean f3148x75d576dc;

        /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
        public boolean f3149x9738a56c;

        /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
        public boolean f3150x9e171bf9;

        /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
        public final /* synthetic */ Exchange f3151x34271fae;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBodySource(@NotNull Exchange exchange, Source delegate, long j) {
            super(delegate);
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.f3151x34271fae = exchange;
            this.f3146x3271d0aa = j;
            this.f3148x75d576dc = true;
            if (j == 0) {
                complete(null);
            }
        }

        @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f3150x9e171bf9) {
                return;
            }
            this.f3150x9e171bf9 = true;
            try {
                super.close();
                complete(null);
            } catch (IOException e) {
                throw complete(e);
            }
        }

        public final <E extends IOException> E complete(E e) {
            if (this.f3149x9738a56c) {
                return e;
            }
            this.f3149x9738a56c = true;
            if (e == null && this.f3148x75d576dc) {
                this.f3148x75d576dc = false;
                Exchange exchange = this.f3151x34271fae;
                exchange.getEventListener().responseBodyStart(exchange.getCall());
            }
            return (E) this.f3151x34271fae.bodyComplete(this.f3147x1378447b, true, false, e);
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(@NotNull Buffer sink, long byteCount) {
            Exchange exchange = this.f3151x34271fae;
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!this.f3150x9e171bf9) {
                try {
                    long read = delegate().read(sink, byteCount);
                    if (this.f3148x75d576dc) {
                        this.f3148x75d576dc = false;
                        exchange.getEventListener().responseBodyStart(exchange.getCall());
                    }
                    if (read == -1) {
                        complete(null);
                        return -1L;
                    }
                    long j = this.f3147x1378447b + read;
                    long j2 = this.f3146x3271d0aa;
                    if (j2 != -1 && j > j2) {
                        throw new ProtocolException("expected " + j2 + " bytes but received " + j);
                    }
                    this.f3147x1378447b = j;
                    if (j == j2) {
                        complete(null);
                    }
                    return read;
                } catch (IOException e) {
                    throw complete(e);
                }
            }
            throw new IllegalStateException("closed");
        }
    }

    public Exchange(@NotNull RealCall call, @NotNull EventListener eventListener, @NotNull ExchangeFinder finder, @NotNull ExchangeCodec codec) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(eventListener, "eventListener");
        Intrinsics.checkNotNullParameter(finder, "finder");
        Intrinsics.checkNotNullParameter(codec, "codec");
        this.call = call;
        this.eventListener = eventListener;
        this.finder = finder;
        this.f3143x75d576dc = codec;
    }

    public final <E extends IOException> E bodyComplete(long bytesRead, boolean responseDone, boolean requestDone, E e) {
        if (e != null) {
            m2590xfbe0c504(e);
        }
        EventListener eventListener = this.eventListener;
        RealCall realCall = this.call;
        if (requestDone) {
            if (e != null) {
                eventListener.requestFailed(realCall, e);
            } else {
                eventListener.requestBodyEnd(realCall, bytesRead);
            }
        }
        if (responseDone) {
            if (e != null) {
                eventListener.responseFailed(realCall, e);
            } else {
                eventListener.responseBodyEnd(realCall, bytesRead);
            }
        }
        return (E) realCall.messageDone$okhttp(this, requestDone, responseDone, e);
    }

    public final void cancel() {
        this.f3143x75d576dc.cancel();
    }

    @NotNull
    public final Sink createRequestBody(@NotNull Request request, boolean duplex) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.isDuplex = duplex;
        RequestBody body = request.body();
        Intrinsics.checkNotNull(body);
        long contentLength = body.contentLength();
        this.eventListener.requestBodyStart(this.call);
        return new C0721xa55cc2a9(this, this.f3143x75d576dc.createRequestBody(request, contentLength), contentLength);
    }

    public final void detachWithViolence() {
        this.f3143x75d576dc.cancel();
        this.call.messageDone$okhttp(this, true, true, null);
    }

    public final void finishRequest() {
        try {
            this.f3143x75d576dc.finishRequest();
        } catch (IOException e) {
            this.eventListener.requestFailed(this.call, e);
            m2590xfbe0c504(e);
            throw e;
        }
    }

    public final void flushRequest() {
        try {
            this.f3143x75d576dc.flushRequest();
        } catch (IOException e) {
            this.eventListener.requestFailed(this.call, e);
            m2590xfbe0c504(e);
            throw e;
        }
    }

    @NotNull
    /* renamed from: getCall$okhttp, reason: from getter */
    public final RealCall getCall() {
        return this.call;
    }

    @NotNull
    public final RealConnection getConnection$okhttp() {
        RealConnection realConnection;
        ExchangeCodec.Carrier carrier = this.f3143x75d576dc.getCarrier();
        if (carrier instanceof RealConnection) {
            realConnection = (RealConnection) carrier;
        } else {
            realConnection = null;
        }
        if (realConnection != null) {
            return realConnection;
        }
        throw new IllegalStateException("no connection for CONNECT tunnels");
    }

    @NotNull
    /* renamed from: getEventListener$okhttp, reason: from getter */
    public final EventListener getEventListener() {
        return this.eventListener;
    }

    @NotNull
    /* renamed from: getFinder$okhttp, reason: from getter */
    public final ExchangeFinder getFinder() {
        return this.finder;
    }

    /* renamed from: getHasFailure$okhttp, reason: from getter */
    public final boolean getHasFailure() {
        return this.hasFailure;
    }

    public final boolean isCoalescedConnection$okhttp() {
        return !Intrinsics.areEqual(this.finder.getRoutePlanner().getAddress().url().host(), this.f3143x75d576dc.getCarrier().getRoute().address().url().host());
    }

    /* renamed from: isDuplex$okhttp, reason: from getter */
    public final boolean getIsDuplex() {
        return this.isDuplex;
    }

    @NotNull
    public final RealWebSocket.Streams newWebSocketStreams() {
        this.call.timeoutEarlyExit();
        ExchangeCodec.Carrier carrier = this.f3143x75d576dc.getCarrier();
        Intrinsics.checkNotNull(carrier, "null cannot be cast to non-null type okhttp3.internal.connection.RealConnection");
        return ((RealConnection) carrier).newWebSocketStreams$okhttp(this);
    }

    public final void noNewExchangesOnConnection() {
        this.f3143x75d576dc.getCarrier().noNewExchanges();
    }

    public final void noRequestBody() {
        this.call.messageDone$okhttp(this, true, false, null);
    }

    @NotNull
    public final ResponseBody openResponseBody(@NotNull Response response) {
        ExchangeCodec exchangeCodec = this.f3143x75d576dc;
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            String header$default = Response.header$default(response, "Content-Type", null, 2, null);
            long reportedContentLength = exchangeCodec.reportedContentLength(response);
            return new RealResponseBody(header$default, reportedContentLength, Okio.buffer(new ResponseBodySource(this, exchangeCodec.openResponseBodySource(response), reportedContentLength)));
        } catch (IOException e) {
            this.eventListener.responseFailed(this.call, e);
            m2590xfbe0c504(e);
            throw e;
        }
    }

    @Nullable
    public final Response.Builder readResponseHeaders(boolean expectContinue) {
        try {
            Response.Builder readResponseHeaders = this.f3143x75d576dc.readResponseHeaders(expectContinue);
            if (readResponseHeaders != null) {
                readResponseHeaders.initExchange$okhttp(this);
            }
            return readResponseHeaders;
        } catch (IOException e) {
            this.eventListener.responseFailed(this.call, e);
            m2590xfbe0c504(e);
            throw e;
        }
    }

    public final void responseHeadersEnd(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.eventListener.responseHeadersEnd(this.call, response);
    }

    public final void responseHeadersStart() {
        this.eventListener.responseHeadersStart(this.call);
    }

    @NotNull
    public final Headers trailers() {
        return this.f3143x75d576dc.trailers();
    }

    public final void webSocketUpgradeFailed() {
        bodyComplete(-1L, true, true, null);
    }

    public final void writeRequestHeaders(@NotNull Request request) {
        RealCall realCall = this.call;
        EventListener eventListener = this.eventListener;
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            eventListener.requestHeadersStart(realCall);
            this.f3143x75d576dc.writeRequestHeaders(request);
            eventListener.requestHeadersEnd(realCall, request);
        } catch (IOException e) {
            eventListener.requestFailed(realCall, e);
            m2590xfbe0c504(e);
            throw e;
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m2590xfbe0c504(IOException iOException) {
        this.hasFailure = true;
        this.f3143x75d576dc.getCarrier().trackFailure(this.call, iOException);
    }
}
