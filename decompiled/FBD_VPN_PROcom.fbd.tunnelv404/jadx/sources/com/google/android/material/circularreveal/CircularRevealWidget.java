package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.math.MathUtils;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public interface CircularRevealWidget extends CircularRevealHelper.Delegate {

    /* loaded from: classes2.dex */
    public static class CircularRevealEvaluator implements TypeEvaluator<RevealInfo> {
        public static final TypeEvaluator<RevealInfo> CIRCULAR_REVEAL = new CircularRevealEvaluator();
        private final RevealInfo revealInfo = new RevealInfo();

        @Override // android.animation.TypeEvaluator
        @NonNull
        public RevealInfo evaluate(float f, @NonNull RevealInfo revealInfo, @NonNull RevealInfo revealInfo2) {
            this.revealInfo.set(MathUtils.lerp(revealInfo.centerX, revealInfo2.centerX, f), MathUtils.lerp(revealInfo.centerY, revealInfo2.centerY, f), MathUtils.lerp(revealInfo.radius, revealInfo2.radius, f));
            return this.revealInfo;
        }
    }

    /* loaded from: classes2.dex */
    public static class CircularRevealProperty extends Property<CircularRevealWidget, RevealInfo> {
        public static final Property<CircularRevealWidget, RevealInfo> CIRCULAR_REVEAL = new CircularRevealProperty(new ObfuscatedString(new long[]{-1147205125164662837L, 5560702359396568981L, 252315440206657566L}).toString());

        private CircularRevealProperty(String str) {
            super(RevealInfo.class, str);
        }

        @Override // android.util.Property
        @Nullable
        public RevealInfo get(@NonNull CircularRevealWidget circularRevealWidget) {
            return circularRevealWidget.getRevealInfo();
        }

        @Override // android.util.Property
        public void set(@NonNull CircularRevealWidget circularRevealWidget, @Nullable RevealInfo revealInfo) {
            circularRevealWidget.setRevealInfo(revealInfo);
        }
    }

    /* loaded from: classes2.dex */
    public static class CircularRevealScrimColorProperty extends Property<CircularRevealWidget, Integer> {
        public static final Property<CircularRevealWidget, Integer> CIRCULAR_REVEAL_SCRIM_COLOR = new CircularRevealScrimColorProperty(new ObfuscatedString(new long[]{3297328309838629114L, -3183637311455391013L, 5340857076406845205L, -7536715676913218412L}).toString());

        private CircularRevealScrimColorProperty(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        @NonNull
        public Integer get(@NonNull CircularRevealWidget circularRevealWidget) {
            return Integer.valueOf(circularRevealWidget.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        public void set(@NonNull CircularRevealWidget circularRevealWidget, @NonNull Integer num) {
            circularRevealWidget.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* loaded from: classes2.dex */
    public static class RevealInfo {
        public static final float INVALID_RADIUS = Float.MAX_VALUE;
        public float centerX;
        public float centerY;
        public float radius;

        public boolean isInvalid() {
            if (this.radius == Float.MAX_VALUE) {
                return true;
            }
            return false;
        }

        public void set(float f, float f2, float f3) {
            this.centerX = f;
            this.centerY = f2;
            this.radius = f3;
        }

        private RevealInfo() {
        }

        public RevealInfo(float f, float f2, float f3) {
            this.centerX = f;
            this.centerY = f2;
            this.radius = f3;
        }

        public void set(@NonNull RevealInfo revealInfo) {
            set(revealInfo.centerX, revealInfo.centerY, revealInfo.radius);
        }

        public RevealInfo(@NonNull RevealInfo revealInfo) {
            this(revealInfo.centerX, revealInfo.centerY, revealInfo.radius);
        }
    }

    void buildCircularRevealCache();

    void destroyCircularRevealCache();

    void draw(Canvas canvas);

    @Nullable
    Drawable getCircularRevealOverlayDrawable();

    @ColorInt
    int getCircularRevealScrimColor();

    @Nullable
    RevealInfo getRevealInfo();

    boolean isOpaque();

    void setCircularRevealOverlayDrawable(@Nullable Drawable drawable);

    void setCircularRevealScrimColor(@ColorInt int i);

    void setRevealInfo(@Nullable RevealInfo revealInfo);
}
