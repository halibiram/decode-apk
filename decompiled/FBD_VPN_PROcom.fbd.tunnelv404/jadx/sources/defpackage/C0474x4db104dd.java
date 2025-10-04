package defpackage;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;

/* renamed from: 돳둥디땪듬뒉듻뒘뒻두땀땪딜딜뒼둔들뎻땫땁딞듸뎻딨듸둠뎽딃딅딜뎬땸땠땹땣땀땮땟돵땐딌땻땡땠됨땐뒛땄듨딀돰딄둘뎠뒬땻땝딄땬땹딟뎡뎬땹돴드뎬땦듸뒻돼둣듨뎬될돸돝될뎻땸뎸땩뒛딞듐뒬뒈딻딃딃땮딀딽딟드뒨됫뒵득땁듬듟딜땲땜땋뒷땪뎸뒼딸땟돨땡듬땝돠뒾땝됩도딟땤돶땤땲뒤땳땝뒨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0474x4db104dd extends ContinuationImpl {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public /* synthetic */ Object f3952xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ BufferedChannel f3953x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public int f3954x1378447b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0474x4db104dd(BufferedChannel bufferedChannel, Continuation continuation) {
        super(continuation);
        this.f3953x3271d0aa = bufferedChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f3952xfbe0c504 = obj;
        this.f3954x1378447b |= Integer.MIN_VALUE;
        Object m2258xd2bcb0cf = BufferedChannel.m2258xd2bcb0cf(this.f3953x3271d0aa, this);
        if (m2258xd2bcb0cf == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return m2258xd2bcb0cf;
        }
        return ChannelResult.m2285boximpl(m2258xd2bcb0cf);
    }
}
