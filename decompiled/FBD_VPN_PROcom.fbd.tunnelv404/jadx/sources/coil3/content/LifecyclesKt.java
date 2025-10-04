package coil3.content;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import defpackage.AbstractC0660x214e2f7;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0924xc5bd840b;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0080@¢\u0006\u0002\u0010\u0003\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¨\u0006\u0007"}, d2 = {"awaitStarted", "", "Landroidx/lifecycle/Lifecycle;", "(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeAndAddObserver", "observer", "Landroidx/lifecycle/LifecycleObserver;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nlifecycles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 lifecycles.kt\ncoil3/util/LifecyclesKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n426#2,11:42\n1#3:53\n*S KotlinDebug\n*F\n+ 1 lifecycles.kt\ncoil3/util/LifecyclesKt\n*L\n21#1:42,11\n*E\n"})
/* loaded from: classes.dex */
public final class LifecyclesKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r3v1, types: [coil3.util.LifecyclesKt$awaitStarted$2$1, T, androidx.lifecycle.LifecycleObserver, java.lang.Object] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitStarted(@NotNull Lifecycle lifecycle, @NotNull Continuation<? super Unit> continuation) {
        C0924xc5bd840b c0924xc5bd840b;
        int i;
        Lifecycle lifecycle2;
        Ref.ObjectRef objectRef;
        Throwable th;
        LifecycleObserver lifecycleObserver;
        LifecycleObserver lifecycleObserver2;
        if (continuation instanceof C0924xc5bd840b) {
            C0924xc5bd840b c0924xc5bd840b2 = (C0924xc5bd840b) continuation;
            int i2 = c0924xc5bd840b2.f5067x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0924xc5bd840b2.f5067x75d576dc = i2 - Integer.MIN_VALUE;
                c0924xc5bd840b = c0924xc5bd840b2;
                Object obj = c0924xc5bd840b.f5066x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0924xc5bd840b.f5067x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        objectRef = c0924xc5bd840b.f5065x3271d0aa;
                        lifecycle2 = c0924xc5bd840b.f5064xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (Throwable th2) {
                            th = th2;
                            lifecycleObserver = (LifecycleObserver) objectRef.element;
                            if (lifecycleObserver != null) {
                            }
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    if (lifecycle.getState().isAtLeast(Lifecycle.State.STARTED)) {
                        return Unit.INSTANCE;
                    }
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    try {
                        c0924xc5bd840b.f5064xfbe0c504 = lifecycle;
                        c0924xc5bd840b.f5065x3271d0aa = objectRef2;
                        c0924xc5bd840b.f5067x75d576dc = 1;
                        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(c0924xc5bd840b), 1);
                        cancellableContinuationImpl.initCancellability();
                        ?? r3 = new DefaultLifecycleObserver() { // from class: coil3.util.LifecyclesKt$awaitStarted$2$1
                            @Override // androidx.lifecycle.DefaultLifecycleObserver
                            public final /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
                                AbstractC0660x214e2f7.m3269xfbe0c504(this, lifecycleOwner);
                            }

                            @Override // androidx.lifecycle.DefaultLifecycleObserver
                            public final /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
                                AbstractC0660x214e2f7.m3270x3271d0aa(this, lifecycleOwner);
                            }

                            @Override // androidx.lifecycle.DefaultLifecycleObserver
                            public final /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
                                AbstractC0660x214e2f7.m3271x1378447b(this, lifecycleOwner);
                            }

                            @Override // androidx.lifecycle.DefaultLifecycleObserver
                            public final /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
                                AbstractC0660x214e2f7.m3272x75d576dc(this, lifecycleOwner);
                            }

                            @Override // androidx.lifecycle.DefaultLifecycleObserver
                            public void onStart(LifecycleOwner owner) {
                                Result.Companion companion = Result.INSTANCE;
                                CancellableContinuationImpl.this.resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
                            }

                            @Override // androidx.lifecycle.DefaultLifecycleObserver
                            public final /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
                                AbstractC0660x214e2f7.m3274x9e171bf9(this, lifecycleOwner);
                            }
                        };
                        objectRef2.element = r3;
                        Intrinsics.checkNotNull(r3);
                        lifecycle.addObserver(r3);
                        Object result = cancellableContinuationImpl.getResult();
                        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                            DebugProbesKt.probeCoroutineSuspended(c0924xc5bd840b);
                        }
                        if (result == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        lifecycle2 = lifecycle;
                        objectRef = objectRef2;
                    } catch (Throwable th3) {
                        lifecycle2 = lifecycle;
                        objectRef = objectRef2;
                        th = th3;
                        lifecycleObserver = (LifecycleObserver) objectRef.element;
                        if (lifecycleObserver != null) {
                            lifecycle2.removeObserver(lifecycleObserver);
                        }
                        throw th;
                    }
                }
                lifecycleObserver2 = (LifecycleObserver) objectRef.element;
                if (lifecycleObserver2 != null) {
                    lifecycle2.removeObserver(lifecycleObserver2);
                }
                return Unit.INSTANCE;
            }
        }
        c0924xc5bd840b = new ContinuationImpl(continuation);
        Object obj2 = c0924xc5bd840b.f5066x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0924xc5bd840b.f5067x75d576dc;
        if (i == 0) {
        }
        lifecycleObserver2 = (LifecycleObserver) objectRef.element;
        if (lifecycleObserver2 != null) {
        }
        return Unit.INSTANCE;
    }

    public static final void removeAndAddObserver(@NotNull Lifecycle lifecycle, @NotNull LifecycleObserver lifecycleObserver) {
        lifecycle.removeObserver(lifecycleObserver);
        lifecycle.addObserver(lifecycleObserver);
    }
}
