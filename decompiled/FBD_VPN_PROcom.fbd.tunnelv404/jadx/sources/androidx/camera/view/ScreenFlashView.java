package androidx.camera.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.view.internal.ScreenFlashUiInfo;
import defpackage.C0686x24b55628;
import defpackage.RunnableC1044x8c43c726;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class ScreenFlashView extends View {
    private static final long ANIMATION_DURATION_MILLIS = 1000;
    private static final String TAG = "ScreenFlashView";
    private CameraController mCameraController;
    private ImageCapture.ScreenFlash mScreenFlash;
    private Window mScreenFlashWindow;

    /* renamed from: androidx.camera.view.ScreenFlashView$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ImageCapture.ScreenFlash {
        private ValueAnimator mAnimator;
        private float mPreviousBrightness;

        public AnonymousClass1() {
        }

        @Override // androidx.camera.core.ImageCapture.ScreenFlash
        public void apply(long j, @NonNull ImageCapture.ScreenFlashListener screenFlashListener) {
            Logger.d(ScreenFlashView.TAG, "ScreenFlash#apply");
            this.mPreviousBrightness = ScreenFlashView.this.getBrightness();
            ScreenFlashView.this.setBrightness(1.0f);
            ValueAnimator valueAnimator = this.mAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ScreenFlashView screenFlashView = ScreenFlashView.this;
            Objects.requireNonNull(screenFlashListener);
            this.mAnimator = screenFlashView.animateToFullOpacity(new RunnableC1044x8c43c726(screenFlashListener, 5));
        }

        @Override // androidx.camera.core.ImageCapture.ScreenFlash
        public void clear() {
            Logger.d(ScreenFlashView.TAG, "ScreenFlash#clearScreenFlashUi");
            ValueAnimator valueAnimator = this.mAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.mAnimator = null;
            }
            ScreenFlashView.this.setAlpha(0.0f);
            ScreenFlashView.this.setBrightness(this.mPreviousBrightness);
        }
    }

    /* renamed from: androidx.camera.view.ScreenFlashView$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Animator.AnimatorListener {
        final /* synthetic */ Runnable val$onAnimationEnd;

        public AnonymousClass2(Runnable runnable) {
            r2 = runnable;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(@NonNull Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator) {
            Logger.d(ScreenFlashView.TAG, "ScreenFlash#apply: onAnimationEnd");
            Runnable runnable = r2;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(@NonNull Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@NonNull Animator animator) {
        }
    }

    @UiThread
    public ScreenFlashView(@NonNull Context context) {
        this(context, null);
    }

    public ValueAnimator animateToFullOpacity(@Nullable Runnable runnable) {
        Logger.d(TAG, "animateToFullOpacity");
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(getVisibilityRampUpAnimationDurationMillis());
        ofFloat.addUpdateListener(new C0686x24b55628(this, 3));
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: androidx.camera.view.ScreenFlashView.2
            final /* synthetic */ Runnable val$onAnimationEnd;

            public AnonymousClass2(Runnable runnable2) {
                r2 = runnable2;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NonNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NonNull Animator animator) {
                Logger.d(ScreenFlashView.TAG, "ScreenFlash#apply: onAnimationEnd");
                Runnable runnable2 = r2;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NonNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NonNull Animator animator) {
            }
        });
        ofFloat.start();
        return ofFloat;
    }

    public float getBrightness() {
        Window window = this.mScreenFlashWindow;
        if (window == null) {
            Logger.e(TAG, "setBrightness: mScreenFlashWindow is null!");
            return Float.NaN;
        }
        return window.getAttributes().screenBrightness;
    }

    public /* synthetic */ void lambda$animateToFullOpacity$0(ValueAnimator valueAnimator) {
        Logger.d(TAG, "animateToFullOpacity: value = " + ((Float) valueAnimator.getAnimatedValue()).floatValue());
        setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public void setBrightness(float f) {
        if (this.mScreenFlashWindow == null) {
            Logger.e(TAG, "setBrightness: mScreenFlashWindow is null!");
            return;
        }
        if (Float.isNaN(f)) {
            Logger.e(TAG, "setBrightness: value is NaN!");
            return;
        }
        WindowManager.LayoutParams attributes = this.mScreenFlashWindow.getAttributes();
        attributes.screenBrightness = f;
        this.mScreenFlashWindow.setAttributes(attributes);
        Logger.d(TAG, "Brightness set to " + attributes.screenBrightness);
    }

    private void setScreenFlashUiInfo(ImageCapture.ScreenFlash screenFlash) {
        CameraController cameraController = this.mCameraController;
        if (cameraController == null) {
            Logger.d(TAG, "setScreenFlashUiInfo: mCameraController is null!");
        } else {
            cameraController.setScreenFlashUiInfo(new ScreenFlashUiInfo(ScreenFlashUiInfo.ProviderType.SCREEN_FLASH_VIEW, screenFlash));
        }
    }

    private void updateScreenFlash(Window window) {
        AnonymousClass1 anonymousClass1;
        if (this.mScreenFlashWindow != window) {
            if (window == null) {
                anonymousClass1 = null;
            } else {
                anonymousClass1 = new ImageCapture.ScreenFlash() { // from class: androidx.camera.view.ScreenFlashView.1
                    private ValueAnimator mAnimator;
                    private float mPreviousBrightness;

                    public AnonymousClass1() {
                    }

                    @Override // androidx.camera.core.ImageCapture.ScreenFlash
                    public void apply(long j, @NonNull ImageCapture.ScreenFlashListener screenFlashListener) {
                        Logger.d(ScreenFlashView.TAG, "ScreenFlash#apply");
                        this.mPreviousBrightness = ScreenFlashView.this.getBrightness();
                        ScreenFlashView.this.setBrightness(1.0f);
                        ValueAnimator valueAnimator = this.mAnimator;
                        if (valueAnimator != null) {
                            valueAnimator.cancel();
                        }
                        ScreenFlashView screenFlashView = ScreenFlashView.this;
                        Objects.requireNonNull(screenFlashListener);
                        this.mAnimator = screenFlashView.animateToFullOpacity(new RunnableC1044x8c43c726(screenFlashListener, 5));
                    }

                    @Override // androidx.camera.core.ImageCapture.ScreenFlash
                    public void clear() {
                        Logger.d(ScreenFlashView.TAG, "ScreenFlash#clearScreenFlashUi");
                        ValueAnimator valueAnimator = this.mAnimator;
                        if (valueAnimator != null) {
                            valueAnimator.cancel();
                            this.mAnimator = null;
                        }
                        ScreenFlashView.this.setAlpha(0.0f);
                        ScreenFlashView.this.setBrightness(this.mPreviousBrightness);
                    }
                };
            }
            this.mScreenFlash = anonymousClass1;
        }
    }

    @Nullable
    @UiThread
    public ImageCapture.ScreenFlash getScreenFlash() {
        return this.mScreenFlash;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public long getVisibilityRampUpAnimationDurationMillis() {
        return 1000L;
    }

    @UiThread
    public void setController(@Nullable CameraController cameraController) {
        Threads.checkMainThread();
        CameraController cameraController2 = this.mCameraController;
        if (cameraController2 != null && cameraController2 != cameraController) {
            setScreenFlashUiInfo(null);
        }
        this.mCameraController = cameraController;
        if (cameraController == null) {
            return;
        }
        if (cameraController.getImageCaptureFlashMode() == 3 && this.mScreenFlashWindow == null) {
            throw new IllegalStateException("No window set despite setting FLASH_MODE_SCREEN in CameraController");
        }
        setScreenFlashUiInfo(getScreenFlash());
    }

    @UiThread
    public void setScreenFlashWindow(@Nullable Window window) {
        Threads.checkMainThread();
        updateScreenFlash(window);
        this.mScreenFlashWindow = window;
        setScreenFlashUiInfo(getScreenFlash());
    }

    @UiThread
    public ScreenFlashView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @UiThread
    public ScreenFlashView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    @UiThread
    public ScreenFlashView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        setBackgroundColor(-1);
        setAlpha(0.0f);
        setElevation(Float.MAX_VALUE);
    }
}
