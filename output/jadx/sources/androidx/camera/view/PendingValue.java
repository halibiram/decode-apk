package androidx.camera.view;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Pair;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;

/* loaded from: classes.dex */
public class PendingValue<T> {

    @Nullable
    private Pair<CallbackToFutureAdapter.Completer<Void>, T> mCompleterAndValue;

    public /* synthetic */ Object lambda$setValue$0(Object obj, CallbackToFutureAdapter.Completer completer) {
        Pair<CallbackToFutureAdapter.Completer<Void>, T> pair = this.mCompleterAndValue;
        if (pair != null) {
            CallbackToFutureAdapter.Completer<Void> completer2 = pair.first;
            Objects.requireNonNull(completer2);
            completer2.setCancelled();
        }
        this.mCompleterAndValue = new Pair<>(completer, obj);
        return "PendingValue " + obj;
    }

    @MainThread
    public void propagateIfHasValue(Function<T, ListenableFuture<Void>> function) {
        Threads.checkMainThread();
        Pair<CallbackToFutureAdapter.Completer<Void>, T> pair = this.mCompleterAndValue;
        if (pair != null) {
            ListenableFuture<Void> apply = function.apply(pair.second);
            CallbackToFutureAdapter.Completer<Void> completer = this.mCompleterAndValue.first;
            Objects.requireNonNull(completer);
            Futures.propagate(apply, completer);
            this.mCompleterAndValue = null;
        }
    }

    @MainThread
    public ListenableFuture<Void> setValue(@NonNull T t) {
        Threads.checkMainThread();
        return CallbackToFutureAdapter.getFuture(new C0127x9738a56c(this, t, 0));
    }
}
