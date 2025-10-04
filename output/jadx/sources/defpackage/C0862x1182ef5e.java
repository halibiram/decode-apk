package defpackage;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Timeout;

/* renamed from: 듸뒈땰땮땠딸뒉땵된둔듸될돷돤뒘뒐됫뒈딅딹땤듐땱뒙땝뒀딤뒙땥됐뎠돶돛땫돠뒹되듽됐땦땬둡된뒉뒤땍둡두딽뒛딅뎬딅뒷딀돸듼될딄딠둥된듟돤듌딸돛득뎡딐됨딎듌듨땪둬드득듐뒈돶땳딐땩듽듻땸땱듰뎹듬뎹뒨된돝땀뎡땬땰뒐뎸뒹땦땬듰들됩뎹된돳돶딹딟딁뒹땝됫땝땻뎻딟땱딜듽땦땳딅듟뒵딟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0862x1182ef5e implements Sink {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ForwardingTimeout f4967xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public boolean f4968x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Http1ExchangeCodec f4969x1378447b;

    public C0862x1182ef5e(Http1ExchangeCodec http1ExchangeCodec) {
        BufferedSink bufferedSink;
        this.f4969x1378447b = http1ExchangeCodec;
        bufferedSink = http1ExchangeCodec.f3265x75d576dc;
        this.f4967xfbe0c504 = new ForwardingTimeout(bufferedSink.getF3647xfbe0c504());
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f4968x3271d0aa) {
            return;
        }
        this.f4968x3271d0aa = true;
        Http1ExchangeCodec http1ExchangeCodec = this.f4969x1378447b;
        Http1ExchangeCodec.access$detachTimeout(http1ExchangeCodec, this.f4967xfbe0c504);
        http1ExchangeCodec.f3266x9738a56c = 3;
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        BufferedSink bufferedSink;
        if (!this.f4968x3271d0aa) {
            bufferedSink = this.f4969x1378447b.f3265x75d576dc;
            bufferedSink.flush();
        }
    }

    @Override // okio.Sink
    /* renamed from: timeout */
    public final Timeout getF3647xfbe0c504() {
        return this.f4967xfbe0c504;
    }

    @Override // okio.Sink
    public final void write(Buffer source, long j) {
        BufferedSink bufferedSink;
        Intrinsics.checkNotNullParameter(source, "source");
        if (!this.f4968x3271d0aa) {
            _UtilCommonKt.checkOffsetAndCount(source.size(), 0L, j);
            bufferedSink = this.f4969x1378447b.f3265x75d576dc;
            bufferedSink.write(source, j);
            return;
        }
        throw new IllegalStateException("closed");
    }
}
