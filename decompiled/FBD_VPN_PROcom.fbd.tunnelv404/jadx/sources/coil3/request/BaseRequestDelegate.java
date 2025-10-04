package coil3.request;

import defpackage.AbstractC1087x843156f8;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0081@\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0015"}, d2 = {"Lcoil3/request/BaseRequestDelegate;", "Lcoil3/request/RequestDelegate;", "Lkotlinx/coroutines/Job;", "job", "constructor-impl", "(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;", "", "dispose-impl", "(Lkotlinx/coroutines/Job;)V", "dispose", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class BaseRequestDelegate implements RequestDelegate {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Job f695xfbe0c504;

    public /* synthetic */ BaseRequestDelegate(Job job) {
        this.f695xfbe0c504 = job;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ BaseRequestDelegate m945boximpl(Job job) {
        return new BaseRequestDelegate(job);
    }

    @NotNull
    /* renamed from: constructor-impl, reason: not valid java name */
    public static Job m946constructorimpl(@NotNull Job job) {
        return job;
    }

    /* renamed from: dispose-impl, reason: not valid java name */
    public static void m947disposeimpl(Job job) {
        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m948equalsimpl(Job job, Object obj) {
        return (obj instanceof BaseRequestDelegate) && Intrinsics.areEqual(job, ((BaseRequestDelegate) obj).getF695xfbe0c504());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m949equalsimpl0(Job job, Job job2) {
        return Intrinsics.areEqual(job, job2);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m950hashCodeimpl(Job job) {
        return job.hashCode();
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m951toStringimpl(Job job) {
        return "BaseRequestDelegate(job=" + job + ')';
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ void assertActive() {
        AbstractC1087x843156f8.m3782xfbe0c504(this);
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ Object awaitStarted(Continuation continuation) {
        return AbstractC1087x843156f8.m3783x3271d0aa(this, continuation);
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ void complete() {
        AbstractC1087x843156f8.m3784x1378447b(this);
    }

    @Override // coil3.request.RequestDelegate
    public void dispose() {
        m947disposeimpl(this.f695xfbe0c504);
    }

    public boolean equals(Object other) {
        return m948equalsimpl(this.f695xfbe0c504, other);
    }

    public int hashCode() {
        return m950hashCodeimpl(this.f695xfbe0c504);
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ void start() {
        AbstractC1087x843156f8.m3786x9738a56c(this);
    }

    public String toString() {
        return m951toStringimpl(this.f695xfbe0c504);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ Job getF695xfbe0c504() {
        return this.f695xfbe0c504;
    }
}
