.class public final Lcom/google/android/material/color/utilities/MaterialDynamicColors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static findDesiredChromaByTone(DDDZ)D
    .locals 11

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    cmpg-double v3, v1, p2

    .line 10
    .line 11
    if-gez v3, :cond_5

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    move-object v6, v0

    .line 18
    move-wide v7, v1

    .line 19
    move-wide v0, p4

    .line 20
    :goto_0
    invoke-virtual {v6}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    cmpg-double v4, v2, p2

    .line 25
    .line 26
    if-gez v4, :cond_4

    .line 27
    .line 28
    if-eqz p6, :cond_0

    .line 29
    .line 30
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 34
    .line 35
    :goto_1
    add-double v9, v0, v2

    .line 36
    .line 37
    move-wide v0, p0

    .line 38
    move-wide v2, p2

    .line 39
    move-wide v4, v9

    .line 40
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    cmpl-double v3, v7, v1

    .line 49
    .line 50
    if-lez v3, :cond_1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    sub-double/2addr v1, p2

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    const-wide v3, 0x3fd999999999999aL    # 0.4

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    cmpg-double v5, v1, v3

    .line 68
    .line 69
    if-gez v5, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    sub-double/2addr v1, p2

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v1

    .line 81
    invoke-virtual {v6}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    sub-double/2addr v3, p2

    .line 86
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    cmpg-double v5, v1, v3

    .line 91
    .line 92
    if-gez v5, :cond_3

    .line 93
    .line 94
    move-object v6, v0

    .line 95
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    move-wide v0, v9

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    move-wide v9, v0

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move-wide v9, p4

    .line 108
    :goto_2
    return-wide v9
.end method

