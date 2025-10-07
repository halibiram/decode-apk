package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.FlowExceptions_commonKt;

/* renamed from: 듌도땜딸듽땣땩듻땮돰딸드뒾둬땍땩땀돨뎠땬뒻땥따딹딽둣딽땐될돴딎땥듨딄뒼딜돳듸땋딄됐딝뎬뒋땡둑둔듻딟디돝땐된딄뎠뒤듻도듐딐땹땲딁딨땫딠들땸딀뒙될딀둘땋돤둑디딜뒬둣뒉들땵뎠뎡뒘딜땫땱땣뎠딃돷딄돨둡듬뒛뎨땰딌뒈땬땡땅뎽뒈둘되땸딞땱둑땲되땵되뎹듬듨도딎딀뎸뎠듰둘뒷뒉땡, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract /* synthetic */ class AbstractC0791xac9fa430 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m3352xfbe0c504(FlowCollector flowCollector, Object obj, Object obj2, ContinuationImpl continuationImpl) {
        C0787x494b09b c0787x494b09b;
        int i;
        if (continuationImpl instanceof C0787x494b09b) {
            C0787x494b09b c0787x494b09b2 = (C0787x494b09b) continuationImpl;
            int i2 = c0787x494b09b2.f4783x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0787x494b09b2.f4783x1378447b = i2 - Integer.MIN_VALUE;
                c0787x494b09b = c0787x494b09b2;
                Object obj3 = c0787x494b09b.f4782x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0787x494b09b.f4783x1378447b;
                if (i == 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    obj2 = c0787x494b09b.f4781xfbe0c504;
                    ResultKt.throwOnFailure(obj3);
                } else {
                    ResultKt.throwOnFailure(obj3);
                    c0787x494b09b.f4781xfbe0c504 = obj2;
                    c0787x494b09b.f4783x1378447b = 1;
                    if (flowCollector.emit(obj, c0787x494b09b) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                throw new AbortFlowException(obj2);
            }
        }
        c0787x494b09b = new ContinuationImpl(continuationImpl);
        Object obj32 = c0787x494b09b.f4782x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0787x494b09b.f4783x1378447b;
        if (i == 0) {
        }
        throw new AbortFlowException(obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m3353x3271d0aa(Flow flow, Function2 function2, Continuation continuation) {
        C0782xb9510e73 c0782xb9510e73;
        int i;
        FlowKt__LimitKt$collectWhile$collector$1 flowKt__LimitKt$collectWhile$collector$1;
        if (continuation instanceof C0782xb9510e73) {
            C0782xb9510e73 c0782xb9510e732 = (C0782xb9510e73) continuation;
            int i2 = c0782xb9510e732.f4766x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0782xb9510e732.f4766x1378447b = i2 - Integer.MIN_VALUE;
                c0782xb9510e73 = c0782xb9510e732;
                Object obj = c0782xb9510e73.f4765x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0782xb9510e73.f4766x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        flowKt__LimitKt$collectWhile$collector$1 = c0782xb9510e73.f4764xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (AbortFlowException e) {
                            e = e;
                            FlowExceptions_commonKt.checkOwnership(e, flowKt__LimitKt$collectWhile$collector$1);
                            JobKt.ensureActive(c0782xb9510e73.getContext());
                            return Unit.INSTANCE;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    FlowKt__LimitKt$collectWhile$collector$1 flowKt__LimitKt$collectWhile$collector$12 = new FlowKt__LimitKt$collectWhile$collector$1(function2);
                    try {
                        c0782xb9510e73.f4764xfbe0c504 = flowKt__LimitKt$collectWhile$collector$12;
                        c0782xb9510e73.f4766x1378447b = 1;
                        if (flow.collect(flowKt__LimitKt$collectWhile$collector$12, c0782xb9510e73) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } catch (AbortFlowException e2) {
                        e = e2;
                        flowKt__LimitKt$collectWhile$collector$1 = flowKt__LimitKt$collectWhile$collector$12;
                        FlowExceptions_commonKt.checkOwnership(e, flowKt__LimitKt$collectWhile$collector$1);
                        JobKt.ensureActive(c0782xb9510e73.getContext());
                        return Unit.INSTANCE;
                    }
                }
                return Unit.INSTANCE;
            }
        }
        c0782xb9510e73 = new ContinuationImpl(continuation);
        Object obj2 = c0782xb9510e73.f4765x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0782xb9510e73.f4766x1378447b;
        if (i == 0) {
        }
        return Unit.INSTANCE;
    }
}
