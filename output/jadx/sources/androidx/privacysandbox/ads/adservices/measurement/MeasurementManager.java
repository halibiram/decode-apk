package androidx.privacysandbox.ads.adservices.measurement;

import android.adservices.measurement.DeletionRequest;
import android.adservices.measurement.WebSourceParams;
import android.adservices.measurement.WebSourceRegistrationRequest;
import android.adservices.measurement.WebTriggerParams;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import defpackage.AbstractC0651xb3bad72;
import defpackage.AbstractC0892xc141c517;
import defpackage.AbstractC0978x12d89da;
import defpackage.ExecutorC0393xf3cb0c93;
import j$.time.TimeConversions;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
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

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB\u0005¢\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0011\u0010\b\u001a\u00020\tH§@ø\u0001\u0000¢\u0006\u0002\u0010\nJ#\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH§@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\rH§@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\u0019\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0019H§@ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;", "", "()V", "deleteRegistrations", "", "deletionRequest", "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", "(Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMeasurementApiStatus", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerSource", "attributionSource", "Landroid/net/Uri;", "inputEvent", "Landroid/view/InputEvent;", "(Landroid/net/Uri;Landroid/view/InputEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerTrigger", "trigger", "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerWebSource", "request", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;", "(Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerWebTrigger", "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;", "(Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Api33Ext5Impl", "Companion", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class MeasurementManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int MEASUREMENT_API_STATE_DISABLED = 0;
    public static final int MEASUREMENT_API_STATE_ENABLED = 1;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Companion;", "", "()V", "MEASUREMENT_API_STATE_DISABLED", "", "MEASUREMENT_API_STATE_ENABLED", "obtain", "Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;", "context", "Landroid/content/Context;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @Nullable
        public final MeasurementManager obtain(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            adServicesInfo.version();
            if (adServicesInfo.version() >= 5) {
                return new Api33Ext5Impl(context);
            }
            return null;
        }

        private Companion() {
        }
    }

    @JvmStatic
    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @Nullable
    public static final MeasurementManager obtain(@NotNull Context context) {
        return INSTANCE.obtain(context);
    }

    @Nullable
    public abstract Object deleteRegistrations(@NotNull DeletionRequest deletionRequest, @NotNull Continuation<? super Unit> continuation);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @Nullable
    public abstract Object getMeasurementApiStatus(@NotNull Continuation<? super Integer> continuation);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @Nullable
    public abstract Object registerSource(@NotNull Uri uri, @Nullable InputEvent inputEvent, @NotNull Continuation<? super Unit> continuation);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @Nullable
    public abstract Object registerTrigger(@NotNull Uri uri, @NotNull Continuation<? super Unit> continuation);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @Nullable
    public abstract Object registerWebSource(@NotNull WebSourceRegistrationRequest webSourceRegistrationRequest, @NotNull Continuation<? super Unit> continuation);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @Nullable
    public abstract Object registerWebTrigger(@NotNull WebTriggerRegistrationRequest webTriggerRegistrationRequest, @NotNull Continuation<? super Unit> continuation);

    @Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0003\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000f0\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u0012H\u0002J\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\r2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00150\rH\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\n\u001a\u00020\u0018H\u0002J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000bH\u0097@ø\u0001\u0000¢\u0006\u0002\u0010\u001cJ\u0011\u0010\u001d\u001a\u00020\u001eH\u0097@ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ#\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0097@ø\u0001\u0000¢\u0006\u0002\u0010%J\u0019\u0010&\u001a\u00020\u001a2\u0006\u0010'\u001a\u00020\"H\u0097@ø\u0001\u0000¢\u0006\u0002\u0010(J\u0019\u0010)\u001a\u00020\u001a2\u0006\u0010\n\u001a\u00020\u0012H\u0097@ø\u0001\u0000¢\u0006\u0002\u0010*J\u0019\u0010+\u001a\u00020\u001a2\u0006\u0010\n\u001a\u00020\u0018H\u0097@ø\u0001\u0000¢\u0006\u0002\u0010,R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006-"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Api33Ext5Impl;", "Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "mMeasurementManager", "Landroid/adservices/measurement/MeasurementManager;", "(Landroid/adservices/measurement/MeasurementManager;)V", "convertDeletionRequest", "Landroid/adservices/measurement/DeletionRequest;", "request", "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", "convertWebSourceParams", "", "Landroid/adservices/measurement/WebSourceParams;", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;", "convertWebSourceRequest", "Landroid/adservices/measurement/WebSourceRegistrationRequest;", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;", "convertWebTriggerParams", "Landroid/adservices/measurement/WebTriggerParams;", "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerParams;", "convertWebTriggerRequest", "Landroid/adservices/measurement/WebTriggerRegistrationRequest;", "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;", "deleteRegistrations", "", "deletionRequest", "(Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMeasurementApiStatus", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerSource", "attributionSource", "Landroid/net/Uri;", "inputEvent", "Landroid/view/InputEvent;", "(Landroid/net/Uri;Landroid/view/InputEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerTrigger", "trigger", "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerWebSource", "(Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerWebTrigger", "(Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @RequiresExtension(extension = DurationKt.NANOS_IN_MILLIS, version = 5)
    @SourceDebugExtension({"SMAP\nMeasurementManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeasurementManager.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Api33Ext5Impl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,263:1\n314#2,11:264\n314#2,11:275\n314#2,11:286\n314#2,11:297\n314#2,11:308\n314#2,11:319\n*S KotlinDebug\n*F\n+ 1 MeasurementManager.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Api33Ext5Impl\n*L\n106#1:264,11\n131#1:275,11\n144#1:286,11\n155#1:297,11\n193#1:308,11\n226#1:319,11\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api33Ext5Impl extends MeasurementManager {

        @NotNull
        private final android.adservices.measurement.MeasurementManager mMeasurementManager;

        public Api33Ext5Impl(@NotNull android.adservices.measurement.MeasurementManager mMeasurementManager) {
            Intrinsics.checkNotNullParameter(mMeasurementManager, "mMeasurementManager");
            this.mMeasurementManager = mMeasurementManager;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final android.adservices.measurement.DeletionRequest convertDeletionRequest(DeletionRequest request) {
            DeletionRequest.Builder deletionMode;
            DeletionRequest.Builder matchBehavior;
            DeletionRequest.Builder start;
            DeletionRequest.Builder end;
            DeletionRequest.Builder domainUris;
            DeletionRequest.Builder originUris;
            android.adservices.measurement.DeletionRequest build;
            deletionMode = AbstractC0978x12d89da.m3527x1378447b().setDeletionMode(request.getDeletionMode());
            matchBehavior = deletionMode.setMatchBehavior(request.getMatchBehavior());
            start = matchBehavior.setStart(TimeConversions.convert(request.getStart()));
            end = start.setEnd(TimeConversions.convert(request.getEnd()));
            domainUris = end.setDomainUris(request.getDomainUris());
            originUris = domainUris.setOriginUris(request.getOriginUris());
            build = originUris.build();
            Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …\n                .build()");
            return build;
        }

        private final List<android.adservices.measurement.WebSourceParams> convertWebSourceParams(List<WebSourceParams> request) {
            WebSourceParams.Builder debugKeyAllowed;
            android.adservices.measurement.WebSourceParams build;
            ArrayList arrayList = new ArrayList();
            for (WebSourceParams webSourceParams : request) {
                AbstractC0651xb3bad72.m3263x742e2fda();
                debugKeyAllowed = AbstractC0651xb3bad72.m3243x3db60231(webSourceParams.getRegistrationUri()).setDebugKeyAllowed(webSourceParams.getDebugKeyAllowed());
                build = debugKeyAllowed.build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder(param.registrati…                 .build()");
                arrayList.add(build);
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final android.adservices.measurement.WebSourceRegistrationRequest convertWebSourceRequest(WebSourceRegistrationRequest request) {
            WebSourceRegistrationRequest.Builder webDestination;
            WebSourceRegistrationRequest.Builder appDestination;
            WebSourceRegistrationRequest.Builder inputEvent;
            WebSourceRegistrationRequest.Builder verifiedDestination;
            android.adservices.measurement.WebSourceRegistrationRequest build;
            AbstractC0978x12d89da.m3545xe28a696a();
            webDestination = AbstractC0978x12d89da.m3531x34271fae(convertWebSourceParams(request.getWebSourceParams()), request.getTopOriginUri()).setWebDestination(request.getWebDestination());
            appDestination = webDestination.setAppDestination(request.getAppDestination());
            inputEvent = appDestination.setInputEvent(request.getInputEvent());
            verifiedDestination = inputEvent.setVerifiedDestination(request.getVerifiedDestination());
            build = verifiedDestination.build();
            Intrinsics.checkNotNullExpressionValue(build, "Builder(\n               …\n                .build()");
            return build;
        }

        private final List<android.adservices.measurement.WebTriggerParams> convertWebTriggerParams(List<WebTriggerParams> request) {
            WebTriggerParams.Builder debugKeyAllowed;
            android.adservices.measurement.WebTriggerParams build;
            ArrayList arrayList = new ArrayList();
            for (WebTriggerParams webTriggerParams : request) {
                AbstractC0651xb3bad72.m3252x952a0a9e();
                debugKeyAllowed = AbstractC0651xb3bad72.m3247x8c6fc18a(webTriggerParams.getRegistrationUri()).setDebugKeyAllowed(webTriggerParams.getDebugKeyAllowed());
                build = debugKeyAllowed.build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder(param.registrati…                 .build()");
                arrayList.add(build);
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final android.adservices.measurement.WebTriggerRegistrationRequest convertWebTriggerRequest(WebTriggerRegistrationRequest request) {
            android.adservices.measurement.WebTriggerRegistrationRequest build;
            AbstractC0978x12d89da.m3554xe698d();
            build = AbstractC0978x12d89da.m3534x9d12c1f4(convertWebTriggerParams(request.getWebTriggerParams()), request.getDestination()).build();
            Intrinsics.checkNotNullExpressionValue(build, "Builder(\n               …\n                .build()");
            return build;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @DoNotInline
        @Nullable
        public Object deleteRegistrations(@NotNull DeletionRequest deletionRequest, @NotNull Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.deleteRegistrations(convertDeletionRequest(deletionRequest), new ExecutorC0393xf3cb0c93(0), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                return result;
            }
            return Unit.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @Nullable
        public Object getMeasurementApiStatus(@NotNull Continuation<? super Integer> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.getMeasurementApiStatus(new ExecutorC0393xf3cb0c93(0), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @Nullable
        public Object registerSource(@NotNull Uri uri, @Nullable InputEvent inputEvent, @NotNull Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.registerSource(uri, inputEvent, new ExecutorC0393xf3cb0c93(0), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                return result;
            }
            return Unit.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @Nullable
        public Object registerTrigger(@NotNull Uri uri, @NotNull Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.registerTrigger(uri, new ExecutorC0393xf3cb0c93(0), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                return result;
            }
            return Unit.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @Nullable
        public Object registerWebSource(@NotNull WebSourceRegistrationRequest webSourceRegistrationRequest, @NotNull Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.registerWebSource(convertWebSourceRequest(webSourceRegistrationRequest), new ExecutorC0393xf3cb0c93(0), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                return result;
            }
            return Unit.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @Nullable
        public Object registerWebTrigger(@NotNull WebTriggerRegistrationRequest webTriggerRegistrationRequest, @NotNull Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.mMeasurementManager.registerWebTrigger(convertWebTriggerRequest(webTriggerRegistrationRequest), new ExecutorC0393xf3cb0c93(0), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                return result;
            }
            return Unit.INSTANCE;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Api33Ext5Impl(@NotNull Context context) {
            this(AbstractC0651xb3bad72.m3242x95f25580(r2));
            Object systemService;
            Intrinsics.checkNotNullParameter(context, "context");
            systemService = context.getSystemService((Class<Object>) AbstractC0651xb3bad72.m3262x5ac5058d());
            Intrinsics.checkNotNullExpressionValue(systemService, "context.getSystemService…:class.java\n            )");
        }
    }
}
