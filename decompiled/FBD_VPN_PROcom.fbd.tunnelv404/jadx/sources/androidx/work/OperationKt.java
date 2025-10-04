package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.work.Operation;
import androidx.work.OperationKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0892xc141c517;
import defpackage.RunnableC1013x3ba4617f;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0000\u001a\u0012\u0010\u000b\u001a\u00020\f*\u00020\u0001H\u0086H¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"launchOperation", "Landroidx/work/Operation;", "tracer", "Landroidx/work/Tracer;", "label", "", "executor", "Ljava/util/concurrent/Executor;", "block", "Lkotlin/Function0;", "", "await", "Landroidx/work/Operation$State$SUCCESS;", "(Landroidx/work/Operation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/work/OperationKt\n+ 2 Tracer.kt\nandroidx/work/TracerKt\n*L\n1#1,71:1\n53#2,9:72\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/work/OperationKt\n*L\n48#1:72,9\n*E\n"})
/* loaded from: classes.dex */
public final class OperationKt {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object await(@NotNull Operation operation, @NotNull Continuation<? super Operation.State.SUCCESS> continuation) {
        OperationKt$await$1 operationKt$await$1;
        int i;
        if (continuation instanceof OperationKt$await$1) {
            operationKt$await$1 = (OperationKt$await$1) continuation;
            int i2 = operationKt$await$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                operationKt$await$1.label = i2 - Integer.MIN_VALUE;
                Object obj = operationKt$await$1.result;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = operationKt$await$1.label;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    ListenableFuture<Operation.State.SUCCESS> result = operation.getResult();
                    Intrinsics.checkNotNullExpressionValue(result, "result");
                    operationKt$await$1.label = 1;
                    obj = androidx.concurrent.futures.ListenableFutureKt.await(result, operationKt$await$1);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                Intrinsics.checkNotNullExpressionValue(obj, "result.await()");
                return obj;
            }
        }
        operationKt$await$1 = new OperationKt$await$1(continuation);
        Object obj2 = operationKt$await$1.result;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = operationKt$await$1.label;
        if (i == 0) {
        }
        Intrinsics.checkNotNullExpressionValue(obj2, "result.await()");
        return obj2;
    }

    private static final Object await$$forInline(Operation operation, Continuation<? super Operation.State.SUCCESS> continuation) {
        ListenableFuture<Operation.State.SUCCESS> result = operation.getResult();
        Intrinsics.checkNotNullExpressionValue(result, "result");
        InlineMarker.mark(0);
        Object await = androidx.concurrent.futures.ListenableFutureKt.await(result, continuation);
        InlineMarker.mark(1);
        Intrinsics.checkNotNullExpressionValue(await, "result.await()");
        return await;
    }

    @NotNull
    public static final Operation launchOperation(@NotNull final Tracer tracer, @NotNull final String label, @NotNull final Executor executor, @NotNull final Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(tracer, "tracer");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(block, "block");
        final MutableLiveData mutableLiveData = new MutableLiveData(Operation.IN_PROGRESS);
        ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: 딤땻둣딞돼딨뎡뒻뎰두뒾땳딞땠뒾됫뒷됫뎹듸돛딠땐듟땋되딅듼딎딁둠둠딅땥듻땅땡딃딅땐딎될딨돷뒤뒐뎨듨딐돳땋딝뒻딅돝땭들딸듸됫둑딝뒤뒝둘득뒾뒼둘딀땜딹돳땰땰딜됨듼돛둣딟딠땋됫딐들땻딀듻딝듸땐땡돠딄땋뒀땅뒤뎬됫딽둘돝뎨땸뒬땀되됫뒷듨땁듰땍됫딤땵딽땠땫돳딌딠땐땹딞듻딟돛
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Unit launchOperation$lambda$2;
                MutableLiveData mutableLiveData2 = mutableLiveData;
                launchOperation$lambda$2 = OperationKt.launchOperation$lambda$2(executor, tracer, label, block, mutableLiveData2, completer);
                return launchOperation$lambda$2;
            }
        });
        Intrinsics.checkNotNullExpressionValue(future, "getFuture { completer ->…}\n            }\n        }");
        return new OperationImpl(mutableLiveData, future);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit launchOperation$lambda$2(Executor executor, Tracer tracer, String str, Function0 function0, MutableLiveData mutableLiveData, CallbackToFutureAdapter.Completer completer) {
        Intrinsics.checkNotNullParameter(completer, "completer");
        executor.execute(new RunnableC1013x3ba4617f(tracer, str, function0, mutableLiveData, completer, 0));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void launchOperation$lambda$2$lambda$1(Tracer tracer, String str, Function0 function0, MutableLiveData mutableLiveData, CallbackToFutureAdapter.Completer completer) {
        boolean isEnabled = tracer.isEnabled();
        if (isEnabled) {
            try {
                tracer.beginSection(str);
            } finally {
                if (isEnabled) {
                    tracer.endSection();
                }
            }
        }
        try {
            function0.invoke();
            Operation.State.SUCCESS success = Operation.SUCCESS;
            mutableLiveData.postValue(success);
            completer.set(success);
        } catch (Throwable th) {
            mutableLiveData.postValue(new Operation.State.FAILURE(th));
            completer.setException(th);
        }
    }
}
