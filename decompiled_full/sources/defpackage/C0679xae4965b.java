package defpackage;

import java.util.concurrent.ScheduledFuture;
import kotlinx.coroutines.DisposableHandle;

/* renamed from: 뒐돴땥둡듸득둡땲뒾땯땮딀뒹뒼됨땀딟딄딝땵뒹된딠뒙듌든듬돳듸뎸땐땜땩땻땩딜뒷뒝땟돤땥돷땭두딄뎽뒨땣딄뒐됫땩따딨땫뒨땋되딀땁됩땁둬땵뒝드뒉땻땀땅도딸땦땔뎰뎠땵득두듻됴딤들됩땨땄땪딟돵땠딹둬땲될도뎨딹돰뒈돛됴딄뒉듨땨됨땻땡땳든뒹둬뎰둘둑됫딟땦뒋둔되땔뎡듔둑뎸땠땄득땡, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0679xae4965b implements DisposableHandle {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ScheduledFuture f4509xfbe0c504;

    public C0679xae4965b(ScheduledFuture scheduledFuture) {
        this.f4509xfbe0c504 = scheduledFuture;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public final void dispose() {
        this.f4509xfbe0c504.cancel(false);
    }

    public final String toString() {
        return "DisposableFutureHandle[" + this.f4509xfbe0c504 + ']';
    }
}
