package com.airbnb.lottie.utils;

import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes.dex */
public class GammaEvaluator {
    private static float EOCF_sRGB(float f) {
        if (f <= 0.04045f) {
            return f / 12.92f;
        }
        return (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    private static float OECF_sRGB(float f) {
        if (f <= 0.0031308f) {
            return f * 12.92f;
        }
        return (float) ((Math.pow(f, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static int evaluate(float f, int i, int i2) {
        if (i == i2) {
            return i;
        }
        if (f <= 0.0f) {
            return i;
        }
        if (f >= 1.0f) {
            return i2;
        }
        float f2 = ((i >> 24) & 255) / 255.0f;
        float f3 = ((i2 >> 24) & 255) / 255.0f;
        float EOCF_sRGB = EOCF_sRGB(((i >> 16) & 255) / 255.0f);
        float EOCF_sRGB2 = EOCF_sRGB(((i >> 8) & 255) / 255.0f);
        float EOCF_sRGB3 = EOCF_sRGB((i & 255) / 255.0f);
        float EOCF_sRGB4 = EOCF_sRGB(((i2 >> 16) & 255) / 255.0f);
        float EOCF_sRGB5 = EOCF_sRGB(((i2 >> 8) & 255) / 255.0f);
        float EOCF_sRGB6 = EOCF_sRGB((i2 & 255) / 255.0f);
        float m2925xfbe0c504 = AbstractC0362x4440ab85.m2925xfbe0c504(f3, f2, f, f2);
        float m2925xfbe0c5042 = AbstractC0362x4440ab85.m2925xfbe0c504(EOCF_sRGB4, EOCF_sRGB, f, EOCF_sRGB);
        float m2925xfbe0c5043 = AbstractC0362x4440ab85.m2925xfbe0c504(EOCF_sRGB5, EOCF_sRGB2, f, EOCF_sRGB2);
        float m2925xfbe0c5044 = AbstractC0362x4440ab85.m2925xfbe0c504(EOCF_sRGB6, EOCF_sRGB3, f, EOCF_sRGB3);
        float OECF_sRGB = OECF_sRGB(m2925xfbe0c5042) * 255.0f;
        float OECF_sRGB2 = OECF_sRGB(m2925xfbe0c5043) * 255.0f;
        return Math.round(OECF_sRGB(m2925xfbe0c5044) * 255.0f) | (Math.round(OECF_sRGB) << 16) | (Math.round(m2925xfbe0c504 * 255.0f) << 24) | (Math.round(OECF_sRGB2) << 8);
    }
}
