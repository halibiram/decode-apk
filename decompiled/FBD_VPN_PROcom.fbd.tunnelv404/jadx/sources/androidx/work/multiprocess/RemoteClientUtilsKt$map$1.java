package androidx.work.multiprocess;

import androidx.arch.core.util.Function;
import androidx.concurrent.futures.ListenableFutureKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Add missing generic type declarations: [O] */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "O", "I", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.multiprocess.RemoteClientUtilsKt$map$1", f = "RemoteClientUtils.kt", i = {}, l = {31}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class RemoteClientUtilsKt$map$1<O> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super O>, Object> {
    final /* synthetic */ ListenableFuture<I> $this_map;
    final /* synthetic */ Function<I, O> $transformation;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteClientUtilsKt$map$1(Function<I, O> function, ListenableFuture<I> listenableFuture, Continuation<? super RemoteClientUtilsKt$map$1> continuation) {
        super(2, continuation);
        this.$transformation = function;
        this.$this_map = listenableFuture;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RemoteClientUtilsKt$map$1(this.$transformation, this.$this_map, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Function function;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                function = (Function) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            Function function2 = this.$transformation;
            ListenableFuture<I> listenableFuture = this.$this_map;
            this.L$0 = function2;
            this.label = 1;
            Object await = ListenableFutureKt.await(listenableFuture, this);
            if (await == coroutine_suspended) {
                return coroutine_suspended;
            }
            function = function2;
            obj = await;
        }
        return function.apply(obj);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super O> continuation) {
        return ((RemoteClientUtilsKt$map$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
