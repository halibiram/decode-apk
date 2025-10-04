package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.JobNode;

/* renamed from: 땫돼듌듟땪두뎹됩돨뒉딁듬듰되뎹땀돠뒻돷딻땋따땔듌딄둣딎땪듬됫딄땅땩됩딤된둣뒙된도딃된뒛딐땍뒐뒼둬땲둡뎽뒨땱듟돰땨딤딄뎸돝된땡뒝딌뒾둥돷땦됴땲듬땍뒀딌땱땸돳돶따뎹듟뒉들뒬뎻돵딜땤땝땮땹땍딹뒾돛뎨뒷듌둬둬땔듐딌뎹둣둣땠땍뒷땵도돳뒹딸땻뒋둬뎡됨땤뎠땍뒘듬둥뒉뒼뒹따땬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1234x3bf46a91 extends JobNode {

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f5640x9e171bf9 = AtomicIntegerFieldUpdater.newUpdater(C1234x3bf46a91.class, "_state$volatile");
    private volatile /* synthetic */ int _state$volatile;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Thread f5641x75d576dc = Thread.currentThread();

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public DisposableHandle f5642x9738a56c;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static void m3976x75d576dc(int i) {
        throw new IllegalStateException(("Illegal state " + i).toString());
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        do {
            atomicIntegerFieldUpdater = f5640x9e171bf9;
            i = atomicIntegerFieldUpdater.get(this);
            if (i != 0) {
                if (i != 1 && i != 2 && i != 3) {
                    m3976x75d576dc(i);
                    throw null;
                }
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 2));
        this.f5641x75d576dc.interrupt();
        atomicIntegerFieldUpdater.set(this, 3);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final void m3977x1378447b() {
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f5640x9e171bf9;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i != 0) {
                if (i != 2) {
                    if (i == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        m3976x75d576dc(i);
                        throw null;
                    }
                }
            } else if (atomicIntegerFieldUpdater.compareAndSet(this, i, 1)) {
                DisposableHandle disposableHandle = this.f5642x9738a56c;
                if (disposableHandle != null) {
                    disposableHandle.dispose();
                    return;
                }
                return;
            }
        }
    }
}
