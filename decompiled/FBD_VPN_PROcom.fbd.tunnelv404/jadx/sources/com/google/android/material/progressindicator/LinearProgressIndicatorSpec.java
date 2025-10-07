package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class LinearProgressIndicatorSpec extends BaseProgressIndicatorSpec {
    boolean drawHorizontallyInverse;
    public int indeterminateAnimationType;
    public int indicatorDirection;

    @Px
    public int trackStopIndicatorSize;

    public LinearProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicatorSpec
    public void validateSpec() {
        super.validateSpec();
        if (this.trackStopIndicatorSize >= 0) {
            if (this.indeterminateAnimationType == 0) {
                if (this.trackCornerRadius > 0 && this.indicatorTrackGapSize == 0) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3014189808441191777L, 7005040348282638431L, -2122146771523499205L, -574721079015130860L, -4314987121262421037L, 1849873349712766919L, 6820236703497555284L, 4563355417522019852L, 2665462259420290481L, -956092599699869629L, 2394748073557455682L, 2779212434302185138L}).toString());
                }
                if (this.indicatorColors.length < 3) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8579613804246814221L, -9085622790949823051L, 8451948128443406683L, -8738084917303674354L, 7346688295032049215L, -6563233457919436316L, 5907480848950647305L, 5002553013918749616L, -552919299580994076L, 8233320666434891891L, -4273163749052023800L}).toString());
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6276909841142562571L, 7603481133021909344L, -4604417712576772112L, 8903390256658994263L, 5879116792191894855L, 7458813390755446691L}).toString());
    }

    public LinearProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        this(context, attributeSet, i, LinearProgressIndicator.DEF_STYLE_RES);
    }

    public LinearProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.LinearProgressIndicator, R.attr.linearProgressIndicatorStyle, LinearProgressIndicator.DEF_STYLE_RES, new int[0]);
        this.indeterminateAnimationType = obtainStyledAttributes.getInt(R.styleable.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.indicatorDirection = obtainStyledAttributes.getInt(R.styleable.LinearProgressIndicator_indicatorDirectionLinear, 0);
        this.trackStopIndicatorSize = Math.min(obtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearProgressIndicator_trackStopIndicatorSize, 0), this.trackThickness);
        obtainStyledAttributes.recycle();
        validateSpec();
        this.drawHorizontallyInverse = this.indicatorDirection == 1;
    }
}
