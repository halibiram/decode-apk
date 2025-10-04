package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import androidx.annotation.NonNull;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes2.dex */
public class ArgbEvaluatorCompat implements TypeEvaluator<Integer> {
    private static final ArgbEvaluatorCompat instance = new ArgbEvaluatorCompat();

    @NonNull
    public static ArgbEvaluatorCompat getInstance() {
        return instance;
    }

    @Override // android.animation.TypeEvaluator
    @NonNull
    public Integer evaluate(float f, Integer num, Integer num2) {
        int intValue = num.intValue();
        float f2 = ((intValue >> 24) & 255) / 255.0f;
        int intValue2 = num2.intValue();
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
