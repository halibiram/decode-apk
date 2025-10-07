package defpackage;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 땍둥딄뒐땯뒻땹뒨돨땮뎹땸뒾돵땰듼딤뒝땍돰뎰뒻뒬땁땃딎디듟땮듟들딤딞땡돝뒝딝뒐딽땀뎽들땡딁둠될뎠딻뎠뒼땰땻듰땨뒀듼뎻딎뒷뒀뒤땮딐뒙땮듻뎻됐뎬뎻땨뒹딻땮뒹뒝돤땳딻뎠땹뒾딄뒻땻돳딄듌딌뒉땔뎡뒾땯뒬뒛둡뒝되뒋딄돠둣뎹뒝디땋땀듟둔뒵뒹땹둔땔뎨땔땟땣땮뒛땬뒻뒙뒵땋돨뒨땱땩, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1104x20f43faa extends AbstractFlow {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Function2 f5399xfbe0c504;

    public C1104x20f43faa(Function2 function2) {
        this.f5399xfbe0c504 = function2;
    }

    @Override // kotlinx.coroutines.flow.AbstractFlow
    public final Object collectSafely(FlowCollector flowCollector, Continuation continuation) {
        Object invoke = this.f5399xfbe0c504.invoke(flowCollector, continuation);
        if (invoke == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return invoke;
        }
        return Unit.INSTANCE;
    }
}
