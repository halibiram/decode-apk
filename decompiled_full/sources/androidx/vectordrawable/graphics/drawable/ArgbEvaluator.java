package androidx.vectordrawable.graphics.drawable;

import android.animation.TypeEvaluator;
import androidx.annotation.RestrictTo;
import defpackage.AbstractC0362x4440ab85;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ArgbEvaluator implements TypeEvaluator {
    private static final ArgbEvaluator sInstance = new ArgbEvaluator();

    public static ArgbEvaluator getInstance() {
        return sInstance;
    }

    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        float f2 = ((intValue >> 24) & 255) / 255.0f;
        int intValue2 = ((Integer) obj2).intValue();
        float f3 = ((intValue2 >> 24) & 255) / 255.0f;
        float pow = (float) Math.pow(((intValue >> 16) & 255) / 255.0f, 2.2d);
        float pow2 = (float) Math.pow(((intValue >> 8) & 255) / 255.0f, 2.2d);
        float pow3 = (float) Math.pow((intValue & 255) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(((intValue2 >> 16) & 255) / 255.0f, 2.2d);
        float pow5 = (float) Math.pow(((intValue2 >> 8) & 255) / 255.0f, 2.2d);
        float pow6 = (float) Math.pow((intValue2 & 255) / 255.0f, 2.2d);
        float m2925xfbe0c504 = AbstractC0362x4440ab85.m2925xfbe0c504(f3, f2, f, f2);
        float m2925xfbe0c5042 = AbstractC0362x4440ab85.m2925xfbe0c504(pow4, pow, f, pow);
        float m2925xfbe0c5043 = AbstractC0362x4440ab85.m2925xfbe0c504(pow5, pow2, f, pow2);
        float m2925xfbe0c5044 = AbstractC0362x4440ab85.m2925xfbe0c504(pow6, pow3, f, pow3);
        float pow7 = ((float) Math.pow(m2925xfbe0c5042, 0.45454545454545453d)) * 255.0f;
        float pow8 = ((float) Math.pow(m2925xfbe0c5043, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(m2925xfbe0c5044, 0.45454545454545453d)) * 255.0f) | (Math.round(pow7) << 16) | (Math.round(m2925xfbe0c504 * 255.0f) << 24) | (Math.round(pow8) << 8));
    }
}
