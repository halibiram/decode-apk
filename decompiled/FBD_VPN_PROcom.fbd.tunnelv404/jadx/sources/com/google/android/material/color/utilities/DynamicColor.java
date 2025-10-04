package com.google.android.material.color.utilities;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import defpackage.C0692xb2ca8833;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Function;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class DynamicColor {
    public final Function<DynamicScheme, DynamicColor> background;
    public final ContrastCurve contrastCurve;
    private final HashMap<DynamicScheme, Hct> hctCache;
    public final boolean isBackground;
    public final String name;
    public final Function<DynamicScheme, Double> opacity;
    public final Function<DynamicScheme, TonalPalette> palette;
    public final Function<DynamicScheme, DynamicColor> secondBackground;
    public final Function<DynamicScheme, Double> tone;
    public final Function<DynamicScheme, ToneDeltaPair> toneDeltaPair;

    public DynamicColor(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2, boolean z, @Nullable Function<DynamicScheme, DynamicColor> function3, @Nullable Function<DynamicScheme, DynamicColor> function4, @Nullable ContrastCurve contrastCurve, @Nullable Function<DynamicScheme, ToneDeltaPair> function5) {
        this.hctCache = new HashMap<>();
        this.name = str;
        this.palette = function;
        this.tone = function2;
        this.isBackground = z;
        this.background = function3;
        this.secondBackground = function4;
        this.contrastCurve = contrastCurve;
        this.toneDeltaPair = function5;
        this.opacity = null;
    }

    public static double enableLightForeground(double d) {
        if (tonePrefersLightForeground(d) && !toneAllowsLightForeground(d)) {
            return 49.0d;
        }
        return d;
    }

    public static double foregroundTone(double d, double d2) {
        boolean z;
        double lighterUnsafe = Contrast.lighterUnsafe(d, d2);
        double darkerUnsafe = Contrast.darkerUnsafe(d, d2);
        double ratioOfTones = Contrast.ratioOfTones(lighterUnsafe, d);
        double ratioOfTones2 = Contrast.ratioOfTones(darkerUnsafe, d);
        if (tonePrefersLightForeground(d)) {
            if (Math.abs(ratioOfTones - ratioOfTones2) < 0.1d && ratioOfTones < d2 && ratioOfTones2 < d2) {
                z = true;
            } else {
                z = false;
            }
            if (ratioOfTones < d2 && ratioOfTones < ratioOfTones2 && !z) {
                return darkerUnsafe;
            }
            return lighterUnsafe;
        }
        if (ratioOfTones2 >= d2 || ratioOfTones2 >= ratioOfTones) {
            return darkerUnsafe;
        }
        return lighterUnsafe;
    }

    @NonNull
    public static DynamicColor fromArgb(@NonNull String str, int i) {
        return fromPalette(str, new C0692xb2ca8833(TonalPalette.fromInt(i), 0), new C0692xb2ca8833(Hct.fromInt(i), 1));
    }

    @NonNull
    public static DynamicColor fromPalette(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2) {
        return new DynamicColor(str, function, function2, false, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TonalPalette lambda$fromArgb$0(TonalPalette tonalPalette, DynamicScheme dynamicScheme) {
        return tonalPalette;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double lambda$fromArgb$1(Hct hct, DynamicScheme dynamicScheme) {
        return Double.valueOf(hct.getTone());
    }

    public static boolean toneAllowsLightForeground(double d) {
        if (Math.round(d) <= 49) {
            return true;
        }
        return false;
    }

    public static boolean tonePrefersLightForeground(double d) {
        if (Math.round(d) < 60) {
            return true;
        }
        return false;
    }

    public int getArgb(@NonNull DynamicScheme dynamicScheme) {
        int i = getHct(dynamicScheme).toInt();
        Function<DynamicScheme, Double> function = this.opacity;
        if (function == null) {
            return i;
        }
        return (MathUtils.clampInt(0, 255, (int) Math.round(function.apply(dynamicScheme).doubleValue() * 255.0d)) << 24) | (i & 16777215);
    }

    @NonNull
    public Hct getHct(@NonNull DynamicScheme dynamicScheme) {
        Hct hct = this.hctCache.get(dynamicScheme);
        if (hct != null) {
            return hct;
        }
        Hct hct2 = this.palette.apply(dynamicScheme).getHct(getTone(dynamicScheme));
        if (this.hctCache.size() > 4) {
            this.hctCache.clear();
        }
        this.hctCache.put(dynamicScheme, hct2);
        return hct2;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x022b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public double getTone(@NonNull DynamicScheme dynamicScheme) {
        boolean z;
        double d;
        boolean z2;
        DynamicColor dynamicColor;
        DynamicColor dynamicColor2;
        double d2;
        double d3;
        if (dynamicScheme.contrastLevel < 0.0d) {
            z = true;
        } else {
            z = false;
        }
        Function<DynamicScheme, ToneDeltaPair> function = this.toneDeltaPair;
        if (function != null) {
            ToneDeltaPair apply = function.apply(dynamicScheme);
            DynamicColor roleA = apply.getRoleA();
            DynamicColor roleB = apply.getRoleB();
            double delta = apply.getDelta();
            TonePolarity polarity = apply.getPolarity();
            boolean stayTogether = apply.getStayTogether();
            double tone = this.background.apply(dynamicScheme).getTone(dynamicScheme);
            if (polarity != TonePolarity.NEARER && ((polarity != TonePolarity.LIGHTER || dynamicScheme.isDark) && (polarity != TonePolarity.DARKER || !dynamicScheme.isDark))) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (z2) {
                dynamicColor = roleA;
            } else {
                dynamicColor = roleB;
            }
            if (z2) {
                dynamicColor2 = roleB;
            } else {
                dynamicColor2 = roleA;
            }
            boolean equals = this.name.equals(dynamicColor.name);
            if (dynamicScheme.isDark) {
                d2 = 1.0d;
            } else {
                d2 = -1.0d;
            }
            double contrast = dynamicColor.contrastCurve.getContrast(dynamicScheme.contrastLevel);
            double contrast2 = dynamicColor2.contrastCurve.getContrast(dynamicScheme.contrastLevel);
            double doubleValue = dynamicColor.tone.apply(dynamicScheme).doubleValue();
            if (Contrast.ratioOfTones(tone, doubleValue) < contrast) {
                doubleValue = foregroundTone(tone, contrast);
            }
            double doubleValue2 = dynamicColor2.tone.apply(dynamicScheme).doubleValue();
            if (Contrast.ratioOfTones(tone, doubleValue2) < contrast2) {
                doubleValue2 = foregroundTone(tone, contrast2);
            }
            if (z) {
                doubleValue = foregroundTone(tone, contrast);
                doubleValue2 = foregroundTone(tone, contrast2);
            }
            if ((doubleValue2 - doubleValue) * d2 < delta) {
                double d4 = delta * d2;
                doubleValue2 = MathUtils.clampDouble(0.0d, 100.0d, doubleValue + d4);
                if ((doubleValue2 - doubleValue) * d2 < delta) {
                    doubleValue = MathUtils.clampDouble(0.0d, 100.0d, doubleValue2 - d4);
                }
            }
            if (50.0d <= doubleValue && doubleValue < 60.0d) {
                if (d2 > 0.0d) {
                    doubleValue = 60.0d;
                    d3 = Math.max(doubleValue2, (delta * d2) + 60.0d);
                } else {
                    d3 = Math.min(doubleValue2, (delta * d2) + 49.0d);
                    doubleValue = 49.0d;
                }
            } else if (50.0d <= doubleValue2 && doubleValue2 < 60.0d) {
                if (stayTogether) {
                    if (d2 > 0.0d) {
                        d3 = Math.max(doubleValue2, (delta * d2) + 60.0d);
                        doubleValue = 60.0d;
                    } else {
                        d3 = Math.min(doubleValue2, (delta * d2) + 49.0d);
                        doubleValue = 49.0d;
                    }
                } else if (d2 > 0.0d) {
                    d3 = 60.0d;
                } else {
                    d3 = 49.0d;
                }
            } else {
                d3 = doubleValue2;
            }
            if (equals) {
                return doubleValue;
            }
            return d3;
        }
        double doubleValue3 = this.tone.apply(dynamicScheme).doubleValue();
        Function<DynamicScheme, DynamicColor> function2 = this.background;
        if (function2 == null) {
            return doubleValue3;
        }
        double tone2 = function2.apply(dynamicScheme).getTone(dynamicScheme);
        double contrast3 = this.contrastCurve.getContrast(dynamicScheme.contrastLevel);
        if (Contrast.ratioOfTones(tone2, doubleValue3) < contrast3) {
            doubleValue3 = foregroundTone(tone2, contrast3);
        }
        if (z) {
            doubleValue3 = foregroundTone(tone2, contrast3);
        }
        if (this.isBackground && 50.0d <= doubleValue3) {
            d = 60.0d;
            if (doubleValue3 < 60.0d) {
                if (Contrast.ratioOfTones(49.0d, tone2) >= contrast3) {
                    d = 49.0d;
                }
                if (this.secondBackground == null) {
                    double tone3 = this.background.apply(dynamicScheme).getTone(dynamicScheme);
                    double tone4 = this.secondBackground.apply(dynamicScheme).getTone(dynamicScheme);
                    double max = Math.max(tone3, tone4);
                    double min = Math.min(tone3, tone4);
                    if (Contrast.ratioOfTones(max, d) >= contrast3 && Contrast.ratioOfTones(min, d) >= contrast3) {
                        return d;
                    }
                    double lighter = Contrast.lighter(max, contrast3);
                    double darker = Contrast.darker(min, contrast3);
                    ArrayList arrayList = new ArrayList();
                    if (lighter != -1.0d) {
                        arrayList.add(Double.valueOf(lighter));
                    }
                    if (darker != -1.0d) {
                        arrayList.add(Double.valueOf(darker));
                    }
                    if (!tonePrefersLightForeground(tone3) && !tonePrefersLightForeground(tone4)) {
                        if (arrayList.size() == 1) {
                            return ((Double) arrayList.get(0)).doubleValue();
                        }
                        if (darker == -1.0d) {
                            return 0.0d;
                        }
                        return darker;
                    }
                    if (lighter == -1.0d) {
                        return 100.0d;
                    }
                    return lighter;
                }
                return d;
            }
        }
        d = doubleValue3;
        if (this.secondBackground == null) {
        }
    }

    @NonNull
    public static DynamicColor fromPalette(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2, boolean z) {
        return new DynamicColor(str, function, function2, z, null, null, null, null);
    }

    public DynamicColor(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2, boolean z, @Nullable Function<DynamicScheme, DynamicColor> function3, @Nullable Function<DynamicScheme, DynamicColor> function4, @Nullable ContrastCurve contrastCurve, @Nullable Function<DynamicScheme, ToneDeltaPair> function5, @Nullable Function<DynamicScheme, Double> function6) {
        this.hctCache = new HashMap<>();
        this.name = str;
        this.palette = function;
        this.tone = function2;
        this.isBackground = z;
        this.background = function3;
        this.secondBackground = function4;
        this.contrastCurve = contrastCurve;
        this.toneDeltaPair = function5;
        this.opacity = function6;
    }
}
