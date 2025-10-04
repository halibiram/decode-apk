package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;

/* renamed from: 돨따땐딸뒤따뎽되됫뒘둠딁둥드돴땯됫들땅되됴됨뒐듔땮딽딄뎨땁딠듔돨둔땰땲돛뎠됐땨돸뎡딻땔돵뒬돶땬뒝둡될돶돛땧땰따땳돠딄됴둥딻돰딌뒐됨둑됐뎨딁들듸듔땋딁땍땣듨딁딟뒈땅딄땥뒙딎디땄둘뒋딐딁됐돸뒋됨땩땣될뎻땭땡둘뎹딹땳땳뒬듐딌땡뎡돰땀땔됐둠땸뎬듸뒻땲땪뒻뎻둡돠땔땸딸딽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0457xaeab666 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public ChannelIterator f3922xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f3923x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public /* synthetic */ Object f3924x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ ReceiveChannel f3925x75d576dc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0457xaeab666(ReceiveChannel receiveChannel, Continuation continuation) {
        super(2, continuation);
        this.f3925x75d576dc = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0457xaeab666 c0457xaeab666 = new C0457xaeab666(this.f3925x75d576dc, continuation);
        c0457xaeab666.f3924x1378447b = obj;
        return c0457xaeab666;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0457xaeab666) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0044 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x005e -> B:6:0x0017). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        ProducerScope producerScope;
        ChannelIterator it;
        ProducerScope producerScope2;
        Object hasNext;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f3923x3271d0aa;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    it = this.f3922xfbe0c504;
                    producerScope2 = (ProducerScope) this.f3924x1378447b;
                    ResultKt.throwOnFailure(obj);
                    producerScope = producerScope2;
                    this.f3924x1378447b = producerScope;
                    this.f3922xfbe0c504 = it;
                    this.f3923x3271d0aa = 1;
                    hasNext = it.hasNext(this);
                    if (hasNext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    producerScope2 = producerScope;
                    obj = hasNext;
                    if (!((Boolean) obj).booleanValue()) {
                        Object next = it.next();
                        this.f3924x1378447b = producerScope2;
                        this.f3922xfbe0c504 = it;
                        this.f3923x3271d0aa = 2;
                        if (producerScope2.send(next, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        producerScope = producerScope2;
                        this.f3924x1378447b = producerScope;
                        this.f3922xfbe0c504 = it;
                        this.f3923x3271d0aa = 1;
                        hasNext = it.hasNext(this);
                        if (hasNext == coroutine_suspended) {
                        }
                    } else {
                        return Unit.INSTANCE;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                it = this.f3922xfbe0c504;
                producerScope2 = (ProducerScope) this.f3924x1378447b;
                ResultKt.throwOnFailure(obj);
                if (!((Boolean) obj).booleanValue()) {
                }
            }
        } else {
            ResultKt.throwOnFailure(obj);
            producerScope = (ProducerScope) this.f3924x1378447b;
            it = this.f3925x75d576dc.iterator();
            this.f3924x1378447b = producerScope;
            this.f3922xfbe0c504 = it;
            this.f3923x3271d0aa = 1;
            hasNext = it.hasNext(this);
            if (hasNext == coroutine_suspended) {
            }
        }
    }
}
