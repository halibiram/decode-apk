package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 뒾딜됐뒘땯딟뎻딟뒙듨뒬뒹딤뎰딞땸땭뎡딀뎹듰딀돴듼뒙둑둡땸듐땻땪된듔뒷딻땋돼딄딻듐돤땪디땣땯돴딸둥둣딌둣땁뒈뒤땃땠딞땨듬딹둠듌된뎻땮둠딟딅듼뒹돠둣딎둣뒷돰된돝딽땯땩둣둥듔땅딨돰딽돠땅딻뒤딃땀돸뎻딄땐딹땣딀땥따듽뒛땟땥듌땧뎡듐땸둣들딅뒙둥땃뒛뒷뒛땯듌딄뒬땬됩땰듟뒵, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0786x45b01df3 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Ref.BooleanRef f4778xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4779x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Function2 f4780x1378447b;

    public C0786x45b01df3(Ref.BooleanRef booleanRef, FlowCollector flowCollector, Function2 function2) {
        this.f4778xfbe0c504 = booleanRef;
        this.f4779x3271d0aa = flowCollector;
        this.f4780x1378447b = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0785xfb0e38d9 c0785xfb0e38d9;
        int i;
        C0786x45b01df3 c0786x45b01df3;
        if (continuation instanceof C0785xfb0e38d9) {
            c0785xfb0e38d9 = (C0785xfb0e38d9) continuation;
            int i2 = c0785xfb0e38d9.f4777x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0785xfb0e38d9.f4777x9738a56c = i2 - Integer.MIN_VALUE;
                Object obj2 = c0785xfb0e38d9.f4775x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0785xfb0e38d9.f4777x9738a56c;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                ResultKt.throwOnFailure(obj2);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            obj = c0785xfb0e38d9.f4774x3271d0aa;
                            c0786x45b01df3 = c0785xfb0e38d9.f4773xfbe0c504;
                            ResultKt.throwOnFailure(obj2);
                            if (((Boolean) obj2).booleanValue()) {
                                c0786x45b01df3.f4778xfbe0c504.element = true;
                                c0785xfb0e38d9.f4773xfbe0c504 = null;
                                c0785xfb0e38d9.f4774x3271d0aa = null;
                                c0785xfb0e38d9.f4777x9738a56c = 3;
                                if (c0786x45b01df3.f4779x3271d0aa.emit(obj, c0785xfb0e38d9) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            } else {
                                return Unit.INSTANCE;
                            }
                        }
                    } else {
                        ResultKt.throwOnFailure(obj2);
                        return Unit.INSTANCE;
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    if (this.f4778xfbe0c504.element) {
                        c0785xfb0e38d9.f4777x9738a56c = 1;
                        if (this.f4779x3271d0aa.emit(obj, c0785xfb0e38d9) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    c0785xfb0e38d9.f4773xfbe0c504 = this;
                    c0785xfb0e38d9.f4774x3271d0aa = obj;
                    c0785xfb0e38d9.f4777x9738a56c = 2;
                    obj2 = this.f4780x1378447b.invoke(obj, c0785xfb0e38d9);
                    if (obj2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    c0786x45b01df3 = this;
                    if (((Boolean) obj2).booleanValue()) {
                    }
                }
                return Unit.INSTANCE;
            }
        }
        c0785xfb0e38d9 = new C0785xfb0e38d9(this, continuation);
        Object obj22 = c0785xfb0e38d9.f4775x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0785xfb0e38d9.f4777x9738a56c;
        if (i == 0) {
        }
        return Unit.INSTANCE;
    }
}
