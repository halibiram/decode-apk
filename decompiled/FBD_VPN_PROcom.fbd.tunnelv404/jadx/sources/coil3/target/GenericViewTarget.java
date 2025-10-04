package coil3.target;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import coil3.Image;
import coil3.Image_androidKt;
import coil3.transition.TransitionTarget;
import defpackage.AbstractC0660x214e2f7;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000e\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000e\u0010\fJ\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0010\u0010\fJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u000b\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\bH\u0004¢\u0006\u0004\b\u0016\u0010\fJ\u000f\u0010\u0017\u001a\u00020\nH\u0004¢\u0006\u0004\b\u0017\u0010\u0007R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u00188&@&X¦\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcoil3/target/GenericViewTarget;", "Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "Lcoil3/target/ViewTarget;", "Lcoil3/transition/TransitionTarget;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "<init>", "()V", "Lcoil3/Image;", "placeholder", "", "onStart", "(Lcoil3/Image;)V", "error", "onError", "result", "onSuccess", "Landroidx/lifecycle/LifecycleOwner;", "owner", "(Landroidx/lifecycle/LifecycleOwner;)V", "onStop", "image", "updateImage", "updateAnimation", "Landroid/graphics/drawable/Drawable;", "getDrawable", "()Landroid/graphics/drawable/Drawable;", "setDrawable", "(Landroid/graphics/drawable/Drawable;)V", "drawable", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class GenericViewTarget<T extends View> implements ViewTarget<T>, TransitionTarget, DefaultLifecycleObserver {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public boolean f852xfbe0c504;

    @Override // coil3.transition.TransitionTarget
    @Nullable
    public abstract Drawable getDrawable();

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
        AbstractC0660x214e2f7.m3269xfbe0c504(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
        AbstractC0660x214e2f7.m3270x3271d0aa(this, lifecycleOwner);
    }

    @Override // coil3.target.Target
    public void onError(@Nullable Image error) {
        updateImage(error);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
        AbstractC0660x214e2f7.m3271x1378447b(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
        AbstractC0660x214e2f7.m3272x75d576dc(this, lifecycleOwner);
    }

    @Override // coil3.target.Target
    public void onStart(@Nullable Image placeholder) {
        updateImage(placeholder);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(@NotNull LifecycleOwner owner) {
        this.f852xfbe0c504 = false;
        updateAnimation();
    }

    @Override // coil3.target.Target
    public void onSuccess(@NotNull Image result) {
        updateImage(result);
    }

    public abstract void setDrawable(@Nullable Drawable drawable);

    public final void updateAnimation() {
        Animatable animatable;
        Object drawable = getDrawable();
        if (drawable instanceof Animatable) {
            animatable = (Animatable) drawable;
        } else {
            animatable = null;
        }
        if (animatable == null) {
            return;
        }
        if (this.f852xfbe0c504) {
            animatable.start();
        } else {
            animatable.stop();
        }
    }

    public final void updateImage(@Nullable Image image) {
        Drawable drawable;
        Animatable animatable = null;
        if (image != null) {
            drawable = Image_androidKt.asDrawable(image, getView().getResources());
        } else {
            drawable = null;
        }
        Object drawable2 = getDrawable();
        if (drawable2 instanceof Animatable) {
            animatable = (Animatable) drawable2;
        }
        if (animatable != null) {
            animatable.stop();
        }
        setDrawable(drawable);
        updateAnimation();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(@NotNull LifecycleOwner owner) {
        this.f852xfbe0c504 = true;
        updateAnimation();
    }
}
