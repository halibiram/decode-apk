package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.adselection.AdSelectionConfig;
import android.adservices.common.AdSelectionSignals;
import android.adservices.common.AdTechIdentifier;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import defpackage.AbstractC0367xe1f61061;
import defpackage.AbstractC0892xc141c517;
import defpackage.ExecutorC0393xf3cb0c93;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
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

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000 \u000e2\u00020\u0001:\u0002\r\u000eB\u0007\b\u0000¢\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH§@ø\u0001\u0000¢\u0006\u0002\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;", "", "()V", "reportImpression", "", "reportImpressionRequest", "Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;", "(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "selectAds", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;", "adSelectionConfig", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;", "(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Api33Ext4Impl", "Companion", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class AdSelectionManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion;", "", "()V", "obtain", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;", "context", "Landroid/content/Context;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @Nullable
        public final AdSelectionManager obtain(@NotNull Context context) {
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
    public static final AdSelectionManager obtain(@NotNull Context context) {
        return INSTANCE.obtain(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @Nullable
    public abstract Object reportImpression(@NotNull ReportImpressionRequest reportImpressionRequest, @NotNull Continuation<? super Unit> continuation);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @Nullable
    public abstract Object selectAds(@NotNull AdSelectionConfig adSelectionConfig, @NotNull Continuation<? super AdSelectionOutcome> continuation);

    @Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0003\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000eH\u0002J\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J*\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00162\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000e0\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\n\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0019\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0019H\u0097@ø\u0001\u0000¢\u0006\u0002\u0010!J\u0019\u0010\"\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020\u000bH\u0097@ø\u0001\u0000¢\u0006\u0002\u0010$J\u0019\u0010%\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\tH\u0083@ø\u0001\u0000¢\u0006\u0002\u0010&R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "mAdSelectionManager", "Landroid/adservices/adselection/AdSelectionManager;", "(Landroid/adservices/adselection/AdSelectionManager;)V", "convertAdSelectionConfig", "Landroid/adservices/adselection/AdSelectionConfig;", "request", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;", "convertAdSelectionSignals", "Landroid/adservices/common/AdSelectionSignals;", "Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;", "convertBuyers", "", "Landroid/adservices/common/AdTechIdentifier;", "buyers", "", "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;", "convertPerBuyerSignals", "", "convertReportImpressionRequest", "Landroid/adservices/adselection/ReportImpressionRequest;", "Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;", "convertResponse", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;", "response", "Landroid/adservices/adselection/AdSelectionOutcome;", "reportImpression", "", "reportImpressionRequest", "(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "selectAds", "adSelectionConfig", "(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "selectAdsInternal", "(Landroid/adservices/adselection/AdSelectionConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @RequiresExtension(extension = DurationKt.NANOS_IN_MILLIS, version = 4)
    @SourceDebugExtension({"SMAP\nAdSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSelectionManager.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,199:1\n314#2,11:200\n314#2,11:211\n*S KotlinDebug\n*F\n+ 1 AdSelectionManager.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl\n*L\n98#1:200,11\n162#1:211,11\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api33Ext4Impl extends AdSelectionManager {

        @NotNull
        private final android.adservices.adselection.AdSelectionManager mAdSelectionManager;

        public Api33Ext4Impl(@NotNull android.adservices.adselection.AdSelectionManager mAdSelectionManager) {
            Intrinsics.checkNotNullParameter(mAdSelectionManager, "mAdSelectionManager");
            this.mAdSelectionManager = mAdSelectionManager;
        }

        private final android.adservices.adselection.AdSelectionConfig convertAdSelectionConfig(AdSelectionConfig request) {
            AdSelectionConfig.Builder adSelectionSignals;
            AdSelectionConfig.Builder customAudienceBuyers;
            AdSelectionConfig.Builder decisionLogicUri;
            AdTechIdentifier fromString;
            AdSelectionConfig.Builder seller;
            AdSelectionConfig.Builder perBuyerSignals;
            AdSelectionConfig.Builder sellerSignals;
            AdSelectionConfig.Builder trustedScoringSignalsUri;
            android.adservices.adselection.AdSelectionConfig build;
            adSelectionSignals = AbstractC0367xe1f61061.m2959x75d576dc().setAdSelectionSignals(convertAdSelectionSignals(request.getAdSelectionSignals()));
            customAudienceBuyers = adSelectionSignals.setCustomAudienceBuyers(convertBuyers(request.getCustomAudienceBuyers()));
            decisionLogicUri = customAudienceBuyers.setDecisionLogicUri(request.getDecisionLogicUri());
            fromString = AdTechIdentifier.fromString(request.getSeller().getIdentifier());
            seller = decisionLogicUri.setSeller(fromString);
            perBuyerSignals = seller.setPerBuyerSignals(convertPerBuyerSignals(request.getPerBuyerSignals()));
            sellerSignals = perBuyerSignals.setSellerSignals(convertAdSelectionSignals(request.getSellerSignals()));
            trustedScoringSignalsUri = sellerSignals.setTrustedScoringSignalsUri(request.getTrustedScoringSignalsUri());
            build = trustedScoringSignalsUri.build();
            Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …\n                .build()");
            return build;
        }

        private final AdSelectionSignals convertAdSelectionSignals(androidx.privacysandbox.ads.adservices.common.AdSelectionSignals request) {
            AdSelectionSignals fromString;
            fromString = AdSelectionSignals.fromString(request.getSignals());
            Intrinsics.checkNotNullExpressionValue(fromString, "fromString(request.signals)");
            return fromString;
        }

        private final List<AdTechIdentifier> convertBuyers(List<androidx.privacysandbox.ads.adservices.common.AdTechIdentifier> buyers) {
            AdTechIdentifier fromString;
            ArrayList arrayList = new ArrayList();
            Iterator<androidx.privacysandbox.ads.adservices.common.AdTechIdentifier> it = buyers.iterator();
            while (it.hasNext()) {
                fromString = AdTechIdentifier.fromString(it.next().getIdentifier());
                Intrinsics.checkNotNullExpressionValue(fromString, "fromString(buyer.identifier)");
                arrayList.add(fromString);
            }
            return arrayList;
        }

        private final Map<AdTechIdentifier, AdSelectionSignals> convertPerBuyerSignals(Map<androidx.privacysandbox.ads.adservices.common.AdTechIdentifier, androidx.privacysandbox.ads.adservices.common.AdSelectionSignals> request) {
            AdTechIdentifier fromString;
            AdSelectionSignals adSelectionSignals;
            HashMap hashMap = new HashMap();
            for (androidx.privacysandbox.ads.adservices.common.AdTechIdentifier adTechIdentifier : request.keySet()) {
                fromString = AdTechIdentifier.fromString(adTechIdentifier.getIdentifier());
                Intrinsics.checkNotNullExpressionValue(fromString, "fromString(key.identifier)");
                if (request.get(adTechIdentifier) != null) {
                    androidx.privacysandbox.ads.adservices.common.AdSelectionSignals adSelectionSignals2 = request.get(adTechIdentifier);
                    Intrinsics.checkNotNull(adSelectionSignals2);
                    adSelectionSignals = convertAdSelectionSignals(adSelectionSignals2);
                } else {
                    adSelectionSignals = null;
                }
                hashMap.put(fromString, adSelectionSignals);
            }
            return hashMap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final android.adservices.adselection.ReportImpressionRequest convertReportImpressionRequest(ReportImpressionRequest request) {
            AbstractC0367xe1f61061.m2976xe28a696a();
            return AbstractC0367xe1f61061.m2968x8c6fc18a(request.getAdSelectionId(), convertAdSelectionConfig(request.getAdSelectionConfig()));
        }

        private final AdSelectionOutcome convertResponse(android.adservices.adselection.AdSelectionOutcome response) {
            long adSelectionId;
            Uri renderUri;
            adSelectionId = response.getAdSelectionId();
            renderUri = response.getRenderUri();
            Intrinsics.checkNotNullExpressionValue(renderUri, "response.renderUri");
            return new AdSelectionOutcome(adSelectionId, renderUri);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        public final Object selectAdsInternal(android.adservices.adselection.AdSelectionConfig adSelectionConfig, Continuation<? super android.adservices.adselection.AdSelectionOutcome> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.mAdSelectionManager.selectAds(adSelectionConfig, new ExecutorC0393xf3cb0c93(0), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        }

        @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @Nullable
        public Object reportImpression(@NotNull ReportImpressionRequest reportImpressionRequest, @NotNull Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.mAdSelectionManager.reportImpression(convertReportImpressionRequest(reportImpressionRequest), new ExecutorC0393xf3cb0c93(0), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                return result;
            }
            return Unit.INSTANCE;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object selectAds(@NotNull AdSelectionConfig adSelectionConfig, @NotNull Continuation<? super AdSelectionOutcome> continuation) {
            AdSelectionManager$Api33Ext4Impl$selectAds$1 adSelectionManager$Api33Ext4Impl$selectAds$1;
            int i;
            Api33Ext4Impl api33Ext4Impl;
            if (continuation instanceof AdSelectionManager$Api33Ext4Impl$selectAds$1) {
                adSelectionManager$Api33Ext4Impl$selectAds$1 = (AdSelectionManager$Api33Ext4Impl$selectAds$1) continuation;
                int i2 = adSelectionManager$Api33Ext4Impl$selectAds$1.label;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    adSelectionManager$Api33Ext4Impl$selectAds$1.label = i2 - Integer.MIN_VALUE;
                    Object obj = adSelectionManager$Api33Ext4Impl$selectAds$1.result;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = adSelectionManager$Api33Ext4Impl$selectAds$1.label;
                    if (i == 0) {
                        if (i == 1) {
                            api33Ext4Impl = (Api33Ext4Impl) adSelectionManager$Api33Ext4Impl$selectAds$1.L$0;
                            ResultKt.throwOnFailure(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        ResultKt.throwOnFailure(obj);
                        android.adservices.adselection.AdSelectionConfig convertAdSelectionConfig = convertAdSelectionConfig(adSelectionConfig);
                        adSelectionManager$Api33Ext4Impl$selectAds$1.L$0 = this;
                        adSelectionManager$Api33Ext4Impl$selectAds$1.label = 1;
                        obj = selectAdsInternal(convertAdSelectionConfig, adSelectionManager$Api33Ext4Impl$selectAds$1);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        api33Ext4Impl = this;
                    }
                    return api33Ext4Impl.convertResponse(AbstractC0367xe1f61061.m2967xd2bcb0cf(obj));
                }
            }
            adSelectionManager$Api33Ext4Impl$selectAds$1 = new AdSelectionManager$Api33Ext4Impl$selectAds$1(this, continuation);
            Object obj2 = adSelectionManager$Api33Ext4Impl$selectAds$1.result;
            Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
            i = adSelectionManager$Api33Ext4Impl$selectAds$1.label;
            if (i == 0) {
            }
            return api33Ext4Impl.convertResponse(AbstractC0367xe1f61061.m2967xd2bcb0cf(obj2));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Api33Ext4Impl(@NotNull Context context) {
            this(AbstractC0367xe1f61061.m2966x1db10c9d(r2));
            Object systemService;
            Intrinsics.checkNotNullParameter(context, "context");
            systemService = context.getSystemService((Class<Object>) AbstractC0367xe1f61061.m2984x742e2fda());
            Intrinsics.checkNotNullExpressionValue(systemService, "context.getSystemService…:class.java\n            )");
        }
    }
}
