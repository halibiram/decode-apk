package coil3.request;

import android.view.View;
import androidx.annotation.MainThread;
import coil3.content.CoroutinesKt;
import coil3.content.Utils_androidKt;
import defpackage.C1292xd188be85;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u000e\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u00102\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u001a\u0010\u0005J\u0017\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u001b\u0010\u0005¨\u0006\u001c"}, d2 = {"Lcoil3/request/ViewTargetRequestManager;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "Lcoil3/request/ViewTargetDisposable;", "disposable", "", "isDisposed", "(Lcoil3/request/ViewTargetDisposable;)Z", "Lkotlinx/coroutines/Deferred;", "Lcoil3/request/ImageResult;", "job", "getDisposable", "(Lkotlinx/coroutines/Deferred;)Lcoil3/request/ViewTargetDisposable;", "", "dispose", "()V", "getResult", "()Lcoil3/request/ImageResult;", "Lcoil3/request/ViewTargetRequestDelegate;", "request", "setRequest", "(Lcoil3/request/ViewTargetRequestDelegate;)V", "v", "onViewAttachedToWindow", "onViewDetachedFromWindow", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nViewTargetRequestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewTargetRequestManager.kt\ncoil3/request/ViewTargetRequestManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1#2:114\n*E\n"})
/* loaded from: classes.dex */
public final class ViewTargetRequestManager implements View.OnAttachStateChangeListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final View f827xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public ViewTargetDisposable f828x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public Job f829x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public ViewTargetRequestDelegate f830x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public boolean f831x9738a56c;

    public ViewTargetRequestManager(@NotNull View view) {
        this.f827xfbe0c504 = view;
    }

    public final synchronized void dispose() {
        try {
            Job job = this.f829x1378447b;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            this.f829x1378447b = BuildersKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain().getImmediate(), null, new C1292xd188be85(this, null), 2, null);
            this.f828x3271d0aa = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @NotNull
    public final synchronized ViewTargetDisposable getDisposable(@NotNull Deferred<? extends ImageResult> job) {
        ViewTargetDisposable viewTargetDisposable = this.f828x3271d0aa;
        if (viewTargetDisposable != null && Utils_androidKt.isMainThread() && this.f831x9738a56c) {
            this.f831x9738a56c = false;
            viewTargetDisposable.setJob(job);
            return viewTargetDisposable;
        }
        Job job2 = this.f829x1378447b;
        if (job2 != null) {
            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
        }
        this.f829x1378447b = null;
        ViewTargetDisposable viewTargetDisposable2 = new ViewTargetDisposable(this.f827xfbe0c504, job);
        this.f828x3271d0aa = viewTargetDisposable2;
        return viewTargetDisposable2;
    }

    @Nullable
    public final synchronized ImageResult getResult() {
        ImageResult imageResult;
        Deferred<ImageResult> job;
        ViewTargetDisposable viewTargetDisposable = this.f828x3271d0aa;
        if (viewTargetDisposable != null && (job = viewTargetDisposable.getJob()) != null) {
            imageResult = (ImageResult) CoroutinesKt.getCompletedOrNull(job);
        } else {
            imageResult = null;
        }
        return imageResult;
    }

    public final synchronized boolean isDisposed(@NotNull ViewTargetDisposable disposable) {
        boolean z;
        if (disposable != this.f828x3271d0aa) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    @MainThread
    public void onViewAttachedToWindow(@NotNull View v) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.f830x75d576dc;
        if (viewTargetRequestDelegate == null) {
            return;
        }
        this.f831x9738a56c = true;
        viewTargetRequestDelegate.restart();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    @MainThread
    public void onViewDetachedFromWindow(@NotNull View v) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.f830x75d576dc;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.dispose();
        }
    }

    @MainThread
    public final void setRequest(@Nullable ViewTargetRequestDelegate request) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.f830x75d576dc;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.dispose();
        }
        this.f830x75d576dc = request;
    }
}
