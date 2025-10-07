package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobNode;

/* renamed from: 딀땮듬딄땦뒬되드땸둠땐딻뒷딨땮뎸드땍딸땭드뒤땹딹뒈땔뒐돳뎽땜둥땝돵두땫땦딃땱딞딄땣땵들뎨돠듬딝땱돷딎땰딽땜땮뒤드딁도디됫듰뒤따땨돵딽딝돷됐둠땣됨듻될딀뒋땩뒻됨땃뎡땻땍뒛돼땦뒘도딹땡됫딝따둑돳두든들땩딌됫뎰뎽듽뎠땭딄딜뎨뒝땍될딹뎽들뒘땜뒵땨뒋땧뒙땡뒀됨딎돳둑뒘땡, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0893xc79fc11b extends JobNode {

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f5017x9738a56c = AtomicIntegerFieldUpdater.newUpdater(C0893xc79fc11b.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Function1 f5018x75d576dc;

    public C0893xc79fc11b(Function1 function1) {
        this.f5018x75d576dc = function1;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        if (f5017x9738a56c.compareAndSet(this, 0, 1)) {
            this.f5018x75d576dc.invoke(th);
        }
    }
}
