package defpackage;

import java.util.NoSuchElementException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;

/* renamed from: 득됴땵딝되되뒉땣뒛땐땵돳두땳뒙뒘땃딞뒈돛뒨뒛돸딀돰뒝됩돶둡뒾땋딻돠둔뒨뎬돝땥듟됨뒻듌둔땥된땠땦되둘뎡따땦뒙뒨듽땄드돨됨땬뎸땝땲듻뎸뒼땭둔뒾되돷땡둡땵뒾땜땣돝돸됐땍땃딠뒷도듔딌뒐딹된듼된뒵딸될돝든딁땻땩되딠됩딤뎡돤딐도뒘땀땜땅듰딜뒬땪땝땐땤뒀돴뎡땲땱든둔땍됨땳딎, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0820x38707bd2 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f4876xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public /* synthetic */ Object f4877x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Flow f4878x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ CompletableDeferred f4879x75d576dc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0820x38707bd2(Flow flow, CompletableDeferred completableDeferred, Continuation continuation) {
        super(2, continuation);
        this.f4878x1378447b = flow;
        this.f4879x75d576dc = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0820x38707bd2 c0820x38707bd2 = new C0820x38707bd2(this.f4878x1378447b, this.f4879x75d576dc, continuation);
        c0820x38707bd2.f4877x3271d0aa = obj;
        return c0820x38707bd2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0820x38707bd2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref.ObjectRef objectRef;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f4876xfbe0c504;
        CompletableDeferred completableDeferred = this.f4879x75d576dc;
        try {
            if (i != 0) {
                if (i == 1) {
                    objectRef = (Ref.ObjectRef) this.f4877x3271d0aa;
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.f4877x3271d0aa;
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                Flow flow = this.f4878x1378447b;
                C0819xc1c94869 c0819xc1c94869 = new C0819xc1c94869(objectRef2, coroutineScope, completableDeferred);
                this.f4877x3271d0aa = objectRef2;
                this.f4876xfbe0c504 = 1;
                if (flow.collect(c0819xc1c94869, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
            }
            if (objectRef.element == 0) {
                Result.Companion companion = Result.INSTANCE;
                completableDeferred.complete(Result.m1763boximpl(Result.m1764constructorimpl(ResultKt.createFailure(new NoSuchElementException("Flow is empty")))));
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            completableDeferred.completeExceptionally(th);
            throw th;
        }
    }
}
