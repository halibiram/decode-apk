package okhttp3.internal.http1;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0858xcdf2cedb;
import defpackage.AbstractC1197x89633db9;
import defpackage.C0859xffd7c03c;
import defpackage.C0860x211e3818;
import defpackage.C0861x34f1b82c;
import defpackage.C0862x1182ef5e;
import defpackage.C0864x670f7e22;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 62\u00020\u0001:\u00077896:;<B)\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\"\u0010\u0015J\u000f\u0010#\u001a\u00020\u0013H\u0016¢\u0006\u0004\b#\u0010\u0015J\u001d\u0010'\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(J\u0019\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b,\u0010-J\u0015\u0010.\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b.\u0010/R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0011\u00104\u001a\u00020)8F¢\u0006\u0006\u001a\u0004\b4\u00105¨\u0006="}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "carrier", "Lokio/BufferedSource;", "source", "Lokio/BufferedSink;", "sink", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokio/BufferedSource;Lokio/BufferedSink;)V", "Lokhttp3/Request;", "request", "", "contentLength", "Lokio/Sink;", "createRequestBody", "(Lokhttp3/Request;J)Lokio/Sink;", "", "cancel", "()V", "writeRequestHeaders", "(Lokhttp3/Request;)V", "Lokhttp3/Response;", "response", "reportedContentLength", "(Lokhttp3/Response;)J", "Lokio/Source;", "openResponseBodySource", "(Lokhttp3/Response;)Lokio/Source;", "Lokhttp3/Headers;", "trailers", "()Lokhttp3/Headers;", "flushRequest", "finishRequest", "headers", "", "requestLine", "writeRequest", "(Lokhttp3/Headers;Ljava/lang/String;)V", "", "expectContinue", "Lokhttp3/Response$Builder;", "readResponseHeaders", "(Z)Lokhttp3/Response$Builder;", "skipConnectBody", "(Lokhttp3/Response;)V", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "getCarrier", "()Lokhttp3/internal/http/ExchangeCodec$Carrier;", "isClosed", "()Z", "Companion", "듰듰뒼딸땄땪땯돸땤땟땥돰땯땯됫땦득둣뒈뒐땱뒋땁딌땟딅돴듼듽듸땐땮땄듰뒤둠듔땯돛딞뒼땵뒤땪될땟돸땭돵돶뒀돸딁뎽뒀땍돶딹돴돰따딟딃뒼딹돨돤돷돸딠둬뒤뒝딹뒉돨뎬듻뎨듐뎸돼돸땩듔됴디딟도땋두딠땱딜딹땁뒹딝드돛땪됨드돰땤둔도땋돨딽딨될땮둘듌땱땃딄땋땧뒬두돨땐딎듨돷따뒨뒹", "듰땜땁돛딃돴딜뒵디두둠땍도땁듨땀뒤돛돵듔됫땄됨돳뒝땱딸딨됨뒹듬따뒛땬듔뎠뎡땬돛땲땧땨듌뎽돛땜딅딜뎻딌땀듐땍듐딃듌뒙돛뒋듼둥돛딜돠돵뒤땅됴돳드되땹돸땋든돴뒀돤듐뎰둣땀딅뎹돝둔딀땫듬됫듽딜돴땃뎹돼돷둠둘디땩땃듨땅뒤딜뒀든득듬딄뒷땃돳돳딸딌되뒹땍뎰딽땣뎬땠땡듨됨되뎸", "듰땨딌돛득됨뒈뒉됫둘듬딎됐땅뒀돷땫뒹딞땜뎹듌딄땯땔뒐뒈둥돵둣딨땡딸뎠디땨둑땩듼돳돼땋둠뒋뒙뎸땹딠듻땭땮땔딃뒈땐딽됐땤땪돸뎬뒘뒼듸딠뒘딌땅땝뎻딃땮뒝딎뎻땃땄딽된딹땬된돤땡둔듨뒵돵뎠돤듐돳딐돶득돷됐둠딸뒼돤땲뒤돵땤땧득듼듟돼돤뎬도땹땋뒝딝땩뒹땸됨땣땔됐되뒻돨딃둬뎻", "듸돠도땭땲딜딝돷땜돳들뒀듼땸듌땪돰딐땅돛들뎠땤땠듽뒛들듰둣딌돤들땔든땵딃땭딟뎬땝뎻돨듟두뎰땸딽뒼돤둘땠듐됩듔돴뎰듻디뒋돵딄될땸도듐돨딟땋땳땜됨뒝땲땪돼땍듽돶뒉딝땮땵땭딞되듌두돶땅되듻둠둣둥땁땲둬돼땨둑땦뒛뎠딎돶뒬땀됫뎠땩딽땳딞땨뎠땣듰땳땹돵딨됐땫땄둣땣돛듬딁딃", "듸뒈땰땮땠딸뒉땵된둔듸될돷돤뒘뒐됫뒈딅딹땤듐땱뒙땝뒀딤뒙땥됐뎠돶돛땫돠뒹되듽됐땦땬둡된뒉뒤땍둡두딽뒛딅뎬딅뒷딀돸듼될딄딠둥된듟돤듌딸돛득뎡딐됨딎듌듨땪둬드득듐뒈돶땳딐땩듽듻땸땱듰뎹듬뎹뒨된돝땀뎡땬땰뒐뎸뒹땦땬듰들됩뎹된돳돶딹딟딁뒹땝됫땝땻뎻딟땱딜듽땦땳딅듟뒵딟", "듸뒋땲듼될딀딻듨됴딄땧듽딠둬됴땯돶땣둡땫뎽뒨됩둥될땰뒉뒻듨둬땋뎽된돷듰땃듼뎻뎨땃됴땍뒾듬듔딄돠도디됐뒋딎땐뎡땸돳딜땣뒬돠됩둣둬듨돤딝둘돰땹두땁듸뒻될둬딞됐뎻뒋땦딃듔땧뒛뒀둔딽돰득돷둣땵땄뎨뒛뎸뎽땠듟땫땁땬땡딃뎡땝듼딠듰땜딐땮두뒉된딽딁뒨돳돝땠됴돝딀땧땣뒼들땦뒉", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,504:1\n1#2:505\n*E\n"})
/* loaded from: classes3.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final OkHttpClient f3262xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final ExchangeCodec.Carrier carrier;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final BufferedSource f3264x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final BufferedSink f3265x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public int f3266x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final HeadersReader f3267x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public Headers f3268x34271fae;

    public Http1ExchangeCodec(@Nullable OkHttpClient okHttpClient, @NotNull ExchangeCodec.Carrier carrier, @NotNull BufferedSource source, @NotNull BufferedSink sink) {
        Intrinsics.checkNotNullParameter(carrier, "carrier");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.f3262xfbe0c504 = okHttpClient;
        this.carrier = carrier;
        this.f3264x1378447b = source;
        this.f3265x75d576dc = sink;
        this.f3267x9e171bf9 = new HeadersReader(source);
    }

    public static final void access$detachTimeout(Http1ExchangeCodec http1ExchangeCodec, ForwardingTimeout forwardingTimeout) {
        http1ExchangeCodec.getClass();
        Timeout delegate = forwardingTimeout.getDelegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        getCarrier().mo2591cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Sink createRequestBody(@NotNull Request request, long contentLength) {
        Intrinsics.checkNotNullParameter(request, "request");
        RequestBody body = request.body();
        if (body != null && body.isDuplex()) {
            throw new ProtocolException("Duplex connections are not supported for HTTP/1");
        }
        if (AbstractC1197x89633db9.equals("chunked", request.header("Transfer-Encoding"), true)) {
            if (this.f3266x9738a56c == 1) {
                this.f3266x9738a56c = 2;
                return new C0859xffd7c03c(this);
            }
            throw new IllegalStateException(("state: " + this.f3266x9738a56c).toString());
        }
        if (contentLength != -1) {
            if (this.f3266x9738a56c == 1) {
                this.f3266x9738a56c = 2;
                return new C0862x1182ef5e(this);
            }
            throw new IllegalStateException(("state: " + this.f3266x9738a56c).toString());
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void finishRequest() {
        this.f3265x75d576dc.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void flushRequest() {
        this.f3265x75d576dc.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public ExchangeCodec.Carrier getCarrier() {
        return this.carrier;
    }

    public final boolean isClosed() {
        if (this.f3266x9738a56c == 6) {
            return true;
        }
        return false;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Source openResponseBodySource(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return m2606xfbe0c504(0L);
        }
        if (AbstractC1197x89633db9.equals("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null), true)) {
            HttpUrl url = response.request().url();
            if (this.f3266x9738a56c == 4) {
                this.f3266x9738a56c = 5;
                return new C0860x211e3818(this, url);
            }
            throw new IllegalStateException(("state: " + this.f3266x9738a56c).toString());
        }
        long headersContentLength = _UtilJvmKt.headersContentLength(response);
        if (headersContentLength != -1) {
            return m2606xfbe0c504(headersContentLength);
        }
        if (this.f3266x9738a56c == 4) {
            this.f3266x9738a56c = 5;
            getCarrier().noNewExchanges();
            return new AbstractC0858xcdf2cedb(this);
        }
        throw new IllegalStateException(("state: " + this.f3266x9738a56c).toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @Nullable
    public Response.Builder readResponseHeaders(boolean expectContinue) {
        HeadersReader headersReader = this.f3267x9e171bf9;
        int i = this.f3266x9738a56c;
        if (i != 1 && i != 2 && i != 3) {
            throw new IllegalStateException(("state: " + this.f3266x9738a56c).toString());
        }
        try {
            StatusLine parse = StatusLine.INSTANCE.parse(headersReader.readLine());
            Response.Builder trailers = new Response.Builder().protocol(parse.protocol).code(parse.code).message(parse.message).headers(headersReader.readHeaders()).trailers(C0864x670f7e22.f4971xfbe0c504);
            if (expectContinue && parse.code == 100) {
                return null;
            }
            int i2 = parse.code;
            if (i2 == 100) {
                this.f3266x9738a56c = 3;
                return trailers;
            }
            if (102 <= i2 && i2 < 200) {
                this.f3266x9738a56c = 3;
                return trailers;
            }
            this.f3266x9738a56c = 4;
            return trailers;
        } catch (EOFException e) {
            throw new IOException(AbstractC0362x4440ab85.m2952x5ac5058d("unexpected end of stream on ", getCarrier().getRoute().address().url().redact()), e);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long reportedContentLength(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return 0L;
        }
        if (AbstractC1197x89633db9.equals("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null), true)) {
            return -1L;
        }
        return _UtilJvmKt.headersContentLength(response);
    }

    public final void skipConnectBody(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        long headersContentLength = _UtilJvmKt.headersContentLength(response);
        if (headersContentLength == -1) {
            return;
        }
        C0861x34f1b82c m2606xfbe0c504 = m2606xfbe0c504(headersContentLength);
        _UtilJvmKt.skipAll(m2606xfbe0c504, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        m2606xfbe0c504.close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Headers trailers() {
        if (this.f3266x9738a56c == 6) {
            Headers headers = this.f3268x34271fae;
            if (headers == null) {
                return _UtilJvmKt.EMPTY_HEADERS;
            }
            return headers;
        }
        throw new IllegalStateException("too early; can't read the trailers yet");
    }

    public final void writeRequest(@NotNull Headers headers, @NotNull String requestLine) {
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(requestLine, "requestLine");
        if (this.f3266x9738a56c == 0) {
            BufferedSink bufferedSink = this.f3265x75d576dc;
            bufferedSink.writeUtf8(requestLine).writeUtf8("\r\n");
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                bufferedSink.writeUtf8(headers.name(i)).writeUtf8(": ").writeUtf8(headers.value(i)).writeUtf8("\r\n");
            }
            bufferedSink.writeUtf8("\r\n");
            this.f3266x9738a56c = 1;
            return;
        }
        throw new IllegalStateException(("state: " + this.f3266x9738a56c).toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void writeRequestHeaders(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        RequestLine requestLine = RequestLine.INSTANCE;
        Proxy.Type type = getCarrier().getRoute().proxy().type();
        Intrinsics.checkNotNullExpressionValue(type, "type(...)");
        writeRequest(request.headers(), requestLine.get(request, type));
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final C0861x34f1b82c m2606xfbe0c504(long j) {
        if (this.f3266x9738a56c == 4) {
            this.f3266x9738a56c = 5;
            return new C0861x34f1b82c(this, j);
        }
        throw new IllegalStateException(("state: " + this.f3266x9738a56c).toString());
    }
}
