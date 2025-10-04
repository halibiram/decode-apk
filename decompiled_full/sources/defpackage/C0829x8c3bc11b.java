package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 든뒤땃땲땳땜딝돠딀뒼따돼딠둘됩땝딻딟딃돸땃뒐돛된돳땧돼땸딸땍됐딅딎돴땁둡딄땪드땟땨듬땬뒙둣땤딀땍두뒐땬드득땧딄둥딠뎠땫땤되딜돳땃딟딸뒙듼됩딹뎠딄땔땍됨딄땜땐땄뒈딐뎸돝땤땃둠뒼뒤땱뒝돝딽딹뒬됐뒋땁땬디듬듐뎽땁땹딻돝땠땔뒹딠뒻뎸뒋땵땵딞땬뒹뎡딀듸뎡둣듽뒷딃땋딁뎡뎡, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0829x8c3bc11b implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4908xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Ref.IntRef f4909x3271d0aa;

    public C0829x8c3bc11b(FlowCollector flowCollector, Ref.IntRef intRef) {
        this.f4908xfbe0c504 = flowCollector;
        this.f4909x3271d0aa = intRef;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0828x267439e6 c0828x267439e6;
        int i;
        if (continuation instanceof C0828x267439e6) {
            c0828x267439e6 = (C0828x267439e6) continuation;
            int i2 = c0828x267439e6.f4907x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0828x267439e6.f4907x1378447b = i2 - Integer.MIN_VALUE;
                Object obj2 = c0828x267439e6.f4905xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0828x267439e6.f4907x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj2);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    Ref.IntRef intRef = this.f4909x3271d0aa;
                    int i3 = intRef.element;
                    intRef.element = i3 + 1;
                    if (i3 >= 0) {
                        IndexedValue indexedValue = new IndexedValue(i3, obj);
                        c0828x267439e6.f4907x1378447b = 1;
                        if (this.f4908xfbe0c504.emit(indexedValue, c0828x267439e6) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        throw new ArithmeticException("Index overflow has happened");
                    }
                }
                return Unit.INSTANCE;
            }
        }
        c0828x267439e6 = new C0828x267439e6(this, continuation);
        Object obj22 = c0828x267439e6.f4905xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0828x267439e6.f4907x1378447b;
        if (i == 0) {
        }
        return Unit.INSTANCE;
    }
}
