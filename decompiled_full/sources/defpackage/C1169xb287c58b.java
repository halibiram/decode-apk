package defpackage;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;

/* renamed from: 땡듨듻딝둑될딃땻뒛돼듸듽둠둬뒷딎뒋둣땭돵딜듻땸땰딎뎸뒙돰땪딸따돷뒬딽땻뎽땔땳들돰돼득땝딃뒹뒋따땧뒹디돼뒷듽땮둡뎨땐뒛뒐땄뎻뎰드딸뒈땁딁듸뒵돠뒷돨돸둔딜듨된딠땁든듽돤딻땸뎠뎬뒈둬땫딟돵딽딎돴뒘될뎸듽땮땩뒼딠땯둑둬뒬땋딠땁뎻딐딅땯땮돨둡뒈됴듨됩땀될땫뒹땨뒨돛땃돶땵, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1169xb287c58b implements Continuation, CoroutineStackFrame {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Continuation f5539xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final CoroutineContext f5540x3271d0aa;

    public C1169xb287c58b(Continuation continuation, CoroutineContext coroutineContext) {
        this.f5539xfbe0c504 = continuation;
        this.f5540x3271d0aa = coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f5539xfbe0c504;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.f5540x3271d0aa;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    /* renamed from: getStackTraceElement */
    public final StackTraceElement getF1904x3271d0aa() {
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        this.f5539xfbe0c504.resumeWith(obj);
    }
}
