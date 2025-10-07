package defpackage;

import java.util.Collection;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* renamed from: 돷돸돝돶둡듌땍뎽듬듌뒤돴딅땳땪딎딄돨딌뒐뒉디뒷땔뎹뒷돠땵땦돶땱땯득둣둥딎딀딽돴도드뒵됐땟듸딄딎딨땝땹두듬듰땨돛땮듨돶땪드딀딁됐돝땋뒈딐둠뒝듬뒼득뒹뒻됴뒵뒛뎡땦뒘땸뒬듼땪땲둥돷돵듰뒉땝뒹땝듼듔땵뒬딞딸뒐돸땁뒐뎬땃뎽땲돷돛딌땧땩딠됫딝땸땥땠뒼됐딠돴둣뒋듐딞돠딐땳딞, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0515x8dcf029e implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4021xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4022x3271d0aa;

    public /* synthetic */ C0515x8dcf029e(Object obj, int i) {
        this.f4021xfbe0c504 = i;
        this.f4022x3271d0aa = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0514x5f78633b c0514x5f78633b;
        int i;
        switch (this.f4021xfbe0c504) {
            case 0:
                if (continuation instanceof C0514x5f78633b) {
                    c0514x5f78633b = (C0514x5f78633b) continuation;
                    int i2 = c0514x5f78633b.f4020x1378447b;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        c0514x5f78633b.f4020x1378447b = i2 - Integer.MIN_VALUE;
                        Object obj2 = c0514x5f78633b.f4018xfbe0c504;
                        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                        i = c0514x5f78633b.f4020x1378447b;
                        if (i == 0) {
                            if (i == 1) {
                                ResultKt.throwOnFailure(obj2);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            ResultKt.throwOnFailure(obj2);
                            JobKt.ensureActive(c0514x5f78633b.getContext());
                            c0514x5f78633b.f4020x1378447b = 1;
                            if (((FlowCollector) this.f4022x3271d0aa).emit(obj, c0514x5f78633b) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        return Unit.INSTANCE;
                    }
                }
                c0514x5f78633b = new C0514x5f78633b(this, continuation);
                Object obj22 = c0514x5f78633b.f4018xfbe0c504;
                Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0514x5f78633b.f4020x1378447b;
                if (i == 0) {
                }
                return Unit.INSTANCE;
            case 1:
                return m3154xfbe0c504((Flow) obj, continuation);
            default:
                ((Collection) this.f4022x3271d0aa).add(obj);
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object m3154xfbe0c504(Flow flow, Continuation continuation) {
        C0795xb1691c2c c0795xb1691c2c;
        int i;
        if (continuation instanceof C0795xb1691c2c) {
            c0795xb1691c2c = (C0795xb1691c2c) continuation;
            int i2 = c0795xb1691c2c.f4807x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0795xb1691c2c.f4807x1378447b = i2 - Integer.MIN_VALUE;
                Object obj = c0795xb1691c2c.f4805xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0795xb1691c2c.f4807x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    c0795xb1691c2c.f4807x1378447b = 1;
                    if (FlowKt.emitAll((FlowCollector) this.f4022x3271d0aa, flow, c0795xb1691c2c) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
        }
        c0795xb1691c2c = new C0795xb1691c2c(this, continuation);
        Object obj2 = c0795xb1691c2c.f4805xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0795xb1691c2c.f4807x1378447b;
        if (i == 0) {
        }
        return Unit.INSTANCE;
    }
}
