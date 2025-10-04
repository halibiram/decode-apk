package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001af\u0010\n\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\u0012\u0012\u0004\u0012\u0002H\u00010\u0002j\b\u0012\u0004\u0012\u0002H\u0001`\u00032<\u0010\f\u001a8\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u00010\u0002j\b\u0012\u0004\u0012\u0002H\u0001`\u0003\u0012\u0013\u0012\u0011H\u0001¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0000\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u0010H\u0080\b¢\u0006\u0002\u0010\u0011\"D\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u0012\u0012\u0004\u0012\u0002H\u00010\u0002j\b\u0012\u0004\u0012\u0002H\u0001`\u00032\u0006\u0010\u0000\u001a\u00028\u00008@@@X\u0080\u000e¢\u0006\u0012\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"value", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/concurrent/atomic/AtomicReference;", "Lkotlinx/coroutines/internal/WorkaroundAtomicReference;", "getValue$annotations", "(Ljava/util/concurrent/atomic/AtomicReference;)V", "getValue", "(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;", "setValue", "(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V", "loop", "", "action", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "Lkotlin/ExtensionFunctionType;", "(Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Concurrent_commonKt {
    public static final <T> T getValue(@NotNull AtomicReference<T> atomicReference) {
        return atomicReference.get();
    }

    public static /* synthetic */ void getValue$annotations(AtomicReference atomicReference) {
    }

    public static final <T> void loop(@NotNull AtomicReference<T> atomicReference, @NotNull Function2<? super AtomicReference<T>, ? super T, Unit> function2) {
        while (true) {
            function2.invoke(atomicReference, (Object) getValue(atomicReference));
        }
    }

    public static final <T> void setValue(@NotNull AtomicReference<T> atomicReference, T t) {
        atomicReference.set(t);
    }
}
