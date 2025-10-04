.class public Lcom/google/android/material/color/ColorContrast;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final HIGH_CONTRAST_THRESHOLD:F = 0.6666667f

.field private static final MEDIUM_CONTRAST_THRESHOLD:F = 0.33333334f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/ColorContrastOptions;)V
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/color/ColorContrastOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;-><init>(Lcom/google/android/material/color/ColorContrastOptions;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static applyToActivityIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/ColorContrastOptions;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/color/ColorContrastOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorContrast;->getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/google/android/material/color/ThemeUtils;->applyThemeOverlay(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method private static getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/app/UiModeManager;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-static {p0}, L뎽듸뎬딤뒤뎬됫딤땮땠뎨둬딅땃될땅땯듌땵되뎻둑뎬된되뎸딄땍둘둡듼뎨뒾둬뒨둡뎠둥뎰듰돴될뒝뎡딞듼돴돤듼땍둣땦둑돨듬돰땝된돸딁듽땜듽땱땜돤땱딨땃딐딤돶됐딃땄땩뒙딃딐땃땯드드땣땲땲됫듸땵뒀둑땵딄든딤둠뒨듼됫딠됐돼뎬땃뒹도됨듌뒨땐뒐듟땐땜됫땰뒬뎡득뒛땦딨따되돳딽뒻돷듼딨;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/app/UiModeManager;)F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {p1}, Lcom/google/android/material/color/ColorContrastOptions;->getMediumContrastThemeOverlay()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1}, Lcom/google/android/material/color/ColorContrastOptions;->getHighContrastThemeOverlay()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const v2, 0x3f2aaaab

    .line 45
    .line 46
    .line 47
    cmpl-float v2, p0, v2

    .line 48
    .line 49
    if-ltz v2, :cond_2

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v0, p1

    .line 55
    :goto_0
    return v0

    .line 56
    :cond_2
    const v2, 0x3eaaaaab

    .line 57
    .line 58
    .line 59
    cmpl-float p0, p0, v2

    .line 60
    .line 61
    if-ltz p0, :cond_4

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    move v0, p1

    .line 66
    :cond_3
    return v0

    .line 67
    :cond_4
    :goto_1
    return v1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x625e538ce8531258L    # 6.985508815825394E165
        -0x739f4165cc6ef6daL    # -4.677424939107217E-249
    .end array-data
.end method

.method public static isContrastAvailable()Z
    .locals 2
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x22
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/color/ColorContrastOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorContrast;->getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
