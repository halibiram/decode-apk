package defpackage;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SubscribedFlowCollector;

/* renamed from: 땧득뒘땍땍된딃될듻돨뒻땹뒹땬땯뎹땬될돰됐뒘됴땲땁딌땯딄돰따둣땸땳딅뎡뒝듬뒵딅듸땸딌돴둠땃딁땻됴뎸됩땋들뒛뒵뎹득디됫딤듨듰둠뎸딞딄딜땫딜땰뒐딸둥땄땸된듰땃듬뒀듸땨따돨땦땁뒀듔뎨뒛땀땧듼땸뒷땜딟딜돤딹뎨땩땱땔땳땵디딀드듸됫뒀뎻돸뒈둘땧뒋땲딎뒈땬뒐땃돛드땮땥따땲돷둔, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1205xd26b6b49 implements SharedFlow {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final SharedFlow f5605xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Function2 f5606x3271d0aa;

    public C1205xd26b6b49(SharedFlow sharedFlow, Function2 function2) {
        this.f5605xfbe0c504 = sharedFlow;
        this.f5606x3271d0aa = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        C1204x25ae772c c1204x25ae772c;
        int i;
        if (continuation instanceof C1204x25ae772c) {
            c1204x25ae772c = (C1204x25ae772c) continuation;
            int i2 = c1204x25ae772c.f5604x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c1204x25ae772c.f5604x1378447b = i2 - Integer.MIN_VALUE;
                Object obj = c1204x25ae772c.f5602xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c1204x25ae772c.f5604x1378447b;
                if (i == 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                } else {
                    ResultKt.throwOnFailure(obj);
                    SubscribedFlowCollector subscribedFlowCollector = new SubscribedFlowCollector(flowCollector, this.f5606x3271d0aa);
                    c1204x25ae772c.f5604x1378447b = 1;
                    if (this.f5605xfbe0c504.collect(subscribedFlowCollector, c1204x25ae772c) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                throw new KotlinNothingValueException();
            }
        }
        c1204x25ae772c = new C1204x25ae772c(this, continuation);
        Object obj2 = c1204x25ae772c.f5602xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c1204x25ae772c.f5604x1378447b;
        if (i == 0) {
        }
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    public final List getReplayCache() {
        return this.f5605xfbe0c504.getReplayCache();
    }
}
