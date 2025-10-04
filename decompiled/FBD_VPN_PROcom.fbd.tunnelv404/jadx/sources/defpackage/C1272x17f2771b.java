package defpackage;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.coroutines.scheduling.TasksKt;

/* renamed from: 땯땥둔뒷딄들뎬듬땡뎬드딸땬뒹땔됴땤딄땲돰땧돨될듨듔땝됩듽뒐땠땝뒈땤됴듌듰땳땳둣됨뒛땹됩듻들둑딞뎻듽듟두들땩뒐뎬땐뒀돨뒙뒤딀든딄됴땐땋됨딹돷딄뎻뎡딄돴듟땠뒨뒬둠돰땡뒈돠듨뒵든뒼듨딹딅땩돵듟뒾둑돷딽뒝든돴뎠돼땍듔뒘땧뎻땃땵딞땩뒝둣뎰딸땩딀두듸따딞뒷돨딝뒛둡돵돤돳땐, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1272x17f2771b extends CoroutineDispatcher {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final C1272x17f2771b f5691xfbe0c504 = new CoroutineDispatcher();

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        DefaultScheduler.INSTANCE.dispatchWithContext$kotlinx_coroutines_core(runnable, true, false);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        DefaultScheduler.INSTANCE.dispatchWithContext$kotlinx_coroutines_core(runnable, true, true);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher limitedParallelism(int i, String str) {
        LimitedDispatcherKt.checkParallelism(i);
        if (i >= TasksKt.MAX_POOL_SIZE) {
            return LimitedDispatcherKt.namedOrThis(this, str);
        }
        return super.limitedParallelism(i, str);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: toString */
    public final String getF2411x1378447b() {
        return "Dispatchers.IO";
    }
}
