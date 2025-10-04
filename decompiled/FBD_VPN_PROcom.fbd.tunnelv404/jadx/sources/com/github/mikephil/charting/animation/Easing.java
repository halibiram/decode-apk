package com.github.mikephil.charting.animation;

/* loaded from: classes.dex */
public class Easing {

    /* renamed from: com.github.mikephil.charting.animation.Easing$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption;

        static {
            int[] iArr = new int[EasingOption.values().length];
            $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption = iArr;
            try {
                iArr[EasingOption.Linear.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInQuad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseOutQuad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInOutQuad.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInCubic.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseOutCubic.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInOutCubic.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInQuart.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseOutQuart.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInOutQuart.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInSine.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseOutSine.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInOutSine.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInExpo.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseOutExpo.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInOutExpo.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInCirc.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseOutCirc.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInOutCirc.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInElastic.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseOutElastic.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInOutElastic.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInBack.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseOutBack.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInOutBack.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInBounce.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseOutBounce.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[EasingOption.EaseInOutBounce.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class EasingFunctions {
        public static final EasingFunction Linear = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.1
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f;
            }
        };
        public static final EasingFunction EaseInQuad = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.2
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f;
            }
        };
        public static final EasingFunction EaseOutQuad = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.3
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (f - 2.0f) * (-f);
            }
        };
        public static final EasingFunction EaseInOutQuad = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.4
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2;
                float f3 = f / 0.5f;
                if (f3 < 1.0f) {
                    f2 = 0.5f * f3;
                } else {
                    float f4 = f3 - 1.0f;
                    f2 = ((f4 - 2.0f) * f4) - 1.0f;
                    f3 = -0.5f;
                }
                return f2 * f3;
            }
        };
        public static final EasingFunction EaseInCubic = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.5
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f * f;
            }
        };
        public static final EasingFunction EaseOutCubic = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.6
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2) + 1.0f;
            }
        };
        public static final EasingFunction EaseInOutCubic = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.7
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 0.5f;
                if (f2 < 1.0f) {
                    return 0.5f * f2 * f2 * f2;
                }
                float f3 = f2 - 2.0f;
                return ((f3 * f3 * f3) + 2.0f) * 0.5f;
            }
        };
        public static final EasingFunction EaseInQuart = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.8
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f * f * f;
            }
        };
        public static final EasingFunction EaseOutQuart = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.9
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return -((((f2 * f2) * f2) * f2) - 1.0f);
            }
        };
        public static final EasingFunction EaseInOutQuart = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.10
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 0.5f;
                if (f2 < 1.0f) {
                    return 0.5f * f2 * f2 * f2 * f2;
                }
                float f3 = f2 - 2.0f;
                return ((((f3 * f3) * f3) * f3) - 2.0f) * (-0.5f);
            }
        };
        public static final EasingFunction EaseInSine = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.11
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (-((float) Math.cos(f * 1.5707963267948966d))) + 1.0f;
            }
        };
        public static final EasingFunction EaseOutSine = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.12
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (float) Math.sin(f * 1.5707963267948966d);
            }
        };
        public static final EasingFunction EaseInOutSine = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.13
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (((float) Math.cos(f * 3.141592653589793d)) - 1.0f) * (-0.5f);
            }
        };
        public static final EasingFunction EaseInExpo = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.14
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f == 0.0f) {
                    return 0.0f;
                }
                return (float) Math.pow(2.0d, (f - 1.0f) * 10.0f);
            }
        };
        public static final EasingFunction EaseOutExpo = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.15
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f == 1.0f) {
                    return 1.0f;
                }
                return -((float) Math.pow(2.0d, (f + 1.0f) * (-10.0f)));
            }
        };
        public static final EasingFunction EaseInOutExpo = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.16
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2;
                if (f == 0.0f) {
                    return 0.0f;
                }
                if (f == 1.0f) {
                    return 1.0f;
                }
                if (f / 0.5f < 1.0f) {
                    f2 = (float) Math.pow(2.0d, (r7 - 1.0f) * 10.0f);
                } else {
                    f2 = (-((float) Math.pow(2.0d, (r7 - 1.0f) * (-10.0f)))) + 2.0f;
                }
                return f2 * 0.5f;
            }
        };
        public static final EasingFunction EaseInCirc = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.17
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return -(((float) Math.sqrt(1.0f - (f * f))) - 1.0f);
            }
        };
        public static final EasingFunction EaseOutCirc = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.18
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (float) Math.sqrt(1.0f - (f2 * f2));
            }
        };
        public static final EasingFunction EaseInOutCirc = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.19
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float sqrt;
                float f2 = 0.5f;
                float f3 = f / 0.5f;
                if (f3 < 1.0f) {
                    sqrt = ((float) Math.sqrt(1.0f - (f3 * f3))) - 1.0f;
                    f2 = -0.5f;
                } else {
                    float f4 = f3 - 2.0f;
                    sqrt = ((float) Math.sqrt(1.0f - (f4 * f4))) + 1.0f;
                }
                return sqrt * f2;
            }
        };
        public static final EasingFunction EaseInElastic = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.20
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f == 0.0f) {
                    return 0.0f;
                }
                if (f == 1.0f) {
                    return 1.0f;
                }
                float f2 = f - 1.0f;
                return -(((float) Math.pow(2.0d, 10.0f * f2)) * ((float) Math.sin(((f2 - (0.047746483f * ((float) Math.asin(1.0d)))) * 6.283185307179586d) / 0.3f)));
            }
        };
        public static final EasingFunction EaseOutElastic = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.21
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f == 0.0f) {
                    return 0.0f;
                }
                if (f == 1.0f) {
                    return 1.0f;
                }
                return (((float) Math.pow(2.0d, (-10.0f) * f)) * ((float) Math.sin(((f - (0.047746483f * ((float) Math.asin(1.0d)))) * 6.283185307179586d) / 0.3f))) + 1.0f;
            }
        };
        public static final EasingFunction EaseInOutElastic = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.22
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f == 0.0f) {
                    return 0.0f;
                }
                float f2 = f / 0.5f;
                if (f2 == 2.0f) {
                    return 1.0f;
                }
                float asin = 0.07161973f * ((float) Math.asin(1.0d));
                if (f2 < 1.0f) {
                    float f3 = f2 - 1.0f;
                    return ((float) Math.pow(2.0d, 10.0f * f3)) * ((float) Math.sin((((f3 * 1.0f) - asin) * 6.283185307179586d) / 0.45000002f)) * (-0.5f);
                }
                float f4 = f2 - 1.0f;
                return (((float) Math.pow(2.0d, (-10.0f) * f4)) * ((float) Math.sin((((f4 * 1.0f) - asin) * 6.283185307179586d) / 0.45000002f)) * 0.5f) + 1.0f;
            }
        };
        public static final EasingFunction EaseInBack = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.23
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return ((f * 2.70158f) - 1.70158f) * f * f;
            }
        };
        public static final EasingFunction EaseOutBack = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.24
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (((f2 * 2.70158f) + 1.70158f) * f2 * f2) + 1.0f;
            }
        };
        public static final EasingFunction EaseInOutBack = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.25
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2;
                float f3 = f / 0.5f;
                if (f3 < 1.0f) {
                    f2 = ((3.5949094f * f3) - 2.5949094f) * f3 * f3;
                } else {
                    float f4 = f3 - 2.0f;
                    f2 = (((3.5949094f * f4) + 2.5949094f) * f4 * f4) + 2.0f;
                }
                return f2 * 0.5f;
            }
        };
        public static final EasingFunction EaseInBounce = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.26
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return 1.0f - EasingFunctions.EaseOutBounce.getInterpolation(1.0f - f);
            }
        };
        public static final EasingFunction EaseOutBounce = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.27
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f < 0.36363637f) {
                    return 7.5625f * f * f;
                }
                if (f < 0.72727275f) {
                    float f2 = f - 0.54545456f;
                    return (7.5625f * f2 * f2) + 0.75f;
                }
                if (f < 0.90909094f) {
                    float f3 = f - 0.8181818f;
                    return (7.5625f * f3 * f3) + 0.9375f;
                }
                float f4 = f - 0.95454544f;
                return (7.5625f * f4 * f4) + 0.984375f;
            }
        };
        public static final EasingFunction EaseInOutBounce = new EasingFunction() { // from class: com.github.mikephil.charting.animation.Easing.EasingFunctions.28
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f < 0.5f) {
                    return EasingFunctions.EaseInBounce.getInterpolation(f * 2.0f) * 0.5f;
                }
                return (EasingFunctions.EaseOutBounce.getInterpolation((f * 2.0f) - 1.0f) * 0.5f) + 0.5f;
            }
        };

        private EasingFunctions() {
        }
    }

    /* loaded from: classes.dex */
    public enum EasingOption {
        Linear,
        EaseInQuad,
        EaseOutQuad,
        EaseInOutQuad,
        EaseInCubic,
        EaseOutCubic,
        EaseInOutCubic,
        EaseInQuart,
        EaseOutQuart,
        EaseInOutQuart,
        EaseInSine,
        EaseOutSine,
        EaseInOutSine,
        EaseInExpo,
        EaseOutExpo,
        EaseInOutExpo,
        EaseInCirc,
        EaseOutCirc,
        EaseInOutCirc,
        EaseInElastic,
        EaseOutElastic,
        EaseInOutElastic,
        EaseInBack,
        EaseOutBack,
        EaseInOutBack,
        EaseInBounce,
        EaseOutBounce,
        EaseInOutBounce
    }

