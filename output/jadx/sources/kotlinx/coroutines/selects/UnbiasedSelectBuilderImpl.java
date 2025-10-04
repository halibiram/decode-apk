package kotlinx.coroutines.selects;

import defpackage.C1268x6f1d0121;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0001¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0001¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;", "R", "Lkotlinx/coroutines/selects/UnbiasedSelectImplementation;", "Lkotlin/coroutines/Continuation;", "uCont", "<init>", "(Lkotlin/coroutines/Continuation;)V", "", "initSelectResult", "()Ljava/lang/Object;", "", "e", "", "handleBuilderException", "(Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@PublishedApi
/* loaded from: classes3.dex */
public final class UnbiasedSelectBuilderImpl<R> extends UnbiasedSelectImplementation<R> {

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public final CancellableContinuationImpl f2482x95f25580;

    public UnbiasedSelectBuilderImpl(@NotNull Continuation<? super R> continuation) {
        super(continuation.getContext());
        this.f2482x95f25580 = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
    }

    @PublishedApi
    public final void handleBuilderException(@NotNull Throwable e) {
        CancellableContinuationImpl cancellableContinuationImpl = this.f2482x95f25580;
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(e)));
    }

    @PublishedApi
    @Nullable
    public final Object initSelectResult() {
        CancellableContinuationImpl cancellableContinuationImpl = this.f2482x95f25580;
        if (cancellableContinuationImpl.isCompleted()) {
            return cancellableContinuationImpl.getResult();
        }
        BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(getContext()), null, CoroutineStart.UNDISPATCHED, new C1268x6f1d0121(this, null), 1, null);
        return cancellableContinuationImpl.getResult();
    }
}
