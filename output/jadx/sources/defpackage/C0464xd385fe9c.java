package defpackage;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;

/* renamed from: 돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0464xd385fe9c implements Waiter {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ CancellableContinuationImpl f3941xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final CancellableContinuationImpl f3942x3271d0aa;

    public C0464xd385fe9c(CancellableContinuationImpl cancellableContinuationImpl) {
        Intrinsics.checkNotNull(cancellableContinuationImpl, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlin.Boolean>");
        this.f3941xfbe0c504 = cancellableContinuationImpl;
        this.f3942x3271d0aa = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.Waiter
    public final void invokeOnCancellation(Segment segment, int i) {
        this.f3941xfbe0c504.invokeOnCancellation(segment, i);
    }
}
