package com.google.android.material.transition;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
class FadeModeEvaluators {
    private static final FadeModeEvaluator IN = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.1
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f, float f2, float f3, float f4) {
            return FadeModeResult.endOnTop(255, TransitionUtils.lerp(0, 255, f2, f3, f));
        }
    };
    private static final FadeModeEvaluator OUT = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.2
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f, float f2, float f3, float f4) {
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f2, f3, f), 255);
        }
    };
    private static final FadeModeEvaluator CROSS = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.3
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f, float f2, float f3, float f4) {
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f2, f3, f), TransitionUtils.lerp(0, 255, f2, f3, f));
        }
    };
    private static final FadeModeEvaluator THROUGH = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.4
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f, float f2, float f3, float f4) {
            float m2925xfbe0c504 = AbstractC0362x4440ab85.m2925xfbe0c504(f3, f2, f4, f2);
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f2, m2925xfbe0c504, f), TransitionUtils.lerp(0, 255, m2925xfbe0c504, f3, f));
        }
    };

    private FadeModeEvaluators() {
    }

    public static FadeModeEvaluator get(int i, boolean z) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return THROUGH;
                    }
                    throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-7274693852484769845L, 3132820109856388693L, 3891616118861783781L, 7277584705798665389L}), new StringBuilder(), i));
                }
                return CROSS;
            }
            if (z) {
                return OUT;
            }
            return IN;
        }
        if (z) {
            return IN;
        }
        return OUT;
    }
}
