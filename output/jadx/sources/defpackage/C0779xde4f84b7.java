package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 뒼득둘듟뒾뒹땹뒙둔듼땁딄땡듸된딻둡뒤딀뎻딎뒷뒻딃땹됴뎡도듬딐됨돳땜뒋듨됐땠뒹땤둡땫딅돵딨딨든둣땦딝돤땭땡딀됐뒼뎠딹든돛듼땟뎨뎹돝듻땤듼됫돨땃딎딸땃둬딎딐뒵딽딁땟뒐둣돵듌딟뒝땦딟딄땥땋뒉뒻딝땔딅뒷딄돷될둬돨딁도땵땨땋뎠땄딄땬땐땠땁딻딐뎠땔땀땄땐둡땀딤딅딞드딽땹뎸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0779xde4f84b7 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4757xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Ref.ObjectRef f4758x3271d0aa;

    public C0779xde4f84b7(FlowCollector flowCollector, Ref.ObjectRef objectRef) {
        this.f4757xfbe0c504 = flowCollector;
        this.f4758x3271d0aa = objectRef;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.Throwable, T] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Throwable] */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0778xae831ba2 c0778xae831ba2;
        int i;
        C0779xde4f84b7 c0779xde4f84b7;
        if (continuation instanceof C0778xae831ba2) {
            c0778xae831ba2 = (C0778xae831ba2) continuation;
            int i2 = c0778xae831ba2.f4756x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0778xae831ba2.f4756x75d576dc = i2 - Integer.MIN_VALUE;
                Object obj2 = c0778xae831ba2.f4754x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0778xae831ba2.f4756x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        c0779xde4f84b7 = c0778xae831ba2.f4753xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj2);
                        } catch (Throwable th) {
                            th = th;
                            c0779xde4f84b7.f4758x3271d0aa.element = th;
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    try {
                        FlowCollector flowCollector = this.f4757xfbe0c504;
                        c0778xae831ba2.f4753xfbe0c504 = this;
                        c0778xae831ba2.f4756x75d576dc = 1;
                        if (flowCollector.emit(obj, c0778xae831ba2) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        c0779xde4f84b7 = this;
                        c0779xde4f84b7.f4758x3271d0aa.element = th;
                        throw th;
                    }
                }
                return Unit.INSTANCE;
            }
        }
        c0778xae831ba2 = new C0778xae831ba2(this, continuation);
        Object obj22 = c0778xae831ba2.f4754x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0778xae831ba2.f4756x75d576dc;
        if (i == 0) {
        }
        return Unit.INSTANCE;
    }
}
