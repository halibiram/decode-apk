package kotlinx.coroutines;

import defpackage.C0578x2696c5f2;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\n\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u0011\u001a\u00020\u00078\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\tR\u0014\u0010\u0013\u001a\u00020\u00078PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\t¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableJob;", "Lkotlinx/coroutines/Job;", "parent", "<init>", "(Lkotlinx/coroutines/Job;)V", "", "complete", "()Z", "", "exception", "completeExceptionally", "(Ljava/lang/Throwable;)Z", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Z", "getHandlesException$kotlinx_coroutines_core", "handlesException", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@PublishedApi
/* loaded from: classes3.dex */
public class JobImpl extends JobSupport implements CompletableJob {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public final boolean handlesException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        r5 = r5.getParentHandle$kotlinx_coroutines_core();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        if ((r5 instanceof defpackage.C0578x2696c5f2) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
    
        r5 = (defpackage.C0578x2696c5f2) r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
    
        if (r5 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0033, code lost:
    
        r5 = r5.getJob();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
    
        if (r5 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0030, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
    
        if (r5 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
    
        if (r5.getHandlesException() == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JobImpl(@Nullable Job job) {
        super(true);
        C0578x2696c5f2 c0578x2696c5f2;
        boolean z = true;
        initParentJob(job);
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core instanceof C0578x2696c5f2) {
            c0578x2696c5f2 = (C0578x2696c5f2) parentHandle$kotlinx_coroutines_core;
        } else {
            c0578x2696c5f2 = null;
        }
        if (c0578x2696c5f2 != null) {
            JobSupport job2 = c0578x2696c5f2.getJob();
        }
        z = false;
        this.handlesException = z;
    }

    @Override // kotlinx.coroutines.CompletableJob
    public boolean complete() {
        return makeCompleting$kotlinx_coroutines_core(Unit.INSTANCE);
    }

    @Override // kotlinx.coroutines.CompletableJob
    public boolean completeExceptionally(@NotNull Throwable exception) {
        return makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(exception, false, 2, null));
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: getHandlesException$kotlinx_coroutines_core, reason: from getter */
    public boolean getHandlesException() {
        return this.handlesException;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }
}
