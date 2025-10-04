package defpackage;

import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.cache.DiskLruCache;

/* renamed from: 뒋뒼돴땫돤땻뒷됴듼땋돨뎸돝뎽듬둬땋땔뎹땤딤뎸땭딀딟돛될딸뒙뒤뒾돛땅듌듐딞돠디딎돷딻들땐드땀돷뎰딨땦듔돳땍땯되딠됩딀땐도땬딟듬둑땝땭딝딁땣땦땅돳땠땭뒉딜듰딀뒨땪딃땋뒼두돳뒼땥돵딎뒼도돷딠둡땡땤뎸땐딞듔딤둡땭됫딠뒉듸됴듽뒛땠돠득땰드되딃뎰듸돨둬땮땰딻땃둠딻땤돳돶땡, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0677xc6061318 extends Lambda implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ DiskLruCache f4507xfbe0c504;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0677xc6061318(DiskLruCache diskLruCache) {
        super(1);
        this.f4507xfbe0c504 = diskLruCache;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        IOException it = (IOException) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        boolean z = _UtilJvmKt.assertionsEnabled;
        DiskLruCache diskLruCache = this.f4507xfbe0c504;
        if (!z || Thread.holdsLock(diskLruCache)) {
            diskLruCache.f3039x8c6fc18a = true;
            return Unit.INSTANCE;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + diskLruCache);
    }
}
