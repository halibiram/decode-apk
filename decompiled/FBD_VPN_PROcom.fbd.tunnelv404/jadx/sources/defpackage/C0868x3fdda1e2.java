package defpackage;

import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import okhttp3.internal.http2.Http2Connection;

/* renamed from: 듻뒾됨뒉둔딽딽딀듬듌돠땋딅땳뒛딅뒹땸된듼뎬땦둥돳뒉들돼뒐딸뒝땹됴딐땟땥될돛돸땤땪땃딎된땪되됐땁뒬둡돨듽듬땃뒐둬둣뎰뒈듔땮땣땟땸득땪뒀돰땬됩둣딐뒀둣딠딁땦땭뎠땯뒤뒈땀둡뒉딸딁돝딄뒝땭땜듸뒝둣두뒛둣땸뒨따땩땋듟뒬돨듼됨될돴뎡뒵뎬됫돳둠듻됩된뎸땠돠듐돷돰땝돵드딤듰딽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0868x3fdda1e2 extends Lambda implements Function0 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Http2Connection f4985xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ int f4986x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ long f4987x1378447b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0868x3fdda1e2(Http2Connection http2Connection, int i, long j) {
        super(0);
        this.f4985xfbe0c504 = http2Connection;
        this.f4986x3271d0aa = i;
        this.f4987x1378447b = j;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Http2Connection http2Connection = this.f4985xfbe0c504;
        try {
            http2Connection.getWriter().windowUpdate(this.f4986x3271d0aa, this.f4987x1378447b);
        } catch (IOException e) {
            Http2Connection.access$failConnection(http2Connection, e);
        }
        return Unit.INSTANCE;
    }
}
