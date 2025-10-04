package com.airbnb.lottie.utils;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.os.Build;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public abstract class BaseLottieAnimator extends ValueAnimator {
    private final Set<ValueAnimator.AnimatorUpdateListener> updateListeners = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorListener> listeners = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorPauseListener> pauseListeners = new CopyOnWriteArraySet();

    @Override // android.animation.Animator
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.listeners.add(animatorListener);
    }

    @Override // android.animation.Animator
    public void addPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.pauseListeners.add(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.updateListeners.add(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getStartDelay() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-665796773094014533L, 1886563804626285850L, 6650376288905503508L, 963404021022715293L, 8193116038998788666L, -5423185708263885203L, 2713101717861071913L}).toString());
    }

    public void notifyCancel() {
        Iterator<Animator.AnimatorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationCancel(this);
        }
    }

    public void notifyEnd(boolean z) {
        for (Animator.AnimatorListener animatorListener : this.listeners) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, z);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    public void notifyPause() {
        Iterator<Animator.AnimatorPauseListener> it = this.pauseListeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationPause(this);
        }
    }

    public void notifyRepeat() {
        Iterator<Animator.AnimatorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationRepeat(this);
        }
    }

    public void notifyResume() {
        Iterator<Animator.AnimatorPauseListener> it = this.pauseListeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationResume(this);
        }
    }

    public void notifyStart(boolean z) {
        for (Animator.AnimatorListener animatorListener : this.listeners) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, z);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
    }

    public void notifyUpdate() {
        Iterator<ValueAnimator.AnimatorUpdateListener> it = this.updateListeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationUpdate(this);
        }
    }

    @Override // android.animation.Animator
    public void removeAllListeners() {
        this.listeners.clear();
    }

    @Override // android.animation.ValueAnimator
    public void removeAllUpdateListeners() {
        this.updateListeners.clear();
    }

    @Override // android.animation.Animator
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.listeners.remove(animatorListener);
    }

    @Override // android.animation.Animator
    public void removePauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.pauseListeners.remove(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.updateListeners.remove(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{5389067170992767333L, -5898533762379202090L, -3565635391324100364L, -6119795934617480091L, 3720766388998148443L, 2439357467222884301L, -7670249024172510885L}).toString());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setStartDelay(long j) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{3756219794342925113L, 8531195010961633562L, -3627997323488074194L, 8907489641983434185L, -2781930575882291702L, -6742621789101237676L, -5977145853479979582L}).toString());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long j) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{5808652631227389482L, -8074727036947288054L, 8023485802617986565L, 1772992387667200785L, 1414922371671440701L, -3595497585178615752L, 7208398785914023149L}).toString());
    }
}
