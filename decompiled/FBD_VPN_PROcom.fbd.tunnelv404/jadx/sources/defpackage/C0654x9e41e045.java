package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl;
import kotlinx.coroutines.debug.internal.StackTraceFrame;

/* renamed from: 뒀땅딄됩땲딄듽득돴돵돠뎨땔딸뒙땲듬뒋돰돸땝듻듽땻딄듔뒀둡땠땳됨돨돳뎬뒘딝딅뒾땪딠둑돰딃돳땰뒼땩땯땮둡뒛됫땠듟땳돼뒈돰뒤뒼땍뒹따딜뎨뒾땰뎬돤땥돳땳뎹땵뒈두돴땥드딌땧땤땧돵됨뒻된땀뒹뒬뒨땰땯땡땝땩돶땁땋땫땱돛드돼듼뒵따뎽돨돷됫땪땥도두딝두뎬딌딟됐도딤디뒘뒨돴돵듨땧, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0654x9e41e045 extends RestrictedSuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f4443xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public /* synthetic */ Object f4444x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ DebugCoroutineInfoImpl f4445x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ StackTraceFrame f4446x75d576dc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0654x9e41e045(DebugCoroutineInfoImpl debugCoroutineInfoImpl, StackTraceFrame stackTraceFrame, Continuation continuation) {
        super(2, continuation);
        this.f4445x1378447b = debugCoroutineInfoImpl;
        this.f4446x75d576dc = stackTraceFrame;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0654x9e41e045 c0654x9e41e045 = new C0654x9e41e045(this.f4445x1378447b, this.f4446x75d576dc, continuation);
        c0654x9e41e045.f4444x3271d0aa = obj;
        return c0654x9e41e045;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0654x9e41e045) create((SequenceScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f4443xfbe0c504;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            SequenceScope sequenceScope = (SequenceScope) this.f4444x3271d0aa;
            CoroutineStackFrame callerFrame = this.f4446x75d576dc.getCallerFrame();
            this.f4443xfbe0c504 = 1;
            if (DebugCoroutineInfoImpl.access$yieldFrames(this.f4445x1378447b, sequenceScope, callerFrame, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
