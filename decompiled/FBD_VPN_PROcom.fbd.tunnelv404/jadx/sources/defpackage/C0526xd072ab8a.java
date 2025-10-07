package defpackage;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* renamed from: 돸뒙뎸땫돼딻된뎡뒘딃뒉둔땰듐돠돼딠됐뎰뎨딄뒼땃뎹뎸둥땔듸듸뒛땬땪뒈딎둡돤뒉딨뒋돳뒨듰뒈됴듟땡땤딤둡땁땡딟땮뒼딄돶땡딽땳딠땋될땻디두듽뎹든땹돳딟땹땝돼땹뒨돸딌두듸땰딨뒛되뒀둬뒷따땔되듬땩땋돰두뎽뒹따땫득딐땀땱딄뒨딌땫딨될땫돶듰땋들딞둬듰되딌돛뒉돷듔땡돨땬딄뒋뎡뒉, reason: contains not printable characters */
/* loaded from: classes3.dex */
public class C0526xd072ab8a extends ChannelFlow {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Function2 f4045xfbe0c504;

    public C0526xd072ab8a(Function2 function2, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.f4045xfbe0c504 = function2;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Object collectTo(ProducerScope producerScope, Continuation continuation) {
        Object invoke = this.f4045xfbe0c504.invoke(producerScope, continuation);
        if (invoke != AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return Unit.INSTANCE;
        }
        return invoke;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow create(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new C0526xd072ab8a(this.f4045xfbe0c504, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final String toString() {
        return "block[" + this.f4045xfbe0c504 + "] -> " + super.toString();
    }
}
