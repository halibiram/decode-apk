package com.google.android.material.navigation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.animation.AnimationUtils;
import defpackage.C0686x24b55628;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class DrawerLayoutUtils {
    private static final int DEFAULT_SCRIM_COLOR = -1728053248;
    private static final int DEFAULT_SCRIM_ALPHA = Color.alpha(DEFAULT_SCRIM_COLOR);

    private DrawerLayoutUtils() {
    }

    @NonNull
    public static Animator.AnimatorListener getScrimCloseAnimatorListener(@NonNull final DrawerLayout drawerLayout, @NonNull final View view) {
        return new AnimatorListenerAdapter() { // from class: com.google.android.material.navigation.DrawerLayoutUtils.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                DrawerLayout.this.closeDrawer(view, false);
                DrawerLayout.this.setScrimColor(DrawerLayoutUtils.DEFAULT_SCRIM_COLOR);
            }
        };
    }

    @NonNull
    public static ValueAnimator.AnimatorUpdateListener getScrimCloseAnimatorUpdateListener(@NonNull DrawerLayout drawerLayout) {
        return new C0686x24b55628(drawerLayout, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getScrimCloseAnimatorUpdateListener$0(DrawerLayout drawerLayout, ValueAnimator valueAnimator) {
        drawerLayout.setScrimColor(ColorUtils.setAlphaComponent(DEFAULT_SCRIM_COLOR, AnimationUtils.lerp(DEFAULT_SCRIM_ALPHA, 0, valueAnimator.getAnimatedFraction())));
    }
}
