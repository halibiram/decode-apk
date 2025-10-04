package defpackage;

import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.CancellableFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.FusibleFlow;

/* renamed from: 땁뒾땀돛뒈됩듰뒋돤땄됴딞땰땃뒘딁딌뒨뎨땃듟돴뒘땤땝뒾땀뎹땤땣딅두땡딟딹듟들됐되땦듟딟땩땮듽듻딁되돠둠뎹뒾둠뒀됐땭딞땭들둣딎돤뒝딜딌듰딟돰뒐딁듬땁둥듼뒝듽땟뒙땲돝든됴도뒝땰듻뎨딐뒐듬딤땤듽땹뒷둥땻뒐뒵듐듟둣딝뒙땦땁뒷딹뒵딅되땰땀뒾땭뒾땍되딄뒷듽두딞땧땸딹뒾됐땀땳, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1066xeb0e2234 implements StateFlow, CancellableFlow, FusibleFlow {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ MutableStateFlow f5326xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Job f5327x3271d0aa;

    public C1066xeb0e2234(MutableStateFlow mutableStateFlow, Job job) {
        this.f5326xfbe0c504 = mutableStateFlow;
        this.f5327x3271d0aa = job;
    }

    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        return this.f5326xfbe0c504.collect(flowCollector, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow fuse(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return StateFlowKt.fuseStateFlow(this, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    public final List getReplayCache() {
        return this.f5326xfbe0c504.getReplayCache();
    }

    @Override // kotlinx.coroutines.flow.StateFlow
    public final Object getValue() {
        return this.f5326xfbe0c504.getValue();
    }
}
