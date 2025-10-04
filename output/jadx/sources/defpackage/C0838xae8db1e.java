package defpackage;

import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.ExceptionsKt;
import kotlinx.coroutines.Job;

/* renamed from: 들땥뎠딜땳돨땋딄땯듐둣듼땫딠뎠딅듸뎽땳돶돛될돴땰땋땠둥듰둣땋딟뒷돴뒨들됐돷딹돰득뎨뒈듽딀드땭뎽땋뒨둔둘뒤뒵드뒐듼되돵땭뒷땅딅뒝딽듸듽듻뎡뎰될땹뒉땮뒛돸딜뒾딜둔땍딅돴뒝땯땮듟들땳되딽땣땵땫땃뒝돨딎득됩땪듟땝뒙뎡듻됴돛뒬둬딄땻둬둑땨뎡둘땬뎠딄땣땋딃땯땡돛땫딞땠딄땣, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0838xae8db1e implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Job f4926xfbe0c504;

    public C0838xae8db1e(Job job) {
        this.f4926xfbe0c504 = job;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Throwable th = (Throwable) obj2;
        CancellationException cancellationException = null;
        if (th != null) {
            if (th instanceof CancellationException) {
                cancellationException = (CancellationException) th;
            }
            if (cancellationException == null) {
                cancellationException = ExceptionsKt.CancellationException("CompletableFuture was completed exceptionally", th);
            }
        }
        this.f4926xfbe0c504.cancel(cancellationException);
        return Unit.INSTANCE;
    }
}
