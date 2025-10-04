package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public final class SlideDistanceProvider implements VisibilityAnimatorProvider {
    private static final int DEFAULT_DISTANCE = -1;

    @Px
    private int slideDistance = -1;
    private int slideEdge;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface GravityFlag {
    }

    public SlideDistanceProvider(int i) {
        this.slideEdge = i;
    }

    private static Animator createTranslationAppearAnimator(View view, View view2, int i, @Px int i2) {
        float f;
        float f2;
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i != 3) {
            if (i != 5) {
                if (i != 48) {
                    if (i != 80) {
                        if (i != 8388611) {
                            if (i == 8388613) {
                                if (isRtl(view)) {
                                    f2 = translationX - i2;
                                } else {
                                    f2 = i2 + translationX;
                                }
                                return createTranslationXAnimator(view2, f2, translationX, translationX);
                            }
                            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2725055284015268538L, -9166646932920623895L, -3604894175382476636L, -5776020867405171757L, -9083012619181120656L}), new StringBuilder(), i));
                        }
                        if (isRtl(view)) {
                            f = i2 + translationX;
                        } else {
                            f = translationX - i2;
                        }
                        return createTranslationXAnimator(view2, f, translationX, translationX);
                    }
                    return createTranslationYAnimator(view2, i2 + translationY, translationY, translationY);
                }
                return createTranslationYAnimator(view2, translationY - i2, translationY, translationY);
            }
            return createTranslationXAnimator(view2, translationX - i2, translationX, translationX);
        }
        return createTranslationXAnimator(view2, i2 + translationX, translationX, translationX);
    }

    private static Animator createTranslationDisappearAnimator(View view, View view2, int i, @Px int i2) {
        float f;
        float f2;
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i != 3) {
            if (i != 5) {
                if (i != 48) {
                    if (i != 80) {
                        if (i != 8388611) {
                            if (i == 8388613) {
                                if (isRtl(view)) {
                                    f2 = i2 + translationX;
                                } else {
                                    f2 = translationX - i2;
                                }
                                return createTranslationXAnimator(view2, translationX, f2, translationX);
                            }
                            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{1832816982481085870L, 2253699049907740112L, -4661921766996570241L, -2489362895818752303L, 8830728778436559362L}), new StringBuilder(), i));
                        }
                        if (isRtl(view)) {
                            f = translationX - i2;
                        } else {
                            f = i2 + translationX;
                        }
                        return createTranslationXAnimator(view2, translationX, f, translationX);
                    }
                    return createTranslationYAnimator(view2, translationY, translationY - i2, translationY);
                }
                return createTranslationYAnimator(view2, translationY, i2 + translationY, translationY);
            }
            return createTranslationXAnimator(view2, translationX, i2 + translationX, translationX);
        }
        return createTranslationXAnimator(view2, translationX, translationX - i2, translationX);
    }

    private static Animator createTranslationXAnimator(final View view, float f, float f2, final float f3) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f, f2));
        ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transition.SlideDistanceProvider.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setTranslationX(f3);
            }
        });
        return ofPropertyValuesHolder;
    }

    private static Animator createTranslationYAnimator(final View view, float f, float f2, final float f3) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f, f2));
        ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transition.SlideDistanceProvider.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setTranslationY(f3);
            }
        });
        return ofPropertyValuesHolder;
    }

    private int getSlideDistanceOrDefault(Context context) {
        int i = this.slideDistance;
        if (i != -1) {
            return i;
        }
        return context.getResources().getDimensionPixelSize(R.dimen.mtrl_transition_shared_axis_slide_distance);
    }

    private static boolean isRtl(View view) {
        if (ViewCompat.getLayoutDirection(view) == 1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return createTranslationAppearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return createTranslationDisappearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    @Px
    public int getSlideDistance() {
        return this.slideDistance;
    }

    public int getSlideEdge() {
        return this.slideEdge;
    }

    public void setSlideDistance(@Px int i) {
        if (i >= 0) {
            this.slideDistance = i;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{5290781351062175833L, -4837102734043922032L, 3474384551364028725L, 1198969207896136556L, 9123954097406614347L, -3320163098419475346L, 6749479637376115923L, 2843593092013265141L, -6310090078811609392L, -2557073989598157899L, 5997271830541994826L, -6936351561450824583L, 3309981620278113870L, 8448328076496914233L, 4027509733168431817L, 2371295664530794269L}).toString());
    }

    public void setSlideEdge(int i) {
        this.slideEdge = i;
    }
}
