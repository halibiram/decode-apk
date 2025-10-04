package defpackage;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* renamed from: 듔딻뒹땵돸뒹땭딅듰뎨듬뎡땍됨된드뒘돰딟듼땬뒙땅돷땀든들뒘뒋뒨땨땜땋땟됨땯드땍땮듔땹든땹땀뒘땥딞됐딜뒘듌돤도뒷듌돰될땹뒋돤딌딁둘딟뎰뒀돵듟뎻땝돠땬뒈뒼딄따땭딠딜뒛됫뒷듰딹땭땫돠돵딜뒀돵딠딤듨듼땥땅뒘땥땪땻뒵땐뒋땩둣뒛땮뒈듐땭딟딟딝뒐듨돴득디돛둣돠땱돝땰뒝땫뒨드땜, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0814xacf4e140 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Ref.ObjectRef f4862xfbe0c504;

    public C0814xacf4e140(Ref.ObjectRef objectRef) {
        this.f4862xfbe0c504 = objectRef;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        Ref.ObjectRef objectRef = this.f4862xfbe0c504;
        if (objectRef.element == NullSurrogateKt.NULL) {
            objectRef.element = obj;
            return Unit.INSTANCE;
        }
        throw new IllegalArgumentException("Flow has more than one element");
    }
}
