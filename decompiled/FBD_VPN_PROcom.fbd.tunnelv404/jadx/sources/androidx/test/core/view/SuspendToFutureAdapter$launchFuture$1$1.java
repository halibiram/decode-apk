package androidx.test.core.view;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.Deferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [T] */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public /* synthetic */ class SuspendToFutureAdapter$launchFuture$1$1<T> extends FunctionReferenceImpl implements Function1<Continuation<? super T>, Object>, SuspendFunction {
    public SuspendToFutureAdapter$launchFuture$1$1(Object obj) {
        super(1, obj, Deferred.class, "await", "await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    @Nullable
    public final Object invoke(@NotNull Continuation<? super T> continuation) {
        return ((Deferred) this.receiver).await(continuation);
    }
}
