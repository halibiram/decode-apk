package com.google.android.material.motion;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.View;
import androidx.activity.BackEventCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.R;
import com.panda912.muddy.ObfuscatedString;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public abstract class MaterialBackAnimationHelper<V extends View> {
    private static final int CANCEL_DURATION_DEFAULT = 100;
    private static final int HIDE_DURATION_MAX_DEFAULT = 300;
    private static final int HIDE_DURATION_MIN_DEFAULT = 150;
    private static final String TAG = new ObfuscatedString(new long[]{8766222832509469265L, -7469147114589048575L, -2112841074947958616L, 340392042304147757L}).toString();

    @Nullable
    private BackEventCompat backEvent;
    protected final int cancelDuration;
    protected final int hideDurationMax;
    protected final int hideDurationMin;

    @NonNull
    private final TimeInterpolator progressInterpolator;

    @NonNull
    protected final V view;

    public MaterialBackAnimationHelper(@NonNull V v) {
        this.view = v;
        Context context = v.getContext();
        this.progressInterpolator = MotionUtils.resolveThemeInterpolator(context, R.attr.motionEasingStandardDecelerateInterpolator, PathInterpolatorCompat.create(0.0f, 0.0f, 0.0f, 1.0f));
        this.hideDurationMax = MotionUtils.resolveThemeDuration(context, R.attr.motionDurationMedium2, 300);
        this.hideDurationMin = MotionUtils.resolveThemeDuration(context, R.attr.motionDurationShort3, HIDE_DURATION_MIN_DEFAULT);
        this.cancelDuration = MotionUtils.resolveThemeDuration(context, R.attr.motionDurationShort2, 100);
    }

    public float interpolateProgress(float f) {
        return this.progressInterpolator.getInterpolation(f);
    }

    @Nullable
    public BackEventCompat onCancelBackProgress() {
        if (this.backEvent == null) {
            new ObfuscatedString(new long[]{4218268055163495918L, -6030379051598054930L, -7402664672025771795L, -1747716203900231625L}).toString();
            new ObfuscatedString(new long[]{-8327392977436188379L, 3868874966219874114L, -6680246460390855354L, -8982286992646962363L, 6347104345737847574L, -4577823575174469740L, -8530631068892377134L, 3081335409646072723L, -4686881441514618322L, -807051232230507707L, 229273029415479661L, -2499680509541436473L}).toString();
        }
        BackEventCompat backEventCompat = this.backEvent;
        this.backEvent = null;
        return backEventCompat;
    }

    @Nullable
    public BackEventCompat onHandleBackInvoked() {
        BackEventCompat backEventCompat = this.backEvent;
        this.backEvent = null;
        return backEventCompat;
    }

    public void onStartBackProgress(@NonNull BackEventCompat backEventCompat) {
        this.backEvent = backEventCompat;
    }

    @Nullable
    public BackEventCompat onUpdateBackProgress(@NonNull BackEventCompat backEventCompat) {
        if (this.backEvent == null) {
            new ObfuscatedString(new long[]{5733146214293812406L, 8906397202009795062L, -503414006223604458L, 8402381558191900754L}).toString();
            new ObfuscatedString(new long[]{-1910947424867987793L, 5073627694224809560L, -8915408566848716742L, -8162008278051814010L, -8780303534636864540L, -1556977963874690327L, -1661298258118440178L, 7146845253980196125L, -125907388140401531L}).toString();
        }
        BackEventCompat backEventCompat2 = this.backEvent;
        this.backEvent = backEventCompat;
        return backEventCompat2;
    }
}
