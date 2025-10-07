package com.google.android.material.transition.platform;

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
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RequiresApi(21)
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
                            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2335563608151246556L, 9172583094739059032L, 1042136820553712291L, 3924146683884827529L, 1759371017896982293L}), new StringBuilder(), i));
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
                            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{5539659408899338972L, 1037808728458948836L, -7368635976704318737L, -3006419069364617545L, -1350897576775120079L}), new StringBuilder(), i));
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
        ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transition.platform.SlideDistanceProvider.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setTranslationX(f3);
            }
        });
        return ofPropertyValuesHolder;
    }

    private static Animator createTranslationYAnimator(final View view, float f, float f2, final float f3) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f, f2));
        ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transition.platform.SlideDistanceProvider.2
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

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return createTranslationAppearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
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
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{5226058390067484947L, -3750150513815598334L, 4376294226825314238L, -4766093770552423412L, -8923505263620859058L, -1285706630413903925L, -4982663853280441641L, 9003356458632687433L, -1902248668197404996L, 894717297293893991L, -4519723932184840502L, 6257229274802964479L, -4242122740624847574L, 8600925691559401044L, -1591883856981875432L, -8876638389787989936L}).toString());
    }

    public void setSlideEdge(int i) {
        this.slideEdge = i;
    }
}
