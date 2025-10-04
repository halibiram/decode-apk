package defpackage;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.JobNode;

/* renamed from: 돠돨땨땻땭땩뒵돷뎬뎰딐드돶딠땝딜땨돼뒈땮듬디뒛둔땃돶딻됨득뒋뎰듟땜됫듟땋딌둘됴뒬듌뒐듻뎻디딝땋뎡땰땳듰땩딐땮듬딃뎨돠됨뒨뎹뒤든됫딤땝듬돰뎠뎡듻땭뒙둥땔둔둬땐딸듻딎딤땰됫딹뒻뒝뎰딎딤땋딜둡딤땟돝둘도땹딀돳득뒹돷땭딝딃땮땜뎬뒼뒼딌땍됐돼둣됴듨뒨딠둬땟땔둥땟딄드땯둣, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0435xdda04007 extends JobNode {

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f3877x34271fae = AtomicReferenceFieldUpdater.newUpdater(C0435xdda04007.class, Object.class, "_disposer$volatile");
    private volatile /* synthetic */ Object _disposer$volatile;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final CancellableContinuationImpl f3878x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public DisposableHandle f3879x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final /* synthetic */ C0437xf057c2bb f3880x9e171bf9;

    public C0435xdda04007(C0437xf057c2bb c0437xf057c2bb, CancellableContinuationImpl cancellableContinuationImpl) {
        this.f3880x9e171bf9 = c0437xf057c2bb;
        this.f3878x75d576dc = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        return false;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        CancellableContinuationImpl cancellableContinuationImpl = this.f3878x75d576dc;
        if (th != null) {
            Object tryResumeWithException = cancellableContinuationImpl.tryResumeWithException(th);
            if (tryResumeWithException != null) {
                cancellableContinuationImpl.completeResume(tryResumeWithException);
                C0436xdc381bd6 c0436xdc381bd6 = (C0436xdc381bd6) f3877x34271fae.get(this);
                if (c0436xdc381bd6 != null) {
                    c0436xdc381bd6.m3083xfbe0c504();
                    return;
                }
                return;
            }
            return;
        }
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C0437xf057c2bb.f3882x3271d0aa;
        C0437xf057c2bb c0437xf057c2bb = this.f3880x9e171bf9;
        if (atomicIntegerFieldUpdater.decrementAndGet(c0437xf057c2bb) == 0) {
            Deferred[] deferredArr = c0437xf057c2bb.f3883xfbe0c504;
            ArrayList arrayList = new ArrayList(deferredArr.length);
            for (Deferred deferred : deferredArr) {
                arrayList.add(deferred.getCompleted());
            }
            cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(arrayList));
        }
    }
}
