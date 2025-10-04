package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0350x95f25580;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002BT\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u00127\u0010\u0007\u001a3\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\bj\b\u0012\u0004\u0012\u00028\u0000`\u000e¢\u0006\u0002\b\r¢\u0006\u0004\b\u000f\u0010\u0010J\u001e\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018H\u0080@¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u000bH\u0080@¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u001e\u001a\u00020\u000bH\u0014J\b\u0010\u001f\u001a\u00020\u000bH\u0014R\u0016\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Landroidx/lifecycle/CoroutineLiveData;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/MediatorLiveData;", "context", "Lkotlin/coroutines/CoroutineContext;", "timeoutInMs", "", "block", "Lkotlin/Function2;", "Landroidx/lifecycle/LiveDataScope;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "Landroidx/lifecycle/Block;", "<init>", "(Lkotlin/coroutines/CoroutineContext;JLkotlin/jvm/functions/Function2;)V", "blockRunner", "Landroidx/lifecycle/BlockRunner;", "emittedSource", "Landroidx/lifecycle/EmittedSource;", "emitSource", "Lkotlinx/coroutines/DisposableHandle;", "source", "Landroidx/lifecycle/LiveData;", "emitSource$lifecycle_livedata_release", "(Landroidx/lifecycle/LiveData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clearSource", "clearSource$lifecycle_livedata_release", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onActive", "onInactive", "lifecycle-livedata_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CoroutineLiveData<T> extends MediatorLiveData<T> {

    @Nullable
    private BlockRunner<T> blockRunner;

    @Nullable
    private EmittedSource emittedSource;

    public /* synthetic */ CoroutineLiveData(CoroutineContext coroutineContext, long j, Function2 function2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i & 2) != 0 ? CoroutineLiveDataKt.DEFAULT_TIMEOUT : j, function2);
    }

    public static final Unit _init_$lambda$0(CoroutineLiveData coroutineLiveData) {
        coroutineLiveData.blockRunner = null;
        return Unit.INSTANCE;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ Unit m626xfbe0c504(CoroutineLiveData coroutineLiveData) {
        return _init_$lambda$0(coroutineLiveData);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object clearSource$lifecycle_livedata_release(@NotNull Continuation<? super Unit> continuation) {
        CoroutineLiveData$clearSource$1 coroutineLiveData$clearSource$1;
        int i;
        if (continuation instanceof CoroutineLiveData$clearSource$1) {
            coroutineLiveData$clearSource$1 = (CoroutineLiveData$clearSource$1) continuation;
            int i2 = coroutineLiveData$clearSource$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                coroutineLiveData$clearSource$1.label = i2 - Integer.MIN_VALUE;
                Object obj = coroutineLiveData$clearSource$1.result;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = coroutineLiveData$clearSource$1.label;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    EmittedSource emittedSource = this.emittedSource;
                    if (emittedSource != null) {
                        coroutineLiveData$clearSource$1.label = 1;
                        if (emittedSource.disposeNow(coroutineLiveData$clearSource$1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
                this.emittedSource = null;
                return Unit.INSTANCE;
            }
        }
        coroutineLiveData$clearSource$1 = new CoroutineLiveData$clearSource$1(this, continuation);
        Object obj2 = coroutineLiveData$clearSource$1.result;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = coroutineLiveData$clearSource$1.label;
        if (i == 0) {
        }
        this.emittedSource = null;
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emitSource$lifecycle_livedata_release(@NotNull LiveData<T> liveData, @NotNull Continuation<? super DisposableHandle> continuation) {
        CoroutineLiveData$emitSource$1 coroutineLiveData$emitSource$1;
        Object obj;
        Object coroutine_suspended;
        int i;
        if (continuation instanceof CoroutineLiveData$emitSource$1) {
            coroutineLiveData$emitSource$1 = (CoroutineLiveData$emitSource$1) continuation;
            int i2 = coroutineLiveData$emitSource$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                coroutineLiveData$emitSource$1.label = i2 - Integer.MIN_VALUE;
                obj = coroutineLiveData$emitSource$1.result;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = coroutineLiveData$emitSource$1.label;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.throwOnFailure(obj);
                            EmittedSource emittedSource = (EmittedSource) obj;
                            this.emittedSource = emittedSource;
                            return emittedSource;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    liveData = (LiveData) coroutineLiveData$emitSource$1.L$0;
                    ResultKt.throwOnFailure(obj);
                } else {
                    ResultKt.throwOnFailure(obj);
                    coroutineLiveData$emitSource$1.L$0 = liveData;
                    coroutineLiveData$emitSource$1.label = 1;
                    if (clearSource$lifecycle_livedata_release(coroutineLiveData$emitSource$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                coroutineLiveData$emitSource$1.L$0 = null;
                coroutineLiveData$emitSource$1.label = 2;
                obj = CoroutineLiveDataKt.addDisposableSource(this, liveData, coroutineLiveData$emitSource$1);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                EmittedSource emittedSource2 = (EmittedSource) obj;
                this.emittedSource = emittedSource2;
                return emittedSource2;
            }
        }
        coroutineLiveData$emitSource$1 = new CoroutineLiveData$emitSource$1(this, continuation);
        obj = coroutineLiveData$emitSource$1.result;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = coroutineLiveData$emitSource$1.label;
        if (i == 0) {
        }
        coroutineLiveData$emitSource$1.L$0 = null;
        coroutineLiveData$emitSource$1.label = 2;
        obj = CoroutineLiveDataKt.addDisposableSource(this, liveData, coroutineLiveData$emitSource$1);
        if (obj == coroutine_suspended) {
        }
        EmittedSource emittedSource22 = (EmittedSource) obj;
        this.emittedSource = emittedSource22;
        return emittedSource22;
    }

    @Override // androidx.lifecycle.MediatorLiveData, androidx.lifecycle.LiveData
    public void onActive() {
        super.onActive();
        BlockRunner<T> blockRunner = this.blockRunner;
        if (blockRunner != null) {
            blockRunner.maybeRun();
        }
    }

    @Override // androidx.lifecycle.MediatorLiveData, androidx.lifecycle.LiveData
    public void onInactive() {
        super.onInactive();
        BlockRunner<T> blockRunner = this.blockRunner;
        if (blockRunner != null) {
            blockRunner.cancel();
        }
    }

    public CoroutineLiveData(@NotNull CoroutineContext context, long j, @NotNull Function2<? super LiveDataScope<T>, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        this.blockRunner = new BlockRunner<>(this, block, j, CoroutineScopeKt.CoroutineScope(Dispatchers.getMain().getImmediate().plus(context).plus(SupervisorKt.SupervisorJob((Job) context.get(Job.INSTANCE)))), new C0350x95f25580(this, 8));
    }
}
