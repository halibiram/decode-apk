package defpackage;

import java.util.concurrent.locks.LockSupport;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.AbstractTimeSource;
import kotlinx.coroutines.AbstractTimeSourceKt;
import kotlinx.coroutines.EventLoop;

/* renamed from: 돤땍된뎰딌듌땍딠뒐뒙듨땡뒷듼땤뒀돠둬땁뒼땬돰됴땫땦땤듬둣든땱둥둘딸뒀딽딐딃듟뒀돼땋땻둬듬땍뎡됐든듔뎠뒻뒼뒹땫듸땤득돰땍뎡됫돶듬뎡돝땡돷듔딸드됩뒼돴딽딃둡듰뎹딽뒙뎹됫돤딄뎰됐땪땤땱뎠딜둥딃뒨돷땅둬뒈돵둘뒨듽땲딻돷딹땲뒛땹뒙뎬땲돝들땡뒤뒨땍듬뎻딹뎡뒾딸딄땮딐돶땥돶, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0449x4a89f611 extends AbstractCoroutine {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Thread f3904x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final EventLoop f3905x9738a56c;

    public C0449x4a89f611(CoroutineContext coroutineContext, Thread thread, EventLoop eventLoop) {
        super(coroutineContext, true, true);
        this.f3904x75d576dc = thread;
        this.f3905x9738a56c = eventLoop;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void afterCompletion(Object obj) {
        AbstractTimeSource abstractTimeSource;
        Thread currentThread = Thread.currentThread();
        Thread thread = this.f3904x75d576dc;
        if (!Intrinsics.areEqual(currentThread, thread)) {
            abstractTimeSource = AbstractTimeSourceKt.f1751xfbe0c504;
            if (abstractTimeSource != null) {
                abstractTimeSource.unpark(thread);
            } else {
                LockSupport.unpark(thread);
            }
        }
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean isScopedCoroutine() {
        return true;
    }
}
