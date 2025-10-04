package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import androidx.annotation.NonNull;
import com.google.android.material.circularreveal.CircularRevealWidget;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class CircularRevealCompat {
    private CircularRevealCompat() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static Animator createCircularReveal(@NonNull CircularRevealWidget circularRevealWidget, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(circularRevealWidget, (Property<CircularRevealWidget, V>) CircularRevealWidget.CircularRevealProperty.CIRCULAR_REVEAL, (TypeEvaluator) CircularRevealWidget.CircularRevealEvaluator.CIRCULAR_REVEAL, (Object[]) new CircularRevealWidget.RevealInfo[]{new CircularRevealWidget.RevealInfo(f, f2, f3)});
        CircularRevealWidget.RevealInfo revealInfo = circularRevealWidget.getRevealInfo();
        if (revealInfo != null) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) circularRevealWidget, (int) f, (int) f2, revealInfo.radius, f3);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-1993703268261727638L, -6319972465254302740L, 4249857737601524195L, -4368886863869666219L, -4511864122820229638L, -6099068407533627732L, 1309408127314984567L, -6438647215504972131L, 1979111542011999612L}).toString());
    }

    @NonNull
    public static Animator.AnimatorListener createCircularRevealListener(@NonNull final CircularRevealWidget circularRevealWidget) {
        return new AnimatorListenerAdapter() { // from class: com.google.android.material.circularreveal.CircularRevealCompat.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CircularRevealWidget.this.destroyCircularRevealCache();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                CircularRevealWidget.this.buildCircularRevealCache();
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static Animator createCircularReveal(CircularRevealWidget circularRevealWidget, float f, float f2, float f3, float f4) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(circularRevealWidget, (Property<CircularRevealWidget, V>) CircularRevealWidget.CircularRevealProperty.CIRCULAR_REVEAL, (TypeEvaluator) CircularRevealWidget.CircularRevealEvaluator.CIRCULAR_REVEAL, (Object[]) new CircularRevealWidget.RevealInfo[]{new CircularRevealWidget.RevealInfo(f, f2, f3), new CircularRevealWidget.RevealInfo(f, f2, f4)});
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) circularRevealWidget, (int) f, (int) f2, f3, f4);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofObject, createCircularReveal);
        return animatorSet;
    }
}
