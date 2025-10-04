package coil3.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import coil3.content.LifecyclesKt;
import defpackage.AbstractC0660x214e2f7;
import defpackage.AbstractC0892xc141c517;
import defpackage.AbstractC1087x843156f8;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\tH\u0096@¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000e\u0010\u000bJ\u000f\u0010\u000f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u000bJ\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcoil3/request/LifecycleRequestDelegate;", "Lcoil3/request/RequestDelegate;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V", "", "start", "()V", "awaitStarted", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "complete", "dispose", "Landroidx/lifecycle/LifecycleOwner;", "owner", "onDestroy", "(Landroidx/lifecycle/LifecycleOwner;)V", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LifecycleRequestDelegate implements RequestDelegate, DefaultLifecycleObserver {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Lifecycle f800xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Job f801x3271d0aa;

    public LifecycleRequestDelegate(@NotNull Lifecycle lifecycle, @NotNull Job job) {
        this.f800xfbe0c504 = lifecycle;
        this.f801x3271d0aa = job;
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ void assertActive() {
        AbstractC1087x843156f8.m3782xfbe0c504(this);
    }

    @Override // coil3.request.RequestDelegate
    @Nullable
    public Object awaitStarted(@NotNull Continuation<? super Unit> continuation) {
        Object awaitStarted = LifecyclesKt.awaitStarted(this.f800xfbe0c504, continuation);
        if (awaitStarted == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return awaitStarted;
        }
        return Unit.INSTANCE;
    }

    @Override // coil3.request.RequestDelegate
    public void complete() {
        this.f800xfbe0c504.removeObserver(this);
    }

    @Override // coil3.request.RequestDelegate
    public void dispose() {
        Job.DefaultImpls.cancel$default(this.f801x3271d0aa, (CancellationException) null, 1, (Object) null);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
        AbstractC0660x214e2f7.m3269xfbe0c504(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        dispose();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
        AbstractC0660x214e2f7.m3271x1378447b(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
        AbstractC0660x214e2f7.m3272x75d576dc(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
        AbstractC0660x214e2f7.m3273x9738a56c(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
        AbstractC0660x214e2f7.m3274x9e171bf9(this, lifecycleOwner);
    }

    @Override // coil3.request.RequestDelegate
    public void start() {
        this.f800xfbe0c504.addObserver(this);
    }
}
