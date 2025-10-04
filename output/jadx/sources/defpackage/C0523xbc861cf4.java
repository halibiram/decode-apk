package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.SendingCollector;

/* renamed from: 돸돤땨뎡뎰땨땄뎻땲딞땮땭땮뎰둣돝듻뒹뒻듬뒻딃땤듌땱돷딄뎽땸딄돨땨땀돰땦둡땸되됴딜뎬딌듬들뒾땡뒙득땹딃땧듻둔뒛뎹땻든될돝땅뒐땱땧듸듰뒘듰듐뒋땩뒘됐땧돝될땁뎽딟됐뒹땮땯뒛딠뒉듽돵땻뒝디땮뒵듌딞뎰땵둔딟듸돰뎠됐땪딅뒼뒉딠뎸땩둬디땁뎬뒈땹딞둥돛된듨딽뒬땤땮딠뒘듰딅뒝되, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0523xbc861cf4 extends ChannelFlow {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f4035x1378447b = AtomicIntegerFieldUpdater.newUpdater(C0523xbc861cf4.class, "consumed$volatile");
    private volatile /* synthetic */ int consumed$volatile;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ReceiveChannel f4036xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final boolean f4037x3271d0aa;

    public /* synthetic */ C0523xbc861cf4(ReceiveChannel receiveChannel, boolean z) {
        this(receiveChannel, z, EmptyCoroutineContext.INSTANCE, -3, BufferOverflow.SUSPEND);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final String additionalToStringProps() {
        return "channel=" + this.f4036xfbe0c504;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        if (this.capacity == -3) {
            boolean z = this.f4037x3271d0aa;
            if (z && f4035x1378447b.getAndSet(this, 1) == 1) {
                throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once");
            }
            Object m4339xfbe0c504 = AbstractC1313xd408e99d.m4339xfbe0c504(flowCollector, this.f4036xfbe0c504, z, continuation);
            if (m4339xfbe0c504 == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                return m4339xfbe0c504;
            }
            return Unit.INSTANCE;
        }
        Object collect = super.collect(flowCollector, continuation);
        if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return collect;
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final Object collectTo(ProducerScope producerScope, Continuation continuation) {
        Object m4339xfbe0c504 = AbstractC1313xd408e99d.m4339xfbe0c504(new SendingCollector(producerScope), this.f4036xfbe0c504, this.f4037x3271d0aa, continuation);
        if (m4339xfbe0c504 == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return m4339xfbe0c504;
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final ChannelFlow create(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new C0523xbc861cf4(this.f4036xfbe0c504, this.f4037x3271d0aa, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final Flow dropChannelOperators() {
        return new C0523xbc861cf4(this.f4036xfbe0c504, this.f4037x3271d0aa);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final ReceiveChannel produceImpl(CoroutineScope coroutineScope) {
        if (this.f4037x3271d0aa && f4035x1378447b.getAndSet(this, 1) == 1) {
            throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once");
        }
        if (this.capacity == -3) {
            return this.f4036xfbe0c504;
        }
        return super.produceImpl(coroutineScope);
    }

    public C0523xbc861cf4(ReceiveChannel receiveChannel, boolean z, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.f4036xfbe0c504 = receiveChannel;
        this.f4037x3271d0aa = z;
    }
}
