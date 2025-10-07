package androidx.transition;

import android.animation.TypeEvaluator;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes.dex */
class FloatArrayEvaluator implements TypeEvaluator<float[]> {
    private float[] mArray;

    public FloatArrayEvaluator(float[] fArr) {
        this.mArray = fArr;
    }

    @Override // android.animation.TypeEvaluator
    public float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.mArray;
        if (fArr3 == null) {
            fArr3 = new float[fArr.length];
        }
        for (int i = 0; i < fArr3.length; i++) {
            float f2 = fArr[i];
            fArr3[i] = AbstractC0362x4440ab85.m2925xfbe0c504(fArr2[i], f2, f, f2);
        }
        return fArr3;
    }
}
