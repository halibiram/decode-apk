package defpackage;

import java.util.concurrent.CompletionException;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.internal.SafeCollector;
import kotlinx.coroutines.flow.internal.SafeCollector_commonKt;

/* renamed from: 들되뎽도뒐디뒵듽됐뒬둘딤됨딽뒾땥땯땳딝되된뎸땭딁돳돶돷든뒾뒉돸땤된뒉돠뎨땧듟뒵돳뎠뒬땰뒹땄땫딁돸뒬돛뎻딅땠도듬땥돶될딐둥듌뒬딸뒀돠되돸뒘뒐딐땣뒵듸뒙땫뎸딞뒤듨뎻돛딅땤땦듌돳뒐됩땃듻땠둔딤들됴뒵돨둡땯뒻땳듐듨돤땋득딝땀땭땲둡듻딌딅돤딽되든딄둠딸딃뒵듰둔뒻디돰딠땅, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0834x4a7fe0f8 implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4917xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4918x3271d0aa;

    public /* synthetic */ C0834x4a7fe0f8(Object obj, int i) {
        this.f4917xfbe0c504 = i;
        this.f4918x3271d0aa = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        if (r1 == null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007f, code lost:
    
        r4 = r4.getCause();
     */
    @Override // kotlin.jvm.functions.Function2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invoke(Object obj, Object obj2) {
        CompletionException completionException;
        boolean completeExceptionally;
        Throwable cause;
        switch (this.f4917xfbe0c504) {
            case 0:
                Throwable th = (Throwable) obj2;
                CompletableDeferred completableDeferred = (CompletableDeferred) this.f4918x3271d0aa;
                try {
                    if (th == null) {
                        completeExceptionally = completableDeferred.complete(obj);
                    } else {
                        if (AbstractC0617xd23d8a2a.m3217xec92ba90(th)) {
                            completionException = AbstractC0617xd23d8a2a.m3206x8c6fc18a(th);
                        } else {
                            completionException = null;
                        }
                        if (completionException != null && cause != null) {
                            th = cause;
                        }
                        completeExceptionally = completableDeferred.completeExceptionally(th);
                    }
                    return Boolean.valueOf(completeExceptionally);
                } catch (Throwable th2) {
                    CoroutineExceptionHandlerKt.handleCoroutineException(EmptyCoroutineContext.INSTANCE, th2);
                    return Unit.INSTANCE;
                }
            default:
                int intValue = ((Integer) obj).intValue();
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                CoroutineContext.Key<?> key = element.getKey();
                CoroutineContext.Element element2 = ((SafeCollector) this.f4918x3271d0aa).collectContext.get(key);
                if (key != Job.INSTANCE) {
                    if (element != element2) {
                        intValue = Integer.MIN_VALUE;
                    }
                    intValue++;
                } else {
                    Job job = (Job) element2;
                    Intrinsics.checkNotNull(element, "null cannot be cast to non-null type kotlinx.coroutines.Job");
                    Job transitiveCoroutineParent = SafeCollector_commonKt.transitiveCoroutineParent((Job) element, job);
                    if (transitiveCoroutineParent != job) {
                        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + transitiveCoroutineParent + ", expected child of " + job + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
                    }
                }
                return Integer.valueOf(intValue);
        }
    }
}
