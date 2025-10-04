package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* renamed from: 듔둬땋뒻둡땩뒤돷듨도뎹땁땭땀뎽뒈땫땲땸뒬땟땯땃듟땧두딅땱둡땁뒹땳듽딐딜딌땨땝도돳땫듸둠뒈뎽땁돷뒹딠뒼듟둑땬딠땳땅둠뎬든땡디듸뎹두땄뎡땳뒾뒐딹뒤돨땨딤딨뒛듨땧땟디땅딝둠됫듬땳뎸돷땐듐뒛듰뎬땬둠돠뒵딜뒘뒀듼땭뒛땄듟뎽듟땪듟딃땡딀돶듸뒝딄딤듐뒀듻땦됴뎠딸돼땫둣땁듼땥, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0812x683fc210 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Ref.ObjectRef f4857xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Function3 f4858x3271d0aa;

    public C0812x683fc210(Ref.ObjectRef objectRef, Function3 function3) {
        this.f4857xfbe0c504 = objectRef;
        this.f4858x3271d0aa = function3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0811x981e51c c0811x981e51c;
        int i;
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        T t;
        if (continuation instanceof C0811x981e51c) {
            c0811x981e51c = (C0811x981e51c) continuation;
            int i2 = c0811x981e51c.f4856x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0811x981e51c.f4856x75d576dc = i2 - Integer.MIN_VALUE;
                Object obj2 = c0811x981e51c.f4854x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0811x981e51c.f4856x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        objectRef2 = c0811x981e51c.f4853xfbe0c504;
                        ResultKt.throwOnFailure(obj2);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    objectRef = this.f4857xfbe0c504;
                    T t2 = objectRef.element;
                    t = obj;
                    if (t2 != NullSurrogateKt.NULL) {
                        c0811x981e51c.f4853xfbe0c504 = objectRef;
                        c0811x981e51c.f4856x75d576dc = 1;
                        Object invoke = this.f4858x3271d0aa.invoke(t2, obj, c0811x981e51c);
                        if (invoke == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj2 = invoke;
                        objectRef2 = objectRef;
                    }
                    objectRef.element = t;
                    return Unit.INSTANCE;
                }
                Object obj3 = obj2;
                objectRef = objectRef2;
                t = obj3;
                objectRef.element = t;
                return Unit.INSTANCE;
            }
        }
        c0811x981e51c = new C0811x981e51c(this, continuation);
        Object obj22 = c0811x981e51c.f4854x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0811x981e51c.f4856x75d576dc;
        if (i == 0) {
        }
        Object obj32 = obj22;
        objectRef = objectRef2;
        t = obj32;
        objectRef.element = t;
        return Unit.INSTANCE;
    }
}
