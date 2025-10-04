package defpackage;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ReceiveChannel;

/* renamed from: 돨딄돝땃땠됨땣뒈돷득뒼듌듟둡땀뎻둥뒉딀뒻땟뎽땜둬딸둠딃뒘뎸둥뎹딻뎬듸땹뒉됨뒼땡딎땐돝뎡뎰땯듻듔듻땭뒼뒀돸땪돨득돷돨뒐뒉뎨뎡땻둡돷된뎬뒀땔둣돴땣돠듨땡뒐땰드뎸뎰딀뒀뒝듽뒝뒹든딄딸뒹둠듔뒷둣돶뒾듟딨뒋뒐땨땳듔딝딟돤딁땲듟됩땥땦되둘둣땄됨뒐뎻딁땔뒾땍땭땜땥땸도득딨둑, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0456xaafeb960 implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3920xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ ReceiveChannel f3921x3271d0aa;

    public /* synthetic */ C0456xaafeb960(ReceiveChannel receiveChannel, int i) {
        this.f3920xfbe0c504 = i;
        this.f3921x3271d0aa = receiveChannel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Throwable th = (Throwable) obj;
        switch (this.f3920xfbe0c504) {
            case 0:
                ChannelsKt.cancelConsumed(this.f3921x3271d0aa, th);
                return Unit.INSTANCE;
            default:
                ChannelsKt.cancelConsumed(this.f3921x3271d0aa, th);
                return Unit.INSTANCE;
        }
    }
}
