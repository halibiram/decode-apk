package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 뒻듻돳뎡듰됴듬땤둬둡딞땅뎽땔뒾땤땣둑뎸돛땧듼됴둥딻돴듸돶딄뒻땩된딠뎠뒤딄뒛딐딄뒵돰둑됫도땥됨됫따둔듐땐돝디듽땔든돳뒷딽딤뒹듸듰땟딎돶땦됨드됐뎡든뒐딹디뎠될돳돷뒤땩딁뒉됩두돤땹두뒐땣딀땃땀듔땦땦돳딜딎돰딀땬땱땳딁둠땵땨듰땔득땲땻돰땭딻둔뒛디듸돸뒨딞뒉딻뎸뒨듻딀뒼, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0770x59e3b872 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f4732xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public /* synthetic */ Object f4733x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4734x1378447b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0770x59e3b872(FlowCollector flowCollector, Continuation continuation) {
        super(2, continuation);
        this.f4734x1378447b = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0770x59e3b872 c0770x59e3b872 = new C0770x59e3b872(this.f4734x1378447b, continuation);
        c0770x59e3b872.f4733x3271d0aa = obj;
        return c0770x59e3b872;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0770x59e3b872) create(ChannelResult.m2285boximpl(((ChannelResult) obj).getHolder()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003c  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object holder;
        Object obj2;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f4732xfbe0c504;
        if (i != 0) {
            if (i == 1) {
                obj2 = this.f4733x3271d0aa;
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            holder = ((ChannelResult) this.f4733x3271d0aa).getHolder();
            if (!(holder instanceof ChannelResult.Failed)) {
                this.f4733x3271d0aa = holder;
                this.f4732xfbe0c504 = 1;
                if (this.f4734x1378447b.emit(holder, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                obj2 = holder;
            }
            if (!(holder instanceof ChannelResult.Closed)) {
                Throwable m2289exceptionOrNullimpl = ChannelResult.m2289exceptionOrNullimpl(holder);
                if (m2289exceptionOrNullimpl == null) {
                    return Boxing.boxBoolean(false);
                }
                throw m2289exceptionOrNullimpl;
            }
            return Boxing.boxBoolean(true);
        }
        holder = obj2;
        if (!(holder instanceof ChannelResult.Closed)) {
        }
    }
}
