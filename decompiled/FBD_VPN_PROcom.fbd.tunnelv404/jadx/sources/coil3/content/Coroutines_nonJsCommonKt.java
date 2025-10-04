package coil3.content;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0000¨\u0006\u0002"}, d2 = {"ioCoroutineDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Coroutines_nonJsCommonKt {
    @NotNull
    public static final CoroutineDispatcher ioCoroutineDispatcher() {
        return Dispatchers.getIO();
    }
}
