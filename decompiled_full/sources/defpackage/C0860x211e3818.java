package defpackage;

import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http1.HeadersReader;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okio.Buffer;
import okio.BufferedSource;

/* renamed from: 듰땨딌돛득됨뒈뒉됫둘듬딎됐땅뒀돷땫뒹딞땜뎹듌딄땯땔뒐뒈둥돵둣딨땡딸뎠디땨둑땩듼돳돼땋둠뒋뒙뎸땹딠듻땭땮땔딃뒈땐딽됐땤땪돸뎬뒘뒼듸딠뒘딌땅땝뎻딃땮뒝딎뎻땃땄딽된딹땬된돤땡둔듨뒵돵뎠돤듐돳딐돶득돷됐둠딸뒼돤땲뒤돵땤땧득듼듟돼돤뎬도땹땋뒝딝땩뒹땸됨땣땔됐되뒻돨딃둬뎻, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0860x211e3818 extends AbstractC0858xcdf2cedb {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final HttpUrl f4961x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public long f4962x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public boolean f4963x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final /* synthetic */ Http1ExchangeCodec f4964x34271fae;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0860x211e3818(Http1ExchangeCodec http1ExchangeCodec, HttpUrl url) {
        super(http1ExchangeCodec);
        Intrinsics.checkNotNullParameter(url, "url");
        this.f4964x34271fae = http1ExchangeCodec;
        this.f4961x75d576dc = url;
        this.f4962x9738a56c = -1L;
        this.f4963x9e171bf9 = true;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f4956x3271d0aa) {
            return;
        }
        if (this.f4963x9e171bf9 && !_UtilJvmKt.discard(this, 100, TimeUnit.MILLISECONDS)) {
            this.f4964x34271fae.getCarrier().noNewExchanges();
            m3431xfbe0c504();
        }
        this.f4956x3271d0aa = true;
    }

    @Override // defpackage.AbstractC0858xcdf2cedb, okio.Source
    public final long read(Buffer sink, long j) {
        BufferedSource bufferedSource;
        BufferedSource bufferedSource2;
        HeadersReader headersReader;
        OkHttpClient okHttpClient;
        Headers headers;
        BufferedSource bufferedSource3;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j >= 0) {
            if (!this.f4956x3271d0aa) {
                if (!this.f4963x9e171bf9) {
                    return -1L;
                }
                long j2 = this.f4962x9738a56c;
                Http1ExchangeCodec http1ExchangeCodec = this.f4964x34271fae;
                if (j2 == 0 || j2 == -1) {
                    if (j2 != -1) {
                        bufferedSource3 = http1ExchangeCodec.f3264x1378447b;
                        bufferedSource3.readUtf8LineStrict();
                    }
                    try {
                        bufferedSource = http1ExchangeCodec.f3264x1378447b;
                        this.f4962x9738a56c = bufferedSource.readHexadecimalUnsignedLong();
                        bufferedSource2 = http1ExchangeCodec.f3264x1378447b;
                        String obj = StringsKt__StringsKt.trim(bufferedSource2.readUtf8LineStrict()).toString();
                        if (this.f4962x9738a56c >= 0 && (obj.length() <= 0 || AbstractC1197x89633db9.startsWith$default(obj, ";", false, 2, null))) {
                            if (this.f4962x9738a56c == 0) {
                                this.f4963x9e171bf9 = false;
                                headersReader = http1ExchangeCodec.f3267x9e171bf9;
                                http1ExchangeCodec.f3268x34271fae = headersReader.readHeaders();
                                okHttpClient = http1ExchangeCodec.f3262xfbe0c504;
                                Intrinsics.checkNotNull(okHttpClient);
                                CookieJar cookieJar = okHttpClient.cookieJar();
                                headers = http1ExchangeCodec.f3268x34271fae;
                                Intrinsics.checkNotNull(headers);
                                HttpHeaders.receiveHeaders(cookieJar, this.f4961x75d576dc, headers);
                                m3431xfbe0c504();
                            }
                            if (!this.f4963x9e171bf9) {
                                return -1L;
                            }
                        } else {
                            throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f4962x9738a56c + obj + Typography.quote);
                        }
                    } catch (NumberFormatException e) {
                        throw new ProtocolException(e.getMessage());
                    }
                }
                long read = super.read(sink, Math.min(j, this.f4962x9738a56c));
                if (read != -1) {
                    this.f4962x9738a56c -= read;
                    return read;
                }
                http1ExchangeCodec.getCarrier().noNewExchanges();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                m3431xfbe0c504();
                throw protocolException;
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount < 0: ", j).toString());
    }
}
