package defpackage;

import coil3.disk.DiskLruCache;
import java.io.IOException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okio.Okio;

/* renamed from: 뒋됫도둣뒼땁땋뎡됨돠딌딨딞돝땡뒵뎠뎸둣듨딠땍땯듽딟땅딠뎨땅딹땪땨땳땧땬듰드딃땭돝도땰되뎠듸땲됫땨딎땄뎨뒾듻뒈뒉듌땜땦듬땡땁드땡땍뎽두땅듰땤들땐땨됫뒤듰돶뒹뒨딞뎠돨뒙듨땻뒹땩딄딄든땤땱땣딤딻돼땍뒬듬땤뎸딄땔뎻땵땰돝듻뎠딨땫딁둑땰땡들땹도딜뒘됩될딨땬뒉땟땐둠땟돰됨, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0676x5cc001ec extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ DiskLruCache f4506xfbe0c504;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0676x5cc001ec(DiskLruCache diskLruCache, Continuation continuation) {
        super(2, continuation);
        this.f4506xfbe0c504 = diskLruCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0676x5cc001ec(this.f4506xfbe0c504, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0676x5cc001ec) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        boolean z2;
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        Object obj2 = this.f4506xfbe0c504.f560x9d12c1f4;
        DiskLruCache diskLruCache = this.f4506xfbe0c504;
        synchronized (obj2) {
            z = diskLruCache.f565xab142723;
            if (z) {
                z2 = diskLruCache.f566x85f0360e;
                if (!z2) {
                    try {
                        diskLruCache.m938x34271fae();
                    } catch (IOException unused) {
                        diskLruCache.f567xad53da1a = true;
                    }
                    try {
                        if (DiskLruCache.access$journalRewriteRequired(diskLruCache)) {
                            diskLruCache.m939x3db60231();
                        }
                    } catch (IOException unused2) {
                        diskLruCache.f568x952a0a9e = true;
                        diskLruCache.f563x8c6fc18a = Okio.buffer(Okio.blackhole());
                    }
                    return Unit.INSTANCE;
                }
            }
            return Unit.INSTANCE;
        }
    }
}
