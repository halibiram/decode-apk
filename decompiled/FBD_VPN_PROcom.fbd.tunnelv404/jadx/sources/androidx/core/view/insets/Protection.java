package androidx.core.view.insets;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.annotation.FloatRange;
import androidx.core.graphics.Insets;
import com.google.android.material.color.utilities.Contrast;
import defpackage.AbstractC0362x4440ab85;
import defpackage.C1050x77e4bcc8;

/* loaded from: classes.dex */
public abstract class Protection {
    private static final long DEFAULT_DURATION_IN = 333;
    private static final long DEFAULT_DURATION_OUT = 166;
    private final Attributes mAttributes = new Attributes();
    private Object mController;
    private Insets mInsets;
    private Insets mInsetsIgnoringVisibility;
    private final int mSide;
    private float mSystemAlpha;
    private float mSystemInsetAmount;
    private float mUserAlpha;
    private ValueAnimator mUserAlphaAnimator;
    private float mUserInsetAmount;
    private ValueAnimator mUserInsetAmountAnimator;
    private static final Interpolator DEFAULT_INTERPOLATOR_MOVE_IN = new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f);
    private static final Interpolator DEFAULT_INTERPOLATOR_MOVE_OUT = new PathInterpolator(0.6f, 0.0f, 1.0f, 1.0f);
    private static final Interpolator DEFAULT_INTERPOLATOR_FADE_IN = new PathInterpolator(0.0f, 0.0f, 0.2f, 1.0f);
    private static final Interpolator DEFAULT_INTERPOLATOR_FADE_OUT = new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);

    /* loaded from: classes.dex */
    public static class Attributes {
        private static final int UNSPECIFIED = -1;
        private Callback mCallback;
        private int mWidth = -1;
        private int mHeight = -1;
        private Insets mMargin = Insets.NONE;
        private boolean mVisible = false;
        private Drawable mDrawable = null;
        private float mTranslationX = 0.0f;
        private float mTranslationY = 0.0f;
        private float mAlpha = 1.0f;

        /* loaded from: classes.dex */
        public interface Callback {
            void onAlphaChanged(float f);

            void onDrawableChanged(Drawable drawable);

            void onHeightChanged(int i);

            void onMarginChanged(Insets insets);

            void onTranslationXChanged(float f);

            void onTranslationYChanged(float f);

            void onVisibilityChanged(boolean z);

            void onWidthChanged(int i);
        }

        public void setAlpha(float f) {
            if (this.mAlpha != f) {
                this.mAlpha = f;
                Callback callback = this.mCallback;
                if (callback != null) {
                    callback.onAlphaChanged(f);
                }
            }
        }

        public void setDrawable(Drawable drawable) {
            this.mDrawable = drawable;
            Callback callback = this.mCallback;
            if (callback != null) {
                callback.onDrawableChanged(drawable);
            }
        }

        public void setHeight(int i) {
            if (this.mHeight != i) {
                this.mHeight = i;
                Callback callback = this.mCallback;
                if (callback != null) {
                    callback.onHeightChanged(i);
                }
            }
        }

        public void setMargin(Insets insets) {
            if (!this.mMargin.equals(insets)) {
                this.mMargin = insets;
                Callback callback = this.mCallback;
                if (callback != null) {
                    callback.onMarginChanged(insets);
                }
            }
        }

        public void setTranslationX(float f) {
            if (this.mTranslationX != f) {
                this.mTranslationX = f;
                Callback callback = this.mCallback;
                if (callback != null) {
                    callback.onTranslationXChanged(f);
                }
            }
        }

        public void setTranslationY(float f) {
            if (this.mTranslationY != f) {
                this.mTranslationY = f;
                Callback callback = this.mCallback;
                if (callback != null) {
                    callback.onTranslationYChanged(f);
                }
            }
        }

        public void setVisible(boolean z) {
            if (this.mVisible != z) {
                this.mVisible = z;
                Callback callback = this.mCallback;
                if (callback != null) {
                    callback.onVisibilityChanged(z);
                }
            }
        }

        public void setWidth(int i) {
            if (this.mWidth != i) {
                this.mWidth = i;
                Callback callback = this.mCallback;
                if (callback != null) {
                    callback.onWidthChanged(i);
                }
            }
        }

        public float getAlpha() {
            return this.mAlpha;
        }

        public Drawable getDrawable() {
            return this.mDrawable;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public Insets getMargin() {
            return this.mMargin;
        }

        public float getTranslationX() {
            return this.mTranslationX;
        }

        public float getTranslationY() {
            return this.mTranslationY;
        }

        public int getWidth() {
            return this.mWidth;
        }

        public boolean isVisible() {
            return this.mVisible;
        }

        public void setCallback(Callback callback) {
            if (this.mCallback != null && callback != null) {
                throw new IllegalStateException("Trying to overwrite the existing callback. Did you send one protection to multiple ProtectionLayouts?");
            }
            this.mCallback = callback;
        }
    }

    public Protection(int i) {
        Insets insets = Insets.NONE;
        this.mInsets = insets;
        this.mInsetsIgnoringVisibility = insets;
        this.mSystemAlpha = 1.0f;
        this.mUserAlpha = 1.0f;
        this.mSystemInsetAmount = 1.0f;
        this.mUserInsetAmount = 1.0f;
        this.mController = null;
        this.mUserAlphaAnimator = null;
        this.mUserInsetAmountAnimator = null;
        if (i != 1 && i != 2 && i != 4 && i != 8) {
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Unexpected side: "));
        }
        this.mSide = i;
    }

    private void cancelUserAlphaAnimation() {
        ValueAnimator valueAnimator = this.mUserAlphaAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mUserAlphaAnimator = null;
        }
    }

    private void cancelUserInsetsAmountAnimation() {
        ValueAnimator valueAnimator = this.mUserInsetAmountAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mUserInsetAmountAnimator = null;
        }
    }

    public /* synthetic */ void lambda$animateAlpha$0(ValueAnimator valueAnimator) {
        setAlphaInternal(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public /* synthetic */ void lambda$animateInsetsAmount$1(ValueAnimator valueAnimator) {
        setAlphaInternal(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void setAlphaInternal(float f) {
        this.mUserAlpha = f;
        updateAlpha();
    }

    private void setInsetAmountInternal(float f) {
        this.mUserInsetAmount = f;
        updateInsetAmount();
    }

    private void updateAlpha() {
        this.mAttributes.setAlpha(this.mSystemAlpha * this.mUserAlpha);
    }

    private void updateInsetAmount() {
        float f = this.mUserInsetAmount * this.mSystemInsetAmount;
        int i = this.mSide;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i == 8) {
                        this.mAttributes.setTranslationY((1.0f - f) * r1.mHeight);
                        return;
                    }
                    return;
                }
                this.mAttributes.setTranslationX((1.0f - f) * r1.mWidth);
                return;
            }
            this.mAttributes.setTranslationY((-(1.0f - f)) * r1.mHeight);
            return;
        }
        this.mAttributes.setTranslationX((-(1.0f - f)) * r1.mWidth);
    }

    public void animateAlpha(float f) {
        cancelUserAlphaAnimation();
        float f2 = this.mUserAlpha;
        if (f == f2) {
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f);
        this.mUserAlphaAnimator = ofFloat;
        if (this.mUserAlpha < f) {
            ofFloat.setDuration(DEFAULT_DURATION_IN);
            this.mUserAlphaAnimator.setInterpolator(DEFAULT_INTERPOLATOR_FADE_IN);
        } else {
            ofFloat.setDuration(DEFAULT_DURATION_OUT);
            this.mUserAlphaAnimator.setInterpolator(DEFAULT_INTERPOLATOR_FADE_OUT);
        }
        this.mUserAlphaAnimator.addUpdateListener(new C1050x77e4bcc8(this, 1));
        this.mUserAlphaAnimator.start();
    }

    public void animateInsetsAmount(float f) {
        cancelUserInsetsAmountAnimation();
        float f2 = this.mUserInsetAmount;
        if (f == f2) {
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f);
        this.mUserInsetAmountAnimator = ofFloat;
        if (this.mUserInsetAmount < f) {
            ofFloat.setDuration(DEFAULT_DURATION_IN);
            this.mUserInsetAmountAnimator.setInterpolator(DEFAULT_INTERPOLATOR_MOVE_IN);
        } else {
            ofFloat.setDuration(DEFAULT_DURATION_OUT);
            this.mUserInsetAmountAnimator.setInterpolator(DEFAULT_INTERPOLATOR_MOVE_OUT);
        }
        this.mUserInsetAmountAnimator.addUpdateListener(new C1050x77e4bcc8(this, 0));
        this.mUserInsetAmountAnimator.start();
    }

    public void dispatchColorHint(int i) {
    }

    public Insets dispatchInsets(Insets insets, Insets insets2, Insets insets3) {
        this.mInsets = insets;
        this.mInsetsIgnoringVisibility = insets2;
        this.mAttributes.setMargin(insets3);
        return updateLayout();
    }

    @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
    public float getAlpha() {
        return this.mUserAlpha;
    }

    public Attributes getAttributes() {
        return this.mAttributes;
    }

    public Object getController() {
        return this.mController;
    }

    public float getInsetAmount() {
        return this.mUserInsetAmount;
    }

    public int getSide() {
        return this.mSide;
    }

    public int getThickness(int i) {
        return i;
    }

    public boolean occupiesCorners() {
        return false;
    }

    public void setAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (f >= 0.0f && f <= 1.0f) {
            cancelUserAlphaAnimation();
            setAlphaInternal(f);
        } else {
            throw new IllegalArgumentException("Alpha must in a range of [0, 1]. Got: " + f);
        }
    }

    public void setController(Object obj) {
        this.mController = obj;
    }

    public void setDrawable(Drawable drawable) {
        this.mAttributes.setDrawable(drawable);
    }

    public void setInsetAmount(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (f >= 0.0f && f <= 1.0f) {
            cancelUserInsetsAmountAnimation();
            setInsetAmountInternal(f);
        } else {
            throw new IllegalArgumentException("Inset amount must in a range of [0, 1]. Got: " + f);
        }
    }

    public void setSystemAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.mSystemAlpha = f;
        updateAlpha();
    }

    public void setSystemInsetAmount(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.mSystemInsetAmount = f;
        updateInsetAmount();
    }

    public void setSystemVisible(boolean z) {
        this.mAttributes.setVisible(z);
    }

    public Insets updateLayout() {
        int i;
        float f;
        Insets insets = Insets.NONE;
        int i2 = this.mSide;
        boolean z = true;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 4) {
                    if (i2 != 8) {
                        i = 0;
                    } else {
                        i = this.mInsets.bottom;
                        this.mAttributes.setHeight(getThickness(this.mInsetsIgnoringVisibility.bottom));
                        if (occupiesCorners()) {
                            insets = Insets.of(0, 0, 0, getThickness(i));
                        }
                    }
                } else {
                    i = this.mInsets.right;
                    this.mAttributes.setWidth(getThickness(this.mInsetsIgnoringVisibility.right));
                    if (occupiesCorners()) {
                        insets = Insets.of(0, 0, getThickness(i), 0);
                    }
                }
            } else {
                i = this.mInsets.top;
                this.mAttributes.setHeight(getThickness(this.mInsetsIgnoringVisibility.top));
                if (occupiesCorners()) {
                    insets = Insets.of(0, getThickness(i), 0, 0);
                }
            }
        } else {
            i = this.mInsets.left;
            this.mAttributes.setWidth(getThickness(this.mInsetsIgnoringVisibility.left));
            if (occupiesCorners()) {
                insets = Insets.of(getThickness(i), 0, 0, 0);
            }
        }
        if (i <= 0) {
            z = false;
        }
        setSystemVisible(z);
        float f2 = 0.0f;
        if (i > 0) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        setSystemAlpha(f);
        if (i > 0) {
            f2 = 1.0f;
        }
        setSystemInsetAmount(f2);
        return insets;
    }
}
