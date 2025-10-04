package defpackage;

import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;

/* renamed from: 땃들뒾땍땳딟뒵딤딸뎨뒈뒘듟될돳돸딄딜듻땜땱듽뎰땻딠땲둥딹딁뒵딝뒈듼땣뒐뎬둠돸땪땨딁드둠땀됐들됴딄돷득듼땦뒾딠듸뎠땥딎딐땫땦들땮딻땤땰둘돸돴딤딠돸딞뒼땭돳든뒈땁땭딎땣될뒝땦듼뒷땧뒵딹딃뒼땟딃듔뎰됴둑듌땩딜됨디땍디딃땦듻뎽땄땫땻뎨딤돠뒬듨땣딌뒵따뒼딞뒙뒼든듻뒼뒵땝, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1075xbbcf7a82 implements Waiter {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final CancellableContinuationImpl f5361xfbe0c504;

    public C1075xbbcf7a82(CancellableContinuationImpl cancellableContinuationImpl) {
        this.f5361xfbe0c504 = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.Waiter
    public final void invokeOnCancellation(Segment segment, int i) {
        this.f5361xfbe0c504.invokeOnCancellation(segment, i);
    }
}
