package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.SendingCollector;
import kotlinx.coroutines.sync.Semaphore;

/* renamed from: 돸듨돸따듸돼둣딻둬뒬돷듰땩뎨돳땋땸뒛돷땪따뎬뒋딨땃땰딎땧뒷돼뒝둥둣땨뒼딝뒵땭두땜딽뎰뒘뎠딝뒵뒨땋뒝땜됫땜뒵땲뎰둥땫돶딐땣딸땳뒙땟땯뒐듌뒙디득둡돰땫땝둥뒬됩득땭땜듸돶땻땱든둥땡뒼뒛될땍둔딜뎠듸땐뎽듬딹딎뎻딄디땡디뒛땝듰뒻땀땪딽듰두딞될돴돼둣딀뒬뒨디듻듬뎡뎸땮땜돵, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0529xeb6df70f implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Job f4055xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Semaphore f4056x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ ProducerScope f4057x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ SendingCollector f4058x75d576dc;

    public C0529xeb6df70f(Job job, Semaphore semaphore, ProducerScope producerScope, SendingCollector sendingCollector) {
        this.f4055xfbe0c504 = job;
        this.f4056x3271d0aa = semaphore;
        this.f4057x1378447b = producerScope;
        this.f4058x75d576dc = sendingCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Flow flow, Continuation continuation) {
        C0528x15803a4b c0528x15803a4b;
        int i;
        C0529xeb6df70f c0529xeb6df70f;
        if (continuation instanceof C0528x15803a4b) {
            c0528x15803a4b = (C0528x15803a4b) continuation;
            int i2 = c0528x15803a4b.f4054x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0528x15803a4b.f4054x9738a56c = i2 - Integer.MIN_VALUE;
                Object obj = c0528x15803a4b.f4052x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0528x15803a4b.f4054x9738a56c;
                if (i == 0) {
                    if (i == 1) {
                        flow = c0528x15803a4b.f4051x3271d0aa;
                        c0529xeb6df70f = c0528x15803a4b.f4050xfbe0c504;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    Job job = this.f4055xfbe0c504;
                    if (job != null) {
                        JobKt.ensureActive(job);
                    }
                    c0528x15803a4b.f4050xfbe0c504 = this;
                    c0528x15803a4b.f4051x3271d0aa = flow;
                    c0528x15803a4b.f4054x9738a56c = 1;
                    if (this.f4056x3271d0aa.acquire(c0528x15803a4b) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    c0529xeb6df70f = this;
                }
                BuildersKt.launch$default(c0529xeb6df70f.f4057x1378447b, null, null, new C0527x9ffafc2a(flow, c0529xeb6df70f.f4058x75d576dc, c0529xeb6df70f.f4056x3271d0aa, null), 3, null);
                return Unit.INSTANCE;
            }
        }
        c0528x15803a4b = new C0528x15803a4b(this, continuation);
        Object obj2 = c0528x15803a4b.f4052x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0528x15803a4b.f4054x9738a56c;
        if (i == 0) {
        }
        BuildersKt.launch$default(c0529xeb6df70f.f4057x1378447b, null, null, new C0527x9ffafc2a(flow, c0529xeb6df70f.f4058x75d576dc, c0529xeb6df70f.f4056x3271d0aa, null), 3, null);
        return Unit.INSTANCE;
    }
}
