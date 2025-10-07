package defpackage;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Timeout;

/* renamed from: 듰땜땁돛딃돴딜뒵디두둠땍도땁듨땀뒤돛돵듔됫땄됨돳뒝땱딸딨됨뒹듬따뒛땬듔뎠뎡땬돛땲땧땨듌뎽돛땜딅딜뎻딌땀듐땍듐딃듌뒙돛뒋듼둥돛딜돠돵뒤땅됴돳드되땹돸땋든돴뒀돤듐뎰둣땀딅뎹돝둔딀땫듬됫듽딜돴땃뎹돼돷둠둘디땩땃듨땅뒤딜뒀든득듬딄뒷땃돳돳딸딌되뒹땍뎰딽땣뎬땠땡듨됨되뎸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0859xffd7c03c implements Sink {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ForwardingTimeout f4958xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public boolean f4959x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Http1ExchangeCodec f4960x1378447b;

    public C0859xffd7c03c(Http1ExchangeCodec http1ExchangeCodec) {
        BufferedSink bufferedSink;
        this.f4960x1378447b = http1ExchangeCodec;
        bufferedSink = http1ExchangeCodec.f3265x75d576dc;
        this.f4958xfbe0c504 = new ForwardingTimeout(bufferedSink.getF3647xfbe0c504());
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        BufferedSink bufferedSink;
        if (this.f4959x3271d0aa) {
            return;
        }
        this.f4959x3271d0aa = true;
        bufferedSink = this.f4960x1378447b.f3265x75d576dc;
        bufferedSink.writeUtf8("0\r\n\r\n");
        Http1ExchangeCodec.access$detachTimeout(this.f4960x1378447b, this.f4958xfbe0c504);
        this.f4960x1378447b.f3266x9738a56c = 3;
    }

    @Override // okio.Sink, java.io.Flushable
    public final synchronized void flush() {
        BufferedSink bufferedSink;
        if (!this.f4959x3271d0aa) {
            bufferedSink = this.f4960x1378447b.f3265x75d576dc;
            bufferedSink.flush();
        }
    }

    @Override // okio.Sink
    /* renamed from: timeout */
    public final Timeout getF3647xfbe0c504() {
        return this.f4958xfbe0c504;
    }

    @Override // okio.Sink
    public final void write(Buffer source, long j) {
        BufferedSink bufferedSink;
        BufferedSink bufferedSink2;
        BufferedSink bufferedSink3;
        BufferedSink bufferedSink4;
        Intrinsics.checkNotNullParameter(source, "source");
        if (!this.f4959x3271d0aa) {
            if (j == 0) {
                return;
            }
            Http1ExchangeCodec http1ExchangeCodec = this.f4960x1378447b;
            bufferedSink = http1ExchangeCodec.f3265x75d576dc;
            bufferedSink.writeHexadecimalUnsignedLong(j);
            bufferedSink2 = http1ExchangeCodec.f3265x75d576dc;
            bufferedSink2.writeUtf8("\r\n");
            bufferedSink3 = http1ExchangeCodec.f3265x75d576dc;
            bufferedSink3.write(source, j);
            bufferedSink4 = http1ExchangeCodec.f3265x75d576dc;
            bufferedSink4.writeUtf8("\r\n");
            return;
        }
        throw new IllegalStateException("closed");
    }
}
