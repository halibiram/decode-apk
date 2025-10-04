package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class BaseProgressIndicatorSpec {
    public int hideAnimationBehavior;

    @NonNull
    public int[] indicatorColors = new int[0];

    @Px
    public int indicatorTrackGapSize;
    public int showAnimationBehavior;

    @ColorInt
    public int trackColor;

    @Px
    public int trackCornerRadius;

    @Px
    public int trackThickness;

    public BaseProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_track_thickness);
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.BaseProgressIndicator, i, i2, new int[0]);
        this.trackThickness = MaterialResources.getDimensionPixelSize(context, obtainStyledAttributes, R.styleable.BaseProgressIndicator_trackThickness, dimensionPixelSize);
        this.trackCornerRadius = Math.min(MaterialResources.getDimensionPixelSize(context, obtainStyledAttributes, R.styleable.BaseProgressIndicator_trackCornerRadius, 0), this.trackThickness / 2);
        this.showAnimationBehavior = obtainStyledAttributes.getInt(R.styleable.BaseProgressIndicator_showAnimationBehavior, 0);
        this.hideAnimationBehavior = obtainStyledAttributes.getInt(R.styleable.BaseProgressIndicator_hideAnimationBehavior, 0);
        this.indicatorTrackGapSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.BaseProgressIndicator_indicatorTrackGapSize, 0);
        loadIndicatorColors(context, obtainStyledAttributes);
        loadTrackColor(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    private void loadIndicatorColors(@NonNull Context context, @NonNull TypedArray typedArray) {
        int i = R.styleable.BaseProgressIndicator_indicatorColor;
        if (!typedArray.hasValue(i)) {
            this.indicatorColors = new int[]{MaterialColors.getColor(context, R.attr.colorPrimary, -1)};
            return;
        }
        if (typedArray.peekValue(i).type != 1) {
            this.indicatorColors = new int[]{typedArray.getColor(i, -1)};
            return;
        }
        int[] intArray = context.getResources().getIntArray(typedArray.getResourceId(i, -1));
        this.indicatorColors = intArray;
        if (intArray.length != 0) {
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7509505707782149298L, 3874785678576487326L, -6020375957224744308L, -8547466092699289911L, -3835358799244268907L, -4758591783165941486L, 8724475245419356151L, -8060132230410152906L, 1854115959336676424L}).toString());
        }
    }

    private void loadTrackColor(@NonNull Context context, @NonNull TypedArray typedArray) {
        int i = R.styleable.BaseProgressIndicator_trackColor;
        if (typedArray.hasValue(i)) {
            this.trackColor = typedArray.getColor(i, -1);
            return;
        }
        this.trackColor = this.indicatorColors[0];
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{android.R.attr.disabledAlpha});
        float f = obtainStyledAttributes.getFloat(0, 0.2f);
        obtainStyledAttributes.recycle();
        this.trackColor = MaterialColors.compositeARGBWithAlpha(this.trackColor, (int) (f * 255.0f));
    }

    public boolean isHideAnimationEnabled() {
        if (this.hideAnimationBehavior != 0) {
            return true;
        }
        return false;
    }

    public boolean isShowAnimationEnabled() {
        if (this.showAnimationBehavior != 0) {
            return true;
        }
        return false;
    }

    @CallSuper
    public void validateSpec() {
        if (this.indicatorTrackGapSize >= 0) {
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3416819455489487442L, 6636994917850158833L, -2906565376812879050L, 2564379664735048476L, 6231402656689245467L, 7706671186050616036L}).toString());
        }
    }
}
