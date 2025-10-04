package com.airbnb.lottie.value;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class Keyframe<T> {
    private static final float UNSET_FLOAT = -3987645.8f;
    private static final int UNSET_INT = 784923401;

    @Nullable
    private final LottieComposition composition;

    @Nullable
    public Float endFrame;
    private float endProgress;

    @Nullable
    public T endValue;
    private float endValueFloat;
    private int endValueInt;

    @Nullable
    public final Interpolator interpolator;
    public PointF pathCp1;
    public PointF pathCp2;
    public final float startFrame;
    private float startProgress;

    @Nullable
    public final T startValue;
    private float startValueFloat;
    private int startValueInt;

    @Nullable
    public final Interpolator xInterpolator;

    @Nullable
    public final Interpolator yInterpolator;

    public Keyframe(LottieComposition lottieComposition, @Nullable T t, @Nullable T t2, @Nullable Interpolator interpolator, float f, @Nullable Float f2) {
        this.startValueFloat = UNSET_FLOAT;
        this.endValueFloat = UNSET_FLOAT;
        this.startValueInt = UNSET_INT;
        this.endValueInt = UNSET_INT;
        this.startProgress = Float.MIN_VALUE;
        this.endProgress = Float.MIN_VALUE;
        this.pathCp1 = null;
        this.pathCp2 = null;
        this.composition = lottieComposition;
        this.startValue = t;
        this.endValue = t2;
        this.interpolator = interpolator;
        this.xInterpolator = null;
        this.yInterpolator = null;
        this.startFrame = f;
        this.endFrame = f2;
    }

    public boolean containsProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (f >= getStartProgress() && f < getEndProgress()) {
            return true;
        }
        return false;
    }

    public Keyframe<T> copyWith(T t, T t2) {
        return new Keyframe<>(t, t2);
    }

    public float getEndProgress() {
        if (this.composition == null) {
            return 1.0f;
        }
        if (this.endProgress == Float.MIN_VALUE) {
            if (this.endFrame == null) {
                this.endProgress = 1.0f;
            } else {
                this.endProgress = ((this.endFrame.floatValue() - this.startFrame) / this.composition.getDurationFrames()) + getStartProgress();
            }
        }
        return this.endProgress;
    }

    public float getEndValueFloat() {
        if (this.endValueFloat == UNSET_FLOAT) {
            this.endValueFloat = ((Float) this.endValue).floatValue();
        }
        return this.endValueFloat;
    }

    public int getEndValueInt() {
        if (this.endValueInt == UNSET_INT) {
            this.endValueInt = ((Integer) this.endValue).intValue();
        }
        return this.endValueInt;
    }

    public float getStartProgress() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return 0.0f;
        }
        if (this.startProgress == Float.MIN_VALUE) {
            this.startProgress = (this.startFrame - lottieComposition.getStartFrame()) / this.composition.getDurationFrames();
        }
        return this.startProgress;
    }

    public float getStartValueFloat() {
        if (this.startValueFloat == UNSET_FLOAT) {
            this.startValueFloat = ((Float) this.startValue).floatValue();
        }
        return this.startValueFloat;
    }

    public int getStartValueInt() {
        if (this.startValueInt == UNSET_INT) {
            this.startValueInt = ((Integer) this.startValue).intValue();
        }
        return this.startValueInt;
    }

    public boolean isStatic() {
        if (this.interpolator == null && this.xInterpolator == null && this.yInterpolator == null) {
            return true;
        }
        return false;
    }

    public String toString() {
        return new ObfuscatedString(new long[]{-2167185543440247547L, 5721430646752540625L, -2953431732195805725L, 7515595768937085955L}).toString() + this.startValue + new ObfuscatedString(new long[]{3847942178665963360L, 935000675248066058L, -6039050506761005707L}).toString() + this.endValue + new ObfuscatedString(new long[]{-6930275909896520794L, -7438909557669041007L, -4100633848840137530L}).toString() + this.startFrame + new ObfuscatedString(new long[]{-9135277354921616381L, 9168775285666856014L, 6322024001576453007L}).toString() + this.endFrame + new ObfuscatedString(new long[]{-211779846897344200L, -4940555801222300350L, 6106308977071715618L}).toString() + this.interpolator + '}';
    }

    public Keyframe(LottieComposition lottieComposition, @Nullable T t, @Nullable T t2, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, float f, @Nullable Float f2) {
        this.startValueFloat = UNSET_FLOAT;
        this.endValueFloat = UNSET_FLOAT;
        this.startValueInt = UNSET_INT;
        this.endValueInt = UNSET_INT;
        this.startProgress = Float.MIN_VALUE;
        this.endProgress = Float.MIN_VALUE;
        this.pathCp1 = null;
        this.pathCp2 = null;
        this.composition = lottieComposition;
        this.startValue = t;
        this.endValue = t2;
        this.interpolator = null;
        this.xInterpolator = interpolator;
        this.yInterpolator = interpolator2;
        this.startFrame = f;
        this.endFrame = f2;
    }

    public Keyframe(LottieComposition lottieComposition, @Nullable T t, @Nullable T t2, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, @Nullable Interpolator interpolator3, float f, @Nullable Float f2) {
        this.startValueFloat = UNSET_FLOAT;
        this.endValueFloat = UNSET_FLOAT;
        this.startValueInt = UNSET_INT;
        this.endValueInt = UNSET_INT;
        this.startProgress = Float.MIN_VALUE;
        this.endProgress = Float.MIN_VALUE;
        this.pathCp1 = null;
        this.pathCp2 = null;
        this.composition = lottieComposition;
        this.startValue = t;
        this.endValue = t2;
        this.interpolator = interpolator;
        this.xInterpolator = interpolator2;
        this.yInterpolator = interpolator3;
        this.startFrame = f;
        this.endFrame = f2;
    }

    public Keyframe(T t) {
        this.startValueFloat = UNSET_FLOAT;
        this.endValueFloat = UNSET_FLOAT;
        this.startValueInt = UNSET_INT;
        this.endValueInt = UNSET_INT;
        this.startProgress = Float.MIN_VALUE;
        this.endProgress = Float.MIN_VALUE;
        this.pathCp1 = null;
        this.pathCp2 = null;
        this.composition = null;
        this.startValue = t;
        this.endValue = t;
        this.interpolator = null;
        this.xInterpolator = null;
        this.yInterpolator = null;
        this.startFrame = Float.MIN_VALUE;
        this.endFrame = Float.valueOf(Float.MAX_VALUE);
    }

    private Keyframe(T t, T t2) {
        this.startValueFloat = UNSET_FLOAT;
        this.endValueFloat = UNSET_FLOAT;
        this.startValueInt = UNSET_INT;
        this.endValueInt = UNSET_INT;
        this.startProgress = Float.MIN_VALUE;
        this.endProgress = Float.MIN_VALUE;
        this.pathCp1 = null;
        this.pathCp2 = null;
        this.composition = null;
        this.startValue = t;
        this.endValue = t2;
        this.interpolator = null;
        this.xInterpolator = null;
        this.yInterpolator = null;
        this.startFrame = Float.MIN_VALUE;
        this.endFrame = Float.valueOf(Float.MAX_VALUE);
    }
}
