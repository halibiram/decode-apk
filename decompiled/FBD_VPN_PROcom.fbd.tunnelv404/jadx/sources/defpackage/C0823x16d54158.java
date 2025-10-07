package defpackage;

import java.util.ArrayList;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 듟돳땮듟땯딅뒨뒨땀됩디듼땄뎸뒷딜딝뎨됐땦듻뎨둔뒈땫돼뎸돶둥땭뒨뒐돶딀땪뒤듽딟딀돠뎻딌돶들땟돵딄돤됫뒾됨듼뎠딟딸뒀딞듔뎠돼뒹뎰두딞땮땄뒀듟디듬땲딐돛땟딄뎰둬땝땸둥땁듰땟둘돠뒝듸돳돛뒵땫뒷디땦딝되두돶돸따딻땃드딃두되뒬뎬듻돰디땮드땫딄디뎽딝땀드땟딎도된돠딅돨뎻땸땀, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0823x16d54158 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Ref.ObjectRef f4886xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ int f4887x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4888x1378447b;

    public C0823x16d54158(Ref.ObjectRef objectRef, int i, FlowCollector flowCollector) {
        this.f4886xfbe0c504 = objectRef;
        this.f4887x3271d0aa = i;
        this.f4888x1378447b = flowCollector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r2v4, types: [T, java.util.ArrayList] */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0822x17eebef c0822x17eebef;
        int i;
        C0823x16d54158 c0823x16d54158;
        if (continuation instanceof C0822x17eebef) {
            c0822x17eebef = (C0822x17eebef) continuation;
            int i2 = c0822x17eebef.f4885x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0822x17eebef.f4885x75d576dc = i2 - Integer.MIN_VALUE;
                Object obj2 = c0822x17eebef.f4883x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0822x17eebef.f4885x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        c0823x16d54158 = c0822x17eebef.f4882xfbe0c504;
                        ResultKt.throwOnFailure(obj2);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    Ref.ObjectRef objectRef = this.f4886xfbe0c504;
                    ArrayList arrayList = (ArrayList) objectRef.element;
                    int i3 = this.f4887x3271d0aa;
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        ?? arrayList3 = new ArrayList(i3);
                        objectRef.element = arrayList3;
                        arrayList2 = arrayList3;
                    }
                    arrayList2.add(obj);
                    if (arrayList2.size() == i3) {
                        c0822x17eebef.f4882xfbe0c504 = this;
                        c0822x17eebef.f4885x75d576dc = 1;
                        if (this.f4888x1378447b.emit(arrayList2, c0822x17eebef) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        c0823x16d54158 = this;
                    }
                    return Unit.INSTANCE;
                }
                c0823x16d54158.f4886xfbe0c504.element = null;
                return Unit.INSTANCE;
            }
        }
        c0822x17eebef = new C0822x17eebef(this, continuation);
        Object obj22 = c0822x17eebef.f4883x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0822x17eebef.f4885x75d576dc;
        if (i == 0) {
        }
        c0823x16d54158.f4886xfbe0c504.element = null;
        return Unit.INSTANCE;
    }
}
