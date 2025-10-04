package defpackage;

import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;

/* renamed from: 돰딁뒋땟된딐둘뒝뒹됴딸딻듟땪땁뎡뒘돝돴된땮도돨돰듐딐듰땄뒵뎽뒛땭땅딨둠듔따돠땭땨뒉돠따땐딨돳땟돤둔뒀듐됴딜돝둬땁뒋딟돤땜됨땟딄뒉뒻땝뒈됐뎠듨뒹땄될땣뎹된돶땰뎠둔들뎻듌되듌돠듨됨땹땳둬뒐뒨됴듐딎땤딻땣돼둣뒘됐돷돼땻땀뒉딠땱돨드땪땦뎬둔땯득뎰땄돸뎽돳돷땯뒉드돰뒀땐, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0465xe275586d extends FunctionReferenceImpl implements Function3 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3943xfbe0c504;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0465xe275586d(BufferedChannel bufferedChannel, int i) {
        super(3, bufferedChannel, BufferedChannel.class, "onCancellationImplDoNotCall", "onCancellationImplDoNotCall(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
        this.f3943xfbe0c504 = i;
        switch (i) {
            case 1:
                super(3, bufferedChannel, BufferedChannel.class, "onCancellationChannelResultImplDoNotCall", "onCancellationChannelResultImplDoNotCall-5_sEAP8(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
                return;
            default:
                return;
        }
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        switch (this.f3943xfbe0c504) {
            case 0:
                BufferedChannel.access$onCancellationImplDoNotCall((BufferedChannel) this.receiver, (Throwable) obj, obj2, (CoroutineContext) obj3);
                return Unit.INSTANCE;
            default:
                BufferedChannel.m2255access$onCancellationChannelResultImplDoNotCall5_sEAP8((BufferedChannel) this.receiver, (Throwable) obj, ((ChannelResult) obj2).getHolder(), (CoroutineContext) obj3);
                return Unit.INSTANCE;
        }
    }
}