.method private static isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/material/color/utilities/Variant;->FIDELITY:Lcom/google/android/material/color/utilities/Variant;

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/material/color/utilities/Variant;->CONTENT:Lcom/google/android/material/color/utilities/Variant;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method private static isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/material/color/utilities/Variant;->MONOCHROME:Lcom/google/android/material/color/utilities/Variant;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method private static synthetic lambda$background$10(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$background$11(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$controlActivated$145(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$controlActivated$146(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$controlHighlight$149(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$controlHighlight$150(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic lambda$controlHighlight$151(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private static synthetic lambda$controlNormal$147(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$controlNormal$148(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic lambda$error$91(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$error$92(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private synthetic lambda$error$93(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$errorContainer$97(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$errorContainer$98(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private synthetic lambda$errorContainer$99(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$inverseOnSurface$39(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$inverseOnSurface$40(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4057c00000000000L    # 95.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private synthetic lambda$inverseOnSurface$41(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$inversePrimary$64(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$inversePrimary$65(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private synthetic lambda$inversePrimary$66(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$inverseSurface$37(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$inverseSurface$38(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$neutralPaletteKeyColor$6(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$neutralPaletteKeyColor$7(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$neutralVariantPaletteKeyColor$8(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$neutralVariantPaletteKeyColor$9(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$onBackground$12(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onBackground$13(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private synthetic lambda$onBackground$14(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onError$94(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onError$95(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private synthetic lambda$onError$96(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onErrorContainer$100(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onErrorContainer$101(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private synthetic lambda$onErrorContainer$102(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onPrimary$55(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onPrimary$56(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 32
    .line 33
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method private synthetic lambda$onPrimary$57(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onPrimaryContainer$61(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic lambda$onPrimaryContainer$62(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Double;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const-wide/16 v0, 0x0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 48
    .line 49
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_2
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 65
    .line 66
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method private synthetic lambda$onPrimaryContainer$63(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onPrimaryFixed$109(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onPrimaryFixed$110(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 11
    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private synthetic lambda$onPrimaryFixed$111(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic lambda$onPrimaryFixed$112(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onPrimaryFixedVariant$113(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onPrimaryFixedVariant$114(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 14
    .line 15
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private synthetic lambda$onPrimaryFixedVariant$115(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic lambda$onPrimaryFixedVariant$116(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onSecondary$70(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onSecondary$71(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 14
    .line 15
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    .line 25
    .line 26
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private synthetic lambda$onSecondary$72(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onSecondaryContainer$76(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic lambda$onSecondaryContainer$77(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 18
    .line 19
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Double;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    .line 41
    .line 42
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method private synthetic lambda$onSecondaryContainer$78(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onSecondaryFixed$123(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onSecondaryFixed$124(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$onSecondaryFixed$125(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic lambda$onSecondaryFixed$126(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onSecondaryFixedVariant$127(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onSecondaryFixedVariant$128(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 11
    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private synthetic lambda$onSecondaryFixedVariant$129(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic lambda$onSecondaryFixedVariant$130(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onSurface$31(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onSurface$32(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$onSurfaceVariant$35(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onSurfaceVariant$36(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic lambda$onTertiary$82(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onTertiary$83(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 32
    .line 33
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method private synthetic lambda$onTertiary$84(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onTertiaryContainer$88(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic lambda$onTertiaryContainer$89(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 38
    .line 39
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/Double;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    .line 61
    .line 62
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method private synthetic lambda$onTertiaryContainer$90(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onTertiaryFixed$137(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onTertiaryFixed$138(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 11
    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private synthetic lambda$onTertiaryFixed$139(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic lambda$onTertiaryFixed$140(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$onTertiaryFixedVariant$141(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$onTertiaryFixedVariant$142(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 14
    .line 15
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private synthetic lambda$onTertiaryFixedVariant$143(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic lambda$onTertiaryFixedVariant$144(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$outline$42(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$outline$43(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic lambda$outlineVariant$44(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$outlineVariant$45(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic lambda$primary$52(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$primary$53(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 29
    .line 30
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private synthetic lambda$primary$54(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$primaryContainer$58(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$primaryContainer$59(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    .line 8
    .line 9
    invoke-static {v0, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const-wide v0, 0x4055400000000000L    # 85.0

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    .line 35
    .line 36
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 42
    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method private synthetic lambda$primaryContainer$60(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$primaryFixed$103(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$primaryFixed$104(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private synthetic lambda$primaryFixed$105(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$primaryFixedDim$106(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$primaryFixedDim$107(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 11
    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private synthetic lambda$primaryFixedDim$108(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$primaryPaletteKeyColor$0(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$primaryPaletteKeyColor$1(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$scrim$48(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$scrim$49(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic lambda$secondary$67(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$secondary$68(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private synthetic lambda$secondary$69(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$secondaryContainer$73(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$secondaryContainer$74(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-wide v9, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-wide v3, 0x4056800000000000L    # 90.0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    move-wide v9, v3

    .line 15
    :goto_0
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-wide v1, 0x4055400000000000L    # 85.0

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_2
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getHue()D

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getChroma()D

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 60
    .line 61
    xor-int/lit8 v11, v0, 0x1

    .line 62
    .line 63
    invoke-static/range {v5 .. v11}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->findDesiredChromaByTone(DDDZ)D

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iget-object v2, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 68
    .line 69
    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method private synthetic lambda$secondaryContainer$75(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$secondaryFixed$117(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$secondaryFixed$118(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private synthetic lambda$secondaryFixed$119(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$secondaryFixedDim$120(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$secondaryFixedDim$121(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide v0, 0x4051800000000000L    # 70.0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 14
    .line 15
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private synthetic lambda$secondaryFixedDim$122(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$secondaryPaletteKeyColor$2(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$secondaryPaletteKeyColor$3(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$shadow$46(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$shadow$47(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic lambda$surface$15(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$surface$16(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$surfaceBright$19(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$surfaceBright$20(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$surfaceContainer$25(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$surfaceContainer$26(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4057800000000000L    # 94.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$surfaceContainerHigh$27(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$surfaceContainerHigh$28(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4031000000000000L    # 17.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4057000000000000L    # 92.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic lambda$surfaceContainerHighest$29(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$surfaceContainerHighest$30(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4036000000000000L    # 22.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$surfaceContainerLow$23(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$surfaceContainerLow$24(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic lambda$surfaceContainerLowest$21(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$surfaceContainerLowest$22(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic lambda$surfaceDim$17(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$surfaceDim$18(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4055c00000000000L    # 87.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$surfaceTint$50(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$surfaceTint$51(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic lambda$surfaceVariant$33(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$surfaceVariant$34(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$tertiary$79(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$tertiary$80(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    .line 18
    .line 19
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 32
    .line 33
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method private synthetic lambda$tertiary$81(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$tertiaryContainer$85(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$tertiaryContainer$86(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide v0, 0x4048800000000000L    # 49.0

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 64
    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/google/android/material/color/utilities/DislikeAnalyzer;->fixIfDisliked(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/Hct;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method private synthetic lambda$tertiaryContainer$87(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$tertiaryFixed$131(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$tertiaryFixed$132(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private synthetic lambda$tertiaryFixed$133(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$tertiaryFixedDim$134(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$tertiaryFixedDim$135(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 11
    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private synthetic lambda$tertiaryFixedDim$136(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method private static synthetic lambda$tertiaryPaletteKeyColor$4(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$tertiaryPaletteKeyColor$5(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$textHintInverse$160(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$textHintInverse$161(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$textPrimaryInverse$152(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$textPrimaryInverse$153(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$textPrimaryInverseDisableOnly$156(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$textPrimaryInverseDisableOnly$157(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static synthetic lambda$textSecondaryAndTertiaryInverse$154(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$textSecondaryAndTertiaryInverse$155(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic lambda$textSecondaryAndTertiaryInverseDisabled$158(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic lambda$textSecondaryAndTertiaryInverseDisabled$159(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->viewingConditionsForAlbers(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->inViewingConditions(Lcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Hct;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->tonePrefersLightForeground(D)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->toneAllowsLightForeground(D)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->enableLightForeground(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    return-wide p0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->enableLightForeground(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide p0

    .line 46
    return-wide p0
.end method

.method private static viewingConditionsForAlbers(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ViewingConditions;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ViewingConditions;->defaultWithBackgroundLstar(D)Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primaryFixed$105(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onError$95(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimaryFixedVariant$113(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceContainerHighest$29(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$outline$42(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primaryFixedDim$108(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$outlineVariant$45(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiary$84(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondaryFixed$123(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiaryFixed$138(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondaryContainer$74(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondary$67(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondaryContainer$77(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondary$68(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiaryFixedVariant$144(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimaryFixed$109(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onErrorContainer$101(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiary$79(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceContainerLowest$22(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$background$11(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primaryContainer$60(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$controlHighlight$149(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSurfaceVariant$35(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$inversePrimary$66(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondaryFixedVariant$130(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$textSecondaryAndTertiaryInverse$154(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primary$52(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onErrorContainer$102(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondary$69(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$error$93(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎰딎땻듔땥땣듽땩땲땱딞둠듌뎸듰땋뒻됩두땤뒝땰도됐돰땠뒘듌뎡땩둔뒨뒻됐딝땪뒨딨딤땔뎡뒙땅땋돸돴딟딄땠땮뎬듰뎡딻뎹뒐뎰땝둡둠딟뒷듌땧듔뒘땵득딠땧돰된뒐딹되듸딃땄땮딄딅땹들뎹뒵딌듼된돤딝돷뒛된뒵땜돴딟땧땀땜땤득땤듸딎돼뒙땔디땮돸뒈딟뎻득땭땡돴된돛땔돝득됫뎠듽뒛돛땡둥(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondaryPaletteKeyColor$3(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimaryContainer$61(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎸듸뒼둥딝땣득뒋땔땁딝듟땬딄땤뎹뒉딃돴듨뒙뒝뒉뒈뒤땄딤땻됫땳됴될뎹듸딸돛둬듼뎻땄땥듨딹들둥땃들둑들뎬듟뒐뎡뒼듰돴땔딌뒼뎠뒬돤딝땸듼듸든듟드둡됴딽딤땨땐돛땬돠되되땫뒋디땲딅땡돸뒘둡딨든땍됴땡뎨딌듬돰듻돵듰땰땵땩됐땋됐돛뒾딀됩땁둘딅딜도뒻뎡돼돛땲딃뎡땥땲듬딎뎠땜듰(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$outline$43(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎸딀듽땐땱딨둘됴듨돛땐둔되땔돳된듨됩땨따듬땮뒐든듸뒹딝땟땬땋뎰뒵딽땩땵드땍딻뒛땰땮딐뒤땄돸뒐돤땻땵뎡딎땭딸뎡듻뎸뒛땟뎰뒉땡돨딄땄딤뎠둣뒈땠땭뒉땀뒀뒘딃땤뎡뒘뎡땪돳됫돤뎸땡됴땪돳땭딤딹뒹듌뒬둑땸듨땰둠뒋땬딻땥돶딎땥두뒵뒝딅딝뒹뒾딃뒝땣뒵뎬딹땄딁돷뎬땅땃뒾뒼뎨땸땥(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceContainer$26(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎸딜둠딎뎬딻돰딃뒨땀듌딤뒋뎻땍뒵될뒼땸둘땤듰딌딻둔땱땁따땮땬뒀뒛땫딻땮땮드땹땥땬땠듬땯득땐땐땋딐뒉돴땬뒨듌땯뎹땱될듟땭땮뒹돸딞딐돨뒘딃듰되뎰듐뒵디딨디땜땋뎠뒬디딤듬딠듼뒬뒹뒵딤땥둘둘땄딠뎹듽듔뒻뎻뎻돝딨따땟둣듻딄뒙돶땭땄듽딟땯뒾디딄둬뒀딅뒐듽뎠듬돛땤디둥딨딤땮(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceContainer$25(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎸딞돵뎡뎬땃뒵딸돵땱둘뒹득뒛땩뒵뒾듸듟딅땫돝돛땔뒵땱둡딁땔되땄듔뒷딠땐듬뎬땱딀딄땰둘땡땡됩뒹돵뒈땥딽뒉땬땧딽둔듔뒀땠딨딜땭뒻돠딜땤도둬된땭됐드도땔땦땻디됨돰뒼땟듻뎬뎡뎽땍뒬딠뎬땦두뒛돴돴둑됫드둣든땥디땧됩됨두딠딨땃둠돵뎸뒨뎸뎹땡뒙땨딝되땁됨돼땲돼뎽땮땠딄딁땄땸(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimaryFixedVariant$115(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSurface$32(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎹뎠돰될딟딄딞뒨돳딠딃도득딄땟뒨뒷둑둑됫땦듬딁듻딟뒐땦됨딽득땝땄땱땜딃땡딜땤땹뎬딸뎠뒋뒝딸땹땍따땐돳딹듸돷돨듬땣땜듨땝딄땱땁땤돸뒻디됴됴돳뎠땠땹땡딹둑뒬듸듻뒵돼딸땻땁땮딽듬딐돸땦듐둬됴돝딅됨땍뎽뎠뎰땝뒙돸딹둡뒻뒈득돼딌뎻듨돨땻땠땟돵돷되돨땦돠딸됩딜땀딐뎽딎뎻뒉(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$textHintInverse$161(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎹뎹땀둔땯됨뒋딝듟땁딞땭땠뒷뎡듼딠됩뒋땃돶두됴돨땨딤땄뎰딀뎡듼땀뒀돝땲땋뒵뎠돳득딤땪땔딁듸돤뒵돷땦될듔땧돼되든딄뒨둬땱돳딨듻듽뒛뎸듬땜뒝뒉도땄땪따딃뒻듌뒘땭듰딐뒹두딞뒨딸됩듻땋땪딎든뒾둬땣딻딜듨땡뒷땭둡딅들뒾땲땧딐땃뒻딤돛딄둣두둣돵듟돛땥딄돷돴뒵뒈됐뒛땍뒤땱뒨(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceBright$20(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎹돠듰뎽돼땃딄따듨뎬땻딽뎡듽딸뒝둡따땦돝딟뒉딸딞디듻뎬딨딅뒀딹됩돷뒤득딹뒻땔딀될딠딨듰땯뎽땦땄땄뒻뒀뎠뎹딻돷땦뒈뒷땭뎻뒾뒝땲땦뒛땍딐듌돳됩땫따땱땥듨딀뒹뒋되땀딜듬땁땸딜든듬뒝딅두땜뒈되땤됴땦돷뒻듰땡땧땮뒈든둣딌뒉돰딐뎰땹디득뒨딤땍듨뎻뒹됩땜돛되뒼땧뎹딜뎨뎨뒤딞(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondary$71(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎹뒙땀듻돰땜뒐딽뒝딟뎹듰뎻뒻땀따뒻듟돝뒤땣뒐돸땪둥둠땟듟땡땬뒼듸될돨땨땹딞뒝돵돼든돨딹땍됐땔땯딜디땬둥딀땍뎡땪뒨땮뒘딎땨뒝뒬뎹된뒝뒷득들땧뒝딌딨땟돶딄딝뒵땫듸돛돼딄됫뎠돛듟땔딅돵따따땜뎰딃뒹둔듨돶땵듟뎸듰둘뒼땟돼땸뒤땧땲뒨땨땐땠디됩딞됨듻뒷됩땃딐듼됐땲딄딸뒐돨(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primaryPaletteKeyColor$1(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$shadow$47(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻뎨듔듬뒵돛둑딌땍땦든딠땨돤뎰뎽되뒻뒝돼딻둔뒝듸땹됴돝땪둘듬둬둬듬땵뒾딠땡뒋뒷땍땰땱뎬됨딤뎠둑뒤뒼땁듰뎹듰딄땦뒈득딠돨둥땬뒉뒛땨땝딠딽뒤땬뒀땜돝딽땃딄뒉딄뎠뎠땱뒹뒐듐뎠땀뎸듻땔땜땍딜뒤뎨뎽뎠땍딁땡땁되땪땨둔두딸딠딟뒨딠뒈땝딀땸뒵딃듰듰땬뒻뒛딨됐땟든딽땻득땫땮딝(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiaryFixed$140(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻될두돳돰땐듰땪땱딜돛돼됐뒷따딽뒵땲듻땰뒈됐됐딄둔땅뎰돶뒝땐딄땄땱듐땧뒷듼뒋땳땋듔뒼땻돝뎽둬뎻뎡뎬땔땭듰돼딄땭뎬뎻될도딟듰땡땦땄뎸듔뎬둣딞땀뒀뒼땻돠됨두딐뒷딎땝됨딌딌따딜땁뒨둠뒋뒈딄돸될땻듐뒤딸뒷드듼땦딐딨땔딎둡딀뒘땯땭땻둣돶듸뎡뒐땁땄뒹뒹땭뎸땱땋돷딅딻돝뒷땄(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$neutralVariantPaletteKeyColor$8(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻됩듌뎡듼둔땁뒷땨땱땀땪뒹듌뒼둣딁딐둑뒨땬뒙딨땹듻땦두땮된뒙딎딄딸둣뎡듸둣뒐돤뒀뎰뎡될땋땳뒵뒀땳땱뒹땣땥딀듔둡둘땟듬뒷돳뒷딟뒵둥땫땨땅딨땅듨땅돵땵뒐됐땹땠득둬드땭딌돷땍뒐땀땲땭뎡뎰땄됫뒨땡뎹땜딨뎹뒐돠디돛딤딨뎰딁땟딤됴땸뎬뒾듐뒹돸뒤듐돵땸땨뎹뒈뎽따됨돵둔돴듻땸(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiaryFixedVariant$143(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻둥됴듟돴들뎽땦딨땟땡땁듌딎둥듼도땭딃든뎸뎻둔땨둡뒬됩땜땄땸둘땔딁뒘땃뎨딃둑땔된딻듸뎡뒉듸딨딁듰땬딝딸뒻둣뒝뒵딄돵땪땨뒬땲둔딎뒐딌뒐땟땧뒵땧땪땳딜딞듬돛땣돼딻딐듐된된딌들땻되둑듻뒼땀돰뒨됴딁뒬땅뎰딎뎻딜득딐땝뒋뒙뒝뎸둘딐뎽둣뒼땵뎠돵딌돨돸돨딻땤딌뎹들땟뒀됫듰듔(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondaryFixedVariant$127(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻뒀따뒾뎠돴디둠뒤둘되둔듨뒘뒀땄땍딝듌돶뒤땝돨땡뒾듼땔딄땋돠딠듌뎹딠듐뒼됐듬딃땝득돰딨돴뒘둥뒹됴땹땬딃뒬디뒷듨되듨땹땩둑돷딎땀됩땱뒈땥뒬둬됐땳돠뒤뎽뒀득둬딃돳됫땄땜돝돵뎨땭됴땰돵땝딠땨딽땝땭됫뒷딻뒙됐뎽뒷땵따땣드뒛돸디딻딄두땨뒛뒐땨뒝땀뎠됩듬딀뒀돠뎬둡듌땀됨뎬(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$inversePrimary$65(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻뒝땰뎡딞됨뎽뎰뒛됐땤둠뒈됫돶돛딤딠듼땣뒝딜돵듐듐뎹땭둑뒤돸딅뒬뒬땲땄뎻땧땦듰따딁둘듔땮땔땁딟둔딠땭땮듰땬뒐뎰뒤둔땳듔됐뒈딸뎰땥땻땸뒾뎡뎻딸돳땃듬둘땣뎽돸돷됴땍뒾돸땀득딄돶됩딠돳둑땸뒉되따딜둑둠되땁땯됫도뒝뒤딹둘뎠땍뒻돛땪뒙뒋땲뒈돳뎡땬딟돳딃둥땃돴듻뒛땀뒵땜딸(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiaryContainer$88(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻뒤뒙듐뎠딝땨뒙돼딎든둥됨딞돛땁돠땋땔듼듽딀뎬들땝땱땻땳돳땻땃땁따딅딸둡될땩뒬둥딻뎻됩뎠됴뎸돵돤땲땨딞땥돷둔땡땰땲둡땀땍됩뒤뎠딐뒀땜뒀뒹됩뒤든뎰돵두땫땻땐딽땰든돵뎡뒈뎡돸듨됐돼딽돝듸딞땠뎠뎠듰돨딞딐둬딠뒛돛딽땯돳뎸돴뒼땀뎬땮뒋뒬땡뎸땱땧뎡뒵돝딝드둬돤둑땤땍듨땳(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$controlNormal$148(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻듔땩땩뎽됨듐될됩땱돸됨뒐딽뒷듌두땝땩딻딁딌됩돠뒀땔뒐뒼땦따돳뎽딁딞딨땦뎬땱땋뒹뒷돛딝둠돛뎬땅둣딄땳땋됨돼딁딞뎻딅땝두뎨땣땻듐따땄땮땝땥둣딞땍땵뒘뒋뒀땜땟땔둣땅뒾뒻돵땸땪땹듸돶뒻땪듔땹들딐땥땐뒈땤땟딁땵둡딞딠뒵딀딝뒝땫뎬돶돤될뒈듰드땍딃됩땲땧뎹돝뎰들돰땹둔뎬뒤(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceVariant$33(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻듟땨뒝땄딃됩따땣땮돷뒛둬든뒨뎻땯딄돰뒉땡돠딤딨땠돸땋돳땋뎨땠딎됨둔땸딻딄땡돠듐둑딨뒼드딅된둬뒋딄듨뒀됩돳뎠듌뒬땝뎠딽땦돸돸땵땜땋땧둬돷돼돛딻돤뒙뒷돰딤듻뒷돳땬뒀땸땠둡돵돛듟땰듻뒾땮딄땦뒼뒼땲딟듨돷돛땅딤뒛땄돝뒋됴뒉땋드뒐돨뒋딎땧드듨둔땀땁땟됴돛둡땁딀뒐돳땧땅(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$textPrimaryInverse$152(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻땐돨땤뒘땦뒨땩득땥땻듸뎨땅듸뒨돶두뒾땡딁득뒼딞뒉땝도뒵돶땩됫듰돶딨땩듔딎뒾딻돛돳뒬뒛딎딨뒐디듼뒷뒨뒝딅땣뒾돛뒋땯딠땍뎡둣뒐뒀땮뎰듻땟땹둘딨땵땰뒵돠딌딁뒬둥뒾딨될됴뒷땝땵딝땟딻둠따땻뒀뎽뒝땠딟듽따땍뒬딸땹땥땵돵땁돨땳땡땳뒘딝딠돤듽도뎨땱딌둬됫땩뒾땻둡딝땄뒻뒝땸(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$controlHighlight$150(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻땐듨따뎠돝땯뒙듻땲딄딨듸득돤듰땪뒝딸둥듐뒵될땮뒝딹뎠뎰딎돛뒐돼땍돸돳땹듸된될둔땦딄듻딄돸뎻땩땣딄땝딐땍딐딟땁됴땡딎됫됐뒉돸뒀뒻뒐땬돷둥디돨둔딐땹뒵땃딟딄딞둣뒘딻뒀뎠듐둑뒹딁뒉된딜딸땐땃땳돤돤뎽뒾딐둔듌뎽딨된뒷뎻됨도도딟뎨뎬뎹딞땥드됴됐딹될땫땱땜뎸듸뒘땩둡돷땮(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceContainerHigh$28(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$neutralPaletteKeyColor$6(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽뎹듟듌돵든땪땪뎠땬디땻듻땡둑뒼딻땝돤땬뒾됴딐땩두딄뒻뒵되득둔땄돝돠돰땱땧뒋되듸땋딤딻땯듐둔땃듻땝돝돤뎽뎡딞딄땭땣뒹드돤땪땡땜듸딻땄땱뒀땫딤딀땁땣땟돼듌드땯둘땣딃딌뎻땠뒾듨됨딻뒛듰돠땔땪뒼뎻돵땠딟따뎸땪땭따뒹땍됐딃땄땧딁땹딐뒈됫득뒷뎹뒹딁딠듼땨뒨딽딻딄됐둥돼돼(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimary$55(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽돳든뎬땀땣딽뎽뒤둥따딐딃땩듬딎뎹둔뎬뒵딜둣땥될듸듨따딤뒬땤둥땯땥듐뒹딀뒝뒋땅돠땪뒼땃듌땦돴둥딄땻뎠됴땠딝뎰돝딸둔땡뎬땳듼땥듔됴땡됐둑돛듔딨돠둬땔뎸됨딌듨딸되딟뒹두딐딃뒾땵땫뒨땜딜땫디듬딟뒛땤땻둠돸듰땣뒷땡뒝땬둬딨딝따됨도땧딅땲딻돴뒐땥둬뒾둥땋뒈듌땫둡듸듸뎻딄(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$controlActivated$145(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceTint$50(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽뒛듔듬돵들듽뎸뒬땜됨뎡돶땋딟둑뒷둬돼땪둑딎된딹득뎹돼들딞땠땟땹듽돷딽땳들뎰땤돸땀듸딄뒷뒐뎹뒙땳됐땥땵딁된돤돷둔들들돳뒻땜땜됩딁됴돠땰땝땣땸땸뎨딝땜땰딨듨뒹뎸두땩땵딌땋딠뎬뒋땸땤땣듌드돨들땨땐뒨딤뒨돰뎠둑될뒾뎻땹땯뒀뎡듌땪땱딄도땪땋땹땨돠땰뒉뒵딟둬딽듌둣둣뎽뒛(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimary$57(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽뒬땣뒝듌되되돸땸딽듻돠땜딎딀땋돼돼땬돷땹됐뒝돰딨딨땡딤땠듔뎡돰땸땁득땋땁딄땜땡땝둑땤듨뎹땦뒛돛땡듽돵됩딃딨딃딸둘땨뒛돷땨두땸듨딎둔딨둘뒛땵땬땍딐뒈둣뎹듸땭뒻든땹듌땟든둡땻땃든뎠땠딟딻돨뎻땣둑뒘딟땍뒋돤땝됴돶딟뒐뒤땡된듔땔돰뎰뒬둬듨땤뒝둥듌땋딹돷딠뎠듔딜뒘딽땍(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceDim$17(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽들뒻됩뎠돴듬득딐땤뒤뒀듽둔듽딀뒨딞둔뒛돳땃땟땥따뒛뒷득됐땧땃땸됩돳뒤땃딻딨됐득돳둠둠디뎨뒻돴뒙딝득둬뒐땲도땬따뎨둘됴돠돴딹땠땲딸딄둑땮돶돰득뒬땋드뎽둔땭뒙뎹땡땃땀듌뒹뎸둥딄뎡딜돵돠돸둠될땟땄뒤땠땪땝뎽땸뎬돸땋돷뒷땐딽뒼땳땟돨뒋뒘두된두돛딅땲땜땁되땃두딃될뎹뎰(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primaryFixedDim$106(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽듸뎬딤뒤뎬됫딤땮땠뎨둬딅땃될땅땯듌땵되뎻둑뎬된되뎸딄땍둘둡듼뎨뒾둬뒨둡뎠둥뎰듰돴될뒝뎡딞듼돴돤듼땍둣땦둑돨듬돰땝된돸딁듽땜듽땱땜돤땱딨땃딐딤돶됐딃땄땩뒙딃딐땃땯드드땣땲땲됫듸땵뒀둑땵딄든딤둠뒨듼됫딠됐돼뎬땃뒹도됨듌뒨땐뒐듟땐땜됫땰뒬뎡득뒛땦딨따되돳딽뒻돷듼딨(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiaryContainer$90(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽듼땪뒻딅뒋땬딁뒬뎽딌듌돰됫돶딟들뎽뒛도땹돤뒹뒘땮들든땱딟됩뒵뒻뒨딝땍뒛득둑돤뎽뎻듽뒬뒙딽듐딠땩듼땭땣뒘땁됐딐딃딁땪됨딄땄딄땁땸드돸뎰도뒋딠듔땠딃딄도듼돝뎸돤듽땲땦땨뎽땫두딄딄딽딁뒋땫땯돠듌듸뒼돝땁땱땤둣둠뒙도땸딄뎻듌땟듨될됨땔땧돸돛드됴딞땬딟돸드땤땨땐뒋땥딎(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiaryFixedDim$134(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽딄딟득돛뎨든땥돷두딽뎬돛뒼둬땧딝땨듐듽딸돶딐됩뒤듔뎽땹도듰됫뎠돵땰들듸뎻땤땠돷딤뒻됫뒼땧돷돼뒙듰됨땣뒙뒼땤됩딎됩땝뒛딅땄둡됐두뒘딁뒵뒬땸뎽뎡땨땩디듻돸땳땪땵땄됐땅딠뒨뒐뎸땳됐됨땯듐땦땡듟딞뎹둬땭따딨땨뒵뒝돶땮된득딃돴딸뒐듬뒐돷뒼듟뒵듐뎻딨돰듌둠땨따땸뎻뒵땯딹(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$controlActivated$146(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽땜될뒵딹두땦뎬뒬둘땀딽땹땹듰뒨딟뒵듟땲땬두듐돸땪뎨땃딟듻뒐땝뒛땱든딠땱딞듸딐땄땮땳딄뎹드딹딁딐딌둠땅디되돳딁땦듰땤뒷땹든뒬딽뒀땣됨돶두뒋땪땨땡든뒋돳땀되돤땐듸땬딻듻됴딸뒘돷땠땰돷돷돝땱딽듸뒘둡뒬땋땸땨될돼딨돝땔돛듬돸땭들듬뒉뒉뒼뎰듻뒐디땝뒵둣땻됫땦땰딜된돼땟(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$textPrimaryInverseDisableOnly$156(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽땡돨둬땜뎰땩뒨땠뎻돼땨땡됫듌드딀땁땜뒘뎹뒹따듻됨뒨뒀땤듟뎽딽둠될땝돴뒉듔땵듰들뎽땪땰뎻딸딨됴둔돛듸땥뒵돳딁둘딀듰딁뎰딌둥둑땨땳돵땨돷딌된되땫땁딅두딝땣땰뎹듟둠됨뒹뒋딌땰땁딠둥딜땩뎰딄둔땠디뎽뒈땳됫듽뎠둔된듽땨따듟뒨딝따땀뎨뒐땯듼뒘땥뎬땭딄뒛땔딻들듔뒼돳딠됴딤(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$controlHighlight$151(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎽땰돰둬돤돼듌둡돴돠딟땭뒨돵둘땨뒛땪땪딸돶뎽딄드땸뒾딸뒝됴땯땹땭듨둡둠땵뒵듼되듔딨뒐뒾돝둑듬뎬딟듨땸땀딻두땐땵뎸뎸뒐뒵둘돸뒉될딞됐딄뒤됐땭돵딤딝듸돳땀둥땵듽도뒷딸뒷될듟됩땧됨둔둣든땱땣따들됫뒨땜듌땤뎨뎹돠뎡딁듰딞땫뒐딅땠둥딄땐디뒙뒷뒾딹두땟뒤딝되돼땄땦땡땻듻듰(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceContainerLowest$21(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 도될땬듼땸뎹딤둥돳듸듐뒵뎹돸돳딽땃듻되뒙디따둠뎠듌땠뒼뎠도됫땍따땯땰뒻돵둣땲되딐땡딽땠든두뎬돵뒾뎨둡땐땵뎡딄둡디돤됴뎠땐득돠득땲둬딨돰땹뒤뎡땁땝딻딽뒹뒾둡딀땣땮땭땤돨뎸땝듸땻디땸딄도됩땲땪듼딟돴따뒈됴듨딻땩땫뎸뒻드땍듸뎽될뎹딨뎨땨듟듻딅돛뒷두뎨땨돝땋듼딎뒝듬땭(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$errorContainer$99(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 도둬뒤딤뒛뒐듔돷땦됩뎽딸딎돴됐듻된듟뒹땦둡됫딀둥땱두딟됨따돰땲땮듔땍드돝돼돶뎹딞땠뒹땔땳뒙돨듸돼듰들돵땝딅딨땸둠딨뎻땲둬딌둔뒛듰땧될땮딄둬땲땅땝돷딨땭뎸돤드뒵뒾딐뒾듟뎻뒾땠둡둑뒀둑딽듻돤뎰든땰득땐뎰뒀땤땳돛딁땬땸뎰뎨땥땟돠뒈땩땮땭땟딁듔땦됫듰딸둠땵뒨딠뒀딨뒙딟(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primaryFixed$104(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 도딐땳딃딟땯땐듻땀따두땅뎨땃땄둠땣뒤뒝땻딐딌딄도듬땬뒵듻딝두땳뒷땻딝돠뒵됨돨뒝듻듨딞듔듽땲됩뒹땧뒘듐딄뎹땮땋되땩되땫돝돸된돨땃따도땦됫딎뒾둑돳딄땯듐딐둬따딄뒀딁듔딃땬땟뎬따뒈딸될딸돷땳딨땅땟땍뒛딝땀딃땱듽땯딻뎡땁땯땲땦득뎰딻뒼두딞뒋뒛듟듌둬딅땹땹땨돼됐돝땝땃둥(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiaryFixedVariant$141(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 도딤뒾땝딝땵땔땬돝돰뎽듟땥든딤돳뒵땪딄뒙땦딻땪땋뒋듰땸딨둡땰딹땄딅듐듨땥딄땪뒨듌뎽된땤땥딸됐돠뎡뒨뒋딹도딟딄땰땬뎸딎땣듼딎뒉듐뒋땪딐듰땯땨돶딄듔땫뎠득땦둣돸땩딎딠뎰든돼뒼딝딃듼듨디둔땝땹땟됫든뒐딐땣땫땨땧뎰땹돛듼된돝돸땫땋뒾둔듔땄땫든땥돤뒤땃될딃듌땡돤듐둠딁뎡(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondaryContainer$76(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 도땁땭땀뒵딌돸듌딀뒻땫땻뒹뒙땋땬둔땬땟땦듼딝땋뒈땍뒛땦듰땹땔됫둠땯땻듬땵땸뎹뎠땨둡듽딝뎸뒤듽뎬뒐뒹땬땅뒵둑됴딐딟돷듨듻땸둔듟뒋땸땀딄돰뒷뒘딸땬땡딻뒝땨땥듰뒙땦돶딠될듽된땔뎽뒻든땣돝땱도뒝땟든땃돷돨땦뒘땣돤딃뒉딻땋땣드듻뒾땟뒬드딠듐돠뒈뎸땲도따땸땋땯됫돨땡듼듌땮(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondaryFixedDim$122(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 도땱되돤딝땡땩땐딌땸딀뒷땹뒈뒾돵둘땪딝돼땤뒛뒋되뒷땲뒷됐딎돶땭되듟땹돶땬땟돨뒵돸듔들듨딅땠둡듬든딅둠뒹뎻듬땝됐된딹땠돳땫듼땀딝딝둬돷뎰딹딹딤딀딎땪땮딅딟돸뎽뒀딜딸땅둬됫뎹듌둘듐딻돰땵땪땵땱땫둠도땃뎽딜땳따땄된따듻뎬듔둬땰땄뎨들돵뒛땹디듸돵됩돛디됨됐뒤땟딝땄땟딅(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$neutralVariantPaletteKeyColor$9(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 도땵뎸뒉뎻돛땸뒼땄뒀땀땝뒀땠땠됨땃디둠돳땡됩뒷뒻돳땯뒀뒐되뒾땥딅둥듸따뎹돠딠듸뒬땐땠딀땥땣둘둡듰될땬뒙됩땩땤뎠뎠뎨땲뒾뒻딻땀디뎽땐뎸돰둥뒤땱둬뒘딽됴땹땱뒐듰딟돼돵돶듻돠듔뒉딃땱땅돼둑딹딎땯딸땜둣둔됩땜딁딟땦땻뒨뒾딄땥딁딸둥딸돨뒼도듔딨뒝땳딅돝따땸돶딎딤땪땻뒉디(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primaryPaletteKeyColor$0(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 도땻돰땯돷뒬뒷듌듼돤둑뒬듼득듻뒻둘뒐땟뒵듬듸땭땹돷뎻땐돛뒾땤뒈땮딄땮듌딐딄땦땨땳듻땧딄돝뒾땋딨드땯뎨땲득뎰듨딸되뎻땤딄듨듻땋돷둡듨듟뒙됨뒈땵땻딸둘뒤땍땨뒋듸땐땣딝돵따땍딃딄딟뒀됴땻땣듨뒀딠땜뒾뒉딟딟땣뒛뒐딨뒻돛뒬뒹뒙땲땟뒋듟딹뎨딻뒹딐땜딸땮땲든딅됴땡딟둠따땸딄(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$textHintInverse$160(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛뎨땐듟뒛뒷땥뎻딝뒬돸땪땅땩땵듔땩돳땯됫땫땡땬딤둡뒷땔땯딜딸뒉딽땱땵뒵땜돨뒾돨딃듟뎬둑득딞딝딹땻뒐땜땐됐땰땐돳뎰땰뎻됴든땳돷땬땤뒘돼딌뎹땦뎠뒙땲뒾땃땸뒀땳뒙됐듼딨듼뎸돤됫뒵땃돛땔돝둠딝듔땣뒵뎨뒈땹딃따땡도득딀딄뒉딟땨들듻딻땯둥땪땣뒨딜땧디돤돴뎨든딃땦딀뒨드딹땭(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiary$82(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛뎬뒙뒹땪둔돝땣둥뎨땣딅뎡뒼땔땬뒙땹뒹뒉땃땠땹뒀딤땨딁땰땀땋둥뎻땜돳된돳딟땦득돠딎됫딽뒻도뒉둥돼딨땮뒷땍둠돳땡뒤듬땻돸딟도땦딐딸돶뒾땐뒾돶둔둘땳든돤뒾땲뒼딝땭땋땁듼뒤딹돷딌뒻딸땵둬됴땻뒛돸딸땔돸땐두둑딁됫딽뒝둠됩듼뒛딽됫땫땟뒛도될뒼딟땐뎻듔듌돰된됴둣둑땦땅뎹땃(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surface$16(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiaryContainer$87(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛둥땐뎹디딻딤뎡땻돵둬뒬돛둑땱딃땳됴뎹뒨돛뒈땫딃듽들뎻되뒛둥딤뎨되될딻땄돝땀뒘뒾땲드땥땡듐돼땩뒙뒼땪딌돨둣뒋땟둥땪땋뎨돼들듨드둔딠듸땔땩땠듰듐돛뎬뎻뒐따딸듽됨뎬듌딨듼된딻뒨둔땄딟뒤딸딻돤땱뒉돷뒻득뒐됩뒘돤딎돰뒝땐뒝뒾듐됴뒼됫땧뒷듻딄듸둬딐돰듟땰딁돤딹뒝땲딃뒵딸(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$error$92(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛듸듼됐됫땳뎹돠돵됐됨돠땍뒵됫땀됨돳둑땔땭딐딽듨땥땰뒀땱둑땟뒙땭뒷땔돤둑땄딀돨땡듻땲듬땪뎠돤됐딹땫돸뒘들땬뒷됐된뒐땦땣뒷땥듐딽돸두땮땄뒤돵듼딟됴뒀따땦딤땤듌땣돼딻땨뎡땣듌딤돛뒐딠둠땬뎡땲됐듐두딸듻뎠딨땄둠듻땮둣드들땟딜듻듬땐듐땣디들뒵땣듽땹땝땁딝땅딸뎸땲돤듽든(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimaryContainer$62(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛딁뒀듻땥땦됨땟드됴돶딠뒛됫땧딠돸듌땯뒐딨딠땦돝돵땻돠돴땫듌뎽땰뒤뎸드딜둥딻듸돵뎠딌뎠될돝둔둥딄뒐둔뎻뒹됴도땁둥땨땨뒨둬둣돨딝땍땹뎰딄땜땟듼됴딨됐돼딜됫땣돝됩딽돷든딃따땫뒬땃됴듰뒀돸땧돼뒹딀뒹땩딞뎬돨딟돨땪든딜돸땳땍땳땮땩딄뎻뒀듽땄딀뒨뒾땍땄됨딽됩뒐뒉땝땦땲딃(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimaryFixed$111(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛딝땰될뒹뒈딀땜디딃두딃딎딞땧땀뒷된둘땄뎬듟땀땱땠땵듔뎰뎸됐뎹돨뒤땰돠딤둥돶뒾뎸뒈둠돝듟땔들뎽돷돶딸뒙둘뎸둬딞돨땩뎽딞돳듰득뎨딀돳뎠땡됐뒙됩땀둣뒉듻땸땥땔듰딌됨딁딜뎻딻되돶딐땯땅돝딃돰둠듨도돵뒻된뒘뎹듼둬됨둘땣돼두될뒬딎땭뒀듐돶뒷뒐딸뒵딨뒀뎬듌딟듬땬뎡돸듔땹땫(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$inverseOnSurface$40(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛딽득됩땵뒨딸돸따둠딤뒉뒛듰딁땻됐땣듰도땫땔땳듰땟딎되뒛둬딠듟뎨땪땃땧듔뒋땋땋돛돨됨뒤뎠뒈되뎰둬뒀돵듻딃땧딄땲딄둑둡땰땁딽딟뎹딌땵땠뎬됐둥둑도뒹듸돤뎨뎬뒝땯딌돤들따뒙뎬뒈땁듬땤듟땀두딟땤뎻뒻둡돶땲듬돰뒻듽딎땲뒻듰들뒐돤땥땔드둥돶듸뒹돤둠땟뒐디돸땦땹돤딤땟둣땡땯(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceDim$18(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛땀디딄돨디땻듌땯든뎡땠땵딅뒼땯딁땟뎸뒨뒋둘딄뒼땁됐땧들뒹땬뒀디듻돤딀될뒼둣딅됴땠딁땔딀될땨딠땯땦듌듼둠뒐땱뒀땔땜딽돳땠딨땹땰땄땫딻듔딃땵땯땤돶뎡딤뒝땰땜둡뎡뎠땵돸뎻땔딽땭땱돶됨뒷뎻돰됨땤땩딐돸땧딁되땣땪뎹딎뒛딠돸될뎸딌땦딽땅돸딎땀득됫땨땪땝뎹둑뎻땬땵듼땝딎뒻(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondaryFixed$124(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛땝돸땁땦딠듐됐뒛됫땳땥둔뒷둔땫돼뎻따됫됐뒐땃뎸딽땪뎸뎹돨돴땜땋땰듐돝된땭땰땥뎹드돝뎻땍뒉둑듬둔땮돸뎡딃딄뒹돶뒘뎰듰되뒹듐따둥땸뎸뎽딨듟딠듟되뎰둣땧딅땄땫뒤뎸득뒵딸뒛뒼뎠딞둔땲땄뒐땬둠뒉돸됨땨딐듼딁뎡들됫땠둑땀득둘땲돛딤돸땫듌땲딎따둬됐됫땔뎠뒾둔딀딝돷뎡듐돳땄(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceTint$51(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛땝땲땩뒨땲돶둑돝뎽듐딠땠뒘둑딨뒷땸땱뎠돝둣될딸뒘딠든뎸뒻땲땅두딞뒬듼땧뒘땁땹듔딤둥뎨땡듼땦땐뎠둬딠뎰땥됐듸둔뎸둘뎠땟둠땵딁딌될땐땻둣뒈됨돳땻됫땰딻땯땐돷돴됩딻듽득듰둑땐뒘뎻듐땁땸됩듰둠뒨땁뎽돛땦땧뒘딸뎽땅뎸땡뒙땋땥땅뒹땮땅듬뎻땨듨돛도뎠땵딟돴딄땄땵듸딟돴뎠둬(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiaryFixed$137(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛땱돛된듨땃뒨딜땨듸땮뎨뒘딤둣땧딤둔돷딅뒤뎠돸땨뎨됴될듌땸땩듨뒵뎡땄돴둡땋둠돶돼됐딌뒝딄땁도땩뒙뒬딹땱뒾땦듸되돶뎰땲땲딤듽돴드듽뎹땣둬땸딤뎬뒤둑돠딤돠듰뒵땯딽땬땵돠될돳듻듬땐뒈뒻땀땦딃드뎻땅땹뒋돛땔땣딤땠돵듼듻뒾땍딄딄든땲돠됐듼땯딠딟땤땰뒀든땮뒐뒤딅땻둘땍되돷(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondaryFixedVariant$129(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돛땹뎹듰딻듻뒾딹둣둠땋두뎡뒻둬땔딽땮됴돛되든돵뒉딅돠딎딐돛돛땧뒛땩돤돶돤듌들됴땻듔딅뎡땃딻듐돠돨딌돛땜듼딅땵됴뎬땁땄땵득땸됨뎹뎬땩뒉딽뎰땮딤뒀땋뎠뎬딝딽됐뎡둘뎨뒝뒙듟둑뒻뒨땣둘돶뒨딄뒐둔땵뒵뎰뒋돴딠땰딟디뎹땹둥딐딹땀땬땦두둥뒘뎻뒙됨딄땅도뎻둣딨뒋드땟돰땠땣듻돼(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primary$53(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돝뒉딁든땁됫딤돨땪듻땡득둥돠땜돛땠땨들뒛딜돤됐됩땟디땔뒀드땍뒨딃돴땁딅땱뒘됴듼뒻돝될뒝딄딌뒵도돠드딤드딅땋뎡둔딄뒝뒼뒋듼뒻둡됨뒐돳뒈들돴듔듻됴뒷듔땣드든뎡뒈듬땠딄땵딜따될딝땋듔듨듰드뎻뒷뒤딁돛디돛듽뎸딠둣돸땋될둘뎬뒹뎽땰도둑돳딹뎰땁뎠돼땯됐땅뒨돤땯듸딠돰땨딠듻(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondaryPaletteKeyColor$2(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돝듌땫뒤뒋듔땵뒛뒛따땥땵듐땔딌땄돝디뎹뎬땹땭뒐땥뒬될땭땄뒻둣득뎨됩듨땱드뎬둡돴듻땤둔뒈땪땯땅도뎠딤듸둔뒝뎹돵돠땅딻땸듬딜딤땝뒀땍돸뎰됐된딟든돰땬딅뎬디딅뒤딅뒛든됐땐딠땵땥땋딟뒹뒉땬뎡땬뒾둣땯땵딌딁땹두둘땱도돸땩듽땝땐땪땰뎽돳득들두뎻땩뎻딅뎽땀둣돳돳땵뒉뎬땫돰돤(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimary$56(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돝드돠땵돼딃뒾딟뒈둣딄딸뎨됩돷딠땪딜딞땧뒨딁딅돴땅됐딟뒀됴뒙땸뎽돠돷딄뒙땋땡듌땝딠땀됨뒷딻뎽된됩듻든된땯듽땰되돸땔듟땳땟돛듟뎨뎡땥딝땫딃되됨돰둘뒬둠듻땻될땠땵땠돛될돳땦땃들땦딅뒤듨땱돤도돠땤땭뒻둡딽땃돷땨뎻땍돴땤됴딃돶듸땍딹딀땄땔따뒼듟디딞듌딟두땩땝땍땤된딎딀(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$inversePrimary$64(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돝듸뒋땭돵듐뒼땻딽뒝뒻될땧딎돼딞땟됐듬딻딨뎬땹딸뎰딠땣돼듼뒾땥뒘듰됩뒵도됫뒹땩땲둥딄땨됨딟된돷딎듌땸뒐땦둬땥땡딹듼뒨뎬뎹될든듟뎰뒙돛뒬딤둠됴뎠뒘도땣돠땲딠뎡돼됴듔땜될됫뎡딹땄땪땍땠둘땐딝땫땣딁둑둘딽땬듐딽돛득딤땪뒛땥돤딨뎻땳땫땧뒹돛땧땍돵땩땀땵땄돰돰드딐뎬돷뎨(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiaryFixed$131(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돝딄땦뒈도딻딠뒨두도도딌되따땅딨따듐뒝듼뒾땮땜땧땭땸땐딤뎰듟땅듨딻돸땍둡들든땋돰뎹될둬땪땯뒹땄뎨뒝뎬뒘땻돵듐뒐딃땃땹될땲됫땠되뎹듽땍듼뒵됫돼듻땳땮땐뎸땹땣땝둘땨뒾땪뒀돵딠둥되땍듼땃딐됐땬뎨뎨딄든뒋땭듼뎡듐땵땧될땨돰땪뒻둔둣딌땋딄땍딜돵땝듽돛땐딌땭땩땭돼딝딀딁듨(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$scrim$48(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돠돨땨땻땭땩뒵돷뎬뎰딐드돶딠땝딜땨돼뒈땮듬디뒛둔땃돶딻됨득뒋뎰듟땜됫듟땋딌둘됴뒬듌뒐듻뎻디딝땋뎡땰땳듰땩딐땮듬딃뎨돠됨뒨뎹뒤든됫딤땝듬돰뎠뎡듻땭뒙둥땔둔둬땐딸듻딎딤땰됫딹뒻뒝뎰딎딤땋딜둡딤땟돝둘도땹딀돳득뒹돷땭딝딃땮땜뎬뒼뒼딌땍됐돼둣됴듨뒨딠둬땟땔둥땟딄드땯둣(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimaryFixedVariant$114(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돠둥돴듨땧땄뒐뒐드땨뒨땲둣들뒾땱뒹땱듌들땍뒷뒐둑둑뒉딻딨땥딨땥뎠돴둣땥듟딟듽땭딐땯듽딻됫듟뒨뒨둬땮뎹된땦땻둑둠두땤둥땪땮둠뎻뒼뎻땃뒷듼듨딌뒼땠듬둥딁딌둥둬딸듨득뒵되땲딽돛땹도땪땲돷딃뒈듻땟뒀둑돶돝뒛듐돸따딀둣땪땠듌돷돤땡뒉됨뒾둘땱땨뎸뎬땫땜뎠둣둑듨딻돷땜땱됴둥(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSurface$31(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돠듸뒈듻땥돰둬딝딁듬뎡돛땃돼땝땪뎽땵뒼딞뒵뒵뎸뒘듔땜됫뒛돶둠뎽땸땥들둘땅둑딻딄땔듸됩돝땪땄돼땯뒬땵딟돼뎸뒼땋딻딝딽뎻땄땄딄땁되돠뒼뒀뒀뒨딽뒀듬듸뎸뒈든듔땝땠뎡딠뒻둣땨뒋땧득땟돴딎되딎돸뒘돷땤땨딸땦둣뒤땤뒀뒾드땁돨뒘돷뒷땫딝듻땀딝듨땜뒐됐딄땫땝따따땫뎹땩둘듻딹땐(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primaryContainer$59(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$inverseSurface$38(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돠딤땐딁땤땐뒷돸땅득됩땨드땀딜듔딠되듌딠땻득딻돛뎽땧도듽뒛둥딨땮뒹딸돸땪돝땻듻딻땰도딜땧땅딞도둠딟땐땐딄돨땰듐땃듼땃돷든딜듻땰땲돴딞돝뒤땧땱땣도듼도뒐듔땔땀듸딌돰땻돵듸둥뎠뒛든뒨돠따땡땅딞둥땮듨땁딠들뎠뒀뒷땧뒛딞땝딎드땪땃딃뒾둘딞뒈듌딅딽땥땲돝듼됐뒋뒬땄땔듐딠(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceContainerHighest$30(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돠땩돵돝돶땩된됐뎨뒉뒐들땬둠둑뒉됩둬딄땃돸뒨땬뎡뒹둠돨둬땅딝뒀된뒙돵땃땫땄땁뒬둥뒤뒼땄딃두듐돨딅땪땜뒷땄뒛둔돸뎰딐땃뒘됨뒼돼땯땣되든뒘뒈땠되됴땥땅딟뎹땭땳땳돼듬딄둑딹듟듼뎠뎸땝땣듔딁땫둥딸둥둣딄뒘땭돶땭됩딌뒐득딹둘땪따되땝도딨돰돨돶딨딤땪듽둡딹든뎠땭땭딸땣됩뎻(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondaryFixedDim$120(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돠땵땰듰돸뒋딌뒛땐땭됩돷두딨딠둠뒈딞뒼듽둔땃둬뒉땯됫돤듻땦딤듽디땥땩딞딅뒤땀딠땔땄딻딅듔득듌땥됨딸땍딄둑뒾둬땠둑땃돨딃됨딝딟땃땡뎸된돝뎻땐됩딟듻땨딞돨됫뒙땮딅땲뒼둬뒨딁뒉돛땁돰듔뒾땜돸딝뎡둥땩뒀듨딝듔딠땦돨땄땹돷딃돴뒛둔뎹딀땄땬땲둠뒨땻돸될돝땐둣뒹돼딎딽뒻뒀돼(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$scrim$49(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돤뎬돨땦들듔뒋됩딐딀됐뒝땪땪듬뒷둣땳뒛둥땅듸딸둘뒾땱듔땜딌뒵듌돴땭딄될돰뒘땥듰땡듸딞둔딄딽돠듌뒝됨딠뎻뒉뒵뒤딄듬뎨뒼듻뒹뒀딌됩든돤둣듐듸땬땱듸돶듬됩땫땥땮뒨둡뎹땋되딨뎸딨됩땩땅됩돠뎹둬득딠뒬뒝된돠돶돠뎸땅돳딹둣돰두땅땜듻돨듼돶딻땹땤두땜돴돨돠땜딜듨둡뒛땔되뎽딤(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimaryFixed$112(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돤됫된둑딐땝둘듟딝땩딝뒐딜뒼뒈땲땔딐드땟딨둔뒘돸뒝땃둥땻땦뎽땮딞듔들뎹땃뒨돠땱뒹뎽뒵뎻뒐돝딤득뒷땸들딜듬땋돳뒾돴득듻땫딟딌딀둣됴딄뒋듨둑듐땩딝뒀딎됫된땅땫득돳뎽땩뒀땐뒼딟돶땟듸뒤됨듼땫듻뒘되딃듸둬뎡땸딀땲땵뒝둣뒤뒛땫딝딃두딃둬뎬둥뒛듻딤땠뒉듐땫뎹듨듬돛땝디땍땰(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$textPrimaryInverse$153(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돤둘둣돸땔땡땳땵딜될뒀딨뎽땱돴둔땄득땟땥뒹뎬땨둣땪땨뒼딄뎻돰딨땵돤뒼둣듨딜뒉딠될땃돶됨땮드딟듸딄됐듟뒐땳딽땀되뒈돴될두땦딤듻뎬뒛땜딀따돛땄땡뒨땯뎨땧뒋된딟뎰땤뒉딜땭땃돰땠둡딐둬됨땨땐딹땰땠땲땡땬땀둡되딠듔뒷되들딃딜땝돳돷듐돛드따땯뒙돛뒈딠땦됨됐뒬땳땵땠됩딜땜디(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primaryFixed$103(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돤뒋됫뒘땫뒐땰땰땟돝땲뎻땭뒤땫돝땻뎸딅딟땔돶듰듽뒼땄듰딝듰둣뎬됴딨뒛땐딹뒀땟딻듽땳땸딨도되땱디돷뒬듔두땅둬땄둬듰뎨뒵듐딟듔땧돠땲땳됫뒛듟땤돝들둘뒵돰딄돵뎡딀땜둠딨돤땣땯되땃땔딸딀땧된딹뒵딹돝둬듬뒾딁돴땔땰뎨들뒨땵듻뒼뒾딤딄돴돵땸돷뒙땅땍듸땻둔돸딟딟땰딄둔둔딨돝(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$textPrimaryInverseDisableOnly$157(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondaryContainer$75(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돤딐듟돶뒉땬뒘도뒾돳딐돤딎듐딤따딜뒵둠뒀땍땐땵땭딌뒛딅둔뎡땬둣뎡돠둠됐뎽듨땄땨뒉듸땋땳딹돤딽땹됫뒬땜둥돠둬딄땱땋디딃땥돷뒬둠됴뎽뎨땅땄땝뎻땠딅땱땰돰뒉땟딟땁딤딅땣딹땍뒙땸뒝땍뒾땵뎹딌드뎹둠뒉땨땬두듟돳땮땔땤땣됩땬뒐둘득딃땬땠딄뎨딝땄둡땭듬둘됐땬두땹돵딻땝돝땵땍(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiary$83(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돤디듔딤딁딝뒋돠땋딹뒹땦된딞둑딅땦땤땍듻땟땡땦딐땠땧뎬땩딀둑땝딄땮뒵뒈듸뎻득뒵돵듬뒨딨됩딐뒝득돨뒈땪듟돼딐돴뒾땰뒨됫딞디뒹딽딝둣딐뒨딄돠딞돴딝땩뒼돤딀땧딄됩딟돸뎰땦땸딜뒤될땳둘딻딁딜되딌뒼됐뎻땨땀됴딝뒵땬뎰뒤됐뒨뎸딌득뒛돤돠뎹둔땥돷됐돴돳돳땱뎹뒝됐따듌딌둠돨돴(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiaryFixedVariant$142(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돤땍된뎰딌듌땍딠뒐뒙듨땡뒷듼땤뒀돠둬땁뒼땬돰됴땫땦땤듬둣든땱둥둘딸뒀딽딐딃듟뒀돼땋땻둬듬땍뎡됐든듔뎠뒻뒼뒹땫듸땤득돰땍뎡됫돶듬뎡돝땡돷듔딸드됩뒼돴딽딃둡듰뎹딽뒙뎹됫돤딄뎰됐땪땤땱뎠딜둥딃뒨돷땅둬뒈돵둘뒨듽땲딻돷딹땲뒛땹뒙뎬땲돝들땡뒤뒨땍듬뎻딹뎡뒾딸딄땮딐돶땥돶(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$textSecondaryAndTertiaryInverseDisabled$158(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onBackground$13(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨뎻듐뎠뎽둔돶뒨뒐돨듌돶도땪딤뒬딌딟두딤듌땲되뒤됫땫됴뒹땲땤뎻땤땹돷될뎽땨딅땭둣뒀듬돷땮땱됐뎹딸땸땣뒹뒬딐땫둠뒤뎻뒨듨뎠딅딸땁딁뒐뎬땱듬든딨듨된뎠땍따둡땁땹됩둘딌둣땹땧듼땠땜땨땠땳뒼땐땟뎽땋돝듸뒼뎠땀딝든땍듽땠듟듸뎰딀땯땍뒛땮뎬듌둬듐듼뎰딎된들돛뎬듽딀딀딃돝땵(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondaryFixed$119(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨됩됫돳딻뎰땪딽땲둬돤땣둑뒼된딐뎨땥듟뒙땤땔뎸뒘땱딌땥뒬둑땫뒛됫됴돷땅듟땅도뒨땬땻뒀듔듸듨둣땥땁따딤딅땮듐둬땭뎠돴돷뒤듐뒘됐뒹땳뒉뒨됴땍뎠뒐딌돤됩땃둡듐딄됨돛됫뒷뒛돶뒷뎨딐뎰딜뒻득딌땸땝둑둔땥뒵땵되뎠땃땃땬듸되딞땁든땄듬둔딁뒐듸뒀땃듰땀둬뒹뒤뒷듼돝땍딄돝땵딄듸(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimaryContainer$63(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨됩딜딝땃둠뎡듔땵뒐땵딝듼됫딄딤득뒤뎬둣돸뒬둠디돴뒉듰뒨땠뒾됴땜돵뎠땋딄둘듬돨땫뒨딄땃두뎰딸땧둔돳듌딄딅뒼듌듸뒘딸됩듻딄둣듰될뒾따뎹될딤딁돝돨땍땟뒾둡뒉땭뒀땵뒤뒋딃뒷딟땄뒾딤듻땯딽둠듽딄딟땥땤딽땰듨든딻둬두됨땀땭뒷들땃땠땃듽딽듰딐딜듰땟땰딟두딄땲땳듬뒵뎡돼될듽(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiaryContainer$89(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨듐딹듬땅돳돛땮땪듰땐땮둬들땮뒘됐땥둡뎠뒀뎽땣됴딤듽됩돴뒤됐딄뒝뒤딤듐듰뒀뎻땱뎰뒵땟딎돛땸돵땐뒵뒐뒨된둘땪돴돴땀뒀돴땱돠땪딃뎡땩땍돶뒬돸땦뒋땭땤뒈땱딝뎰뒐돵돶뒹둘돶딸듽뒼뒹됩딀땱뎽땭뎰됫된뒉듬됨돵돰둘될땝땔돝딐땤뎬됨땣땰딅듼딠돠뎽돶듬뎽딐돛돤땸뒀듨뒋땨됫뒾돤땹(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiaryContainer$86(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨듬따돨돨뎻딐뎸땥됐땱두듌땱땸듟되딌뒼뎰도듼돠딐돷듌딃땤둥돤됴뒉땍듬됐둠딌뎨뒵듸둔든뒻둥딻됫되뒀뒘땮땐딽땟땭뒋듨땄돴둥둥들땔둣돴땪뎡땁뒼듟도땄듽뒐딹뒼딄뎡득땨돝돛뒋땁둔된뒷돴땝뎽뎻됐딠땭땀듨뎹땁뒵땔땯땲땣땣딟땍뒬땔됐딜뒬딄딅듬돛땝돷딠땩땻땮됨따뒤드뎽뎽뒈뒐땵디(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onErrorContainer$100(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨딄돝땃땠됨땣뒈돷득뒼듌듟둡땀뎻둥뒉딀뒻땟뎽땜둬딸둠딃뒘뎸둥뎹딻뎬듸땹뒉됨뒼땡딎땐돝뎡뎰땯듻듔듻땭뒼뒀돸땪돨득돷돨뒐뒉뎨뎡땻둡돷된뎬뒀땔둣돴땣돠듨땡뒐땰드뎸뎰딀뒀뒝듽뒝뒹든딄딸뒹둠듔뒷둣돶뒾듟딨뒋뒐땨땳듔딝딟돤딁땲듟됩땥땦되둘둣땄됨뒐뎻딁땔뒾땍땭땜땥땸도득딨둑(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiaryFixed$132(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨따땐딸뒤따뎽되됫뒘둠딁둥드돴땯됫들땅되됴됨뒐듔땮딽딄뎨땁딠듔돨둔땰땲돛뎠됐땨돸뎡딻땔돵뒬돶땬뒝둡될돶돛땧땰따땳돠딄됴둥딻돰딌뒐됨둑됐뎨딁들듸듔땋딁땍땣듨딁딟뒈땅딄땥뒙딎디땄둘뒋딐딁됐돸뒋됨땩땣될뎻땭땡둘뎹딹땳땳뒬듐딌땡뎡돰땀땔됐둠땸뎬듸뒻땲땪뒻뎻둡돠땔땸딸딽(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$controlNormal$147(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨땋뒈뒷돛듰뒨듌땧돤돵땀땩돤땮듟뒷딤둘땐뒨땹딝뒘땜뒈땡딀듰땄땣든딹땵둬딃둡땭둔땱딝돷뎻디뎽뎡돴돨둠딄따뎠듔뒻듟둥땔뎸땱딄뒷드돸돨둠듰뎰돨딁돼될돴듔딃땃돶따땧뒝뒘디땫둣뒷두땳듨돴디딹둥땲딐듻딅듨뒘될뒘둣뎻둘듟딻땸디딌돨땧땪뎹들듨뒘땦뒵딟뎠딹딃딽둡땩디땸됐듨뎹땧돛(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$errorContainer$98(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨땬땤뒼뒈듰땵듽땀뎬딎둑듔돳뎠딁딀들된돶땲돶든딅돠땄딞듰뒨땱땯돵딻땀돵딨뒬돰뒤뎹딐땁디땥딹듬땻딝됫땥뎸듌둥딞땋딃두땲듔듸땝둥땔땥땪돴드땹땄듬땍뒐뒹땹땐뒋뒈돨딜땵딜딨땠땋됴딁돸땁될뒹뒨될뒨듨됩딤돨딃뎽땻돰땱디딁뒋딸뒙두딻들땭될든땮땅땡땵도땣돛둥듼될땡드뒉따뒷땣땥(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primary$54(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surface$15(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$errorContainer$97(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돰듟딁뒨딅듸땱땹딀딠뒐돝둡땬땰땫땟뒛따딜둣듨딄돷땲둑땵뎽땍뎽땜땹뒹땹딸땣듬듼도둥뒻둬도딸딟뒝땻땥땐땄둑듰땮두듸뒻뒘뒵뎰됩땃뒀땨뒨땻땭뒛딸듻따땪땹돰돸뒵딨듬땱둘땪둘듬돸뒨딟듬땅땸땸딅뒙둥딝땯땫딎돤땦뒹됴뒝땯땀둥듨뒻땯딌뎽둥뒛될뒼뒻됐된돰뎸든뎡땀딻땻돛듬돝땬뎨뒵뎸(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondaryFixed$118(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돰듰됫딜돛뒝땮돷돵뎻돵돤뒘돠땮뒈뒻듽듽땥돨땸뒘땳득땸땮땜딸땝돵따둣듼듰뒈딞딁딄뎰뒵돸돤든뎠딠땫땪뒐딌뒬딟된땥듐둥드땪든땭땣뒙땯돳땝뎡뎡딝뎠땩돶땭땜돝뒵돸땜드뒘땰돳돷땸둬듌땲뒀딃될뎹득듟듰돵땸딞땔딝됨딻딟딀돰뒨뒙땸둥땥뒈듬듼돰딞듌돴디될듔땦딝땱듟든땪딹디땰득땠뒬(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimaryFixedVariant$116(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primaryContainer$58(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돰딁뒋땟된딐둘뒝뒹됴딸딻듟땪땁뎡뒘돝돴된땮도돨돰듐딐듰땄뒵뎽뒛땭땅딨둠듔따돠땭땨뒉돠따땐딨돳땟돤둔뒀듐됴딜돝둬땁뒋딟돤땜됨땟딄뒉뒻땝뒈됐뎠듨뒹땄될땣뎹된돶땰뎠둔들뎻듌되듌돠듨됨땹땳둬뒐뒨됴듐딎땤딻땣돼둣뒘됐돷돼땻땀뒉딠땱돨드땪땦뎬둔땯득뎰땄돸뎽돳돷땯뒉드돰뒀땐(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiaryPaletteKeyColor$4(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돰딄뒐땱뎽땻땡땟땨땹딀듔뒀땪돤딹땱들드땟딀됨뒷땄딨둘딠땣딻딹딜땄될뎹디딻뎡땐돳딎뎻뒀딀땤됩땣둬듼땧뒛땟돤땔듻듽돸디둑둘듨듰뒬딎둡땸둡뎠듽딄땳땫듸돝땲듔듰땮뒘뒷땮땵땧둣뒼땨땳땫딠듰땸듬됴뎨됫뎸듻듽뎨듌두돶딽됩땍딐뒹뒷뒹딎뎠둑돳딤돠뒷둔딐둔드듟땄될듰됐땵뒼뒬뒻땝땱(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onPrimaryFixed$110(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돰딽땨돶뒼땮딸땭듼뎹딎땹딸땲딻딁뒵딃땨땡됩땪뒤땮듨들딎딄뎽둔드뒙뒵돝땣땹땳도디뒤땠둠땝뒀됨딄뒤됨됨뒉두돼딠땮뒘땲딤듐뒨딤땃뒀뒋땲들둘땩딨땯땜뎸딸뎬듟딄땭둡둥뎰둔득뎹땻돸뒾땡뒋뒵돷딤됩득땔뎽됴땰땥땯듽돠딽듟두땪들됩뎰뎸땅둘딄뎽돴딐돛땩돰땫뎻뒋땟둬딟땱듻땭땻땹땀듼(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceBright$19(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돰땣득듔땡딠돶돶딄딜뒤된땲딎돨땬뒾땡돠땤뒋뒵돸뒀뒙돼딄뒛도땝딠된딅됨땃됴땣둡돰딅땅땫딐땹뎬땃땸뒾땬뒷뒨땔됴듸되뒉둡듨둣뒈땻땥땬땥득땧뒬땳드뒻듽듻딝땋땹돛뒀뎬딝땣땡뒼되뒉듬될뎡땣땠돨듸둠딠뒉땝뎸딝땳뎽둣될듐딝딠둣딐딸돨땔뒋뎹땮딄둥땫뒤땄된땤뒬땝딌딹뒘둠땃뎹듼뎬딄(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiaryFixedDim$136(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돰땣땅됩뒛땧땵득땮됨땡땻땨딨뒾땃돳땜뎹됫땁뒘딐땩딤들뒐딟뒝둠드땸든딀땜땵득뎠땍땩땱땝듰돝뎬뒵됫듐딞두돸든들딠뒐딎돳땵딌땩둔딟뒻듻뎡둠딻땵뎬땹뒋뒉딐뎠디둡뒈뒻땪땐딐땅딠땳땥딅돶땨딸둡땐돨둬둡뒘됨듨뒘될땮디듌딟뎹딞뎸딠뎰땅딁딄뒵둬든땻딟도듸돳딨땹딃돰땧땡땟드딅땟딜(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondaryFixedDim$121(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돳뎬돸뎨땁땋딀뎰뒀땁뎠둥뎰땲듌땝뎻땔들둬됩땦땀뒼됴드딅딁땪돳땠뒼듌돛딠땸든둥듸딤득딤땐듸돶됩딝딁될듟딄드땹됩뒨땐땥땮땀듰땔땤뒛됩돛뒛된딸딎땻땅땋됐딤뒋딞된땦땫뒷되돤뒐뒈땸땡땯땡둥뒋둑둠땻듰돳땮따땠듰뒋돛땳땪뒹될딀뒙뎨뎽딟됫듰뎻딞될되둔듔듔듸득둣딽뒐뎽뎨땫뒷뒛돨(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceContainerLow$23(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돳뎻뎡딅땲두돨뒤땧뒻딻둣땔땫땪땟뒝땱땀땯딀딠뒾뒵땭땪듰땦돴딐돵뒾땁돼땋땵됨됩디들딃딄딠땱둘땥돠땐딎땩땤뒘뒻딠뒹뎹됫뎸딄뎨듰뎹땦뒉뒵뎡따딻둑딻됴됩땸뎨땣땠딀땝딨드득뒉땀됩딠돤땁땪뎠땫돵따드둘돴땬둣딞땱딸딤땤딻도뒼뒾뒤땮땍됩둬땲딹뒷땄딅딠땲듟딹되디듻뒙땱돴뒬돤듐뒋(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$inverseSurface$37(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돳돼땲듸돼땍딞땵돰땵돝딅딝듟될됩드땍땫딀듐땦뎻둘딟뒤됩됩뒋듟뒹됴땟딝돼딃뒈득따땭될듼뒼뒋땥됐딄돼뒙뎽돤딅되돵뒋땟땱땅됫들듻딄돶땝듔딟땃땔돛땲돨딅됩땱뎰딄땳딟돨땤땄됐돵뎨될뎨딅듟딝뎬땸딌딁딃땍뎬됩됩돛땁땰뎡두뒐땬돳땸땍됩듼듟듽땐돼듰둠뒷땟땤땅듟뒻득듐딨뒋땄뎠디땬(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiary$81(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돳된땨도뒹딎뎠땵땫든뒤두됫땠듻듔뒙뒹땄돴뒻딤돝땔땤뒉뎬돴딽든땬땍뒘디둑딜땳뒛돵뎡땅뒵땜득뎨땮득딽땟딨됩딝딌듼땲땮뒋딅듬뒵딁됫되둘뒷딐디뎽땮뒼둥딤된땪듨땻됴돛둑땀딸땣땅땬뎡땄돰도딄듻듔땸돷뒷땤땫딅듟땍딽땅돵땮돝돤땋돰땱돛뎨둡땨땫딞들땡땵땹땍딀딐디듻땀뒾뒬딃땥땃돼(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondaryFixed$125(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돳둥디땪듬뒉듻뒘뒻두땀땪딜딜뒼둔들뎻땫땁딞듸뎻딨듸둠뎽딃딅딜뎬땸땠땹땣땀땮땟돵땐딌땻땡땠됨땐뒛땄듨딀돰딄둘뎠뒬땻땝딄땬땹딟뎡뎬땹돴드뎬땦듸뒻돼둣듨뎬될돸돝될뎻땸뎸땩뒛딞듐뒬뒈딻딃딃땮딀딽딟드뒨됫뒵득땁듬듟딜땲땜땋뒷땪뎸뒼딸땟돨땡듬땝돠뒾땝됩도딟땤돶땤땲뒤땳땝뒨(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceContainerHigh$27(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돳딹돛땅도듻뎽돷돵둠듟뒙땄땹돛땡땱땁딤땠둑돠듐딻돤뒤땟되뒙뎨땅땐뒨되듽딌돠뎬땮뒻땄딎땵땟돷땨돴딀땡딀딝딻딠땄돵땍듐듬뒉땡뒼땍땁뒨둘듰듌땧돨돼둔뎠땻듨땜뎹돷듼듬둘됨둔될뎽땠뒝듼둡땍듌딻두돸뒋뎬딠땁땋돴땭듔돠뎻뒋듸딅딻둑뒀딟땝되땰따두딄돶돼땤듬듰돛딽뒈뒻땦뎽땠뒉돠(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceVariant$34(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돳땥땱뒹뎽땜돼둘뎸딃듬땜돰딐땵돳득됫뎠딻득돶뎸땪땫뒤돤돠딝듽득둔뎬됫뒬됴둑돷땱땡딄득됐땟뒝뒘득뒈듽땦딨땤두돛딄됴돸땅땅둣땅땋돠뒤땃뒻땨뒤딃들둡둡둥땲땜돴뒵땃뎨딠뒐뎽뒘듔뎽딨드땵땳땄둡딟땥땦듼뒬딜둣땬땪땮땔땅뒘땹땨땰땵땋딸땜땱땻돨땄듔딨뒼듼드땡딞땅딐돝돰뒉딅돛도(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiary$80(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돳땨뎰뎰뒵뒾딻땦듰땦뎨땡듽돤땭둡딟땤둬딤땅돼뎹땭따둡땡뎠딤듨딽뎡뒀땅땀땟돰땸듌땻땱듬딝뎻뒉땄땬돷땅뒋땐될땃들뒾따딄돝뎽땱땍뒼돴땬듨딎뒻뎻딜땲되듰땲뒼딎도득듽뎠돠땟됩땨된뎡듨뎻딃뒵딄딝돰돴땨도땨땬따땧뎽딝땃디뒹듻뒬될뒻됨땝땥둥뒬땐듟둘득따딃땄듔딁땩뒤딎뎽뒉땱돛땔(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onTertiaryFixed$139(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돳땩딟듌땟돸둠돝될땨됩돸딄둥딤될둑둠뒈땝땸딎돵땠땝땬되돤딟땤됫되땐뒋딄뎰땵땲뒛딽뎡둠뒐땣둑듻땮땬땀디돷뎠뒷둡됨도뎽땮땐됴딽뎠돤땃뒋뒨땵뒨둥뒨듌땜딤딄땭딃뒨땰둣둬뎬돳됨딜돛됫뒛땧땦디땩뒛됨땯딐돼둥딄둥뎰딀돷딞딁따듟땄땬딐된따뒤땸디딁땝둠돨돸딐뒈두둣딟드돳둠되뎠듌(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$outlineVariant$44(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돳땯딝뎬딟뒤둠땸돤둘딞돶돳땪딄땳둬뎹듸땻되딐땳뒷뒙뎸돛두딨땃뒀될돳딎뒛딤딞땐든돰되됫뎻듐뎨됴둡뒈땰딝뎰뒬뒷드될딃땤뎡땭뎹듌딄땪돝둑들돝땨딨땭돼땰땻돛뎽뎰뒀디돳땠딌들땀딃딌돳딽둘딤땐되돷딜듟땨듬뒵뒵뒘땱뒈돨듼딤드둘둘땟딃듻뎹둣듽듰땠땡든뎽뒐땥듼디딸뒘뎬돨돝땹듰땟(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$textSecondaryAndTertiaryInverseDisabled$159(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiaryFixedDim$135(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돴뎹딸든땳듸땠둣땻돼땩뎻돼땨땫땬드딸딹두듸둘딝될땵딎뒉딄든딁둑둡뒈뎬됩돵뎹뎠딎땄될듽듻뒾뎻뒙뒈뒘딟돠딄돼돳된돷들땝뎨딜딜돷땹뎻딅드돵뒋땱땃뒉되딄딜둔뎠땤딽땸땅딨돛뒷땻둣둬뎡땪딤땦둘돝뎻뎹땭딄땋땮땔돼땻드뎡딟돠땮듻돠돼듸땭뒵뒬둑둣됴뒷딨듌딽딽뒹땨둬땠둣뎹땍둠땲뎽(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSurfaceVariant$36(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돴됨돵딎딸둘땀땠돠뎠뒀듼땝돸돷땮듰땣돶땟뒤딀뎽듬땪듐땭딠땳듌딟딅듐돼득뎽땫뒹둡듽들딐돝돵딟돛땝땫돴땵돝둠됫땣땔된딽뎻듻둑듰땃뎠듔땩땔뒹뒻뒛듐땮둠뎰돸든뎨듻딜딅득딄돨뒝뒝뒛듻됩땬뎽땵따땰듸땃땅땳뒀뎸뒷돠땄둬될될땮땡딁땮돳딀뎨둡땝뒼듼돰듟뒘땄듸됐딤딌돝뒝돝뎬됫듼뎨(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onError$96(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돴뒬땄딀듻딻땸돳딤땫돼딠땨딎둑도둑땤뎡땐딨땳뎰돝둡들뎡딐딻돛듟듐됫둠두둑땤듌딹듻땔땠땐땫딐됫땹땦뒨뒤딃듬돸딹땀뒨딁디뒝뒬땠듌땲뒀듰딽됨뒉땜뒾땲땣듰득됩땁땧뒻땪듔땯땡뒨듽땰됨땩뒝돨뒵돵둑뒈듟뒤땨돨땪듟딁돨듬뒵뎨땟됫딨듰땨도딝돛땅땋됫딽딻됩뎽딟땀땍땧땹딎득딁딠될돰(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondaryContainer$78(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돴뒹딁둬둥땸듸디둠딃딎딀땁땁되딨땬듟돴뎬땬뒵둑땄땠듟따땐뒼듸돝듰땜돝둑돳돵땠듨든됩돰됐딻도득돤됐돼땐득뒉땳뒋딄뎬땤듼땲듟딻딄뎨돠땯뒛땲둣돳듸땩둠됫듼들땥뒤뒨돤돤딻땍땹딹뎡딎뒬땵뒛딠듌땁듟된뎸뒼둥딄뎽뒵땥되땮땅땀딟땫돝돶땝뎡뒻되딄뒈듻둣돸됴땄뒛도뒝땵뒷땯돝디딽딅(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$inverseOnSurface$41(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돴뒻돸땯땥땯돳들도땻땜딟딌땟딐딹뎸뎸된땜땲뒀땟딻땻땄뎽딨딐돰된땵딝땧뒐됫듐딨딹딠돶딅땅땱두딌땦듽뎸돼뒝땳둥뒈딜들뒼땱딤뒙듬땠돝뒈돝돨땀땤둘둡뒐딜뒷딄듌돳됩뎡뒼돷뎽땠뒬뒷돶땋둔딅땄됐돝땃뎰땋둣뎠땤땥딠돰땧듟딤둬뒵딃땟도돨돠뎸땹땍뒹뒛땯됩듟딤따둠뒼뎸들돸둔땐땮땦땹(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$textSecondaryAndTertiaryInverse$155(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돴듬딜둥듸딃딻둬뒐뎡듰듽땪둑둠땱돰땜땀뎬뎽듌땟딀따땍돸땐땋뒛땣땥돠뎡둔돷든둘득땥됨딌뎬땁된땠딐딠뎡땻돼땜뒤땜뎻둠뒐땣딨딄뒹둥된된땝뎻땻됩딞땣뒝돰뎽땋듔듬땠듼둥두돷디드둘딎뎨뒾돳둘땪둡딤따뒵딨들딸딠돳딀뒀든딁듼돠땩됐땥땬땫딽되뒾땰듻드땯듰땳딀땰땝땤땥뒀드딹딌뎡돴(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondaryFixed$117(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돴듼둔뒛딟돨듼땅땻돛듐땸뒘됫딀딐돳돠뎬딟딝뒉둬듐땠땐된땫땩딅땟뎬뒝딻땹돸듌듬딽뎡둬뒾땳뒛뒝딐딄뒋뒝땰듸따딀둣딻둑딎듰돵땸땁돼땜딨돛듸뎰딄뒀뒻뒬딸뒨뎡뎽딠뒀뒤딜땅돛듔땲뒻뎡땧둣둘뎽듸땭뎡듸두땃땩둣뎨딜둠딁뒝뎬땃딟뒾디땃든땱됐따되땸땲듸딐돵디듸듼돝뎹듰딟딃딀딄땄딅(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$secondaryContainer$73(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돴땁돵땦듼뎬땠땔돤돰땳뎨딅땩돛돳됐돳둣돸딤딹돵뎡듰뎹돼뒹돤땝땋뎸둑됫되딤뒻뒻딨땻듽뒵뒀뎨땃뒹둠땜땤딠듼땜된뒋딤뒼돰뒈땪돠땐땋돷땱뎬땱됩땰땜땔딄땍딸뒛땫뒐딹딃땦땍땥땻땜딁딎둠딁땟돼딜땰땐땳뒼둣땵땱땨듔뒉돠됴딻뒾딄듐땋따돳딹듻된돠딀돵돝뒝땲딀듌됫땭되든득따뎸돨됴듐(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiaryContainer$85(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돴땄딝딌땧뒹돶둬땯땣땹땐됨딁땧뒼뒛땝땹두듔땄뎻듼딎딸딌돨뒝땡땰드돼득돤딎딜땨땱뒙뒛땻땲땹딸딻땹딝둣뎹땜땔듼땤딽뒝뒙딁뒾따땋뒛돤뒀땳땳돠돼듌뒝듔땁들돴돸뒼둣딸뎰딄뒨땪됐뒉됨뒐땅두뒝듸들딻드땀듨딞드뒈땍딠땤뒘땥든돳땵돠땬돰뎹뒷뒼딟되땫땳듔땐딻듽뒻딌둑딄땧땬도딃돛듬(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondaryFixed$126(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돴땳뒾땠됫된듽듔뎠돷딄둘뒾뎸땱딐땻딐뒘뒾땱듸뒨뒝돷땀땯땃돛될땬딁땟돛될뎰들둔돵된돰땤뒋됩땮돤딀돠땅딃딁땧딨뎰땔돶땸뎠땰뒝땲뒷땋딽돸땟뒀딜뒤땔땮둔듸돝뎸땤뎻뒼땡돸듟뎰돝뎰둠둣땭땹뎹땡뒘땋뒷듨듔뎽돳둘됩땟듔듔딄뒾듽돷듸땻뒵듻듼뒛듌뒈뒻뒝땥돳돝뒘득두딀땬땥뒛딹됫땁땫(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onError$94(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵뎸따뎬된돸듸땁땃뎸딝뒵땀딟딐땄땩땵땜딎듼득된둬됩둑둔듬된드땜돰돼됨둬둡듐땦땪땪땝들둣딜뒝뒼뒀돼땄듻돸디돶듔딸돨됫돨딎땨둣땻뒹뎹딸득뒋돨둘뒼듻딸도뒷돶땝뒤들들딁듐땐두딠듌듸딟땬듨뎰듸뒙딞듟뎹두돛득따득뎨됐땔뎡땀둣땯뒈뒉뒘땁듌땃둠땃둑딞듼땮듐땜들딻딄돛둠도뒾딌될(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onBackground$14(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵돷듌딸뒉돨땀땳땥둡딃뒹듻땩땔뒉땍디땡뒹돨땩돷뒐뎸둘뎽든딅딜뎹땩됫딟둑딄땝뒛딅땠뒛딅든되둬땰딽돷땬둬뒉땯딀듼딜땧딹딐뎹되듔둥딃땨땬뎹딸돴둠땰둥돴딸돰됩돝딹뎻됩땁돝땪도듼뒀땬뒼듨땅뒙땋듻돛딞딄듟둡땝땝돷둥듐됫듐딽땦딅땅뒈듟땡땐뒀딎돵돤땡땟땄됨땦득땝뎬땩듼땩딜딹땍(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$error$91(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵뒋딌됴땠딟된뎸땯딄딄뒬땐땁뎽뒤됴땀딜뒐땱득땝뒼딨뒤땨땁땮땲됨딝땄딟뒋둥둬뎠돛뒵디둑딐뒬딄뒷땭땬땣됨됩됐되딤둬뒐듸땐딄딹땋딨뎸돼듬땋땔돤땲듸뎽땭땟되딄뎻도뒐돼땍뒹땦딹디듽땃뎹득뎰뒈땜뎸땱딽땐뒈땵듬둡땮둥딤되땭땦도돛듰땱돶딝돷뎽돝뒼됐돛두땫딀딠딄듰땜딜뒋도땐뒛땲(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondaryFixedVariant$128(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵들땁돤딄뒈땠딠됫땃둥땮돵뒨됴땬딀땱뎡땵땩드돷돠땔땲땀딎땃뒙듨땱딅땀땨땅따땤뎰뎨둑돝들뒵뒼듐돳따뎸들땨돳뒷둑뒛두뒷딃듽둡됫땸땵땟땔된땰땦뒝땰디딽되땵듨듻땳둥딁뒀된딻둔딅뒼뒼딤뒹됐땪땀뒨땪땭둠땋땐돴딜디땀땡땬뒷딻뒝뒝딎뎨땟돨땝땱딃뎸뒛뒉되돛뒬뒵땯듟뎻땻뒨땝돵땣듬(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$background$10(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵듨딐둬딁땬둥됨땡땻돸뒼땄딽뒋듨뒈땧듸땋됩땥딜듼듬득딀듻될땃뒻디뒻딤돳뒐딻따둥땱됩땰듬땬뎡돝뎬뒼뒷돠땁뎡땟딌뒀뒘딞딻딠딨땰듔돶땵뎹뒻땱땧딞딝듟땩뎹뒾땻땸땮땔땐딎딹땠땫땃땻땣둡딐듐돵땲됴딃뎻될땄땟뎡딹둠돨두딞뒈딠땬뒻듰땫둥딽뎠되되땳땰됴땦땤뎰딻땭뎹땲뒬둡뎬둑돰됫(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$primaryFixedDim$107(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵듼듐뒼땲뒻땨땍돶땹뒋돼땐땔딟돰돤딐둘뒀뒘땸들뎸듽드둑땄뒙둣돸뒋뒉디땜뒨드땝된뒤딨들둥듐딠뒨땻뒷듽뒐뎨됐둑땣땜뒈땀뒉듟돵땳딨뒷땍뒈둬돠뎰딞땅뒵돠땣딽듰듽듟돛뒝돳딁뒉됨땦딄듨둣딞드돴딻뒋될땐됐됴돸땃듸뒾따듔딜땵뒘될뒋따딤땭딻되돝됫뒀듌뎹돝됨뒼뎰뒋뎬돵땩딌뒛뎸돸땲(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiaryFixed$133(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵딀딄딞득돝땻득뒷득듔둣딐돵땵딄돶듟땧땝딁뒛땸도됫듽땃둣돤땸딐뒉든뒤돨뒈뒹땥딹땭딎땭땟딐돛뎨땲되땯뎰땧뎻딝땥됩뒀뒼딁땹딌듐돶돸든뒙뎹딃뒙땁뒤듌땀듼뒾뎸딻딃뒐돴돶뒋땝뒼뒼땠딎뒤됨돷따땧뒹땬땐땍뒉되딃땔땨될됩땍둬땜땳돨땯땪둔딜듌땔뒉돤딀뒹돠디듐돛딁딠딞땯되땔뎹땫땧(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$shadow$46(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵딄땻뒝땨땀드뎰딠딀뒝뎸딌뒻땤들땳됫딹듐듽땰뒝뒹땱땤뒷땹뒈뎹뒤둬뒼땍드둑딸딐둑뒘듟딤도뒋땰둡딸땻땬둔둥땹뎰돤땅도땔땋뒉땣둥뎠딸뎰땤뒈딐듌땧뒐땐땜딝됐따뒨뒨됩땹듨딸딸돳듸됴뒉드땅뒹듰딤딁돶듐뒻뒨딄뒹돛뎻돝땪듻됴돛디드딤뒙땨뎽뒙딸뒹뒋땪땱딄땝땄됴땄딽도땫땲듸뒈뒾뎬(Lcom/google/android/material/color/utilities/MaterialDynamicColors;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondary$72(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵딎땍돶딎듼딻땜뎨땫드딤득땪득딻뒀땰돷됫돝돰되딀듨땥땤돼딠된딐딜딸뎠뎬들딻둑땦땫둡땣딅뒐둥뒻뒾딞딄됩돷뒤둥땩뒷땣듸둑돤뒉땳뒨뒐뒉딸땔두돷땡땃들뒘뒝딨뒾딃땜듌땰뎨딁딀땯땪돛딨돼땍땔땝둥돵땣땲둬땝따뒻둠딨돸두뎠둔되딀땠돵돝돛듌땄땳뎸땀땝뎬땐땡땮듬땋딽딃뒷딟땨뎸땫딹(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$neutralPaletteKeyColor$7(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵딜뎸듰딹뒙땮두뒋뒻땜뒵땄돵됨땩될딝됫듽돤땲디뒨뒤뒤딨뎨뒼땦돵땵딄뒘뎻뎸됨땅듔됨땫땵딄딟땥됐두돝뒐땨듰땨듰딽땔되딎듟땲됫듨땀땜땧딐돠뒋둡둣뒬뒐돨땟딄돳뒨드듌땋땻됩됨땡땱뒨뒼딟땝딸뎸땀뒷뒝땝듰됫뎡듼땤뒷땹딤땡땰딜딐땔딸듰돶듽딽뎠딽뒬땧땱땡됐딤뒉둔돴둣땪돤뒀딞뒋땡(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onSecondary$70(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵딨땨뎨뒀땹돛둑땃돵딸딝땣뒛땩듟땬듨땝될두디딤됐듔딻땤딻둣된둔땦딞뒷땟듻될듨뒛땟딄둑딄땔돛뒋뒘뒾땃땀땻돸둡뒀뒐듨둔된득돷돠돰돳듨두딁도뒙돷땸땠돼따듸땵땻딨땦땦뒙땡듽둔딻뒝디둘돠됨땝땬땍딽땣뒼돷둑뒻뒹둔땋딜듬땃둥뒙둔땟땋딞뒈땻둔땋땰땁땹도뒷땍땟둬뒐딸딎땩딅되뎨땄(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$tertiaryPaletteKeyColor$5(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵딽됨듽든들들딁땱뎨딃둠딄땩땫돵딞뒘돶뎠됨땻뒀땝듽뒹뒝딜듻돰땲땬땀딃딄뒷뎨듻됫땫둣땍둣땄딠땹듌땩돛듽뒈딠뎽뒹땨뒛땰뒾듰됐땧딁드딎돶뒷땐뒨될딌뒋뎡뎸뒼땟뒈뒹뒹딐듼돵돸돝득둬돳땐돸땟땤듔땃땃땧땧땃땐돳땰듟딀땪딌뒤땹땁뎠땁도돛들땸땵딅땩딌딜땬땧땋듼드뒬돳뒘디뒤도둘듽(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$onBackground$12(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵땰뎡땥딃딄뒼뒷뒘드된된돵뒹뒾땔둔딞뒈땣땄땩딄딽딌딸듰딹땪땯뒾된뒵딌딞딽듟땡땀뒨땮듻뒬땄따뎡듨되뒵땮될뎠땩딄둬뒐뒘딨될땦땠듸뒤딃둣뒉땔딐돰뒘돛디땱딞뎸뒼땠뎸듟뒾듨딨땻됩뒼돝돵딽뎹땬땝땋땧둣땡땻된듌땐뎰땨뎻둡둡듻뎹둥뒻둬돰뒀땸뒛돰땬땱됴딃땱돝땟땫땨땬땻됐듼땣뒬땥(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$inverseOnSurface$39(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 돵땰딃뒉딌따땭땵돨돼듔듐듬땀뒾땰딻딠둥뎻듨땲돤뒹뒬뎹뒷땠땥뎰딀들둠돶됴땋뎻듐땪뒻듔되됩된딟땄뒐땵뎸땃되뒹둔땬돶딹돼땩뎹뒷둔땣든땰딁딐뎠땡듻땱땳돵딞듼땰땵뒋땥딄둣땃땤돶될돶땨땲땐듼두뎽되득돼딽딁뒹땻땪땣땝뒻땋딨뒙뒉딽뒻될돛득뒵뒾딨땅뎡뒀딻둥뎡듬될뒵땝땅됨둑땋듌딀(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->lambda$surfaceContainerLow$24(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public background()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 19
    .line 20
    const/16 v0, 0xf

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 26
    .line 27
    const/16 v0, 0x10

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, v9

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x231c036efc174da5L    # -2.975134914276524E139
        0x569062f24e5931cL
        0x258710f30a952bf8L    # 6.655306563325625E-128
    .end array-data
.end method

.method public controlActivated()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 17
    .line 18
    const/16 v2, 0x15

    .line 19
    .line 20
    invoke-direct {v1, v2}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 24
    .line 25
    const/16 v3, 0x16

    .line 26
    .line 27
    invoke-direct {v2, v3}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        0x7b2a450ac6d45a30L    # 1.9531740835093431E285
        0x73cbfa6d2ad5aecdL    # 6.259888992034165E249
        0x782b88359090db0aL    # 7.272520301339964E270
        -0x7d4b581388624b67L
    .end array-data
.end method

.method public controlHighlight()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 19
    .line 20
    const/16 v0, 0x9

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 26
    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v9, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 33
    .line 34
    const/16 v0, 0xb

    .line 35
    .line 36
    invoke-direct {v9, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    move-object v0, v10

    .line 45
    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 46
    .line 47
    .line 48
    return-object v10

    .line 49
    :array_0
    .array-data 8
        -0x6341f6fabb452d4fL
        0x2eeac273f0ebad79L    # 1.1019718997022193E-82
        0x7524993e7e876383L    # 1.9330551249809994E256
        0x781dfad8765a220dL    # 3.959549740720537E270
    .end array-data
.end method

.method public controlNormal()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 17
    .line 18
    const/16 v2, 0xb

    .line 19
    .line 20
    invoke-direct {v1, v2}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 24
    .line 25
    const/16 v3, 0x12

    .line 26
    .line 27
    invoke-direct {v2, v3}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        0x14ab58acddd2c3caL
        0x6878d04fe7348fa0L    # 1.8113779274806127E195
        -0x35fb6406fbac4404L    # -3.76505994732408E48
    .end array-data
.end method

.method public error()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 21
    .line 22
    const/16 v1, 0x15

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 28
    .line 29
    const/16 v1, 0x17

    .line 30
    .line 31
    invoke-direct {v4, v1}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 44
    .line 45
    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    .line 46
    .line 47
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    .line 48
    .line 49
    const-wide/high16 v18, 0x4026000000000000L    # 11.0

    .line 50
    .line 51
    move-object v11, v8

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    new-instance v9, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 56
    .line 57
    const/16 v1, 0xb

    .line 58
    .line 59
    invoke-direct {v9, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v1, v10

    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 66
    .line 67
    .line 68
    return-object v10

    .line 69
    :array_0
    .array-data 8
        -0x4b6049a33ae296eL
        -0x5b60be2bdd24decbL
    .end array-data
.end method

.method public errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 21
    .line 22
    const/4 v1, 0x7

    .line 23
    invoke-direct {v3, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 27
    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    invoke-direct {v4, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 34
    .line 35
    const/16 v1, 0xa

    .line 36
    .line 37
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 38
    .line 39
    .line 40
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 41
    .line 42
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 43
    .line 44
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 45
    .line 46
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    .line 47
    .line 48
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 49
    .line 50
    move-object v11, v8

    .line 51
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 52
    .line 53
    .line 54
    new-instance v9, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 55
    .line 56
    const/16 v1, 0xd

    .line 57
    .line 58
    invoke-direct {v9, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 59
    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    const/4 v7, 0x0

    .line 63
    move-object v1, v10

    .line 64
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 65
    .line 66
    .line 67
    return-object v10

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x37a713a711961fe5L    # 1.3245415252954836E-40
        0x347939e57c1dc38L    # 7.3830540063689E-293
        0x411431f2319e8c86L    # 330876.54845637863
    .end array-data
.end method

.method public highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0
    .param p1    # Lcom/google/android/material/color/utilities/DynamicScheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    return-object p1
.end method

.method public inverseOnSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v2, v1, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 19
    .line 20
    const/16 v0, 0xe

    .line 21
    .line 22
    invoke-direct {v3, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v4, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 26
    .line 27
    const/16 v0, 0xf

    .line 28
    .line 29
    invoke-direct {v4, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v5, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 33
    .line 34
    move-object/from16 v10, p0

    .line 35
    .line 36
    invoke-direct {v5, v10, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 40
    .line 41
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 42
    .line 43
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 44
    .line 45
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 46
    .line 47
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 48
    .line 49
    move-object v11, v7

    .line 50
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 51
    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    move-object v0, v9

    .line 57
    move-object v1, v2

    .line 58
    move-object v2, v3

    .line 59
    move-object v3, v4

    .line 60
    move v4, v6

    .line 61
    move-object v6, v8

    .line 62
    move-object v8, v11

    .line 63
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 64
    .line 65
    .line 66
    return-object v9

    .line 67
    :array_0
    .array-data 8
        0x53879454920dcd06L    # 2.4592444190669766E94
        0x7164aaf6da870233L    # 1.6822922768259986E238
        -0x56f8486659e1c0aaL    # -4.930997806151268E-111
        0x161f53f6fe021f22L
    .end array-data
.end method

.method public inversePrimary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 19
    .line 20
    const/16 v0, 0x1c

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 26
    .line 27
    const/16 v0, 0x1d

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v5, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 33
    .line 34
    const/16 v0, 0x1b

    .line 35
    .line 36
    move-object/from16 v10, p0

    .line 37
    .line 38
    invoke-direct {v5, v10, v0}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 44
    .line 45
    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    .line 46
    .line 47
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    .line 48
    .line 49
    const-wide/high16 v18, 0x4026000000000000L    # 11.0

    .line 50
    .line 51
    move-object v11, v7

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    move-object v0, v9

    .line 59
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 60
    .line 61
    .line 62
    return-object v9

    .line 63
    :array_0
    .array-data 8
        0x2ddbf8add6cb5189L    # 8.788110693600467E-88
        0x3b0d15227758d14eL    # 3.0070659310315453E-24
        0x231c7674526b20a5L
    .end array-data
.end method

.method public inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v2, v0}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-direct {v3, v0}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 28
    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move-object v0, v9

    .line 36
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 37
    .line 38
    .line 39
    return-object v9

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x47b9a88fbfe68ab7L    # 3.410592135535836E37
        -0x16c498b980f772e4L    # -8.193734993587464E198
        -0x329a8219276045dfL    # -7.072972181176998E64
    .end array-data
.end method

.method public neutralPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 17
    .line 18
    const/16 v2, 0x9

    .line 19
    .line 20
    invoke-direct {v1, v2}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 24
    .line 25
    const/16 v3, 0x11

    .line 26
    .line 27
    invoke-direct {v2, v3}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        -0x2fceeb266020c492L    # -1.9778962832150935E78
        0x758fd51a9129335bL    # 1.9118604296596333E258
        -0x58dd77c68ee1f632L
        0x26d582d667893989L
        0x397bd1fb2439b08cL    # 8.572772820421268E-32
    .end array-data
.end method

.method public neutralVariantPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 17
    .line 18
    const/16 v2, 0x11

    .line 19
    .line 20
    invoke-direct {v1, v2}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 24
    .line 25
    const/16 v3, 0x12

    .line 26
    .line 27
    invoke-direct {v2, v3}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        0x6bbbf8097d6c9371L    # 9.19501173063814E210
        0x3ea125ca81a3279fL    # 5.110389367454419E-7
        0x5594e88376867ee7L    # 1.8731662547209354E104
        0x29562c2cdccfcfcbL    # 1.475154189157934E-109
        0x584e1869296c1499L    # 2.3716347001582935E117
        -0x48d5d4c3a992d279L    # -5.867267931137878E-43
    .end array-data
.end method

.method public onBackground()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 19
    .line 20
    const/16 v0, 0x13

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 26
    .line 27
    const/16 v0, 0x14

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v5, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 33
    .line 34
    const/16 v0, 0x19

    .line 35
    .line 36
    move-object/from16 v10, p0

    .line 37
    .line 38
    invoke-direct {v5, v10, v0}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 44
    .line 45
    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    .line 46
    .line 47
    const-wide/high16 v16, 0x4012000000000000L    # 4.5

    .line 48
    .line 49
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 50
    .line 51
    move-object v11, v7

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    move-object v0, v9

    .line 59
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 60
    .line 61
    .line 62
    return-object v9

    .line 63
    :array_0
    .array-data 8
        -0x8f9779d06fac8a2L    # -2.270495221560851E265
        0x1d546e5a21a0a0fL
        0x170363ac7e54e7c3L    # 8.105804507520939E-198
    .end array-data
.end method

.method public onError()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    invoke-direct {v2, v0}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    invoke-direct {v3, v0}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    move-object/from16 v10, p0

    .line 35
    .line 36
    invoke-direct {v5, v10, v0}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 40
    .line 41
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 42
    .line 43
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 44
    .line 45
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 46
    .line 47
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 48
    .line 49
    move-object v11, v7

    .line 50
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    move-object v0, v9

    .line 57
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 58
    .line 59
    .line 60
    return-object v9

    .line 61
    :array_0
    .array-data 8
        0x4f2a305ad14c69edL    # 2.3135877972893872E73
        0x16403bdba97cccL
    .end array-data
.end method

.method public onErrorContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v2, v1, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    invoke-direct {v3, v0}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 25
    .line 26
    invoke-direct {v4, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v5, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 30
    .line 31
    const/16 v0, 0xc

    .line 32
    .line 33
    move-object/from16 v10, p0

    .line 34
    .line 35
    invoke-direct {v5, v10, v0}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 36
    .line 37
    .line 38
    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 39
    .line 40
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 41
    .line 42
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 43
    .line 44
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 45
    .line 46
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 47
    .line 48
    move-object v11, v7

    .line 49
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 50
    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    move-object v0, v9

    .line 56
    move-object v1, v2

    .line 57
    move-object v2, v3

    .line 58
    move-object v3, v4

    .line 59
    move v4, v6

    .line 60
    move-object v6, v8

    .line 61
    move-object v8, v11

    .line 62
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 63
    .line 64
    .line 65
    return-object v9

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x5c7dcdbd707179b7L    # 3.465994053828264E137
        0x3fdb2dc045ccfabdL    # 0.42466742340540603
        -0x171e362d695cc6a7L    # -1.6621236196870735E197
        -0x6e0686d6abb30ab4L    # -4.404414618239077E-222
    .end array-data
.end method

.method public onPrimary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 21
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 21
    .line 22
    invoke-direct {v3, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v4, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 26
    .line 27
    const/16 v1, 0x1b

    .line 28
    .line 29
    invoke-direct {v4, v1}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v6, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 33
    .line 34
    move-object/from16 v11, p0

    .line 35
    .line 36
    invoke-direct {v6, v11, v0}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 40
    .line 41
    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    .line 42
    .line 43
    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    .line 44
    .line 45
    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    .line 46
    .line 47
    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    .line 48
    .line 49
    move-object v12, v8

    .line 50
    invoke-direct/range {v12 .. v20}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 51
    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v9, 0x0

    .line 56
    move-object v1, v10

    .line 57
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 58
    .line 59
    .line 60
    return-object v10

    .line 61
    :array_0
    .array-data 8
        0x3215db97b25437dbL    # 2.0268756209203122E-67
        -0x3d43e86c26b191feL    # -3.0887590317678008E13
        0x528842a4bf9b9e57L    # 3.8608716872864793E89
    .end array-data
.end method

.method public onPrimaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v3, v2, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 21
    .line 22
    const/16 v1, 0xb

    .line 23
    .line 24
    invoke-direct {v4, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v5, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 28
    .line 29
    invoke-direct {v5, v0, v2}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 30
    .line 31
    .line 32
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 36
    .line 37
    .line 38
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 39
    .line 40
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 41
    .line 42
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 43
    .line 44
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 45
    .line 46
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 47
    .line 48
    move-object v11, v8

    .line 49
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 50
    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    move-object v1, v10

    .line 56
    move-object v2, v3

    .line 57
    move-object v3, v4

    .line 58
    move-object v4, v5

    .line 59
    move v5, v7

    .line 60
    move-object v7, v9

    .line 61
    move-object v9, v11

    .line 62
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 63
    .line 64
    .line 65
    return-object v10

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x4cdaaf0b0c3418ccL    # 1.7151661137002006E62
        0x1d37ce7054557efL
        0x7cd43799fbb9ec25L    # 2.0175144715577018E293
        0xfb7b5f377412912L
    .end array-data
.end method

.method public onPrimaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 21
    .line 22
    const/16 v1, 0x13

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 28
    .line 29
    const/16 v1, 0x14

    .line 30
    .line 31
    invoke-direct {v4, v1}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 35
    .line 36
    const/16 v1, 0x9

    .line 37
    .line 38
    invoke-direct {v6, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v7, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 42
    .line 43
    const/16 v1, 0xa

    .line 44
    .line 45
    invoke-direct {v7, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 46
    .line 47
    .line 48
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 49
    .line 50
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 51
    .line 52
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 53
    .line 54
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 55
    .line 56
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 57
    .line 58
    move-object v11, v8

    .line 59
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 60
    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    move-object v1, v10

    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 66
    .line 67
    .line 68
    return-object v10

    .line 69
    :array_0
    .array-data 8
        -0x13eb3e1bc86d9f0fL    # -4.3674673927874134E212
        0x7e0e1eecd6ff1abaL    # 1.5759129855308136E299
        -0x2083307f47c40963L    # -9.430820949478566E151
    .end array-data
.end method

.method public onPrimaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v3, v2, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-direct {v4, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v5, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 27
    .line 28
    invoke-direct {v5, v2}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v6, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 32
    .line 33
    const/16 v1, 0x1d

    .line 34
    .line 35
    invoke-direct {v6, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 36
    .line 37
    .line 38
    new-instance v7, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {v7, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 42
    .line 43
    .line 44
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 45
    .line 46
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 47
    .line 48
    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    .line 49
    .line 50
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    .line 51
    .line 52
    const-wide/high16 v18, 0x4026000000000000L    # 11.0

    .line 53
    .line 54
    move-object v11, v8

    .line 55
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 56
    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v11, 0x0

    .line 60
    move-object v1, v10

    .line 61
    move-object v2, v3

    .line 62
    move-object v3, v4

    .line 63
    move-object v4, v5

    .line 64
    move v5, v11

    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 66
    .line 67
    .line 68
    return-object v10

    .line 69
    :array_0
    .array-data 8
        -0x248791bcc2d932abL    # -4.335251128463293E132
        -0x525b910a6ecded5aL    # -8.024771204844771E-89
        0x1e594bededeb76a9L
        0x52fc2d21284486aL
    .end array-data
.end method

.method public onSecondary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-direct {v2, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-direct {v3, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v5, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    move-object/from16 v10, p0

    .line 34
    .line 35
    invoke-direct {v5, v10, v0}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 36
    .line 37
    .line 38
    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 39
    .line 40
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 41
    .line 42
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 43
    .line 44
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 45
    .line 46
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 47
    .line 48
    move-object v11, v7

    .line 49
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    move-object v0, v9

    .line 56
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 57
    .line 58
    .line 59
    return-object v9

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        0x28e8a7223d0e6af0L    # 1.281383229612913E-111
        0x22fb3be353a86a18L    # 3.573324568789916E-140
        0x6e374e4535a9ac9eL    # 8.424415375025306E222
    .end array-data
.end method

.method public onSecondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 21
    .line 22
    const/16 v1, 0x12

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 28
    .line 29
    const/4 v1, 0x7

    .line 30
    invoke-direct {v4, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 31
    .line 32
    .line 33
    new-instance v6, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-direct {v6, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 38
    .line 39
    .line 40
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 41
    .line 42
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 43
    .line 44
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 45
    .line 46
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 47
    .line 48
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 49
    .line 50
    move-object v11, v8

    .line 51
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    move-object v1, v10

    .line 58
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 59
    .line 60
    .line 61
    return-object v10

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        0x5fb9cd637cad34c1L    # 1.3513760671263375E153
        0x1f5af4b828a0cd87L
        0x23c1cb842613b185L
        -0x321c5e32161ca464L    # -1.6539967924586726E67
    .end array-data
.end method

.method public onSecondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 21
    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 28
    .line 29
    const/16 v1, 0xd

    .line 30
    .line 31
    invoke-direct {v4, v1}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-direct {v6, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 38
    .line 39
    .line 40
    new-instance v7, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    invoke-direct {v7, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 44
    .line 45
    .line 46
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 47
    .line 48
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 49
    .line 50
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 51
    .line 52
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 53
    .line 54
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 55
    .line 56
    move-object v11, v8

    .line 57
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 58
    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    move-object v1, v10

    .line 63
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 64
    .line 65
    .line 66
    return-object v10

    .line 67
    :array_0
    .array-data 8
        0x629103f3e0ddfd23L    # 6.271057748876308E166
        0x315e0a3d0f5478ccL    # 6.800813675095991E-71
        -0x5b55155924ef5f0bL    # -4.740151803857049E-132
        0x564c8fb7d1d6e75cL    # 5.2404422556872295E107
    .end array-data
.end method

.method public onSecondaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 22
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    new-instance v12, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 8
    .line 9
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    new-array v4, v4, [J

    .line 13
    .line 14
    fill-array-data v4, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    new-instance v5, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 25
    .line 26
    invoke-direct {v5, v2}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v6, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 30
    .line 31
    invoke-direct {v6, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v8, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 35
    .line 36
    invoke-direct {v8, v0, v2}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v9, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 40
    .line 41
    invoke-direct {v9, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 42
    .line 43
    .line 44
    new-instance v10, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 45
    .line 46
    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    .line 47
    .line 48
    const-wide/high16 v16, 0x4012000000000000L    # 4.5

    .line 49
    .line 50
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 51
    .line 52
    const-wide/high16 v20, 0x4026000000000000L    # 11.0

    .line 53
    .line 54
    move-object v13, v10

    .line 55
    invoke-direct/range {v13 .. v21}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 56
    .line 57
    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    move-object v3, v12

    .line 61
    invoke-direct/range {v3 .. v11}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 62
    .line 63
    .line 64
    return-object v12

    .line 65
    :array_0
    .array-data 8
        0x76c72283f3426948L    # 1.4569761755641015E264
        -0x1963c890bc6d45afL    # -1.9183202839388735E186
        0x91489d9be571b3L
        0x22d75fd9a14e07aL
        0x2698935276f04a32L    # 9.294022828722004E-123
    .end array-data
.end method

.method public onSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 19
    .line 20
    const/16 v0, 0xe

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 26
    .line 27
    const/16 v0, 0x18

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v5, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 33
    .line 34
    const/16 v0, 0xa

    .line 35
    .line 36
    move-object/from16 v10, p0

    .line 37
    .line 38
    invoke-direct {v5, v10, v0}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 44
    .line 45
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 46
    .line 47
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 48
    .line 49
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 50
    .line 51
    move-object v11, v7

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    move-object v0, v9

    .line 59
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 60
    .line 61
    .line 62
    return-object v9

    .line 63
    :array_0
    .array-data 8
        -0x5967994a496d95e4L    # -9.228118107612869E-123
        0x66c0d44e355b119eL    # 9.153218946338399E186
        0x2f1c02b83c7a61d5L    # 9.227923118445504E-82
    .end array-data
.end method

.method public onSurfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 19
    .line 20
    const/16 v0, 0x1c

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 26
    .line 27
    const/16 v0, 0x1d

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v5, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 33
    .line 34
    const/16 v0, 0xa

    .line 35
    .line 36
    move-object/from16 v10, p0

    .line 37
    .line 38
    invoke-direct {v5, v10, v0}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 44
    .line 45
    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    .line 46
    .line 47
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    .line 48
    .line 49
    const-wide/high16 v18, 0x4026000000000000L    # 11.0

    .line 50
    .line 51
    move-object v11, v7

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    move-object v0, v9

    .line 59
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 60
    .line 61
    .line 62
    return-object v9

    .line 63
    :array_0
    .array-data 8
        -0x24f51ddd96415d97L    # -3.7269307722527955E130
        -0x3a1aaf58de40dc84L    # -5.277350823628479E28
        -0x6e73042c6ff02eb5L    # -3.91513749882602E-224
        0xc430c2e1f07df80L
    .end array-data
.end method

.method public onTertiary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 19
    .line 20
    const/16 v0, 0x15

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {v3, v0}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    move-object/from16 v10, p0

    .line 35
    .line 36
    invoke-direct {v5, v10, v0}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 40
    .line 41
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 42
    .line 43
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 44
    .line 45
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 46
    .line 47
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 48
    .line 49
    move-object v11, v7

    .line 50
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    move-object v0, v9

    .line 57
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 58
    .line 59
    .line 60
    return-object v9

    .line 61
    :array_0
    .array-data 8
        -0x5890ed1b61320b35L    # -9.626892031816673E-119
        -0x5e6a444e4c8732aL
        0x4fa34672f4cf280bL    # 4.359208408371593E75
    .end array-data
.end method

.method public onTertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 21
    .line 22
    const/16 v1, 0x10

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-direct {v4, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 31
    .line 32
    .line 33
    new-instance v6, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    invoke-direct {v6, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 40
    .line 41
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 42
    .line 43
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 44
    .line 45
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 46
    .line 47
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 48
    .line 49
    move-object v11, v8

    .line 50
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 51
    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v9, 0x0

    .line 56
    move-object v1, v10

    .line 57
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 58
    .line 59
    .line 60
    return-object v10

    .line 61
    :array_0
    .array-data 8
        0x342a39d2002f5f8fL    # 2.0890103197536845E-57
        0x256d78cbd6885a18L
        -0x7b765b498b3c6c0aL    # -8.420345295566583E-287
        -0x7fcc48075ca9cde3L
    .end array-data
.end method

.method public onTertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-direct {v3, v1}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    invoke-direct {v4, v1}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v6, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 33
    .line 34
    const/16 v1, 0x16

    .line 35
    .line 36
    invoke-direct {v6, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v7, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 40
    .line 41
    const/16 v1, 0x17

    .line 42
    .line 43
    invoke-direct {v7, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 44
    .line 45
    .line 46
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 47
    .line 48
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 49
    .line 50
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 51
    .line 52
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 53
    .line 54
    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    .line 55
    .line 56
    move-object v11, v8

    .line 57
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 58
    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    move-object v1, v10

    .line 63
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 64
    .line 65
    .line 66
    return-object v10

    .line 67
    :array_0
    .array-data 8
        -0xd88a0f816012712L    # -2.493433530531558E243
        0x287663d77e240055L    # 9.0919256432236E-114
        0x47700d486639f6d0L    # 1.333538514026417E36
        0x7a732253611ce12dL    # 6.946461811051051E281
    .end array-data
.end method

.method public onTertiaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 21
    .line 22
    const/16 v1, 0x1a

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 28
    .line 29
    const/16 v1, 0x1b

    .line 30
    .line 31
    invoke-direct {v4, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 35
    .line 36
    const/16 v1, 0x13

    .line 37
    .line 38
    invoke-direct {v6, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v7, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 42
    .line 43
    const/16 v1, 0x14

    .line 44
    .line 45
    invoke-direct {v7, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 46
    .line 47
    .line 48
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 49
    .line 50
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 51
    .line 52
    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    .line 53
    .line 54
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    .line 55
    .line 56
    const-wide/high16 v18, 0x4026000000000000L    # 11.0

    .line 57
    .line 58
    move-object v11, v8

    .line 59
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 60
    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    move-object v1, v10

    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 66
    .line 67
    .line 68
    return-object v10

    .line 69
    :array_0
    .array-data 8
        0x119ff7ff941cefabL    # 8.636719255847913E-224
        -0x750dca1eb3d902d4L    # -6.064078653377206E-256
        -0x70a131a201b3b4c4L
        0x327b7bb75fb61d3L
        -0xc16ed10ef0398b8L
    .end array-data
.end method

.method public outline()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    invoke-direct {v2, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    invoke-direct {v3, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 32
    .line 33
    const/16 v0, 0xa

    .line 34
    .line 35
    move-object/from16 v10, p0

    .line 36
    .line 37
    invoke-direct {v5, v10, v0}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 38
    .line 39
    .line 40
    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 41
    .line 42
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    .line 43
    .line 44
    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    .line 45
    .line 46
    const-wide/high16 v16, 0x4012000000000000L    # 4.5

    .line 47
    .line 48
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 49
    .line 50
    move-object v11, v7

    .line 51
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    move-object v0, v9

    .line 58
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 59
    .line 60
    .line 61
    return-object v9

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x38e0ecd250fc1c5cL    # -4.033754695723517E34
        -0x154574d55595ae42L    # -1.3315491423071693E206
    .end array-data
.end method

.method public outlineVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 19
    .line 20
    const/16 v0, 0x16

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 26
    .line 27
    const/16 v0, 0x17

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v5, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 33
    .line 34
    const/16 v0, 0xa

    .line 35
    .line 36
    move-object/from16 v10, p0

    .line 37
    .line 38
    invoke-direct {v5, v10, v0}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 44
    .line 45
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 46
    .line 47
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    .line 48
    .line 49
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 50
    .line 51
    move-object v11, v7

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    move-object v0, v9

    .line 59
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 60
    .line 61
    .line 62
    return-object v9

    .line 63
    :array_0
    .array-data 8
        -0x75d583b22f7df4b9L
        -0x69fe4c931672c621L
        0x2370d595494bbd2bL    # 5.654540170829634E-138
    .end array-data
.end method

.method public primary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 21
    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 28
    .line 29
    const/16 v1, 0xd

    .line 30
    .line 31
    invoke-direct {v4, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 44
    .line 45
    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    .line 46
    .line 47
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    .line 48
    .line 49
    const-wide/high16 v18, 0x4026000000000000L    # 11.0

    .line 50
    .line 51
    move-object v11, v8

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    new-instance v9, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 56
    .line 57
    const/16 v1, 0xf

    .line 58
    .line 59
    invoke-direct {v9, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v1, v10

    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 66
    .line 67
    .line 68
    return-object v10

    .line 69
    :array_0
    .array-data 8
        0x1af7a79b4b1dedccL
        0x55d4cc1edab07cafL    # 2.9811677378313156E105
    .end array-data
.end method

.method public primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 21
    .line 22
    const/16 v1, 0xd

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 28
    .line 29
    const/16 v1, 0xe

    .line 30
    .line 31
    invoke-direct {v4, v1}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 44
    .line 45
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 46
    .line 47
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    .line 48
    .line 49
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 50
    .line 51
    move-object v11, v8

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    new-instance v9, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 56
    .line 57
    const/16 v1, 0x18

    .line 58
    .line 59
    invoke-direct {v9, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v1, v10

    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 66
    .line 67
    .line 68
    return-object v10

    .line 69
    :array_0
    .array-data 8
        0x6914d059f60053f4L
        0x50c85c9d23533bccL
        -0x57de1d325682c8b1L    # -2.269675123259788E-115
        -0x4f02e6e8d945ae32L    # -1.0293056092179236E-72
    .end array-data
.end method

.method public primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 21
    .line 22
    const/16 v1, 0x1a

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 28
    .line 29
    const/16 v1, 0x1b

    .line 30
    .line 31
    invoke-direct {v4, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 44
    .line 45
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 46
    .line 47
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    .line 48
    .line 49
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 50
    .line 51
    move-object v11, v8

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    new-instance v9, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 56
    .line 57
    const/4 v1, 0x7

    .line 58
    invoke-direct {v9, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 59
    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    const/4 v7, 0x0

    .line 63
    move-object v1, v10

    .line 64
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 65
    .line 66
    .line 67
    return-object v10

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x4f6ea44d51ae4ffL
        0x38dd5b1e11e37addL    # 8.833978120534638E-35
        0x6e1f27f8a967496fL    # 2.8155317979988567E222
    .end array-data
.end method

.method public primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 21
    .line 22
    const/16 v1, 0x1c

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 28
    .line 29
    const/16 v1, 0x1d

    .line 30
    .line 31
    invoke-direct {v4, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 44
    .line 45
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 46
    .line 47
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    .line 48
    .line 49
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 50
    .line 51
    move-object v11, v8

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    new-instance v9, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 56
    .line 57
    const/16 v1, 0x8

    .line 58
    .line 59
    invoke-direct {v9, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v1, v10

    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 66
    .line 67
    .line 68
    return-object v10

    .line 69
    :array_0
    .array-data 8
        -0x10a35f78fdabbbc2L    # -2.71264823586207E228
        -0xc18f769e7dd00d1L
        -0x521afdc5fbb48d12L    # -1.3201108597281706E-87
        -0x2490c4dc1d1e4e20L
    .end array-data
.end method

.method public primaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 17
    .line 18
    const/16 v2, 0x17

    .line 19
    .line 20
    invoke-direct {v1, v2}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 24
    .line 25
    const/16 v3, 0x18

    .line 26
    .line 27
    invoke-direct {v2, v3}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        -0x56bee73c620d9474L    # -5.68728207084448E-110
        -0x71d67d7b341e3830L
        0x46a4a1263766586eL    # 2.0920787682121794E32
        0x6e209855585311bdL    # 2.9993381908676876E222
        -0x19e6b390c435d9a4L    # -6.718516453441423E183
    .end array-data
.end method

.method public scrim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 19
    .line 20
    const/16 v0, 0xe

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 26
    .line 27
    const/16 v0, 0xf

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, v9

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x1ba8273fed499fd7L    # -2.359203654707574E175
        -0x7af7ea4ef6ba8482L
    .end array-data
.end method

.method public secondary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v3, v2, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 21
    .line 22
    invoke-direct {v4, v2}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-direct {v5, v1}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 32
    .line 33
    const/16 v1, 0xa

    .line 34
    .line 35
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 36
    .line 37
    .line 38
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 39
    .line 40
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 41
    .line 42
    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    .line 43
    .line 44
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    .line 45
    .line 46
    const-wide/high16 v18, 0x4026000000000000L    # 11.0

    .line 47
    .line 48
    move-object v11, v8

    .line 49
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 50
    .line 51
    .line 52
    new-instance v9, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-direct {v9, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 56
    .line 57
    .line 58
    const/4 v7, 0x1

    .line 59
    const/4 v11, 0x0

    .line 60
    move-object v1, v10

    .line 61
    move-object v2, v3

    .line 62
    move-object v3, v4

    .line 63
    move-object v4, v5

    .line 64
    move v5, v7

    .line 65
    move-object v7, v11

    .line 66
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 67
    .line 68
    .line 69
    return-object v10

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        0x6b20681bc82cd7d3L    # 1.0534830872145628E208
        -0x77d8603d1edb30c0L    # -2.235880364302595E-269
        0x5a64c7b2473b27dcL    # 2.8132936455802797E127
    .end array-data
.end method

.method public secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {v3, v1}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-direct {v4, v1}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 33
    .line 34
    const/16 v1, 0xa

    .line 35
    .line 36
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 40
    .line 41
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 42
    .line 43
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 44
    .line 45
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    .line 46
    .line 47
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 48
    .line 49
    move-object v11, v8

    .line 50
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 51
    .line 52
    .line 53
    new-instance v9, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 54
    .line 55
    const/16 v1, 0x15

    .line 56
    .line 57
    invoke-direct {v9, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    const/4 v7, 0x0

    .line 62
    move-object v1, v10

    .line 63
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 64
    .line 65
    .line 66
    return-object v10

    .line 67
    :array_0
    .array-data 8
        -0x227f5c47b608931dL    # -2.5363491737164406E142
        -0x7c526f8d34f6f5b0L    # -5.925173765168223E-291
        0x7972f4067503d812L    # 1.0499270206452278E277
        -0x52fa37bb52b0fd84L    # -8.354010657486148E-92
    .end array-data
.end method

.method public secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v3, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-direct {v4, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 33
    .line 34
    const/16 v1, 0xa

    .line 35
    .line 36
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 40
    .line 41
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 42
    .line 43
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 44
    .line 45
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    .line 46
    .line 47
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 48
    .line 49
    move-object v11, v8

    .line 50
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 51
    .line 52
    .line 53
    new-instance v9, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 54
    .line 55
    const/16 v1, 0x1c

    .line 56
    .line 57
    invoke-direct {v9, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    const/4 v7, 0x0

    .line 62
    move-object v1, v10

    .line 63
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 64
    .line 65
    .line 66
    return-object v10

    .line 67
    :array_0
    .array-data 8
        -0xdd5edecc7174f6aL    # -8.69195879042654E241
        -0x452234f04756abf8L    # -3.850681964301142E-25
        0xe3a99be22c9a900L
    .end array-data
.end method

.method public secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 21
    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 28
    .line 29
    const/16 v1, 0xd

    .line 30
    .line 31
    invoke-direct {v4, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 44
    .line 45
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 46
    .line 47
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    .line 48
    .line 49
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 50
    .line 51
    move-object v11, v8

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    new-instance v9, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 56
    .line 57
    const/4 v1, 0x6

    .line 58
    invoke-direct {v9, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 59
    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    const/4 v7, 0x0

    .line 63
    move-object v1, v10

    .line 64
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 65
    .line 66
    .line 67
    return-object v10

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x1af4715f1b5fe008L    # -5.583437108211841E178
        -0x397ddcc6cda41edL
        0x4abe59d990bc5362L    # 1.1355648299133846E52
        -0x39035fdf72461d10L    # -9.289504796179328E33
    .end array-data
.end method

.method public secondaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 17
    .line 18
    const/16 v2, 0x1c

    .line 19
    .line 20
    invoke-direct {v1, v2}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 24
    .line 25
    const/16 v3, 0x1d

    .line 26
    .line 27
    invoke-direct {v2, v3}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        -0x32da49646fe6b06eL    # -4.466169067027237E63
        0x50564a099da8fe47L    # 1.0323656415079708E79
        -0x6707bf8832d33c79L    # -2.177244503913978E-188
        -0x5e0c5f3d520e626dL    # -3.929682807682887E-145
        0x745fefb9b28996daL    # 3.658497088069032E252
    .end array-data
.end method

.method public shadow()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 19
    .line 20
    const/16 v0, 0x15

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 26
    .line 27
    const/16 v0, 0x16

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, v9

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x6b5872fdb0d55754L    # -3.581780688114151E-209
        -0x41edbc8c8b74ce7cL
    .end array-data
.end method

.method public surface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v2, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 25
    .line 26
    const/16 v0, 0x19

    .line 27
    .line 28
    invoke-direct {v3, v0}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v0, v9

    .line 37
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 38
    .line 39
    .line 40
    return-object v9

    .line 41
    :array_0
    .array-data 8
        -0x787437cb5cd7e990L
        0x1e0d9e2e86b73f46L    # 6.42904693972084E-164
    .end array-data
.end method

.method public surfaceBright()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 19
    .line 20
    const/16 v0, 0x18

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 26
    .line 27
    const/16 v0, 0x19

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, v9

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x4bdd0c7dc97e286aL    # -1.5095506206808947E-57
        -0x1b0252562307ed88L    # -3.006613073008553E178
        -0x7d1a0d03fc7e2129L
    .end array-data
.end method

.method public surfaceContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 19
    .line 20
    const/16 v0, 0x1a

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 26
    .line 27
    const/16 v0, 0x1b

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, v9

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x1cee3a1fcd4ee6efL
        -0x638b80d9bc9f04eaL
        0xf6a54314bc90b6cL
        0x3159371a7c094b13L    # 5.7085298154694745E-71
    .end array-data
.end method

.method public surfaceContainerHigh()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 19
    .line 20
    const/16 v0, 0x11

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 26
    .line 27
    const/16 v0, 0x12

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, v9

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x6c18fc61fa58b22dL    # 5.257162877860486E212
        0x134fac1823ed301dL
        -0x5a5f745099f79a9fL
        0x530feb734968d171L    # 1.3004326811834397E92
    .end array-data
.end method

.method public surfaceContainerHighest()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 19
    .line 20
    const/16 v0, 0x17

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 26
    .line 27
    const/16 v0, 0x19

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, v9

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x1eba37807ee918b2L    # -3.828153085803044E160
        -0x3be37c25e7933470L    # -1.3150244182082742E20
        0x1362122c09f97fadL
        0x14a1e9430b9ae53eL
        0x587b786ccccbd1ecL    # 1.7318228338961118E118
    .end array-data
.end method

.method public surfaceContainerLow()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v2, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-direct {v3, v0}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 28
    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move-object v0, v9

    .line 36
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 37
    .line 38
    .line 39
    return-object v9

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x4ffffbad80c56156L    # 2.3146199028989382E77
        -0x4064a70fd6888e13L    # -0.026706459551734275
        0x3b26e3e0f0eea7baL    # 9.467144595657535E-24
        0x6c96c4179c6804a5L    # 1.2262622871298772E215
    .end array-data
.end method

.method public surfaceContainerLowest()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    invoke-direct {v2, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 25
    .line 26
    const/4 v0, 0x6

    .line 27
    invoke-direct {v3, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 28
    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move-object v0, v9

    .line 36
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 37
    .line 38
    .line 39
    return-object v9

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x631239d00e9b73a8L
        0x28eac83aceac0a54L
        -0x62843ebae0b08fc6L
        -0x8c935e92335f6f1L    # -1.837085172395857E266
    .end array-data
.end method

.method public surfaceDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 19
    .line 20
    const/16 v0, 0x16

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-direct {v3, v0}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v0, v9

    .line 37
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 38
    .line 39
    .line 40
    return-object v9

    .line 41
    :array_0
    .array-data 8
        0x6479eaff68b2af0cL    # 1.0256479017287022E176
        -0x3e9183e37bc5429cL    # -1.5982820132170387E7
        -0x3d01100fb475d676L    # -5.442540399909366E14
    .end array-data
.end method

.method public surfaceTint()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 19
    .line 20
    const/16 v0, 0xa

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 26
    .line 27
    const/16 v0, 0xb

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, v9

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x7174437e4cb07d13L    # 3.2987862185982395E238
        0x59ac42299d04540fL    # 9.340207684159451E123
        0x1e4fcfc064f7bc32L
    .end array-data
.end method

.method public surfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 19
    .line 20
    const/16 v0, 0xf

    .line 21
    .line 22
    invoke-direct {v2, v0}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 26
    .line 27
    const/16 v0, 0x10

    .line 28
    .line 29
    invoke-direct {v3, v0}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, v9

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x13acf2ac1cc8cdcdL
        0x57644376dfc10fcbL    # 9.746384741303534E112
        0x458573e7aa9ac2aaL    # 8.299132111574533E26
    .end array-data
.end method

.method public tertiary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 21
    .line 22
    const/16 v1, 0x13

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 28
    .line 29
    const/16 v1, 0x14

    .line 30
    .line 31
    invoke-direct {v4, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 42
    .line 43
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 44
    .line 45
    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    .line 46
    .line 47
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    .line 48
    .line 49
    const-wide/high16 v18, 0x4026000000000000L    # 11.0

    .line 50
    .line 51
    move-object v11, v8

    .line 52
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 53
    .line 54
    .line 55
    new-instance v9, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 56
    .line 57
    const/16 v1, 0x12

    .line 58
    .line 59
    invoke-direct {v9, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v1, v10

    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 66
    .line 67
    .line 68
    return-object v10

    .line 69
    :array_0
    .array-data 8
        -0x7932695f4bfe25cL
        -0x71d94ebe10f223ddL    # -1.701586922797461E-240
    .end array-data
.end method

.method public tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜땋땬돰딽뎻되듻딌뒻땀뎠땹땤땠땀딞드땹돤뒛땬딹딐땜득뎹뒵뎰듰딄뎬듌딝딨돳딝땲뎨땮땻딻됴딤땰돨뎸뒬돶될돷도땡뎡뒈든뎨딐딌딌듬된돶땩뒛돼뒹딟뎡땠땬땃뎠땰돨땭듻딻딠땸땪딜땡됐됨땭땝듔뒤둡땨땻디듻뒉듬딻돛땝되땍땭땐뒤땁돵뎹땳딅땅뒹땹돝뒙뒙땋됴돛둡뒈둔땫뒛딐뒾땻뎹딃듸딝;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v3, v1}, L딜땋땬돰딽뎻되듻딌뒻땀뎠땹땤땠땀딞드땹돤뒛땬딹딐땜득뎹뒵뎰듰딄뎬듌딝딨돳딝땲뎨땮땻딻됴딤땰돨뎸뒬돶될돷도땡뎡뒈든뎨딐딌딌듬된돶땩뒛돼뒹딟뎡땠땬땃뎠땰돨땭듻딻딠땸땪딜땡됐됨땭땝듔뒤둡땨땻디듻뒉듬딻돛땝되땍땭땐뒤땁돵뎹땳딅땅뒹땹돝뒙뒙땋됴돛둡뒈둔땫뒛딐뒾땻뎹딃듸딝;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, L딜땋땬돰딽뎻되듻딌뒻땀뎠땹땤땠땀딞드땹돤뒛땬딹딐땜득뎹뒵뎰듰딄뎬듌딝딨돳딝땲뎨땮땻딻됴딤땰돨뎸뒬돶될돷도땡뎡뒈든뎨딐딌딌듬된돶땩뒛돼뒹딟뎡땠땬땃뎠땰돨땭듻딻딠땸땪딜땡됐됨땭땝듔뒤둡땨땻디듻뒉듬딻돛땝되땍땭땐뒤땁돵뎹땳딅땅뒹땹돝뒙뒙땋됴돛둡뒈둔땫뒛딐뒾땻뎹딃듸딝;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v4, v1}, L딜땋땬돰딽뎻되듻딌뒻땀뎠땹땤땠땀딞드땹돤뒛땬딹딐땜득뎹뒵뎰듰딄뎬듌딝딨돳딝땲뎨땮땻딻됴딤땰돨뎸뒬돶될돷도땡뎡뒈든뎨딐딌딌듬된돶땩뒛돼뒹딟뎡땠땬땃뎠땰돨땭듻딻딠땸땪딜땡됐됨땭땝듔뒤둡땨땻디듻뒉듬딻돛땝되땍땭땐뒤땁돵뎹땳딅땅뒹땹돝뒙뒙땋됴돛둡뒈둔땫뒛딐뒾땻뎹딃듸딝;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 33
    .line 34
    const/16 v1, 0xa

    .line 35
    .line 36
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 40
    .line 41
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 42
    .line 43
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 44
    .line 45
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    .line 46
    .line 47
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 48
    .line 49
    move-object v11, v8

    .line 50
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 51
    .line 52
    .line 53
    new-instance v9, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 54
    .line 55
    const/16 v1, 0x9

    .line 56
    .line 57
    invoke-direct {v9, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    const/4 v7, 0x0

    .line 62
    move-object v1, v10

    .line 63
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 64
    .line 65
    .line 66
    return-object v10

    .line 67
    :array_0
    .array-data 8
        0x5bd453e10a48b9dL
        0x2ce501b5663e9b5aL    # 2.0141352923744113E-92
        0x38367c7a8cf41fffL    # 6.608113484463962E-38
        -0x3807c52d270bb299L    # -5.153104257846526E38
    .end array-data
.end method

.method public tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 21
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    new-instance v11, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 6
    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    new-array v3, v3, [J

    .line 11
    .line 12
    fill-array-data v3, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v4, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 23
    .line 24
    const/16 v2, 0x9

    .line 25
    .line 26
    invoke-direct {v4, v2}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v5, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 30
    .line 31
    invoke-direct {v5, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v7, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 35
    .line 36
    invoke-direct {v7, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 40
    .line 41
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 42
    .line 43
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 44
    .line 45
    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    .line 46
    .line 47
    const-wide/high16 v19, 0x401c000000000000L    # 7.0

    .line 48
    .line 49
    move-object v12, v9

    .line 50
    invoke-direct/range {v12 .. v20}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 51
    .line 52
    .line 53
    new-instance v10, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;

    .line 54
    .line 55
    const/16 v1, 0xe

    .line 56
    .line 57
    invoke-direct {v10, v0, v1}, L딜둣둣돸됩땮듐뒉뒷두뒝뒙땲뒾딞땐돰뒘두듔돰땪됴됨땸딀될돴둔땯땀땍듸둘듼드돛땠딹뒹딁땮듽듐듸딃뒼뎻돵뒈됩땍딀땥듟듟듻땀뒉됐둣돵돰뒘뒝뒝듬됫듬디땩땹딸두돸딄딞디땔듔둔득돶뎰됐뎠듼돵땳딃뒉땋딄뒐돨땥땀땨뎠둬뎨든되돵뎡됩뒐둬땁땃돨뎠득돴뎸뎻뒙뎰딁땱둥뒬뒛뒾됐땦딐됨둥듽;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 58
    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    const/4 v8, 0x0

    .line 62
    move-object v2, v11

    .line 63
    invoke-direct/range {v2 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 64
    .line 65
    .line 66
    return-object v11

    .line 67
    :array_0
    .array-data 8
        0x4b0517e248be15fdL    # 2.525420542104391E53
        -0x2a56e73a5f4953dL    # -6.787402081271329E295
        0x3b0b9768b7656236L    # 2.852888195004499E-24
    .end array-data
.end method

.method public tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-direct {v3, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    invoke-direct {v4, v1}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v6, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 33
    .line 34
    const/16 v1, 0xa

    .line 35
    .line 36
    invoke-direct {v6, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 37
    .line 38
    .line 39
    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 40
    .line 41
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 42
    .line 43
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 44
    .line 45
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    .line 46
    .line 47
    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    .line 48
    .line 49
    move-object v11, v8

    .line 50
    invoke-direct/range {v11 .. v19}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 51
    .line 52
    .line 53
    new-instance v9, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-direct {v9, v0, v1}, L딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 57
    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    const/4 v7, 0x0

    .line 61
    move-object v1, v10

    .line 62
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 63
    .line 64
    .line 65
    return-object v10

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x462f475947726109L    # 1.2390772027176984E30
        0x29813f3b9a12b989L    # 9.179630874341794E-109
        -0x39e4f56eb7cda51aL    # -5.3560771829161714E29
        0x421633426ef03319L    # 2.38373180760499E10
    .end array-data
.end method

.method public tertiaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 17
    .line 18
    const/4 v2, 0x7

    .line 19
    invoke-direct {v1, v2}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v2, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    invoke-direct {v2, v3}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x61f5e7cce74db6fL    # -1.17923934719898E279
        0x64711c2c10744aeL
        -0x62773851034c0df5L
        0x398744e00f8ed03cL    # 1.4340655493345342E-31
        0x229663412cca37eeL
    .end array-data
.end method

.method public textHintInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 17
    .line 18
    const/16 v2, 0x13

    .line 19
    .line 20
    invoke-direct {v1, v2}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 24
    .line 25
    const/16 v3, 0x14

    .line 26
    .line 27
    invoke-direct {v2, v3}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        -0x45579ff4d1285479L    # -3.9380212070334E-26
        -0x2d96c758fb8eb7c1L    # -1.0034510230246202E89
        -0x1661f98ebf05335eL    # -5.745694638171672E200
        0xb736bd704cc48c1L
    .end array-data
.end method

.method public textPrimaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 17
    .line 18
    const/16 v2, 0x18

    .line 19
    .line 20
    invoke-direct {v1, v2}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;

    .line 24
    .line 25
    const/16 v3, 0x19

    .line 26
    .line 27
    invoke-direct {v2, v3}, L딜돵땅뒾땱땵뒼뒉땹돸따뎻될딌따돰듐땭땩두둑땧딎땟땫땰뒐땦돰땟딽땁딁돸딝뒬돴땯들듐뒙듬땭땍뒉딁딟딝듔뎹땋땥뎰딄땅뒐딟땄뒐땹돨땥딽뒨땅됴듽돛땁딎득딟듟듔딽됐뎬땻땭둠됩땟땩둡따됩땀듟뒝둔땀도뒙딟뒼뎬뎻땰뎠돛땀딀딞땝둬딅뎠득땳땨뒀뒬됐듸돴딞뒘듐땄딨돰땳뒘돝땬뒘땳딨듌듼;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        -0x8139d00b9cfc5edL    # -4.686419506726575E269
        0x62227c15eee54bd5L    # 5.32231138175156E164
        0x5b774d6ecbc76687L    # 4.1350436820831805E132
        0x219123396077579bL    # 5.361076209633089E-147
    .end array-data
.end method

.method public textPrimaryInverseDisableOnly()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 17
    .line 18
    const/16 v2, 0x9

    .line 19
    .line 20
    invoke-direct {v1, v2}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    invoke-direct {v2, v3}, L딜디돴뒹돛돝딠뒈땜땤땡땰땬딽뎹땵따돴딤드땫땲둥땋뒾뒵딟땋뎸드딞딀들됨땜뎡땁드딎땋됴딎땁뎨땫뎻딹딟돛뒨땣땳딃뒵돳딁둘뎽딟땍듻둣땜딎땰땐둑됫땪땋딀듔땋땹든돶뒵땲뒛땃땝뎸뒼딟뎻둘듻뒬뒾땱땬돝듸돴땡땯듻땤땰돤두뎡땅딨둑땤딃뒤뎻땍돰딌뒷땵딽됫둠되땬듸뒉땤땵땫뎡뒝땧됩됫뒨;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        -0x6281be94699ba4caL
        0x7f584664d664ccbdL    # 2.6635106193706444E305
        0x263b8bdc6bf6baafL
        -0x60fcb169d19c307cL
        0x5edfb1d8c9990c9cL    # 1.0131755826794235E149
        -0x45dea4aeaf1d5e38L    # -1.0953623675121574E-28
    .end array-data
.end method

.method public textSecondaryAndTertiaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 17
    .line 18
    const/4 v3, 0x5

    .line 19
    invoke-direct {v2, v3}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v3, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;

    .line 23
    .line 24
    invoke-direct {v3, v1}, L딜둣땠땲됴땣딹돰딅딄둬딟뒐뒤뎽딽돸듬듐뒐뒨뒷둡듰뒙뎸둑딎든돨둬돼딸땄딠딀듟뒼돼두땳땲땐되땅땦돨땠뎡뎬돠딅뒀뒈땬뎬뒙딹땟돴듨뒷땜딎뒉딸땰땳됨도돷뒀딠뒵땤돴땁됐들딠딁뎻돰뒵땱딝뎽듟뎰디땰딸땄듨둘듟둘됐땹돶듌땡돸뒈뒉됫땲딁딄땹뒨돝됴땮딠딄딄땄뒀듐도될딅땬뎬땳드땱뎹땮;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x1ca42a7d72868a46L    # -4.201782326423254E170
        0x4467c6e99d883599L    # 3.5088661935419467E21
        0x45a50ad44c60b2ebL    # 3.2561385075296003E27
        -0x3fc191cbaf233135L    # -30.43048577681365
        0x926a84bd87aaa9L
        -0x36a7485ba87f5279L    # -2.2048614228375652E45
    .end array-data
.end method

.method public textSecondaryAndTertiaryInverseDisabled()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    invoke-direct {v1, v2}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v2, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;

    .line 23
    .line 24
    const/16 v3, 0xc

    .line 25
    .line 26
    invoke-direct {v2, v3}, L딜둬뎸땬뎡딐땧딜딟딜따땵둣뎽듟뎠득듌듟땨됩돶돳딃들뒷도돷땟될땜땥땥두뎠땻딞딁듼뎹땸듟둔뒛뒷뎻듽뒹뒛뎠도뒐뎻땣땳땰땐땐듻딞된될땣듌뒙뒙땩딻든뒋땵딜땣땐딟딄딟디땪땄땨땯되뎽됫딽딃들뎽돶딠딟땟돴든돳딟둣땫뒹땜땍둣뒬땰뒻됫둬땋땧듸둥땐땪땫딌됐딞땻돤돰뎨뒈둥땻뎬땝뒛둑땹;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x70db60671ed4dc80L    # -1.0134777700089352E-235
        0x47d5d302ae8a02cdL    # 1.1603766776746354E38
        0x6c0e6d258e5f6c58L    # 3.2009351733190933E212
        -0x4d42e4a7a9d8b3fcL    # -2.763857494450178E-64
        0x38cb73e95d6b2debL    # 4.1306351811868305E-35
        -0x251717d3adff4e86L    # -8.632334956862446E129
        0x267762b3ea435faaL
    .end array-data
.end method
