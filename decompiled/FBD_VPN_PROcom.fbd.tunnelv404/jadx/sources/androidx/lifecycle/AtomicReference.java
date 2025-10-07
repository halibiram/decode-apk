package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u00028\u0000¢\u0006\u0002\u0010\tJ\u001b\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0002\u0010\u000eR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/lifecycle/AtomicReference;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "initialValue", "<init>", "(Ljava/lang/Object;)V", "base", "Ljava/util/concurrent/atomic/AtomicReference;", "get", "()Ljava/lang/Object;", "compareAndSet", "", "expectedValue", "newValue", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "lifecycle-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class AtomicReference<V> {

    @NotNull
    private final java.util.concurrent.atomic.AtomicReference<V> base;

    public AtomicReference(V v) {
        this.base = new java.util.concurrent.atomic.AtomicReference<>(v);
    }

    public final boolean compareAndSet(V expectedValue, V newValue) {
        java.util.concurrent.atomic.AtomicReference<V> atomicReference = this.base;
        while (!atomicReference.compareAndSet(expectedValue, newValue)) {
            if (atomicReference.get() != expectedValue) {
                return false;
            }
        }
        return true;
    }

    public final V get() {
        return this.base.get();
    }
}
