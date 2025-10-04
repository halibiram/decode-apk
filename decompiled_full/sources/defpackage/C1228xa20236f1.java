package defpackage;

import java.util.concurrent.CountDownLatch;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;

/* renamed from: 땪돳디됨뎸돷됩뎨땔땦듻듨듻듟뒘둬뎸듸뎸둔됫듰뒉딃돤땀듌듔뒾땟땄딸돴땯딟땩뒾든뎽둠들듌되땤뒉둠딃딻땀둥딸땍뒼되딄돨듟뒉뒈뒹됴뒤딅돨땰듽땥땔땋뒾딁딞둔듸뒼뎻땸뒝두뎡땔돸두땔딜듌둥땱땠뎬득둘될듻딄땭뒨땲딝땝듬돵든돝뒛땨듐땹돠땝땣듨뒨딜둬뎸둣듟뒷땍뒐땭딨땻딀둔땪땨땟딅, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1228xa20236f1 extends Task {

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final CountDownLatch f5631x9738a56c;

    public C1228xa20236f1() {
        super(AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), _UtilJvmKt.okHttpName, " awaitIdle"), false);
        this.f5631x9738a56c = new CountDownLatch(1);
    }

    @Override // okhttp3.internal.concurrent.Task
    public final long runOnce() {
        this.f5631x9738a56c.countDown();
        return -1L;
    }
}
