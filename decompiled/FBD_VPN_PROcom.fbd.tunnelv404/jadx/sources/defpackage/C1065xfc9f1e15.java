package defpackage;

import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.CancellableFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.internal.FusibleFlow;

/* renamed from: 땁돼돤돶뒤땪디땧땋땋됫디딄듔땜땳뎸뒻땦돤뎽됩땔따딅뒉땡듟따두땅뒛된된딅도땥들땪뒙될딌딌드돴뒛뎰뎹딞돸듐뒋딎돼땀득돷돶땥듸딠뒙듔땮땜땩땐돤땫돴뎽딄뒬뎰땜득돠땨됩듸돷둘땋땦뎬듔뒝땻땰딎딄뎻땯따딤뒷뎹돷뒐듸딄딝땨둠되둘된돛도딨뎹딄땲땔땯딝돴땡땰돷듽듻듨딨듻뒨둡듽되따, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1065xfc9f1e15 implements SharedFlow, CancellableFlow, FusibleFlow {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ MutableSharedFlow f5324xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Job f5325x3271d0aa;

    public C1065xfc9f1e15(MutableSharedFlow mutableSharedFlow, Job job) {
        this.f5324xfbe0c504 = mutableSharedFlow;
        this.f5325x3271d0aa = job;
    }

    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        return this.f5324xfbe0c504.collect(flowCollector, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow fuse(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return SharedFlowKt.fuseSharedFlow(this, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    public final List getReplayCache() {
        return this.f5324xfbe0c504.getReplayCache();
    }
}
