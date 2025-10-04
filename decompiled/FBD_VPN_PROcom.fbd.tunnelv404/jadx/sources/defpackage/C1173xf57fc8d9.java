package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharingCommand;

/* renamed from: 땣듔뎸땁땱딠둔둥땨뒹뒹뒨뒷뎸돳땠두딠든땮됩둔됐땱땯땭듬뒈두땩뒈뎡듻딐딹땲뒹돳뒷딄딄됴됩땝땨듌둘든딅땡돼됐땮딠딤뎡둘뎸땱딝땻땍돨딐돼땀땟딃뒹뎰땄돷뒤딅땨됨딞듽뒼돵땯될돶땀둡땨듼됫땔땯땀땭땅땁뒙둔됴뒵듐딜땮듐땮딞둡뒙딽딜뒹둑될딎돷뎬듽됫뒙뒬뒹땳뒤돷딃딸돴뒈뒀땨땳뒹, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1173xf57fc8d9 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Ref.BooleanRef f5544xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f5545x3271d0aa;

    public C1173xf57fc8d9(Ref.BooleanRef booleanRef, FlowCollector flowCollector) {
        this.f5544xfbe0c504 = booleanRef;
        this.f5545x3271d0aa = flowCollector;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
        return m3927xfbe0c504(((Number) obj).intValue(), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m3927xfbe0c504(int i, Continuation continuation) {
        C1172x950d3d8b c1172x950d3d8b;
        int i2;
        if (continuation instanceof C1172x950d3d8b) {
            c1172x950d3d8b = (C1172x950d3d8b) continuation;
            int i3 = c1172x950d3d8b.f5543x1378447b;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c1172x950d3d8b.f5543x1378447b = i3 - Integer.MIN_VALUE;
                Object obj = c1172x950d3d8b.f5541xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i2 = c1172x950d3d8b.f5543x1378447b;
                if (i2 == 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    if (i > 0) {
                        Ref.BooleanRef booleanRef = this.f5544xfbe0c504;
                        if (!booleanRef.element) {
                            booleanRef.element = true;
                            SharingCommand sharingCommand = SharingCommand.START;
                            c1172x950d3d8b.f5543x1378447b = 1;
                            if (this.f5545x3271d0aa.emit(sharingCommand, c1172x950d3d8b) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    }
                    return Unit.INSTANCE;
                }
                return Unit.INSTANCE;
            }
        }
        c1172x950d3d8b = new C1172x950d3d8b(this, continuation);
        Object obj2 = c1172x950d3d8b.f5541xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i2 = c1172x950d3d8b.f5543x1378447b;
        if (i2 == 0) {
        }
        return Unit.INSTANCE;
    }
}
