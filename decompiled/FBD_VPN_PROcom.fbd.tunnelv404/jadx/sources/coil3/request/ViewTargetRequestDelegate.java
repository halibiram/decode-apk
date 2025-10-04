package coil3.request;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import coil3.ImageLoader;
import coil3.content.LifecyclesKt;
import coil3.target.ViewTarget;
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

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u0010\u0010\u0014\u001a\u00020\u000fH\u0096@¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0016\u0010\u0011J\u0017\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcoil3/request/ViewTargetRequestDelegate;", "Lcoil3/request/RequestDelegate;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/request/ImageRequest;", "initialRequest", "Lcoil3/target/ViewTarget;", TypedValues.AttributesType.S_TARGET, "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/target/ViewTarget;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V", "", "restart", "()V", "assertActive", "start", "awaitStarted", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dispose", "Landroidx/lifecycle/LifecycleOwner;", "owner", "onDestroy", "(Landroidx/lifecycle/LifecycleOwner;)V", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ViewTargetRequestDelegate implements RequestDelegate, DefaultLifecycleObserver {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ImageLoader f822xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final ImageRequest f823x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final ViewTarget f824x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Lifecycle f825x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final Job f826x9738a56c;

    public ViewTargetRequestDelegate(@NotNull ImageLoader imageLoader, @NotNull ImageRequest imageRequest, @NotNull ViewTarget<?> viewTarget, @Nullable Lifecycle lifecycle, @NotNull Job job) {
        this.f822xfbe0c504 = imageLoader;
        this.f823x3271d0aa = imageRequest;
        this.f824x1378447b = viewTarget;
        this.f825x75d576dc = lifecycle;
        this.f826x9738a56c = job;
    }

    @Override // coil3.request.RequestDelegate
    public void assertActive() {
        ViewTarget viewTarget = this.f824x1378447b;
        if (viewTarget.getView().isAttachedToWindow()) {
            return;
        }
        ViewTargetRequestManagerKt.getRequestManager(viewTarget.getView()).setRequest(this);
        throw new CancellationException("'ViewTarget.view' must be attached to a window.");
    }

    @Override // coil3.request.RequestDelegate
    @Nullable
    public Object awaitStarted(@NotNull Continuation<? super Unit> continuation) {
        Lifecycle lifecycle = this.f825x75d576dc;
        if (lifecycle != null) {
            Object awaitStarted = LifecyclesKt.awaitStarted(lifecycle, continuation);
            if (awaitStarted == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                return awaitStarted;
            }
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    @Override // coil3.request.RequestDelegate
    public final /* synthetic */ void complete() {
        AbstractC1087x843156f8.m3784x1378447b(this);
    }

    @Override // coil3.request.RequestDelegate
    public void dispose() {
        Job.DefaultImpls.cancel$default(this.f826x9738a56c, (CancellationException) null, 1, (Object) null);
        ViewTarget viewTarget = this.f824x1378447b;
        boolean z = viewTarget instanceof LifecycleObserver;
        Lifecycle lifecycle = this.f825x75d576dc;
        if (z && lifecycle != null) {
            lifecycle.removeObserver((LifecycleObserver) viewTarget);
        }
        if (lifecycle != null) {
            lifecycle.removeObserver(this);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
        AbstractC0660x214e2f7.m3269xfbe0c504(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        ViewTargetRequestManagerKt.getRequestManager(this.f824x1378447b.getView()).dispose();
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

    public final void restart() {
        this.f822xfbe0c504.enqueue(this.f823x3271d0aa);
    }

    @Override // coil3.request.RequestDelegate
    public void start() {
        Lifecycle lifecycle = this.f825x75d576dc;
        if (lifecycle != null) {
            lifecycle.addObserver(this);
        }
        ViewTarget viewTarget = this.f824x1378447b;
        if ((viewTarget instanceof LifecycleObserver) && lifecycle != null) {
            LifecyclesKt.removeAndAddObserver(lifecycle, (LifecycleObserver) viewTarget);
        }
        ViewTargetRequestManagerKt.getRequestManager(viewTarget.getView()).setRequest(this);
    }
}
