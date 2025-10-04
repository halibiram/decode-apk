package defpackage;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.CancellableFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 돷될됩뎻뒉돰땦땟땻딟뒉뎹돛딄뎡듟딃땜돠땱뎸듟땧땀돤뒾뎡딁됐딅뒐듻뎬딤둔땡땮듌돼돶듼땔듻딹땄될듻돨듔둣땃돠둠될됨두됴딨딌딅두땮땸뎬됴뒈땜땲딀딄땟둘듨두듻뒬돶뒛둬뒹둑딅뒀뒷듌둡되둑돛뒋뒬돝도땦된됫돷땔딨땡뒘뒼땫뒤돝됫딌딝듽뒨됨땮딜땀돰땨뒼땃듨땡뒹땱듨땯뒈돳뎡뒼됨뒬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0516xfaf3b1ee implements CancellableFlow {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Flow f4023xfbe0c504;

    public C0516xfaf3b1ee(Flow flow) {
        this.f4023xfbe0c504 = flow;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        Object collect = this.f4023xfbe0c504.collect(new C0515x8dcf029e(flowCollector, 0), continuation);
        if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return collect;
        }
        return Unit.INSTANCE;
    }
}
