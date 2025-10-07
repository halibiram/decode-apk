package defpackage;

import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.ChildCancelledException;

/* renamed from: 돸땣돵땦딽두뒐딀돸든땁뒬뒨돰땟뒛뎽땐땁둡땫땭돵땀됩뎸땻딝둡뒤돛돨뒷됫땫둑딁딞뎽땔뒤돵땍땹딽뒘돳따둬뎨뒬땰땅땄돴땰뒹든뒹뒨뒷뎻땟딻땡됴뒙땹뎨땻둣돸뒛뒷딎땁땳뒼뒵딟땰딎돛땔됴땃둥땡됩디뒀돵딃돰돼둔딜뎡뒷땨둬뎸뎡땵돳둣든됐땋둣두뒘뒙듌뎻돶든뎨듐들뒹따뎸딀땃됴땡땃돷뎬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0533x92410c16 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Ref.ObjectRef f4072xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ CoroutineScope f4073x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ ChannelFlowTransformLatest f4074x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4075x75d576dc;

    public C0533x92410c16(Ref.ObjectRef objectRef, CoroutineScope coroutineScope, ChannelFlowTransformLatest channelFlowTransformLatest, FlowCollector flowCollector) {
        this.f4072xfbe0c504 = objectRef;
        this.f4073x3271d0aa = coroutineScope;
        this.f4074x1378447b = channelFlowTransformLatest;
        this.f4075x75d576dc = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r8v2, types: [T, kotlinx.coroutines.Job] */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0532xf1f7eb20 c0532xf1f7eb20;
        int i;
        C0533x92410c16 c0533x92410c16;
        if (continuation instanceof C0532xf1f7eb20) {
            c0532xf1f7eb20 = (C0532xf1f7eb20) continuation;
            int i2 = c0532xf1f7eb20.f4071x9e171bf9;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0532xf1f7eb20.f4071x9e171bf9 = i2 - Integer.MIN_VALUE;
                Object obj2 = c0532xf1f7eb20.f4069x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0532xf1f7eb20.f4071x9e171bf9;
                if (i == 0) {
                    if (i == 1) {
                        obj = c0532xf1f7eb20.f4067x3271d0aa;
                        c0533x92410c16 = c0532xf1f7eb20.f4066xfbe0c504;
                        ResultKt.throwOnFailure(obj2);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    Job job = (Job) this.f4072xfbe0c504.element;
                    if (job != null) {
                        job.cancel((CancellationException) new ChildCancelledException());
                        c0532xf1f7eb20.f4066xfbe0c504 = this;
                        c0532xf1f7eb20.f4067x3271d0aa = obj;
                        c0532xf1f7eb20.f4068x1378447b = job;
                        c0532xf1f7eb20.f4071x9e171bf9 = 1;
                        if (job.join(c0532xf1f7eb20) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    c0533x92410c16 = this;
                }
                c0533x92410c16.f4072xfbe0c504.element = BuildersKt.launch$default(c0533x92410c16.f4073x3271d0aa, null, CoroutineStart.UNDISPATCHED, new C0531x18f8fd5d(c0533x92410c16.f4074x1378447b, c0533x92410c16.f4075x75d576dc, obj, null), 1, null);
                return Unit.INSTANCE;
            }
        }
        c0532xf1f7eb20 = new C0532xf1f7eb20(this, continuation);
        Object obj22 = c0532xf1f7eb20.f4069x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0532xf1f7eb20.f4071x9e171bf9;
        if (i == 0) {
        }
        c0533x92410c16.f4072xfbe0c504.element = BuildersKt.launch$default(c0533x92410c16.f4073x3271d0aa, null, CoroutineStart.UNDISPATCHED, new C0531x18f8fd5d(c0533x92410c16.f4074x1378447b, c0533x92410c16.f4075x75d576dc, obj, null), 1, null);
        return Unit.INSTANCE;
    }
}
