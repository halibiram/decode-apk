package androidx.privacysandbox.ads.adservices.topics;

import android.adservices.topics.GetTopicsRequest;
import android.annotation.SuppressLint;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.os.OutcomeReceiverKt;
import defpackage.AbstractC0892xc141c517;
import defpackage.AbstractC0978x12d89da;
import defpackage.ExecutorC0393xf3cb0c93;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.DurationKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0010¢\u0006\u0002\b\tJ\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0000¢\u0006\u0002\b\u000eJ\u0019\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\bH\u0097@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0006H\u0083@ø\u0001\u0000¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;", "Landroidx/privacysandbox/ads/adservices/topics/TopicsManager;", "mTopicsManager", "Landroid/adservices/topics/TopicsManager;", "(Landroid/adservices/topics/TopicsManager;)V", "convertRequest", "Landroid/adservices/topics/GetTopicsRequest;", "request", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;", "convertRequest$ads_adservices_release", "convertResponse", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;", "response", "Landroid/adservices/topics/GetTopicsResponse;", "convertResponse$ads_adservices_release", "getTopics", "(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTopicsAsyncInternal", "getTopicsRequest", "(Landroid/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"NewApi"})
@RequiresExtension(extension = DurationKt.NANOS_IN_MILLIS, version = 4)
@RestrictTo({RestrictTo.Scope.LIBRARY})
@SourceDebugExtension({"SMAP\nTopicsManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicsManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,54:1\n314#2,11:55\n*S KotlinDebug\n*F\n+ 1 TopicsManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon\n*L\n28#1:55,11\n*E\n"})
/* loaded from: classes.dex */
public class TopicsManagerImplCommon extends TopicsManager {

    @NotNull
    private final android.adservices.topics.TopicsManager mTopicsManager;

    public TopicsManagerImplCommon(@NotNull android.adservices.topics.TopicsManager mTopicsManager) {
        Intrinsics.checkNotNullParameter(mTopicsManager, "mTopicsManager");
        this.mTopicsManager = mTopicsManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
    @DoNotInline
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object getTopics$suspendImpl(TopicsManagerImplCommon topicsManagerImplCommon, GetTopicsRequest getTopicsRequest, Continuation<? super GetTopicsResponse> continuation) {
        TopicsManagerImplCommon$getTopics$1 topicsManagerImplCommon$getTopics$1;
        int i;
        if (continuation instanceof TopicsManagerImplCommon$getTopics$1) {
            topicsManagerImplCommon$getTopics$1 = (TopicsManagerImplCommon$getTopics$1) continuation;
            int i2 = topicsManagerImplCommon$getTopics$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                topicsManagerImplCommon$getTopics$1.label = i2 - Integer.MIN_VALUE;
                Object obj = topicsManagerImplCommon$getTopics$1.result;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = topicsManagerImplCommon$getTopics$1.label;
                if (i == 0) {
                    if (i == 1) {
                        topicsManagerImplCommon = (TopicsManagerImplCommon) topicsManagerImplCommon$getTopics$1.L$0;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    android.adservices.topics.GetTopicsRequest convertRequest$ads_adservices_release = topicsManagerImplCommon.convertRequest$ads_adservices_release(getTopicsRequest);
                    topicsManagerImplCommon$getTopics$1.L$0 = topicsManagerImplCommon;
                    topicsManagerImplCommon$getTopics$1.label = 1;
                    obj = topicsManagerImplCommon.getTopicsAsyncInternal(convertRequest$ads_adservices_release, topicsManagerImplCommon$getTopics$1);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return topicsManagerImplCommon.convertResponse$ads_adservices_release(AbstractC0978x12d89da.m3539xab142723(obj));
            }
        }
        topicsManagerImplCommon$getTopics$1 = new TopicsManagerImplCommon$getTopics$1(topicsManagerImplCommon, continuation);
        Object obj2 = topicsManagerImplCommon$getTopics$1.result;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = topicsManagerImplCommon$getTopics$1.label;
        if (i == 0) {
        }
        return topicsManagerImplCommon.convertResponse$ads_adservices_release(AbstractC0978x12d89da.m3539xab142723(obj2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
    public final Object getTopicsAsyncInternal(android.adservices.topics.GetTopicsRequest getTopicsRequest, Continuation<? super android.adservices.topics.GetTopicsResponse> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        this.mTopicsManager.getTopics(getTopicsRequest, new ExecutorC0393xf3cb0c93(0), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @NotNull
    public android.adservices.topics.GetTopicsRequest convertRequest$ads_adservices_release(@NotNull GetTopicsRequest request) {
        GetTopicsRequest.Builder adsSdkName;
        android.adservices.topics.GetTopicsRequest build;
        Intrinsics.checkNotNullParameter(request, "request");
        adsSdkName = AbstractC0978x12d89da.m3535x1db10c9d().setAdsSdkName(request.getAdsSdkName());
        build = adsSdkName.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…ame)\n            .build()");
        return build;
    }

    @NotNull
    public final GetTopicsResponse convertResponse$ads_adservices_release(@NotNull android.adservices.topics.GetTopicsResponse response) {
        List topics;
        long taxonomyVersion;
        long modelVersion;
        int topicId;
        Intrinsics.checkNotNullParameter(response, "response");
        ArrayList arrayList = new ArrayList();
        topics = response.getTopics();
        Iterator it = topics.iterator();
        while (it.hasNext()) {
            android.adservices.topics.Topic m3540x85f0360e = AbstractC0978x12d89da.m3540x85f0360e(it.next());
            taxonomyVersion = m3540x85f0360e.getTaxonomyVersion();
            modelVersion = m3540x85f0360e.getModelVersion();
            topicId = m3540x85f0360e.getTopicId();
            arrayList.add(new Topic(taxonomyVersion, modelVersion, topicId));
        }
        return new GetTopicsResponse(arrayList);
    }

    @Override // androidx.privacysandbox.ads.adservices.topics.TopicsManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
    @DoNotInline
    @Nullable
    public Object getTopics(@NotNull GetTopicsRequest getTopicsRequest, @NotNull Continuation<? super GetTopicsResponse> continuation) {
        return getTopics$suspendImpl(this, getTopicsRequest, continuation);
    }
}
