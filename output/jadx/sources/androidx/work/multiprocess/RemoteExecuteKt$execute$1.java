package androidx.work.multiprocess;

import android.os.IInterface;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.Logger;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0892xc141c517;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/os/IInterface;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.multiprocess.RemoteExecuteKt$execute$1", f = "RemoteExecute.kt", i = {}, l = {43, 50}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class RemoteExecuteKt$execute$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super byte[]>, Object> {
    final /* synthetic */ RemoteDispatcher<T> $dispatcher;
    final /* synthetic */ ListenableFuture<T> $iInterface;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteExecuteKt$execute$1(ListenableFuture<T> listenableFuture, RemoteDispatcher<T> remoteDispatcher, Continuation<? super RemoteExecuteKt$execute$1> continuation) {
        super(2, continuation);
        this.$iInterface = listenableFuture;
        this.$dispatcher = remoteDispatcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RemoteExecuteKt$execute$1(this.$iInterface, this.$dispatcher, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                ListenableFuture<T> listenableFuture = this.$iInterface;
                this.label = 1;
                obj = ListenableFutureKt.await(listenableFuture, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            IInterface iInterface = (IInterface) obj;
            RemoteDispatcher<T> remoteDispatcher = this.$dispatcher;
            this.label = 2;
            obj = RemoteExecuteKt.execute(iInterface, (RemoteDispatcher<IInterface>) remoteDispatcher, (Continuation<? super byte[]>) this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            return obj;
        } catch (Throwable th) {
            if (!(th instanceof CancellationException)) {
                Logger.get().error(ListenableWorkerImplClient.TAG, "Unable to bind to service", th);
            }
            throw th;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super byte[]> continuation) {
        return ((RemoteExecuteKt$execute$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