    public static EasingFunction getEasingFunctionFromOption(EasingOption easingOption) {
        switch (AnonymousClass1.$SwitchMap$com$github$mikephil$charting$animation$Easing$EasingOption[easingOption.ordinal()]) {
            case 2:
                return EasingFunctions.EaseInQuad;
            case 3:
                return EasingFunctions.EaseOutQuad;
            case 4:
                return EasingFunctions.EaseInOutQuad;
            case 5:
                return EasingFunctions.EaseInCubic;
            case 6:
                return EasingFunctions.EaseOutCubic;
            case 7:
                return EasingFunctions.EaseInOutCubic;
            case 8:
                return EasingFunctions.EaseInQuart;
            case 9:
                return EasingFunctions.EaseOutQuart;
            case 10:
                return EasingFunctions.EaseInOutQuart;
            case 11:
                return EasingFunctions.EaseInSine;
            case 12:
                return EasingFunctions.EaseOutSine;
            case 13:
                return EasingFunctions.EaseInOutSine;
            case 14:
                return EasingFunctions.EaseInExpo;
            case 15:
                return EasingFunctions.EaseOutExpo;
            case 16:
                return EasingFunctions.EaseInOutExpo;
            case 17:
                return EasingFunctions.EaseInCirc;
            case 18:
                return EasingFunctions.EaseOutCirc;
            case 19:
                return EasingFunctions.EaseInOutCirc;
            case 20:
                return EasingFunctions.EaseInElastic;
            case 21:
                return EasingFunctions.EaseOutElastic;
            case 22:
                return EasingFunctions.EaseInOutElastic;
            case 23:
                return EasingFunctions.EaseInBack;
            case 24:
                return EasingFunctions.EaseOutBack;
            case 25:
                return EasingFunctions.EaseInOutBack;
            case 26:
                return EasingFunctions.EaseInBounce;
            case 27:
                return EasingFunctions.EaseOutBounce;
            case 28:
                return EasingFunctions.EaseInOutBounce;
            default:
                return EasingFunctions.Linear;
        }
    }
}
