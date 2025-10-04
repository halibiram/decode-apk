package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.WindowInsetsAnimationController;
import androidx.annotation.FloatRange;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.Insets;
import com.google.android.material.color.utilities.Contrast;
import defpackage.AbstractC1300xd3474eb2;

/* loaded from: classes.dex */
public final class WindowInsetsAnimationControllerCompat {
    private final Impl mImpl;

    /* loaded from: classes.dex */
    public static class Impl {
        public void finish(boolean z) {
        }

        public float getCurrentAlpha() {
            return 0.0f;
        }

        @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
        public float getCurrentFraction() {
            return 0.0f;
        }

        public Insets getCurrentInsets() {
            return Insets.NONE;
        }

        public Insets getHiddenStateInsets() {
            return Insets.NONE;
        }

        public Insets getShownStateInsets() {
            return Insets.NONE;
        }

        public int getTypes() {
            return 0;
        }

        public boolean isCancelled() {
            return true;
        }

        public boolean isFinished() {
            return false;
        }

        public void setInsetsAndAlpha(Insets insets, @FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        }
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class Impl30 extends Impl {
        private final WindowInsetsAnimationController mController;

        public Impl30(WindowInsetsAnimationController windowInsetsAnimationController) {
            this.mController = windowInsetsAnimationController;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public void finish(boolean z) {
            this.mController.finish(z);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public float getCurrentAlpha() {
            float currentAlpha;
            currentAlpha = this.mController.getCurrentAlpha();
            return currentAlpha;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public float getCurrentFraction() {
            float currentFraction;
            currentFraction = this.mController.getCurrentFraction();
            return currentFraction;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public Insets getCurrentInsets() {
            android.graphics.Insets currentInsets;
            currentInsets = this.mController.getCurrentInsets();
            return Insets.toCompatInsets(currentInsets);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public Insets getHiddenStateInsets() {
            return Insets.toCompatInsets(AbstractC1300xd3474eb2.m4279x75d576dc(this.mController));
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public Insets getShownStateInsets() {
            android.graphics.Insets shownStateInsets;
            shownStateInsets = this.mController.getShownStateInsets();
            return Insets.toCompatInsets(shownStateInsets);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        @SuppressLint({"WrongConstant"})
        public int getTypes() {
            int types;
            types = this.mController.getTypes();
            return types;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public boolean isCancelled() {
            boolean isCancelled;
            isCancelled = this.mController.isCancelled();
            return isCancelled;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public boolean isFinished() {
            boolean isFinished;
            isFinished = this.mController.isFinished();
            return isFinished;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public void setInsetsAndAlpha(Insets insets, float f, float f2) {
            android.graphics.Insets platformInsets;
            WindowInsetsAnimationController windowInsetsAnimationController = this.mController;
            if (insets == null) {
                platformInsets = null;
            } else {
                platformInsets = insets.toPlatformInsets();
            }
            windowInsetsAnimationController.setInsetsAndAlpha(platformInsets, f, f2);
        }
    }

    @RequiresApi(30)
    public WindowInsetsAnimationControllerCompat(WindowInsetsAnimationController windowInsetsAnimationController) {
        this.mImpl = new Impl30(windowInsetsAnimationController);
    }

    public void finish(boolean z) {
        this.mImpl.finish(z);
    }

    public float getCurrentAlpha() {
        return this.mImpl.getCurrentAlpha();
    }

    @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
    public float getCurrentFraction() {
        return this.mImpl.getCurrentFraction();
    }

    public Insets getCurrentInsets() {
        return this.mImpl.getCurrentInsets();
    }

    public Insets getHiddenStateInsets() {
        return this.mImpl.getHiddenStateInsets();
    }

    public Insets getShownStateInsets() {
        return this.mImpl.getShownStateInsets();
    }

    public int getTypes() {
        return this.mImpl.getTypes();
    }

    public boolean isCancelled() {
        return this.mImpl.isCancelled();
    }

    public boolean isFinished() {
        return this.mImpl.isFinished();
    }

    public boolean isReady() {
        if (!isFinished() && !isCancelled()) {
            return true;
        }
        return false;
    }

    public void setInsetsAndAlpha(Insets insets, @FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        this.mImpl.setInsetsAndAlpha(insets, f, f2);
    }
}
