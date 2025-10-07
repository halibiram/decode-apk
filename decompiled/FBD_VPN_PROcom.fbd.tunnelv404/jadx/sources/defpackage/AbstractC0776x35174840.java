package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.ThrowingCollector;

/* renamed from: 뒼돸된뎰딄딽돰뎨돳땻땵둣땫뒾뎠뎬땯딠둡뒷뎻딀땬딅둑땲땁땲도땁땤땱둘듌돶뎰뎠돳딜땋둡딞돳딨땸됐땠딜땫땹둠뒛듟뒾둥돳뒋딤뎸득된듬듟딽뒵돷땸듻돵돠땄돰딃돤뒝땐뒙된돶땩듟땍딻둡두둣됐둡땥돷뒋딐됴돷도뒋됫뒀따땰뒷땹땣돷뒾됩땹됐뎠되땫땻뒝딅둣땋되듐듔도돶듰될딅땨뒷땀됨땭듼, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract /* synthetic */ class AbstractC0776x35174840 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m3351xfbe0c504(ThrowingCollector throwingCollector, Function3 function3, Throwable th, ContinuationImpl continuationImpl) {
        C0773xd5e929f6 c0773xd5e929f6;
        int i;
        try {
            if (continuationImpl instanceof C0773xd5e929f6) {
                C0773xd5e929f6 c0773xd5e929f62 = (C0773xd5e929f6) continuationImpl;
                int i2 = c0773xd5e929f62.f4744x1378447b;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    c0773xd5e929f62.f4744x1378447b = i2 - Integer.MIN_VALUE;
                    c0773xd5e929f6 = c0773xd5e929f62;
                    Object obj = c0773xd5e929f6.f4743x3271d0aa;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = c0773xd5e929f6.f4744x1378447b;
                    if (i == 0) {
                        if (i == 1) {
                            th = c0773xd5e929f6.f4742xfbe0c504;
                            ResultKt.throwOnFailure(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        ResultKt.throwOnFailure(obj);
                        c0773xd5e929f6.f4742xfbe0c504 = th;
                        c0773xd5e929f6.f4744x1378447b = 1;
                        if (function3.invoke(throwingCollector, th, c0773xd5e929f6) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    return Unit.INSTANCE;
                }
            }
            if (i == 0) {
            }
            return Unit.INSTANCE;
        } catch (Throwable th2) {
            if (th != null && th != th2) {
                AbstractC0720xaa9ccb5a.addSuppressed(th2, th);
            }
            throw th2;
        }
        c0773xd5e929f6 = new ContinuationImpl(continuationImpl);
        Object obj2 = c0773xd5e929f6.f4743x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0773xd5e929f6.f4744x1378447b;
    }
}
