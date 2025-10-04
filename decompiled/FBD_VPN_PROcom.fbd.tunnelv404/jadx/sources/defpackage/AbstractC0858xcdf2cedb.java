package defpackage;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Source;
import okio.Timeout;

/* renamed from: 듰듰뒼딸땄땪땯돸땤땟땥돰땯땯됫땦득둣뒈뒐땱뒋땁딌땟딅돴듼듽듸땐땮땄듰뒤둠듔땯돛딞뒼땵뒤땪될땟돸땭돵돶뒀돸딁뎽뒀땍돶딹돴돰따딟딃뒼딹돨돤돷돸딠둬뒤뒝딹뒉돨뎬듻뎨듐뎸돼돸땩듔됴디딟도땋두딠땱딜딹땁뒹딝드돛땪됨드돰땤둔도땋돨딽딨될땮둘듌땱땃딄땋땧뒬두돨땐딎듨돷따뒨뒹, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0858xcdf2cedb implements Source {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ForwardingTimeout f4955xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public boolean f4956x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Http1ExchangeCodec f4957x1378447b;

    public AbstractC0858xcdf2cedb(Http1ExchangeCodec http1ExchangeCodec) {
        BufferedSource bufferedSource;
        this.f4957x1378447b = http1ExchangeCodec;
        bufferedSource = http1ExchangeCodec.f3264x1378447b;
        this.f4955xfbe0c504 = new ForwardingTimeout(bufferedSource.getF3649xfbe0c504());
    }

    @Override // okio.Source
    public long read(Buffer sink, long j) {
        BufferedSource bufferedSource;
        Http1ExchangeCodec http1ExchangeCodec = this.f4957x1378447b;
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            bufferedSource = http1ExchangeCodec.f3264x1378447b;
            return bufferedSource.read(sink, j);
        } catch (IOException e) {
            http1ExchangeCodec.getCarrier().noNewExchanges();
            m3431xfbe0c504();
            throw e;
        }
    }

    @Override // okio.Source
    /* renamed from: timeout */
    public final Timeout getF3649xfbe0c504() {
        return this.f4955xfbe0c504;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m3431xfbe0c504() {
        int i;
        int i2;
        int i3;
        Http1ExchangeCodec http1ExchangeCodec = this.f4957x1378447b;
        i = http1ExchangeCodec.f3266x9738a56c;
        if (i != 6) {
            i2 = http1ExchangeCodec.f3266x9738a56c;
            if (i2 == 5) {
                Http1ExchangeCodec.access$detachTimeout(http1ExchangeCodec, this.f4955xfbe0c504);
                http1ExchangeCodec.f3266x9738a56c = 6;
            } else {
                StringBuilder sb = new StringBuilder("state: ");
                i3 = http1ExchangeCodec.f3266x9738a56c;
                sb.append(i3);
                throw new IllegalStateException(sb.toString());
            }
        }
    }
}
