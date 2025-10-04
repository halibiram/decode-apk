package com.google.android.material.color.utilities;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import com.google.android.material.color.utilities.TonalPalette;
import com.panda912.muddy.ObfuscatedString;
import defpackage.C0967x332aa8a6;
import defpackage.C0968x984bae6c;
import defpackage.C0969xa2991b18;
import defpackage.C0970x79dbe07;
import defpackage.C0971x29bd0380;
import defpackage.C0972x17870efc;
import j$.util.function.Function$CC;
import java.util.function.Function;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class MaterialDynamicColors {
    public static double findDesiredChromaByTone(double d, double d2, double d3, boolean z) {
        double d4;
        Hct from = Hct.from(d, d2, d3);
        if (from.getChroma() < d2) {
            Hct hct = from;
            double chroma = from.getChroma();
            double d5 = d3;
            while (hct.getChroma() < d2) {
                if (z) {
                    d4 = -1.0d;
                } else {
                    d4 = 1.0d;
                }
                double d6 = d5 + d4;
                Hct from2 = Hct.from(d, d2, d6);
                if (chroma <= from2.getChroma() && Math.abs(from2.getChroma() - d2) >= 0.4d) {
                    if (Math.abs(from2.getChroma() - d2) < Math.abs(hct.getChroma() - d2)) {
                        hct = from2;
                    }
                    chroma = Math.max(chroma, from2.getChroma());
                    d5 = d6;
                } else {
                    return d6;
                }
            }
            return d5;
        }
        return d3;
    }

    private static boolean isFidelity(DynamicScheme dynamicScheme) {
        Variant variant = dynamicScheme.variant;
        if (variant != Variant.FIDELITY && variant != Variant.CONTENT) {
            return false;
        }
        return true;
    }

    private static boolean isMonochrome(DynamicScheme dynamicScheme) {
        if (dynamicScheme.variant == Variant.MONOCHROME) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ Double lambda$background$11(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 6.0d;
        } else {
            d = 98.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$controlActivated$146(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 30.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$controlHighlight$150(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 100.0d;
        } else {
            d = 0.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$controlHighlight$151(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 0.2d;
        } else {
            d = 0.12d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$controlNormal$148(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 80.0d;
        } else {
            d = 30.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$error$92(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 80.0d;
        } else {
            d = 40.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$error$93(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(errorContainer(), error(), 15.0d, TonePolarity.NEARER, false);
    }

    public static /* synthetic */ Double lambda$errorContainer$98(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 30.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$errorContainer$99(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(errorContainer(), error(), 15.0d, TonePolarity.NEARER, false);
    }

    public static /* synthetic */ Double lambda$inverseOnSurface$40(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 20.0d;
        } else {
            d = 95.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$inverseOnSurface$41(DynamicScheme dynamicScheme) {
        return inverseSurface();
    }

    public static /* synthetic */ Double lambda$inversePrimary$65(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 40.0d;
        } else {
            d = 80.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$inversePrimary$66(DynamicScheme dynamicScheme) {
        return inverseSurface();
    }

    public static /* synthetic */ Double lambda$inverseSurface$38(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 90.0d;
        } else {
            d = 20.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$neutralPaletteKeyColor$7(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.neutralPalette.getKeyColor().getTone());
    }

    public static /* synthetic */ Double lambda$neutralVariantPaletteKeyColor$9(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.neutralVariantPalette.getKeyColor().getTone());
    }

    public static /* synthetic */ Double lambda$onBackground$13(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 90.0d;
        } else {
            d = 10.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onBackground$14(DynamicScheme dynamicScheme) {
        return background();
    }

    public static /* synthetic */ Double lambda$onError$95(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 20.0d;
        } else {
            d = 100.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onError$96(DynamicScheme dynamicScheme) {
        return error();
    }

    public static /* synthetic */ Double lambda$onErrorContainer$101(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 90.0d;
        } else {
            d = 10.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onErrorContainer$102(DynamicScheme dynamicScheme) {
        return errorContainer();
    }

    public static /* synthetic */ Double lambda$onPrimary$56(DynamicScheme dynamicScheme) {
        double d;
        double d2;
        if (isMonochrome(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d2 = 10.0d;
            } else {
                d2 = 90.0d;
            }
            return Double.valueOf(d2);
        }
        if (dynamicScheme.isDark) {
            d = 20.0d;
        } else {
            d = 100.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onPrimary$57(DynamicScheme dynamicScheme) {
        return primary();
    }

    public /* synthetic */ Double lambda$onPrimaryContainer$62(DynamicScheme dynamicScheme) {
        double d;
        double d2;
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(primaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        if (isMonochrome(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d2 = 0.0d;
            } else {
                d2 = 100.0d;
            }
            return Double.valueOf(d2);
        }
        if (dynamicScheme.isDark) {
            d = 90.0d;
        } else {
            d = 10.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onPrimaryContainer$63(DynamicScheme dynamicScheme) {
        return primaryContainer();
    }

    public static /* synthetic */ Double lambda$onPrimaryFixed$110(DynamicScheme dynamicScheme) {
        double d;
        if (isMonochrome(dynamicScheme)) {
            d = 100.0d;
        } else {
            d = 10.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onPrimaryFixed$111(DynamicScheme dynamicScheme) {
        return primaryFixedDim();
    }

    public /* synthetic */ DynamicColor lambda$onPrimaryFixed$112(DynamicScheme dynamicScheme) {
        return primaryFixed();
    }

    public static /* synthetic */ Double lambda$onPrimaryFixedVariant$114(DynamicScheme dynamicScheme) {
        double d;
        if (isMonochrome(dynamicScheme)) {
            d = 90.0d;
        } else {
            d = 30.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onPrimaryFixedVariant$115(DynamicScheme dynamicScheme) {
        return primaryFixedDim();
    }

    public /* synthetic */ DynamicColor lambda$onPrimaryFixedVariant$116(DynamicScheme dynamicScheme) {
        return primaryFixed();
    }

    public static /* synthetic */ Double lambda$onSecondary$71(DynamicScheme dynamicScheme) {
        double d = 100.0d;
        if (isMonochrome(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d = 10.0d;
            }
            return Double.valueOf(d);
        }
        if (dynamicScheme.isDark) {
            d = 20.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onSecondary$72(DynamicScheme dynamicScheme) {
        return secondary();
    }

    public /* synthetic */ Double lambda$onSecondaryContainer$77(DynamicScheme dynamicScheme) {
        double d;
        if (!isFidelity(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d = 90.0d;
            } else {
                d = 10.0d;
            }
            return Double.valueOf(d);
        }
        return Double.valueOf(DynamicColor.foregroundTone(secondaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
    }

    public /* synthetic */ DynamicColor lambda$onSecondaryContainer$78(DynamicScheme dynamicScheme) {
        return secondaryContainer();
    }

    public static /* synthetic */ Double lambda$onSecondaryFixed$124(DynamicScheme dynamicScheme) {
        return Double.valueOf(10.0d);
    }

    public /* synthetic */ DynamicColor lambda$onSecondaryFixed$125(DynamicScheme dynamicScheme) {
        return secondaryFixedDim();
    }

    public /* synthetic */ DynamicColor lambda$onSecondaryFixed$126(DynamicScheme dynamicScheme) {
        return secondaryFixed();
    }

    public static /* synthetic */ Double lambda$onSecondaryFixedVariant$128(DynamicScheme dynamicScheme) {
        double d;
        if (isMonochrome(dynamicScheme)) {
            d = 25.0d;
        } else {
            d = 30.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onSecondaryFixedVariant$129(DynamicScheme dynamicScheme) {
        return secondaryFixedDim();
    }

    public /* synthetic */ DynamicColor lambda$onSecondaryFixedVariant$130(DynamicScheme dynamicScheme) {
        return secondaryFixed();
    }

    public static /* synthetic */ Double lambda$onSurface$32(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 90.0d;
        } else {
            d = 10.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$onSurfaceVariant$36(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 80.0d;
        } else {
            d = 30.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$onTertiary$83(DynamicScheme dynamicScheme) {
        double d;
        double d2;
        if (isMonochrome(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d2 = 10.0d;
            } else {
                d2 = 90.0d;
            }
            return Double.valueOf(d2);
        }
        if (dynamicScheme.isDark) {
            d = 20.0d;
        } else {
            d = 100.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onTertiary$84(DynamicScheme dynamicScheme) {
        return tertiary();
    }

    public /* synthetic */ Double lambda$onTertiaryContainer$89(DynamicScheme dynamicScheme) {
        double d;
        double d2;
        if (isMonochrome(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d2 = 0.0d;
            } else {
                d2 = 100.0d;
            }
            return Double.valueOf(d2);
        }
        if (!isFidelity(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d = 90.0d;
            } else {
                d = 10.0d;
            }
            return Double.valueOf(d);
        }
        return Double.valueOf(DynamicColor.foregroundTone(tertiaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
    }

    public /* synthetic */ DynamicColor lambda$onTertiaryContainer$90(DynamicScheme dynamicScheme) {
        return tertiaryContainer();
    }

    public static /* synthetic */ Double lambda$onTertiaryFixed$138(DynamicScheme dynamicScheme) {
        double d;
        if (isMonochrome(dynamicScheme)) {
            d = 100.0d;
        } else {
            d = 10.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onTertiaryFixed$139(DynamicScheme dynamicScheme) {
        return tertiaryFixedDim();
    }

    public /* synthetic */ DynamicColor lambda$onTertiaryFixed$140(DynamicScheme dynamicScheme) {
        return tertiaryFixed();
    }

    public static /* synthetic */ Double lambda$onTertiaryFixedVariant$142(DynamicScheme dynamicScheme) {
        double d;
        if (isMonochrome(dynamicScheme)) {
            d = 90.0d;
        } else {
            d = 30.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ DynamicColor lambda$onTertiaryFixedVariant$143(DynamicScheme dynamicScheme) {
        return tertiaryFixedDim();
    }

    public /* synthetic */ DynamicColor lambda$onTertiaryFixedVariant$144(DynamicScheme dynamicScheme) {
        return tertiaryFixed();
    }

    public static /* synthetic */ Double lambda$outline$43(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 60.0d;
        } else {
            d = 50.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$outlineVariant$45(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 30.0d;
        } else {
            d = 80.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$primary$53(DynamicScheme dynamicScheme) {
        double d;
        double d2;
        if (isMonochrome(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d2 = 100.0d;
            } else {
                d2 = 0.0d;
            }
            return Double.valueOf(d2);
        }
        if (dynamicScheme.isDark) {
            d = 80.0d;
        } else {
            d = 40.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$primary$54(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryContainer(), primary(), 15.0d, TonePolarity.NEARER, false);
    }

    public static /* synthetic */ Double lambda$primaryContainer$59(DynamicScheme dynamicScheme) {
        double d;
        double d2;
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(performAlbers(dynamicScheme.sourceColorHct, dynamicScheme));
        }
        if (isMonochrome(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d2 = 85.0d;
            } else {
                d2 = 25.0d;
            }
            return Double.valueOf(d2);
        }
        if (dynamicScheme.isDark) {
            d = 30.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$primaryContainer$60(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryContainer(), primary(), 15.0d, TonePolarity.NEARER, false);
    }

    public static /* synthetic */ Double lambda$primaryFixed$104(DynamicScheme dynamicScheme) {
        double d;
        if (isMonochrome(dynamicScheme)) {
            d = 40.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$primaryFixed$105(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryFixed(), primaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public static /* synthetic */ Double lambda$primaryFixedDim$107(DynamicScheme dynamicScheme) {
        double d;
        if (isMonochrome(dynamicScheme)) {
            d = 30.0d;
        } else {
            d = 80.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$primaryFixedDim$108(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryFixed(), primaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public static /* synthetic */ Double lambda$primaryPaletteKeyColor$1(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.primaryPalette.getKeyColor().getTone());
    }

    public static /* synthetic */ Double lambda$scrim$49(DynamicScheme dynamicScheme) {
        return Double.valueOf(0.0d);
    }

    public static /* synthetic */ Double lambda$secondary$68(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 80.0d;
        } else {
            d = 40.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$secondary$69(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryContainer(), secondary(), 15.0d, TonePolarity.NEARER, false);
    }

    public static /* synthetic */ Double lambda$secondaryContainer$74(DynamicScheme dynamicScheme) {
        double d;
        double d2 = 30.0d;
        if (dynamicScheme.isDark) {
            d = 30.0d;
        } else {
            d = 90.0d;
        }
        if (isMonochrome(dynamicScheme)) {
            if (!dynamicScheme.isDark) {
                d2 = 85.0d;
            }
            return Double.valueOf(d2);
        }
        if (!isFidelity(dynamicScheme)) {
            return Double.valueOf(d);
        }
        return Double.valueOf(performAlbers(dynamicScheme.secondaryPalette.getHct(findDesiredChromaByTone(dynamicScheme.secondaryPalette.getHue(), dynamicScheme.secondaryPalette.getChroma(), d, !dynamicScheme.isDark)), dynamicScheme));
    }

    public /* synthetic */ ToneDeltaPair lambda$secondaryContainer$75(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryContainer(), secondary(), 15.0d, TonePolarity.NEARER, false);
    }

    public static /* synthetic */ Double lambda$secondaryFixed$118(DynamicScheme dynamicScheme) {
        double d;
        if (isMonochrome(dynamicScheme)) {
            d = 80.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$secondaryFixed$119(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryFixed(), secondaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public static /* synthetic */ Double lambda$secondaryFixedDim$121(DynamicScheme dynamicScheme) {
        double d;
        if (isMonochrome(dynamicScheme)) {
            d = 70.0d;
        } else {
            d = 80.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$secondaryFixedDim$122(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryFixed(), secondaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public static /* synthetic */ Double lambda$secondaryPaletteKeyColor$3(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.secondaryPalette.getKeyColor().getTone());
    }

    public static /* synthetic */ Double lambda$shadow$47(DynamicScheme dynamicScheme) {
        return Double.valueOf(0.0d);
    }

    public static /* synthetic */ Double lambda$surface$16(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 6.0d;
        } else {
            d = 98.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$surfaceBright$20(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 24.0d;
        } else {
            d = 98.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$surfaceContainer$26(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 12.0d;
        } else {
            d = 94.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$surfaceContainerHigh$28(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 17.0d;
        } else {
            d = 92.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$surfaceContainerHighest$30(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 22.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$surfaceContainerLow$24(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 10.0d;
        } else {
            d = 96.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$surfaceContainerLowest$22(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 4.0d;
        } else {
            d = 100.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$surfaceDim$18(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 6.0d;
        } else {
            d = 87.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$surfaceTint$51(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 80.0d;
        } else {
            d = 40.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$surfaceVariant$34(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 30.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$tertiary$80(DynamicScheme dynamicScheme) {
        double d;
        double d2;
        if (isMonochrome(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d2 = 90.0d;
            } else {
                d2 = 25.0d;
            }
            return Double.valueOf(d2);
        }
        if (dynamicScheme.isDark) {
            d = 80.0d;
        } else {
            d = 40.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$tertiary$81(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryContainer(), tertiary(), 15.0d, TonePolarity.NEARER, false);
    }

    public static /* synthetic */ Double lambda$tertiaryContainer$86(DynamicScheme dynamicScheme) {
        double d;
        double d2;
        if (isMonochrome(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d2 = 60.0d;
            } else {
                d2 = 49.0d;
            }
            return Double.valueOf(d2);
        }
        if (!isFidelity(dynamicScheme)) {
            if (dynamicScheme.isDark) {
                d = 30.0d;
            } else {
                d = 90.0d;
            }
            return Double.valueOf(d);
        }
        return Double.valueOf(DislikeAnalyzer.fixIfDisliked(dynamicScheme.tertiaryPalette.getHct(performAlbers(dynamicScheme.tertiaryPalette.getHct(dynamicScheme.sourceColorHct.getTone()), dynamicScheme))).getTone());
    }

    public /* synthetic */ ToneDeltaPair lambda$tertiaryContainer$87(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryContainer(), tertiary(), 15.0d, TonePolarity.NEARER, false);
    }

    public static /* synthetic */ Double lambda$tertiaryFixed$132(DynamicScheme dynamicScheme) {
        double d;
        if (isMonochrome(dynamicScheme)) {
            d = 40.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$tertiaryFixed$133(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryFixed(), tertiaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public static /* synthetic */ Double lambda$tertiaryFixedDim$135(DynamicScheme dynamicScheme) {
        double d;
        if (isMonochrome(dynamicScheme)) {
            d = 30.0d;
        } else {
            d = 80.0d;
        }
        return Double.valueOf(d);
    }

    public /* synthetic */ ToneDeltaPair lambda$tertiaryFixedDim$136(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryFixed(), tertiaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public static /* synthetic */ Double lambda$tertiaryPaletteKeyColor$5(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.tertiaryPalette.getKeyColor().getTone());
    }

    public static /* synthetic */ Double lambda$textHintInverse$161(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 10.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$textPrimaryInverse$153(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 10.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$textPrimaryInverseDisableOnly$157(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 10.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$textSecondaryAndTertiaryInverse$155(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 30.0d;
        } else {
            d = 80.0d;
        }
        return Double.valueOf(d);
    }

    public static /* synthetic */ Double lambda$textSecondaryAndTertiaryInverseDisabled$159(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 10.0d;
        } else {
            d = 90.0d;
        }
        return Double.valueOf(d);
    }

    public static double performAlbers(Hct hct, DynamicScheme dynamicScheme) {
        Hct inViewingConditions = hct.inViewingConditions(viewingConditionsForAlbers(dynamicScheme));
        if (DynamicColor.tonePrefersLightForeground(hct.getTone()) && !DynamicColor.toneAllowsLightForeground(inViewingConditions.getTone())) {
            return DynamicColor.enableLightForeground(hct.getTone());
        }
        return DynamicColor.enableLightForeground(inViewingConditions.getTone());
    }

    private static ViewingConditions viewingConditionsForAlbers(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = 30.0d;
        } else {
            d = 80.0d;
        }
        return ViewingConditions.defaultWithBackgroundLstar(d);
    }

    @NonNull
    public DynamicColor background() {
        return new DynamicColor(new ObfuscatedString(new long[]{-2529900865886047653L, 389849642296513308L, 2704148737299917816L}).toString(), new C0970x79dbe07(15), new C0970x79dbe07(16), true, null, null, null, null);
    }

    @NonNull
    public DynamicColor controlActivated() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{8874981928274778672L, 8344038081411002061L, 8659164472189967114L, -9028406718910057319L}).toString(), new C0969xa2991b18(21), new C0969xa2991b18(22));
    }

    @NonNull
    public DynamicColor controlHighlight() {
        return new DynamicColor(new ObfuscatedString(new long[]{-7152269239985188175L, 3380728273513983353L, 8441040095288976259L, 8655349866481459725L}).toString(), new C0970x79dbe07(9), new C0970x79dbe07(10), false, null, null, null, null, new C0970x79dbe07(11));
    }

    @NonNull
    public DynamicColor controlNormal() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{1489381601255277514L, 7527995818749759392L, -3889812684319507460L}).toString(), new C0969xa2991b18(11), new C0969xa2991b18(18));
    }

    @NonNull
    public DynamicColor error() {
        return new DynamicColor(new ObfuscatedString(new long[]{-339463882251577710L, -6584471750818717387L}).toString(), new C0967x332aa8a6(21), new C0967x332aa8a6(23), true, new C0972x17870efc(this, 10), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new C0968x984bae6c(this, 11));
    }

    @NonNull
    public DynamicColor errorContainer() {
        return new DynamicColor(new ObfuscatedString(new long[]{4010195601472233445L, 236319813746678840L, 4689428028283849862L}).toString(), new C0969xa2991b18(7), new C0969xa2991b18(8), true, new C0972x17870efc(this, 10), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new C0968x984bae6c(this, 13));
    }

    @NonNull
    public DynamicColor highestSurface(@NonNull DynamicScheme dynamicScheme) {
        if (dynamicScheme.isDark) {
            return surfaceBright();
        }
        return surfaceDim();
    }

    @NonNull
    public DynamicColor inverseOnSurface() {
        return new DynamicColor(new ObfuscatedString(new long[]{6018942517952498950L, 8170843601161880115L, -6266838485917876394L, 1594085113401057058L}).toString(), new C0967x332aa8a6(14), new C0967x332aa8a6(15), false, new C0968x984bae6c(this, 4), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor inversePrimary() {
        return new DynamicColor(new ObfuscatedString(new long[]{3304508177123070345L, 4255080460710367566L, 2530027332646412453L}).toString(), new C0970x79dbe07(28), new C0970x79dbe07(29), false, new C0968x984bae6c(this, 27), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public DynamicColor inverseSurface() {
        return new DynamicColor(new ObfuscatedString(new long[]{5168347382737701559L, -1640604086769775332L, -3646369892856251871L}).toString(), new C0969xa2991b18(0), new C0969xa2991b18(1), false, null, null, null, null);
    }

    @NonNull
    public DynamicColor neutralPaletteKeyColor() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{-3444949315039052946L, 8471223734188454747L, -6403405939875116594L, 2798286600852289929L, 4142135158872060044L}).toString(), new C0967x332aa8a6(9), new C0967x332aa8a6(17));
    }

    @NonNull
    public DynamicColor neutralVariantPaletteKeyColor() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{7763071102345843569L, 4512929853290522527L, 6166809441103937255L, 2978616774746951627L, 6363050163466671257L, -5248334877598863993L}).toString(), new C0971x29bd0380(17), new C0971x29bd0380(18));
    }

    @NonNull
    public DynamicColor onBackground() {
        return new DynamicColor(new ObfuscatedString(new long[]{-646679537815046306L, 132089716158368271L, 1658278680307492803L}).toString(), new C0970x79dbe07(19), new C0970x79dbe07(20), false, new C0968x984bae6c(this, 25), null, new ContrastCurve(3.0d, 3.0d, 4.5d, 7.0d), null);
    }

    @NonNull
    public DynamicColor onError() {
        return new DynamicColor(new ObfuscatedString(new long[]{5704425044634790381L, 6263075320200396L}).toString(), new C0971x29bd0380(7), new C0971x29bd0380(8), false, new C0972x17870efc(this, 3), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onErrorContainer() {
        return new DynamicColor(new ObfuscatedString(new long[]{6664709237097200055L, 4601321748117125821L, -1665828480842778279L, -7928172450594097844L}).toString(), new C0969xa2991b18(3), new C0969xa2991b18(4), false, new C0968x984bae6c(this, 12), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onPrimary() {
        return new DynamicColor(new ObfuscatedString(new long[]{3609032120985728987L, -4414627610956501502L, 5947076583299456599L}).toString(), new C0970x79dbe07(26), new C0970x79dbe07(27), false, new C0968x984bae6c(this, 26), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onPrimaryContainer() {
        return new DynamicColor(new ObfuscatedString(new long[]{5537931153789688012L, 131586145791596527L, 8994875490258512933L, 1132573888589408530L}).toString(), new C0971x29bd0380(11), new C0972x17870efc(this, 4), false, new C0972x17870efc(this, 5), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onPrimaryFixed() {
        return new DynamicColor(new ObfuscatedString(new long[]{-1435309195295301391L, 9083231501021027002L, -2342769554385799523L}).toString(), new C0967x332aa8a6(19), new C0967x332aa8a6(20), false, new C0968x984bae6c(this, 9), new C0968x984bae6c(this, 10), new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onPrimaryFixedVariant() {
        return new DynamicColor(new ObfuscatedString(new long[]{-2632232747130237611L, -5934496407985450330L, 2186862579336050345L, 373731501604620394L}).toString(), new C0971x29bd0380(3), new C0971x29bd0380(4), false, new C0968x984bae6c(this, 29), new C0972x17870efc(this, 0), new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public DynamicColor onSecondary() {
        return new DynamicColor(new ObfuscatedString(new long[]{2947789721609071344L, 2520674263991085592L, 7941902527051181214L}).toString(), new C0967x332aa8a6(1), new C0967x332aa8a6(2), false, new C0968x984bae6c(this, 0), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onSecondaryContainer() {
        return new DynamicColor(new ObfuscatedString(new long[]{6897770131471807681L, 2259387234872511879L, 2576564230267580805L, -3610864570456646756L}).toString(), new C0967x332aa8a6(18), new C0968x984bae6c(this, 7), false, new C0968x984bae6c(this, 8), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onSecondaryFixed() {
        return new DynamicColor(new ObfuscatedString(new long[]{7102462433324563747L, 3557292013035747532L, -6581189903087787787L, 6218503205154121564L}).toString(), new C0967x332aa8a6(12), new C0967x332aa8a6(13), false, new C0968x984bae6c(this, 2), new C0968x984bae6c(this, 3), new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onSecondaryFixedVariant() {
        return new DynamicColor(new ObfuscatedString(new long[]{8558847566958192968L, -1829526397604677039L, 40893713385615795L, 156911294100070522L, 2781134752293341746L}).toString(), new C0969xa2991b18(16), new C0969xa2991b18(17), false, new C0968x984bae6c(this, 16), new C0968x984bae6c(this, 17), new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public DynamicColor onSurface() {
        return new DynamicColor(new ObfuscatedString(new long[]{-6442286336315332068L, 7404151219764793758L, 3394591209442402773L}).toString(), new C0971x29bd0380(14), new C0971x29bd0380(24), false, new C0972x17870efc(this, 10), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onSurfaceVariant() {
        return new DynamicColor(new ObfuscatedString(new long[]{-2663067592205360535L, -4186851599815072900L, -7958709555396882101L, 883563344123387776L}).toString(), new C0967x332aa8a6(28), new C0967x332aa8a6(29), false, new C0972x17870efc(this, 10), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public DynamicColor onTertiary() {
        return new DynamicColor(new ObfuscatedString(new long[]{-6381861373834562357L, -425207830636163882L, 5738507809747576843L}).toString(), new C0970x79dbe07(21), new C0971x29bd0380(0), false, new C0972x17870efc(this, 2), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onTertiaryContainer() {
        return new DynamicColor(new ObfuscatedString(new long[]{3758880413103120271L, 2696944568737749528L, -8896398485343726602L, -9208814534522424803L}).toString(), new C0967x332aa8a6(16), new C0968x984bae6c(this, 5), false, new C0968x984bae6c(this, 6), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onTertiaryFixed() {
        return new DynamicColor(new ObfuscatedString(new long[]{-975206306707220242L, 2915627585954381909L, 5147628978688358096L, 8823433836455846189L}).toString(), new C0970x79dbe07(5), new C0970x79dbe07(6), false, new C0968x984bae6c(this, 22), new C0968x984bae6c(this, 23), new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onTertiaryFixedVariant() {
        return new DynamicColor(new ObfuscatedString(new long[]{1270006297015414699L, -8434619910349980372L, -8115822575381361860L, 227352321971675603L, -871144234928019640L}).toString(), new C0969xa2991b18(26), new C0969xa2991b18(27), false, new C0968x984bae6c(this, 19), new C0968x984bae6c(this, 20), new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public DynamicColor outline() {
        return new DynamicColor(new ObfuscatedString(new long[]{-4098536048953138268L, -1532759707802250818L}).toString(), new C0967x332aa8a6(7), new C0967x332aa8a6(8), false, new C0972x17870efc(this, 10), null, new ContrastCurve(1.5d, 3.0d, 4.5d, 7.0d), null);
    }

    @NonNull
    public DynamicColor outlineVariant() {
        return new DynamicColor(new ObfuscatedString(new long[]{-8490837473801139385L, -7637626212687463969L, 2553775825875615019L}).toString(), new C0970x79dbe07(22), new C0970x79dbe07(23), false, new C0972x17870efc(this, 10), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), null);
    }

    @NonNull
    public DynamicColor primary() {
        return new DynamicColor(new ObfuscatedString(new long[]{1943206049655680460L, 6184792621176618159L}).toString(), new C0969xa2991b18(12), new C0969xa2991b18(13), true, new C0972x17870efc(this, 10), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new C0968x984bae6c(this, 15));
    }

    @NonNull
    public DynamicColor primaryContainer() {
        return new DynamicColor(new ObfuscatedString(new long[]{7571905958314529780L, 5821004348348644300L, -6331530228166478001L, -5693366766701751858L}).toString(), new C0970x79dbe07(13), new C0970x79dbe07(14), true, new C0972x17870efc(this, 10), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new C0968x984bae6c(this, 24));
    }

    @NonNull
    public DynamicColor primaryFixed() {
        return new DynamicColor(new ObfuscatedString(new long[]{-357730801776518399L, 4097531420684286685L, 7935105017397594479L}).toString(), new C0971x29bd0380(26), new C0971x29bd0380(27), true, new C0972x17870efc(this, 10), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new C0972x17870efc(this, 7));
    }

    @NonNull
    public DynamicColor primaryFixedDim() {
        return new DynamicColor(new ObfuscatedString(new long[]{-1198906899067288514L, -871718562129838289L, -5916320087277866258L, -2634822231672114720L}).toString(), new C0971x29bd0380(28), new C0971x29bd0380(29), true, new C0972x17870efc(this, 10), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new C0972x17870efc(this, 8));
    }

    @NonNull
    public DynamicColor primaryPaletteKeyColor() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{-6250687579365938292L, -8202881739410782256L, 5090370664345786478L, 7935510035748295101L, -1866376529940175268L}).toString(), new C0969xa2991b18(23), new C0969xa2991b18(24));
    }

    @NonNull
    public DynamicColor scrim() {
        return new DynamicColor(new ObfuscatedString(new long[]{-1992885990628892631L, -8860808416742507650L}).toString(), new C0969xa2991b18(14), new C0969xa2991b18(15), false, null, null, null, null);
    }

    @NonNull
    public DynamicColor secondary() {
        return new DynamicColor(new ObfuscatedString(new long[]{7719284229844817875L, -8635758101109878976L, 6513550529597745116L}).toString(), new C0967x332aa8a6(3), new C0967x332aa8a6(4), true, new C0972x17870efc(this, 10), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new C0968x984bae6c(this, 1));
    }

    @NonNull
    public DynamicColor secondaryContainer() {
        return new DynamicColor(new ObfuscatedString(new long[]{-2485806982398251805L, -8958345261063009712L, 8751325334504462354L, -5979152732973497732L}).toString(), new C0970x79dbe07(2), new C0970x79dbe07(3), true, new C0972x17870efc(this, 10), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new C0968x984bae6c(this, 21));
    }

    @NonNull
    public DynamicColor secondaryFixed() {
        return new DynamicColor(new ObfuscatedString(new long[]{-996964493740691306L, -4981602344418847736L, 1025300907086686464L}).toString(), new C0971x29bd0380(1), new C0971x29bd0380(2), true, new C0972x17870efc(this, 10), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new C0968x984bae6c(this, 28));
    }

    @NonNull
    public DynamicColor secondaryFixedDim() {
        return new DynamicColor(new ObfuscatedString(new long[]{-1942301992598626312L, -258919373666402797L, 5385840995352728418L, -4108232698391567632L}).toString(), new C0971x29bd0380(12), new C0971x29bd0380(13), true, new C0972x17870efc(this, 10), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new C0972x17870efc(this, 6));
    }

    @NonNull
    public DynamicColor secondaryPaletteKeyColor() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{-3664321942542266478L, 5788895776191610439L, -7424113102432713849L, -6776896256260072045L, 8385684612030502618L}).toString(), new C0969xa2991b18(28), new C0969xa2991b18(29));
    }

    @NonNull
    public DynamicColor shadow() {
        return new DynamicColor(new ObfuscatedString(new long[]{-7735058793927890772L, -4750660493766872700L}).toString(), new C0971x29bd0380(21), new C0971x29bd0380(22), false, null, null, null, null);
    }

    @NonNull
    public DynamicColor surface() {
        return new DynamicColor(new ObfuscatedString(new long[]{-8679623728425331088L, 2165560918500917062L}).toString(), new C0967x332aa8a6(0), new C0969xa2991b18(25), true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceBright() {
        return new DynamicColor(new ObfuscatedString(new long[]{-5466539257088583786L, -1946208518885862792L, -9014531914907656489L}).toString(), new C0970x79dbe07(24), new C0970x79dbe07(25), true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceContainer() {
        return new DynamicColor(new ObfuscatedString(new long[]{2084667585782015727L, -7172968504178443498L, 1110792828801846124L, 3555933967675378451L}).toString(), new C0967x332aa8a6(26), new C0967x332aa8a6(27), true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceContainerHigh() {
        return new DynamicColor(new ObfuscatedString(new long[]{7789253053279416877L, 1391520029562712093L, -6512051475730373279L, 5985261310184051057L}).toString(), new C0970x79dbe07(17), new C0970x79dbe07(18), true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceContainerHighest() {
        return new DynamicColor(new ObfuscatedString(new long[]{-2214143191830567090L, -4315429370191885424L, 1396698814793482157L, 1486725826175755582L, 6375822106160779756L}).toString(), new C0971x29bd0380(23), new C0971x29bd0380(25), true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceContainerLow() {
        return new DynamicColor(new ObfuscatedString(new long[]{5764602770665857366L, -4640017202564075027L, 4262344652607104954L, 7824657008290170021L}).toString(), new C0970x79dbe07(0), new C0970x79dbe07(1), true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceContainerLowest() {
        return new DynamicColor(new ObfuscatedString(new long[]{-7138831925096706984L, 2948389060968450644L, -7098867884997251014L, -633096498056656625L}).toString(), new C0967x332aa8a6(5), new C0967x332aa8a6(6), true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceDim() {
        return new DynamicColor(new ObfuscatedString(new long[]{7240076258668883724L, -4508529715031917212L, -4395812370928490102L}).toString(), new C0967x332aa8a6(22), new C0969xa2991b18(2), true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceTint() {
        return new DynamicColor(new ObfuscatedString(new long[]{8175233433315867923L, 6461612311865218063L, 2184192769532607538L}).toString(), new C0967x332aa8a6(10), new C0967x332aa8a6(11), true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceVariant() {
        return new DynamicColor(new ObfuscatedString(new long[]{1417774803746082253L, 6297232356809969611L, 5009537599356453546L}).toString(), new C0971x29bd0380(15), new C0971x29bd0380(16), true, null, null, null, null);
    }

    @NonNull
    public DynamicColor tertiary() {
        return new DynamicColor(new ObfuscatedString(new long[]{-545822405340160604L, -8203674774467126237L}).toString(), new C0969xa2991b18(19), new C0969xa2991b18(20), true, new C0972x17870efc(this, 10), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new C0968x984bae6c(this, 18));
    }

    @NonNull
    public DynamicColor tertiaryContainer() {
        String obfuscatedString = new ObfuscatedString(new long[]{413562873657461661L, 3234993785951656794L, 4050561780659003391L, -4037412388680217241L}).toString();
        final int i = 0;
        Function function = new Function() { // from class: 딜땋땬돰딽뎻되듻딌뒻땀뎠땹땤땠땀딞드땹돤뒛땬딹딐땜득뎹뒵뎰듰딄뎬듌딝딨돳딝땲뎨땮땻딻됴딤땰돨뎸뒬돶될돷도땡뎡뒈든뎨딐딌딌듬된돶땩뒛돼뒹딟뎡땠땬땃뎠땰돨땭듻딻딠땸땪딜땡됐됨땭땝듔뒤둡땨땻디듻뒉듬딻돛땝되땍땭땐뒤땁돵뎹땳딅땅뒹땹돝뒙뒙땋됴돛둡뒈둔땫뒛딐뒾땻뎹딃듸딝
            public final /* synthetic */ Function andThen(Function function2) {
                int i2 = i;
                return Function$CC.$default$andThen(this, function2);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                Double lambda$tertiaryContainer$86;
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                switch (i) {
                    case 0:
                        tonalPalette = dynamicScheme.tertiaryPalette;
                        return tonalPalette;
                    default:
                        lambda$tertiaryContainer$86 = MaterialDynamicColors.lambda$tertiaryContainer$86(dynamicScheme);
                        return lambda$tertiaryContainer$86;
                }
            }

            public final /* synthetic */ Function compose(Function function2) {
                int i2 = i;
                return Function$CC.$default$compose(this, function2);
            }
        };
        final int i2 = 1;
        return new DynamicColor(obfuscatedString, function, new Function() { // from class: 딜땋땬돰딽뎻되듻딌뒻땀뎠땹땤땠땀딞드땹돤뒛땬딹딐땜득뎹뒵뎰듰딄뎬듌딝딨돳딝땲뎨땮땻딻됴딤땰돨뎸뒬돶될돷도땡뎡뒈든뎨딐딌딌듬된돶땩뒛돼뒹딟뎡땠땬땃뎠땰돨땭듻딻딠땸땪딜땡됐됨땭땝듔뒤둡땨땻디듻뒉듬딻돛땝되땍땭땐뒤땁돵뎹땳딅땅뒹땹돝뒙뒙땋됴돛둡뒈둔땫뒛딐뒾땻뎹딃듸딝
            public final /* synthetic */ Function andThen(Function function2) {
                int i22 = i2;
                return Function$CC.$default$andThen(this, function2);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                Double lambda$tertiaryContainer$86;
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                switch (i2) {
                    case 0:
                        tonalPalette = dynamicScheme.tertiaryPalette;
                        return tonalPalette;
                    default:
                        lambda$tertiaryContainer$86 = MaterialDynamicColors.lambda$tertiaryContainer$86(dynamicScheme);
                        return lambda$tertiaryContainer$86;
                }
            }

            public final /* synthetic */ Function compose(Function function2) {
                int i22 = i2;
                return Function$CC.$default$compose(this, function2);
            }
        }, true, new C0972x17870efc(this, 10), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new C0972x17870efc(this, 9));
    }

    @NonNull
    public DynamicColor tertiaryFixed() {
        return new DynamicColor(new ObfuscatedString(new long[]{5405753188378613245L, -190680002217678141L, 4254660748990833206L}).toString(), new C0969xa2991b18(9), new C0969xa2991b18(10), true, new C0972x17870efc(this, 10), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new C0968x984bae6c(this, 14));
    }

    @NonNull
    public DynamicColor tertiaryFixedDim() {
        return new DynamicColor(new ObfuscatedString(new long[]{5057339355336696073L, 2990741152771258761L, -4171729010730837274L, 4762050016412971801L}).toString(), new C0971x29bd0380(5), new C0971x29bd0380(6), true, new C0972x17870efc(this, 10), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new C0972x17870efc(this, 1));
    }

    @NonNull
    public DynamicColor tertiaryPaletteKeyColor() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{-441175178638318447L, 452349815733830830L, -7095201658544328181L, 4145357711142211644L, 2492288575371622382L}).toString(), new C0970x79dbe07(7), new C0970x79dbe07(8));
    }

    @NonNull
    public DynamicColor textHintInverse() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{-4996638185420772473L, -3285032163204839361L, -1612844533060809566L, 825121727981570241L}).toString(), new C0971x29bd0380(19), new C0971x29bd0380(20));
    }

    @NonNull
    public DynamicColor textPrimaryInverse() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{-581981403303888365L, 7071350798569262037L, 6590821717940594311L, 2418753204213208987L}).toString(), new C0967x332aa8a6(24), new C0967x332aa8a6(25));
    }

    @NonNull
    public DynamicColor textPrimaryInverseDisableOnly() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{-7098164032348857546L, 9176161639674989757L, 2754949375887588015L, -6988655789818523772L, 6836378304025005212L, -5034642503615995448L}).toString(), new C0971x29bd0380(9), new C0971x29bd0380(10));
    }

    @NonNull
    public DynamicColor textSecondaryAndTertiaryInverse() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{-2063821247523228230L, 4929127023852926361L, 5018429266705036011L, -4594113398897324341L, 41212464947767977L, -3938195957664928377L}).toString(), new C0969xa2991b18(5), new C0969xa2991b18(6));
    }

    @NonNull
    public DynamicColor textSecondaryAndTertiaryInverseDisabled() {
        return DynamicColor.fromPalette(new ObfuscatedString(new long[]{-8132199548162727040L, 5176275355203928781L, 7786280813840002136L, -5567263498143577084L, 4092492132528106987L, -2672631101792407174L, 2771792620538781610L}).toString(), new C0970x79dbe07(4), new C0970x79dbe07(12));
    }
}
