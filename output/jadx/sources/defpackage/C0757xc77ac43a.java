package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 뒷뒀딌딎땁뒙돛땫돸딝딻땯뎡듐딤됨딠뒀딜땳땤뎡두둥듔땝듻딞듼땯뎬땵딤돤든땋땄뒈둣된듼딻돰듨땔뒵둠뒨듌딐드듸듰땲뒷땳딻딠뎹뒋돨땋드뎬따뒷딜땜됨됴땩딁뒾둘디듻뒈되딸돳듼딽땹듻딨되듟땫땲땰땧뒋땍뒘땬뎡듔딠뒐뒾딻땣뒹땤딠뎰뎨땁땪뒛드돵뒝땫뎬땹돤땯뎸딝듽뒋듽딜득뒷땳될딞딁, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0757xc77ac43a implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Function2 f4686xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Ref.IntRef f4687x3271d0aa;

    public C0757xc77ac43a(Function2 function2, Ref.IntRef intRef) {
        this.f4686xfbe0c504 = function2;
        this.f4687x3271d0aa = intRef;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0756x3c010b03 c0756x3c010b03;
        Object obj2;
        int i;
        C0757xc77ac43a c0757xc77ac43a;
        if (continuation instanceof C0756x3c010b03) {
            c0756x3c010b03 = (C0756x3c010b03) continuation;
            int i2 = c0756x3c010b03.f4685x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0756x3c010b03.f4685x75d576dc = i2 - Integer.MIN_VALUE;
                obj2 = c0756x3c010b03.f4683x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0756x3c010b03.f4685x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        c0757xc77ac43a = c0756x3c010b03.f4682xfbe0c504;
                        ResultKt.throwOnFailure(obj2);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    c0756x3c010b03.f4682xfbe0c504 = this;
                    c0756x3c010b03.f4685x75d576dc = 1;
                    obj2 = this.f4686xfbe0c504.invoke(obj, c0756x3c010b03);
                    if (obj2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    c0757xc77ac43a = this;
                }
                if (((Boolean) obj2).booleanValue()) {
                    c0757xc77ac43a.f4687x3271d0aa.element++;
                }
                return Unit.INSTANCE;
            }
        }
        c0756x3c010b03 = new C0756x3c010b03(this, continuation);
        obj2 = c0756x3c010b03.f4683x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0756x3c010b03.f4685x75d576dc;
        if (i == 0) {
        }
        if (((Boolean) obj2).booleanValue()) {
        }
        return Unit.INSTANCE;
    }
}
