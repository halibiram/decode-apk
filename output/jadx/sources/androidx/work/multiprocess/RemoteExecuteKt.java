package androidx.work.multiprocess;

import android.os.IBinder;
import android.os.IInterface;
import androidx.concurrent.futures.SuspendToFutureAdapter;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.Logger;
import androidx.work.multiprocess.IWorkManagerImplCallback;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0892xc141c517;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a.\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0080@¢\u0006\u0002\u0010\u0007\u001a<\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00010\b\"\b\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0000\u001a\u0014\u0010\u000b\u001a\u00020\f*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002¨\u0006\u0010"}, d2 = {"execute", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/os/IInterface;", "iInterface", "dispatcher", "Landroidx/work/multiprocess/RemoteDispatcher;", "(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteDispatcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/google/common/util/concurrent/ListenableFuture;", "executor", "Ljava/util/concurrent/Executor;", "unlinkToDeathSafely", "", "Landroid/os/IBinder;", "recipient", "Landroid/os/IBinder$DeathRecipient;", "work-multiprocess_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRemoteExecute.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteExecute.kt\nandroidx/work/multiprocess/RemoteExecuteKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"})
/* loaded from: classes.dex */
public final class RemoteExecuteKt {
    @NotNull
    public static final <T extends IInterface> ListenableFuture<byte[]> execute(@NotNull Executor executor, @NotNull ListenableFuture<T> iInterface, @NotNull RemoteDispatcher<T> dispatcher) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(iInterface, "iInterface");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return SuspendToFutureAdapter.INSTANCE.launchFuture(ExecutorsKt.from(executor).plus(JobKt.Job$default((Job) null, 1, (Object) null)), false, new RemoteExecuteKt$execute$1(iInterface, dispatcher, null));
    }

    private static final void unlinkToDeathSafely(IBinder iBinder, IBinder.DeathRecipient deathRecipient) {
        try {
            iBinder.unlinkToDeath(deathRecipient, 0);
        } catch (NoSuchElementException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a3 A[Catch: all -> 0x00af, TryCatch #2 {all -> 0x00af, blocks: (B:21:0x009f, B:23:0x00a3, B:24:0x00b1), top: B:20:0x009f }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.os.IBinder$DeathRecipient, T, androidx.work.multiprocess.RemoteExecuteKt$execute$3$localRecipient$1] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T extends IInterface> Object execute(@NotNull T t, @NotNull RemoteDispatcher<T> remoteDispatcher, @NotNull Continuation<? super byte[]> continuation) {
        RemoteExecuteKt$execute$2 remoteExecuteKt$execute$2;
        int i;
        Ref.ObjectRef objectRef;
        Throwable th;
        IBinder binder;
        IBinder.DeathRecipient deathRecipient;
        if (continuation instanceof RemoteExecuteKt$execute$2) {
            remoteExecuteKt$execute$2 = (RemoteExecuteKt$execute$2) continuation;
            int i2 = remoteExecuteKt$execute$2.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                remoteExecuteKt$execute$2.label = i2 - Integer.MIN_VALUE;
                Object obj = remoteExecuteKt$execute$2.result;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = remoteExecuteKt$execute$2.label;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    IBinder asBinder = t.asBinder();
                    try {
                        remoteExecuteKt$execute$2.L$0 = t;
                        remoteExecuteKt$execute$2.L$1 = remoteDispatcher;
                        remoteExecuteKt$execute$2.L$2 = objectRef2;
                        remoteExecuteKt$execute$2.L$3 = asBinder;
                        remoteExecuteKt$execute$2.label = 1;
                        final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(remoteExecuteKt$execute$2));
                        ?? r5 = new IBinder.DeathRecipient() { // from class: androidx.work.multiprocess.RemoteExecuteKt$execute$3$localRecipient$1
                            @Override // android.os.IBinder.DeathRecipient
                            public final void binderDied() {
                                Continuation<byte[]> continuation2 = safeContinuation;
                                Result.Companion companion = Result.INSTANCE;
                                continuation2.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(new RuntimeException("Binder died"))));
                            }
                        };
                        objectRef2.element = r5;
                        asBinder.linkToDeath(r5, 0);
                        remoteDispatcher.execute(t, new IWorkManagerImplCallback.Stub() { // from class: androidx.work.multiprocess.RemoteExecuteKt$execute$3$1
                            @Override // androidx.work.multiprocess.IWorkManagerImplCallback
                            public void onFailure(String error) {
                                Continuation<byte[]> continuation2 = safeContinuation;
                                Result.Companion companion = Result.INSTANCE;
                                continuation2.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(new RuntimeException(error))));
                            }

                            @Override // androidx.work.multiprocess.IWorkManagerImplCallback
                            public void onSuccess(byte[] response) {
                                Intrinsics.checkNotNullParameter(response, "response");
                                safeContinuation.resumeWith(Result.m1764constructorimpl(response));
                            }
                        });
                        Object orThrow = safeContinuation.getOrThrow();
                        if (orThrow == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                            DebugProbesKt.probeCoroutineSuspended(remoteExecuteKt$execute$2);
                        }
                        if (orThrow == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        objectRef = objectRef2;
                        obj = orThrow;
                        binder = asBinder;
                    } catch (Throwable th2) {
                        objectRef = objectRef2;
                        th = th2;
                        binder = asBinder;
                        if (!(th instanceof CancellationException)) {
                            Logger.get().error(ListenableWorkerImplClient.TAG, "Unable to execute", th);
                        }
                        throw th;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    binder = (IBinder) remoteExecuteKt$execute$2.L$3;
                    objectRef = (Ref.ObjectRef) remoteExecuteKt$execute$2.L$2;
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            if (!(th instanceof CancellationException)) {
                            }
                            throw th;
                        } catch (Throwable th4) {
                            IBinder.DeathRecipient deathRecipient2 = (IBinder.DeathRecipient) objectRef.element;
                            if (deathRecipient2 != null) {
                                Intrinsics.checkNotNullExpressionValue(binder, "binder");
                                unlinkToDeathSafely(binder, deathRecipient2);
                            }
                            throw th4;
                        }
                    }
                }
                byte[] bArr = (byte[]) obj;
                deathRecipient = (IBinder.DeathRecipient) objectRef.element;
                if (deathRecipient != null) {
                    Intrinsics.checkNotNullExpressionValue(binder, "binder");
                    unlinkToDeathSafely(binder, deathRecipient);
                }
                return bArr;
            }
        }
        remoteExecuteKt$execute$2 = new RemoteExecuteKt$execute$2(continuation);
        Object obj2 = remoteExecuteKt$execute$2.result;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = remoteExecuteKt$execute$2.label;
        if (i != 0) {
        }
        byte[] bArr2 = (byte[]) obj2;
        deathRecipient = (IBinder.DeathRecipient) objectRef.element;
        if (deathRecipient != null) {
        }
        return bArr2;
    }
}
