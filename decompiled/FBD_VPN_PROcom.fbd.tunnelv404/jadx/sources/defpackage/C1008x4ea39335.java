package defpackage;

import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;

/* renamed from: 딤따돷딻뎬땔땩뒬듐땔듨둬딎땰딀들뒉딃돳땣딎뒻딨뎹둠땭돳땄뒈돰뒷딠딄돛듨뒷뒷땝땮땬듽땣뒹듐땍된득땠땪됴뒬돼땮뎽땲뎨됐됴땯뎻땝들따딌뒬뒀땩돛땨따돼듰땯둬뒘땬됩둡따됐듼땸땝뒷듰땭땰땧듸득되돵돠땜드딞됫듽뒹둘땩둥뒛땻딁듔돵됫딻뒛돨딐딻둑땩돷땬딤돶돤땠뎬둥뎨둣딻뒨딁듼땩, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C1008x4ea39335 extends FunctionReferenceImpl implements Function3 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final C1008x4ea39335 f5200xfbe0c504 = new FunctionReferenceImpl(3, C1009x7e4e4697.class, "register", "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        C1009x7e4e4697 c1009x7e4e4697 = (C1009x7e4e4697) obj;
        SelectInstance selectInstance = (SelectInstance) obj2;
        long j = c1009x7e4e4697.f5201xfbe0c504;
        if (j <= 0) {
            selectInstance.selectInRegistrationPhase(Unit.INSTANCE);
        } else {
            RunnableC0938xaa9be1e3 runnableC0938xaa9be1e3 = new RunnableC0938xaa9be1e3(selectInstance, c1009x7e4e4697, 4);
            Intrinsics.checkNotNull(selectInstance, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            SelectImplementation selectImplementation = (SelectImplementation) selectInstance;
            CoroutineContext context = selectImplementation.getContext();
            selectImplementation.disposeOnCompletion(DelayKt.getDelay(context).invokeOnTimeout(j, runnableC0938xaa9be1e3, context));
        }
        return Unit.INSTANCE;
    }
}
