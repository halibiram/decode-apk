package defpackage;

import java.util.concurrent.Executor;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.DispatchedContinuationKt;

/* renamed from: 뒋딟둣딄두되돶땲땯돨듸땸딟둔땟딄돳듸돠땸뒐든땔땩돨땻든뎠듻된뒼될땪뎸돷땟뒋득땀땵딃뎸땵둥뒙땟된딌땹돵뎻땋땯딨딁뎰뒵돶땠뒙뒼땁돴드둘듐든둠돤둬둣뎰돼딅듽듨되땃딨딽땡땋딨뒷둬딅득딝돵뒼됐득도뒨딞둬뎰땨땝뒘든땅뎨돴딜둥뒬땤돵돠뎠딅뒹땣땍뎨뒉땃되들듽뎻듐돠뒼땻돝뎡뎠땁, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class ExecutorC0678xe905b244 implements Executor {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final CoroutineDispatcher f4508xfbe0c504;

    public ExecutorC0678xe905b244(CoroutineDispatcher coroutineDispatcher) {
        this.f4508xfbe0c504 = coroutineDispatcher;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineDispatcher coroutineDispatcher = this.f4508xfbe0c504;
        if (DispatchedContinuationKt.safeIsDispatchNeeded(coroutineDispatcher, emptyCoroutineContext)) {
            DispatchedContinuationKt.safeDispatch(coroutineDispatcher, emptyCoroutineContext, runnable);
        } else {
            runnable.run();
        }
    }

    public final String toString() {
        return this.f4508xfbe0c504.getF2411x1378447b();
    }
}
