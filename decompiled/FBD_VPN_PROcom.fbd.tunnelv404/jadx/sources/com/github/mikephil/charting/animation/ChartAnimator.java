package com.github.mikephil.charting.animation;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import com.github.mikephil.charting.animation.Easing;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class ChartAnimator {
    private ValueAnimator.AnimatorUpdateListener mListener;
    protected float mPhaseY = 1.0f;
    protected float mPhaseX = 1.0f;

    public ChartAnimator() {
    }

    public void animateX(int i, EasingFunction easingFunction) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{8568371861672444523L, 4534280340808500581L}).toString(), 0.0f, 1.0f);
        ofFloat.setInterpolator(easingFunction);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.mListener);
        ofFloat.start();
    }

    public void animateXY(int i, int i2, EasingFunction easingFunction, EasingFunction easingFunction2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{1089291061434777067L, -7691610209198327277L}).toString(), 0.0f, 1.0f);
        ofFloat.setInterpolator(easingFunction2);
        ofFloat.setDuration(i2);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{3080564061372419210L, -5077217960616236377L}).toString(), 0.0f, 1.0f);
        ofFloat2.setInterpolator(easingFunction);
        ofFloat2.setDuration(i);
        if (i > i2) {
            ofFloat2.addUpdateListener(this.mListener);
        } else {
            ofFloat.addUpdateListener(this.mListener);
        }
        ofFloat2.start();
        ofFloat.start();
    }

    public void animateY(int i, EasingFunction easingFunction) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{-2459359371275522450L, 3692164213574787060L}).toString(), 0.0f, 1.0f);
        ofFloat.setInterpolator(easingFunction);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.mListener);
        ofFloat.start();
    }

    public float getPhaseX() {
        return this.mPhaseX;
    }

    public float getPhaseY() {
        return this.mPhaseY;
    }

    public void setPhaseX(float f) {
        this.mPhaseX = f;
    }

    public void setPhaseY(float f) {
        this.mPhaseY = f;
    }

    public ChartAnimator(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.mListener = animatorUpdateListener;
    }

    public void animateX(int i, Easing.EasingOption easingOption) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{-811095807083609878L, 7247071908763548602L}).toString(), 0.0f, 1.0f);
        ofFloat.setInterpolator(Easing.getEasingFunctionFromOption(easingOption));
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.mListener);
        ofFloat.start();
    }

    public void animateY(int i, Easing.EasingOption easingOption) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{3772265774768160410L, -5704241341818707691L}).toString(), 0.0f, 1.0f);
        ofFloat.setInterpolator(Easing.getEasingFunctionFromOption(easingOption));
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.mListener);
        ofFloat.start();
    }

    public void animateX(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{1781861181469020321L, 1830378776365415392L}).toString(), 0.0f, 1.0f);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.mListener);
        ofFloat.start();
    }

    public void animateXY(int i, int i2, Easing.EasingOption easingOption, Easing.EasingOption easingOption2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{-1490838904358335153L, 566492363343451008L}).toString(), 0.0f, 1.0f);
        ofFloat.setInterpolator(Easing.getEasingFunctionFromOption(easingOption2));
        ofFloat.setDuration(i2);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{-7195345847401201457L, 1323515350981236405L}).toString(), 0.0f, 1.0f);
        ofFloat2.setInterpolator(Easing.getEasingFunctionFromOption(easingOption));
        ofFloat2.setDuration(i);
        if (i > i2) {
            ofFloat2.addUpdateListener(this.mListener);
        } else {
            ofFloat.addUpdateListener(this.mListener);
        }
        ofFloat2.start();
        ofFloat.start();
    }

    public void animateY(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{5957538687399638851L, -4788652366855881051L}).toString(), 0.0f, 1.0f);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(this.mListener);
        ofFloat.start();
    }

    public void animateXY(int i, int i2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{-558089671486016487L, 6190757096269227964L}).toString(), 0.0f, 1.0f);
        ofFloat.setDuration(i2);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{-2913432786500139635L, -2019165664203954747L}).toString(), 0.0f, 1.0f);
        ofFloat2.setDuration(i);
        if (i > i2) {
            ofFloat2.addUpdateListener(this.mListener);
        } else {
            ofFloat.addUpdateListener(this.mListener);
        }
        ofFloat2.start();
        ofFloat.start();
    }
}
