.class public final Lcom/google/android/material/color/HarmonizedColorAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HARMONIZED_MATERIAL_ATTRIBUTES:[I


# instance fields
.field private final attributes:[I

.field private final themeOverlay:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->colorError:I

    .line 2
    .line 3
    sget v1, Lcom/google/android/material/R$attr;->colorOnError:I

    .line 4
    .line 5
    sget v2, Lcom/google/android/material/R$attr;->colorErrorContainer:I

    .line 6
    .line 7
    sget v3, Lcom/google/android/material/R$attr;->colorOnErrorContainer:I

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/google/android/material/color/HarmonizedColorAttributes;->HARMONIZED_MATERIAL_ATTRIBUTES:[I

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>([II)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    new-array v0, v0, [J

    .line 17
    .line 18
    fill-array-data v0, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->attributes:[I

    .line 33
    .line 34
    iput p2, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->themeOverlay:I

    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        0x503deccb2eed96dfL    # 3.4650754139876984E78
        0x22a9b913bed15b8L
        -0x3d262f084b9c84deL    # -1.1354119874506853E14
        0x7699ce8bae3b417bL    # 2.0315649014704155E263
        0x743093b64fde82f7L    # 4.747471277315554E251
        -0x21b868214361e1L
        0x59036ee75ab153c9L    # 6.272678000056855E120
        -0x235045264b1b7dabL    # -2.952001117169091E138
        -0x463bcc16ccb78b38L    # -1.9921476293350403E-30
        -0x7f7d1e7d7cf20ec3L
    .end array-data
.end method

.method public static create([I)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 2
    .param p0    # [I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/HarmonizedColorAttributes;-><init>([II)V

    return-object v0
.end method

.method public static create([II)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 1
    .param p0    # [I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorAttributes;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;-><init>([II)V

    return-object v0
.end method

.method public static createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/material/color/HarmonizedColorAttributes;->HARMONIZED_MATERIAL_ATTRIBUTES:[I

    .line 2
    .line 3
    sget v1, Lcom/google/android/material/R$style;->ThemeOverlay_Material3_HarmonizedColors:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->create([II)Lcom/google/android/material/color/HarmonizedColorAttributes;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public getAttributes()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->attributes:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getThemeOverlay()I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->themeOverlay:I

    .line 2
    .line 3
    return v0
.end method
