package androidx.privacysandbox.ads.adservices.appsetid;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import defpackage.AbstractC0367xe1f61061;
import defpackage.AbstractC0403x2cbd7cf2;
import defpackage.AbstractC0892xc141c517;
import defpackage.ExecutorC0393xf3cb0c93;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.DurationKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000 \u00072\u00020\u0001:\u0002\u0006\u0007B\u0007\b\u0000¢\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u0004H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, d2 = {"Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;", "", "()V", "getAppSetId", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Api33Ext4Impl", "Companion", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class AppSetIdManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Companion;", "", "()V", "obtain", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;", "context", "Landroid/content/Context;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @Nullable
        public final AppSetIdManager obtain(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (AdServicesInfo.INSTANCE.version() >= 4) {
                return new Api33Ext4Impl(context);
            }
            return null;
        }

        private Companion() {
        }
    }

    @JvmStatic
    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @Nullable
    public static final AppSetIdManager obtain(@NotNull Context context) {
        return INSTANCE.obtain(context);
    }

    @Nullable
    public abstract Object getAppSetId(@NotNull Continuation<? super AppSetId> continuation);

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0011\u0010\f\u001a\u00020\tH\u0097@ø\u0001\u0000¢\u0006\u0002\u0010\rJ\u0011\u0010\u000e\u001a\u00020\u000bH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "mAppSetIdManager", "Landroid/adservices/appsetid/AppSetIdManager;", "(Landroid/adservices/appsetid/AppSetIdManager;)V", "convertResponse", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;", "response", "Landroid/adservices/appsetid/AppSetId;", "getAppSetId", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAppSetIdAsyncInternal", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"ClassVerificationFailure", "NewApi"})
    @RequiresExtension(extension = DurationKt.NANOS_IN_MILLIS, version = 4)
    @SourceDebugExtension({"SMAP\nAppSetIdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSetIdManager.kt\nandroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,94:1\n314#2,11:95\n*S KotlinDebug\n*F\n+ 1 AppSetIdManager.kt\nandroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl\n*L\n59#1:95,11\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api33Ext4Impl extends AppSetIdManager {

        @NotNull
        private final android.adservices.appsetid.AppSetIdManager mAppSetIdManager;

        public Api33Ext4Impl(@NotNull android.adservices.appsetid.AppSetIdManager mAppSetIdManager) {
            Intrinsics.checkNotNullParameter(mAppSetIdManager, "mAppSetIdManager");
            this.mAppSetIdManager = mAppSetIdManager;
        }

        private final AppSetId convertResponse(android.adservices.appsetid.AppSetId response) {
            int scope;
            String id;
            String id2;
            scope = response.getScope();
            if (scope == 1) {
                id2 = response.getId();
                Intrinsics.checkNotNullExpressionValue(id2, "response.id");
                return new AppSetId(id2, 1);
            }
            id = response.getId();
            Intrinsics.checkNotNullExpressionValue(id, "response.id");
            return new AppSetId(id, 2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object getAppSetIdAsyncInternal(Continuation<? super android.adservices.appsetid.AppSetId> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.mAppSetIdManager.getAppSetId(new ExecutorC0393xf3cb0c93(0), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override // androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManager
        @DoNotInline
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object getAppSetId(@NotNull Continuation<? super AppSetId> continuation) {
            AppSetIdManager$Api33Ext4Impl$getAppSetId$1 appSetIdManager$Api33Ext4Impl$getAppSetId$1;
            int i;
            Api33Ext4Impl api33Ext4Impl;
            if (continuation instanceof AppSetIdManager$Api33Ext4Impl$getAppSetId$1) {
                appSetIdManager$Api33Ext4Impl$getAppSetId$1 = (AppSetIdManager$Api33Ext4Impl$getAppSetId$1) continuation;
                int i2 = appSetIdManager$Api33Ext4Impl$getAppSetId$1.label;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    appSetIdManager$Api33Ext4Impl$getAppSetId$1.label = i2 - Integer.MIN_VALUE;
                    Object obj = appSetIdManager$Api33Ext4Impl$getAppSetId$1.result;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = appSetIdManager$Api33Ext4Impl$getAppSetId$1.label;
                    if (i == 0) {
                        if (i == 1) {
                            api33Ext4Impl = (Api33Ext4Impl) appSetIdManager$Api33Ext4Impl$getAppSetId$1.L$0;
                            ResultKt.throwOnFailure(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        ResultKt.throwOnFailure(obj);
                        appSetIdManager$Api33Ext4Impl$getAppSetId$1.L$0 = this;
                        appSetIdManager$Api33Ext4Impl$getAppSetId$1.label = 1;
                        obj = getAppSetIdAsyncInternal(appSetIdManager$Api33Ext4Impl$getAppSetId$1);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        api33Ext4Impl = this;
                    }
                    return api33Ext4Impl.convertResponse(AbstractC0367xe1f61061.m2969x1aebc6d9(obj));
                }
            }
            appSetIdManager$Api33Ext4Impl$getAppSetId$1 = new AppSetIdManager$Api33Ext4Impl$getAppSetId$1(this, continuation);
            Object obj2 = appSetIdManager$Api33Ext4Impl$getAppSetId$1.result;
            Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
            i = appSetIdManager$Api33Ext4Impl$getAppSetId$1.label;
            if (i == 0) {
            }
            return api33Ext4Impl.convertResponse(AbstractC0367xe1f61061.m2969x1aebc6d9(obj2));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Api33Ext4Impl(@NotNull Context context) {
            this(AbstractC0403x2cbd7cf2.m3048x1378447b(r2));
            Object systemService;
            Intrinsics.checkNotNullParameter(context, "context");
            systemService = context.getSystemService((Class<Object>) AbstractC0367xe1f61061.m2985xe698d());
            Intrinsics.checkNotNullExpressionValue(systemService, "context.getSystemService…:class.java\n            )");
        }
    }
}
