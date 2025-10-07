package defpackage;

import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChildCancelledException;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* renamed from: 뒹듔딟듻돰돰돳딁뎨딞땬뎰둥땔둣뎠땝뒬땐땵된되뒐드돳땍딜돶도뒋듼딝돴뎬땥됩땍됨됨땹땋돴딸뎹둬땥돛땄뎸뒈뎡든들듔딤땻둣뎡뎹땫돝듸땸뒐땻딀둡돳둘듻됨듔따둑땀땐땩땻땡둘땐둣땝둬돨돤딽뒹땀듰디뒵뎡돸됴땻땧듟뒤듸돶뒵뒙됴땔될땃딤도딹될뎰땩땩돷돸뒼돠돶돤뎸디뒉뎨둠둥딎되땣땪, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0765x114cd2f5 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public /* synthetic */ Object f4713xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Ref.ObjectRef f4714x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ ReceiveChannel f4715x1378447b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0765x114cd2f5(Ref.ObjectRef objectRef, ReceiveChannel receiveChannel, Continuation continuation) {
        super(2, continuation);
        this.f4714x3271d0aa = objectRef;
        this.f4715x1378447b = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0765x114cd2f5 c0765x114cd2f5 = new C0765x114cd2f5(this.f4714x3271d0aa, this.f4715x1378447b, continuation);
        c0765x114cd2f5.f4713xfbe0c504 = obj;
        return c0765x114cd2f5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0765x114cd2f5) create(ChannelResult.m2285boximpl(((ChannelResult) obj).getHolder()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7, types: [kotlinx.coroutines.internal.Symbol, T] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        ?? holder = ((ChannelResult) this.f4713xfbe0c504).getHolder();
        boolean z = holder instanceof ChannelResult.Failed;
        Ref.ObjectRef objectRef = this.f4714x3271d0aa;
        if (!z) {
            objectRef.element = holder;
        }
        if (z) {
            Throwable m2289exceptionOrNullimpl = ChannelResult.m2289exceptionOrNullimpl(holder);
            if (m2289exceptionOrNullimpl == null) {
                this.f4715x1378447b.cancel((CancellationException) new ChildCancelledException());
                objectRef.element = NullSurrogateKt.DONE;
            } else {
                throw m2289exceptionOrNullimpl;
            }
        }
        return Unit.INSTANCE;
    }
}
