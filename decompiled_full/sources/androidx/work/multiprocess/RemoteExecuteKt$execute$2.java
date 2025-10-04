package androidx.work.multiprocess;

import android.os.IInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.multiprocess.RemoteExecuteKt", f = "RemoteExecute.kt", i = {0, 0, 0, 0}, l = {61}, m = "execute", n = {"iInterface", "dispatcher", "deathRecipient", "binder"}, s = {"L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes.dex */
public final class RemoteExecuteKt$execute$2<T extends IInterface> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;

    public RemoteExecuteKt$execute$2(Continuation<? super RemoteExecuteKt$execute$2> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return RemoteExecuteKt.execute((IInterface) null, (RemoteDispatcher<IInterface>) null, this);
    }
}
