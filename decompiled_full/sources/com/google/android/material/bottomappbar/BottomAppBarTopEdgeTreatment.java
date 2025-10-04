package com.google.android.material.bottomappbar;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.ShapePath;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes2.dex */
public class BottomAppBarTopEdgeTreatment extends EdgeTreatment implements Cloneable {
    private static final int ANGLE_LEFT = 180;
    private static final int ANGLE_UP = 270;
    private static final int ARC_HALF = 180;
    private static final int ARC_QUARTER = 90;
    private static final float ROUNDED_CORNER_FAB_OFFSET = 1.75f;
    private float cradleVerticalOffset;
    private float fabCornerSize = -1.0f;
    private float fabDiameter;
    private float fabMargin;
    private float horizontalOffset;
    private float roundedCornerRadius;

    public BottomAppBarTopEdgeTreatment(float f, float f2, float f3) {
        this.fabMargin = f;
        this.roundedCornerRadius = f2;
        setCradleVerticalOffset(f3);
        this.horizontalOffset = 0.0f;
    }

    public float getCradleVerticalOffset() {
        return this.cradleVerticalOffset;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        boolean z;
        float f4;
        float f5;
        float f6 = this.fabDiameter;
        if (f6 == 0.0f) {
            shapePath.lineTo(f, 0.0f);
            return;
        }
        float f7 = ((this.fabMargin * 2.0f) + f6) / 2.0f;
        float f8 = f3 * this.roundedCornerRadius;
        float f9 = f2 + this.horizontalOffset;
        float m2925xfbe0c504 = AbstractC0362x4440ab85.m2925xfbe0c504(1.0f, f3, f7, this.cradleVerticalOffset * f3);
        if (m2925xfbe0c504 / f7 >= 1.0f) {
            shapePath.lineTo(f, 0.0f);
            return;
        }
        float f10 = this.fabCornerSize;
        float f11 = f10 * f3;
        if (f10 != -1.0f && Math.abs((f10 * 2.0f) - f6) >= 0.1f) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            f5 = ROUNDED_CORNER_FAB_OFFSET;
            f4 = 0.0f;
        } else {
            f4 = m2925xfbe0c504;
            f5 = 0.0f;
        }
        float f12 = f7 + f8;
        float f13 = f4 + f8;
        float sqrt = (float) Math.sqrt((f12 * f12) - (f13 * f13));
        float f14 = f9 - sqrt;
        float f15 = f9 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f13));
        float f16 = (90.0f - degrees) + f5;
        shapePath.lineTo(f14, 0.0f);
        float f17 = f8 * 2.0f;
        shapePath.addArc(f14 - f8, 0.0f, f14 + f8, f17, 270.0f, degrees);
        if (z) {
            shapePath.addArc(f9 - f7, (-f7) - f4, f9 + f7, f7 - f4, 180.0f - f16, (f16 * 2.0f) - 180.0f);
        } else {
            float f18 = this.fabMargin;
            float f19 = f11 * 2.0f;
            float f20 = f9 - f7;
            shapePath.addArc(f20, -(f11 + f18), f20 + f18 + f19, f18 + f11, 180.0f - f16, ((f16 * 2.0f) - 180.0f) / 2.0f);
            float f21 = f9 + f7;
            float f22 = this.fabMargin;
            shapePath.lineTo(f21 - ((f22 / 2.0f) + f11), f22 + f11);
            float f23 = this.fabMargin;
            shapePath.addArc(f21 - (f19 + f23), -(f11 + f23), f21, f23 + f11, 90.0f, f16 - 90.0f);
        }
        shapePath.addArc(f15 - f8, 0.0f, f15 + f8, f17, 270.0f - degrees, degrees);
        shapePath.lineTo(f, 0.0f);
    }

    public float getFabCornerRadius() {
        return this.fabCornerSize;
    }

    public float getFabCradleMargin() {
        return this.fabMargin;
    }

    public float getFabCradleRoundedCornerRadius() {
        return this.roundedCornerRadius;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getFabDiameter() {
        return this.fabDiameter;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getHorizontalOffset() {
        return this.horizontalOffset;
    }

    public void setCradleVerticalOffset(@FloatRange(from = 0.0d) float f) {
        if (f >= 0.0f) {
            this.cradleVerticalOffset = f;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5583747143856091090L, -8966671549336937085L, -8674523978936475631L, 9217565511832966385L, 5041680004769694208L, -3420410007202791175L}).toString());
    }

    public void setFabCornerSize(float f) {
        this.fabCornerSize = f;
    }

    public void setFabCradleMargin(float f) {
        this.fabMargin = f;
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        this.roundedCornerRadius = f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setFabDiameter(float f) {
        this.fabDiameter = f;
    }

    public void setHorizontalOffset(float f) {
        this.horizontalOffset = f;
    }
}
