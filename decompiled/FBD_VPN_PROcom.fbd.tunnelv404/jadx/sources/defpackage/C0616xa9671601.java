package defpackage;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.selects.SelectClause1;

/* renamed from: 둘땸땲둥땻뒵두딸땭듔됫돷둘땄돰듌듌되따돴딟돛듌딽딽듽딤둡듔땥딸딜땩됩들뒋든땻돶둣땨땧땰듟뒤땻땣둑뒀땠됐돰듐돝듰돤땝땧돼득돰땣딸될땻뒙땔뎸뎸뒙땫땧땀뎹딹둡뒷돨땁땭딄땡뒨땃땭땀뒷딅땍둥뒷땲땹뒬땰뒨둣땯땣땥딌땤뎻뒵뎹딞되땵땸됩드돰뒹땍땮듬둡딁득딌따뒵땝돠딀땨뒹뒻뒹딄, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0616xa9671601 extends JobSupport implements CompletableDeferred {
    public C0616xa9671601(Job job) {
        super(true);
        initParentJob(job);
    }

    @Override // kotlinx.coroutines.Deferred
    public final Object await(Continuation continuation) {
        Object awaitInternal = awaitInternal(continuation);
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        return awaitInternal;
    }

    @Override // kotlinx.coroutines.CompletableDeferred
    public final boolean completeExceptionally(Throwable th) {
        return makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(th, false, 2, null));
    }

    @Override // kotlinx.coroutines.Deferred
    public final SelectClause1 getOnAwait() {
        SelectClause1<?> onAwaitInternal = getOnAwaitInternal();
        Intrinsics.checkNotNull(onAwaitInternal, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.CompletableDeferredImpl>");
        return onAwaitInternal;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }
}
