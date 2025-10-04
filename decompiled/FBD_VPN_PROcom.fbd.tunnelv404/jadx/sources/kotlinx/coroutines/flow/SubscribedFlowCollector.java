package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0892xc141c517;
import defpackage.C1203xe6223a58;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.SafeCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BD\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012-\u0010\t\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0006H\u0086@¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00028\u0000H\u0096A¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/flow/SubscribedFlowCollector;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "action", "<init>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V", "onSubscription", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,429:1\n375#2:430\n*S KotlinDebug\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n*L\n420#1:430\n*E\n"})
/* loaded from: classes3.dex */
public final class SubscribedFlowCollector<T> implements FlowCollector<T> {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final FlowCollector f2349xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Function2 f2350x3271d0aa;

    public SubscribedFlowCollector(@NotNull FlowCollector<? super T> flowCollector, @NotNull Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f2349xfbe0c504 = flowCollector;
        this.f2350x3271d0aa = function2;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    @Nullable
    public Object emit(T t, @NotNull Continuation<? super Unit> continuation) {
        return this.f2349xfbe0c504.emit(t, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.internal.SafeCollector] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object onSubscription(@NotNull Continuation<? super Unit> continuation) {
        C1203xe6223a58 c1203xe6223a58;
        ?? r2;
        SafeCollector safeCollector;
        SubscribedFlowCollector<T> subscribedFlowCollector;
        try {
            if (continuation instanceof C1203xe6223a58) {
                c1203xe6223a58 = (C1203xe6223a58) continuation;
                int i = c1203xe6223a58.f5601x9738a56c;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c1203xe6223a58.f5601x9738a56c = i - Integer.MIN_VALUE;
                    Object obj = c1203xe6223a58.f5599x1378447b;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    r2 = c1203xe6223a58.f5601x9738a56c;
                    if (r2 == 0) {
                        if (r2 != 1) {
                            if (r2 == 2) {
                                ResultKt.throwOnFailure(obj);
                                return Unit.INSTANCE;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        safeCollector = c1203xe6223a58.f5598x3271d0aa;
                        subscribedFlowCollector = c1203xe6223a58.f5597xfbe0c504;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        ResultKt.throwOnFailure(obj);
                        safeCollector = new SafeCollector(this.f2349xfbe0c504, c1203xe6223a58.getF1168xfbe0c504());
                        Function2 function2 = this.f2350x3271d0aa;
                        c1203xe6223a58.f5597xfbe0c504 = this;
                        c1203xe6223a58.f5598x3271d0aa = safeCollector;
                        c1203xe6223a58.f5601x9738a56c = 1;
                        if (function2.invoke(safeCollector, c1203xe6223a58) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        subscribedFlowCollector = this;
                    }
                    safeCollector.releaseIntercepted();
                    FlowCollector flowCollector = subscribedFlowCollector.f2349xfbe0c504;
                    r2 = flowCollector instanceof SubscribedFlowCollector;
                    if (r2 == 0) {
                        c1203xe6223a58.f5597xfbe0c504 = null;
                        c1203xe6223a58.f5598x3271d0aa = null;
                        c1203xe6223a58.f5601x9738a56c = 2;
                        if (((SubscribedFlowCollector) flowCollector).onSubscription(c1203xe6223a58) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    return Unit.INSTANCE;
                }
            }
            if (r2 == 0) {
            }
            safeCollector.releaseIntercepted();
            FlowCollector flowCollector2 = subscribedFlowCollector.f2349xfbe0c504;
            r2 = flowCollector2 instanceof SubscribedFlowCollector;
            if (r2 == 0) {
            }
        } catch (Throwable th) {
            r2.releaseIntercepted();
            throw th;
        }
        c1203xe6223a58 = new C1203xe6223a58(this, continuation);
        Object obj2 = c1203xe6223a58.f5599x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        r2 = c1203xe6223a58.f5601x9738a56c;
    }
}
