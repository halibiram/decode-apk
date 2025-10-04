package defpackage;

import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.ChannelFlowKt;
import kotlinx.coroutines.flow.internal.FlowExceptions_commonKt;
import kotlinx.coroutines.internal.ThreadContextKt;

/* renamed from: 둔듸땍됐뒨땯땄땰땨됐딞땻딜땹땀딽땐뒤땐득땩딃뎬디딜땮뒹둠딻뒀땯땔땮땁되듐되되땻둬뎬땐땳땹땥둬땠뎻돷듬딅따두둥들돰딐두딎돼돵땦딎딌땪딄딤땔딸땣뒹뎸뒼땪땻땠뎸땳땱득땻뒘땍땔듟땅땡둣뒵둠됫딻땜둠된돛두땸뒷땱딐딠돳땮딌땋듼드든듔둡뎠뒾듬딝된딟뎬둣듬땲되딌땁뒋돛딻뎽뎻뎻, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0607x13a1eeec extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public CompletableJob f4355xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f4356x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public /* synthetic */ Object f4357x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ Flow f4358x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final /* synthetic */ Flow f4359x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4360x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final /* synthetic */ Function3 f4361x34271fae;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0607x13a1eeec(Flow flow, Flow flow2, FlowCollector flowCollector, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.f4358x75d576dc = flow;
        this.f4359x9738a56c = flow2;
        this.f4360x9e171bf9 = flowCollector;
        this.f4361x34271fae = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0607x13a1eeec c0607x13a1eeec = new C0607x13a1eeec(this.f4358x75d576dc, this.f4359x9738a56c, this.f4360x9e171bf9, this.f4361x34271fae, continuation);
        c0607x13a1eeec.f4357x1378447b = obj;
        return c0607x13a1eeec;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0607x13a1eeec) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ReceiveChannel receiveChannel;
        CompletableJob completableJob;
        ReceiveChannel receiveChannel2;
        CompletableJob completableJob2;
        CoroutineContext plus;
        Unit unit;
        C0603xab9977c5 c0603xab9977c5;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f4356x3271d0aa;
        if (i != 0) {
            if (i == 1) {
                completableJob2 = this.f4355xfbe0c504;
                receiveChannel2 = (ReceiveChannel) this.f4357x1378447b;
                try {
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (AbortFlowException e) {
                        e = e;
                        FlowExceptions_commonKt.checkOwnership(e, completableJob2);
                        ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
                        return Unit.INSTANCE;
                    }
                } catch (Throwable th) {
                    th = th;
                    ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
                    throw th;
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.f4357x1378447b;
            ReceiveChannel produce$default = ProduceKt.produce$default(coroutineScope, null, 0, new C0606xa3fc72e6(this.f4358x75d576dc, null), 3, null);
            CompletableJob Job$default = JobKt.Job$default((Job) null, 1, (Object) null);
            Intrinsics.checkNotNull(produce$default, "null cannot be cast to non-null type kotlinx.coroutines.channels.SendChannel<*>");
            ((SendChannel) produce$default).invokeOnClose(new C0599x6b6bfac6(Job$default, 0));
            try {
                CoroutineContext coroutineContext = coroutineScope.getCoroutineContext();
                Object threadContextElements = ThreadContextKt.threadContextElements(coroutineContext);
                plus = coroutineScope.getCoroutineContext().plus(Job$default);
                unit = Unit.INSTANCE;
                c0603xab9977c5 = new C0603xab9977c5(this.f4359x9738a56c, coroutineContext, threadContextElements, produce$default, this.f4360x9e171bf9, this.f4361x34271fae, Job$default, null);
                this.f4357x1378447b = produce$default;
                this.f4355xfbe0c504 = Job$default;
                this.f4356x3271d0aa = 1;
                completableJob = Job$default;
                receiveChannel = produce$default;
            } catch (AbortFlowException e2) {
                e = e2;
                completableJob = Job$default;
                receiveChannel = produce$default;
            } catch (Throwable th2) {
                th = th2;
                receiveChannel = produce$default;
            }
            try {
                if (ChannelFlowKt.withContextUndispatched$default(plus, unit, null, c0603xab9977c5, this, 4, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                receiveChannel2 = receiveChannel;
            } catch (AbortFlowException e3) {
                e = e3;
                receiveChannel2 = receiveChannel;
                completableJob2 = completableJob;
                FlowExceptions_commonKt.checkOwnership(e, completableJob2);
                ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
                return Unit.INSTANCE;
            } catch (Throwable th3) {
                th = th3;
                receiveChannel2 = receiveChannel;
                ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
                throw th;
            }
        }
        ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
        return Unit.INSTANCE;
    }
}
