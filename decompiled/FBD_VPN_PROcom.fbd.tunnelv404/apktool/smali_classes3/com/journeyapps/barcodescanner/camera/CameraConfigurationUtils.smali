.class public final Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AREA_PER_1000:I = 0x190

.field private static final MAX_EXPOSURE_COMPENSATION:F = 1.5f

.field private static final MAX_FPS:I = 0x14

.field private static final MIN_EXPOSURE_COMPENSATION:F = 0.0f

.field private static final MIN_FPS:I = 0xa

.field private static final SEMICOLON:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->SEMICOLON:Ljava/util/regex/Pattern;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x108dca62850ff0e8L
        0x714a5ffa43b77850L    # 5.367074496639488E237
        0x7dec49399eace37eL    # 3.6997961983937756E298
        0x2ced9c0a234b9c8fL    # 2.8389833734347013E-92
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_1
    .array-data 8
        -0x2c7de738734a5f65L    # -1.8874276986394003E94
        -0x26a1fb7408b49416L    # -3.1005343575175416E122
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static buildMiddleArea(I)Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/hardware/Camera$Area;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Rect;

    .line 4
    .line 5
    neg-int v2, p0

    .line 6
    invoke-direct {v1, v2, v2, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    invoke-direct {v0, v1, p0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static collectStats(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->collectStats(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static collectStats(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_3

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_4

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v5, v4, [J

    fill-array-data v5, :array_5

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_6

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_7

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_8

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_9

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_a

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_b

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_c

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Landroid/os/Build;->TIME:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_d

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_e

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v5, v3, [J

    fill-array-data v5, :array_f

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_10

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v4, [J

    fill-array-data v3, :array_11

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v4, [J

    fill-array-data v3, :array_12

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    .line 22
    sget-object v2, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->SEMICOLON:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 24
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 8
        -0x5779b21f0bca456aL
        -0x21032bc26b904facL
    .end array-data

    :array_1
    .array-data 8
        -0x4c1c9a263ae1b4e1L    # -9.65705142183738E-59
        -0x46d16dfbc06a1581L    # -2.9438202550865243E-33
    .end array-data

    :array_2
    .array-data 8
        0x234f2cef8ee9afc5L
        0x53f92b0c65140a7aL    # 3.359928684382904E96
    .end array-data

    :array_3
    .array-data 8
        0x7095527238dffa4bL    # 2.1185841127077794E234
        -0x13e16ca9ba88fec7L    # -6.433258805281707E212
    .end array-data

    :array_4
    .array-data 8
        0x15b22c119a3bf22fL    # 3.622505957313055E-204
        0x64c535d1f8347eabL    # 2.685919216799248E177
    .end array-data

    :array_5
    .array-data 8
        -0x434fd52c0de2039eL    # -2.2436631074981634E-16
        -0x3166a5e3fc70910L    # -5.106257514668961E293
        -0xaf135b0e4daedb2L    # -7.223702090698306E255
    .end array-data

    :array_6
    .array-data 8
        -0x2f6a1c1e0938abbcL    # -1.6222132060192778E80
        0x6bd1284a307d2927L    # 2.256254031202594E211
    .end array-data

    :array_7
    .array-data 8
        -0x4fbcb41c61d9448L
        -0x54d51504d4e56527L    # -9.614629566787282E-101
    .end array-data

    :array_8
    .array-data 8
        0x226dceaebd5282c7L    # 7.638630295388424E-143
        0x54fbfe7f2a9175beL
        0x64e50f9d90755fa9L    # 1.0668083380961613E178
    .end array-data

    :array_9
    .array-data 8
        -0x360fa30c06a2ee30L    # -1.4946683844951636E48
        -0x7fefd12670ea2a0cL    # -2.250524140068856E-308
    .end array-data

    :array_a
    .array-data 8
        -0x7a862da5ecffe9f7L
        -0x640e5ea14a476cf0L    # -4.455161825684506E-174
    .end array-data

    :array_b
    .array-data 8
        -0x325a9acff1524d3bL    # -1.1265921701383402E66
        -0x440fe77c5ec3d5e4L    # -5.453455108191335E-20
    .end array-data

    :array_c
    .array-data 8
        0x137cf9664d2034faL    # 8.40494385401904E-215
        -0x5d6bf75f842deea2L
    .end array-data

    :array_d
    .array-data 8
        -0x49cc7357c287a72dL    # -1.3376271118087052E-47
        -0x5b3fdb19b4b47c49L
    .end array-data

    :array_e
    .array-data 8
        -0x9cda3d071effa4bL
        -0x5348f4424b745168L    # -2.7620678107786883E-93
    .end array-data

    :array_f
    .array-data 8
        0x268e8e70f1a0f070L    # 5.777954577447708E-123
        -0x25f7b7499c73188aL    # -5.136993594542935E125
        -0x1c8ff2982f33acc0L    # -9.692963786035146E170
        -0x707e0967adfb61daL    # -5.649611384536958E-234
    .end array-data

    :array_10
    .array-data 8
        0xa8085fc0fdf3760L    # 4.29865456735486E-258
        0x73efd1946bbcb42fL    # 2.84766206497669E250
        0x17cce0c41136c24cL    # 4.944925960574595E-194
        -0x460c958bf9c19f4aL
    .end array-data

    :array_11
    .array-data 8
        -0x261afb97ac393558L    # -1.111484534726711E125
        -0x34b7aa7c8333d4b1L    # -4.661475512219249E54
        0x5699cd56d58bfa58L
    .end array-data

    :array_12
    .array-data 8
        0x4541de9594c59e0dL    # 4.320572715532201E25
        0x3ac1410743d704b2L    # 1.1150147217183566E-25
        0x66a659c199c350e2L    # 3.039042131332448E186
    .end array-data
.end method

.method private static varargs findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 p0, 0x2

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v1, 0x4

    .line 5
    new-array v2, v1, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    new-array v3, v2, [J

    .line 20
    .line 21
    fill-array-data v3, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v3, v1, [J

    .line 33
    .line 34
    fill-array-data v3, :array_2

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v3, v1, [J

    .line 49
    .line 50
    fill-array-data v3, :array_3

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v3, v2, [J

    .line 62
    .line 63
    fill-array-data v3, :array_4

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v2, v2, [J

    .line 75
    .line 76
    fill-array-data v2, :array_5

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    array-length v0, p2

    .line 91
    const/4 v2, 0x0

    .line 92
    :goto_0
    if-ge v2, v0, :cond_1

    .line 93
    .line 94
    aget-object v3, p2, v2

    .line 95
    .line 96
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_0

    .line 101
    .line 102
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array p2, v1, [J

    .line 105
    .line 106
    fill-array-data p2, :array_6

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array p2, p0, [J

    .line 118
    .line 119
    fill-array-data p2, :array_7

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array p0, p0, [J

    .line 131
    .line 132
    fill-array-data p0, :array_8

    .line 133
    .line 134
    .line 135
    invoke-direct {p1, p0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    return-object v3

    .line 142
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array p1, v1, [J

    .line 148
    .line 149
    fill-array-data p1, :array_9

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    const/4 p1, 0x5

    .line 161
    new-array p1, p1, [J

    .line 162
    .line 163
    fill-array-data p1, :array_a

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    const/4 p0, 0x0

    .line 173
    return-object p0

    .line 174
    nop

    .line 175
    :array_0
    .array-data 8
        -0x76d1732f25d6dfbaL    # -1.894898332456796E-264
        0x70bcd09678c2ae6aL    # 1.1452285988140547E235
        0x591aeefcc3d153baL    # 1.738728542711375E121
        0x7d1d1e3fe7abb627L    # 4.649216214507364E294
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_1
    .array-data 8
        0x7090868309d896f4L
        0x14c84aedaf9dd724L
        0x12c7fd90c1f6ca3bL
    .end array-data

    .line 196
    .line 197
    :array_2
    .array-data 8
        -0xf6d07629e7666c2L    # -1.884995574266877E234
        0x61b96c6bf13650c8L    # 5.7189117068339054E162
        0x111ff1a8a95b2474L
        -0x19a926eac7103144L    # -9.708344222949709E184
    .end array-data

    :array_3
    .array-data 8
        -0x612609c44eb80dbfL    # -4.616554043212413E-160
        -0x32469e0ade9d0e1fL    # -2.67310468662029E66
        0x729efb19e1932043L    # 1.3221174147934954E244
        -0x34c693a344974d16L    # -2.435067407938648E54
    .end array-data

    :array_4
    .array-data 8
        0x5f998e9c3b65bf5aL    # 3.346331100943868E152
        0xabb60390a0342ccL
        -0x6be822224ed04fe9L    # -7.089486508229622E-212
    .end array-data

    :array_5
    .array-data 8
        0x3ea15d26c625294eL    # 5.174837378965718E-7
        0x2de2493f552e9c0bL    # 1.1490340494498325E-87
        -0x4df5b40d902623d3L    # -1.2192470356327884E-67
    .end array-data

    :array_6
    .array-data 8
        -0x2089df25ddc45732L    # -7.243466253783046E151
        -0x2d86e1bcff55414L    # -7.526677247353281E294
        0x3cbb286e6c750b2dL    # 3.7689205827570544E-16
        0x192b3d7e84302bf3L
    .end array-data

    :array_7
    .array-data 8
        0xd1737d0000a3383L
        -0x1bc17d6f61f808cbL    # -7.546055293981516E174
    .end array-data

    :array_8
    .array-data 8
        0x76e6945e32caa769L    # 5.688028005045593E264
        -0x19f8adbd342d9438L    # -3.0967113310639937E183
    .end array-data

    :array_9
    .array-data 8
        0x2b7f989540001b0fL    # 3.6113860903425576E-99
        -0x4dc7b6692d9c6cbcL    # -9.00871871460785E-67
        0x1d7811c5562e680eL
        0x28ed1b804764814eL
    .end array-data

    :array_a
    .array-data 8
        0x572a0d601ba5885eL    # 7.831656089364449E111
        -0x475a45c391c71c0cL    # -8.172971328470374E-36
        0x684b88b59abf073cL    # 2.512446721414845E194
        -0x65ff95fe080f04c9L
        -0x53fce7c327381776L    # -1.1174388074094354E-96
    .end array-data
.end method

.method private static indexOfClosestZoom(Landroid/hardware/Camera$Parameters;D)Ljava/lang/Integer;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    new-array v3, v3, [J

    .line 23
    .line 24
    fill-array-data v3, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/lit8 p0, p0, 0x1

    .line 53
    .line 54
    if-eq v1, p0, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 58
    .line 59
    mul-double p1, p1, v3

    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-ge p0, v5, :cond_2

    .line 70
    .line 71
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    int-to-double v5, v5

    .line 82
    sub-double/2addr v5, p1

    .line 83
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    cmpg-double v7, v5, v3

    .line 88
    .line 89
    if-gez v7, :cond_1

    .line 90
    .line 91
    move v1, p0

    .line 92
    move-wide v3, v5

    .line 93
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array p1, v2, [J

    .line 99
    .line 100
    fill-array-data p1, :array_2

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array p1, v2, [J

    .line 112
    .line 113
    fill-array-data p1, :array_3

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Ljava/lang/Integer;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :cond_3
    :goto_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array p1, v2, [J

    .line 139
    .line 140
    fill-array-data p1, :array_4

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array p1, v2, [J

    .line 152
    .line 153
    fill-array-data p1, :array_5

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    const/4 p0, 0x0

    .line 163
    return-object p0

    .line 164
    nop

    .line 165
    :array_0
    .array-data 8
        -0x3e67f384efd3228dL    # -1.0086778004381351E8
        -0x2373de13892cb82aL    # -6.543296282443779E137
        -0x6c0da92d8dfa0632L
        -0x5636f5010adfae17L
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_1
    .array-data 8
        -0x62f6fceeef36637eL    # -8.284389301786841E-169
        -0x797b85643da42d60L    # -2.888161395474609E-277
        -0x36abf89cb999d663L    # -1.7866338860115118E45
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_2
    .array-data 8
        -0x1f83880be51a1671L    # -6.107217575338948E156
        0x44d85d05fd8e5207L    # 4.602110977813949E23
        -0x6a6dda39e4fa078bL    # -9.044010480487894E-205
        -0x694006f6da98d92L
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_3
    .array-data 8
        -0x335c1c551f9e3db0L    # -1.5980457407119158E61
        0x47f19e8677f4521fL    # 3.7471977885830275E38
        -0x4e669aa653f40383L    # -9.199084645013717E-70
        0x9f6a0d0c780a499L
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_4
    .array-data 8
        0x7707778340a1a352L    # 2.3646176664169585E265
        0x4d4d2a42c25dab70L    # 2.3995636985980177E64
        0x56f4d31f765db502L    # 7.825230715219534E110
        -0x158962b3f4f98a26L    # -7.090272666381476E204
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_5
    .array-data 8
        0x309e179c2d544967L    # 1.6632418754619797E-74
        -0x41592a8ebff6fc33L    # -6.80499056278475E-7
        -0x26e2c996adbc7731L    # -1.8858522417597135E121
        -0x653fbe4f84449a86L    # -7.835420256664744E-180
    .end array-data
.end method

.method public static setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [J

    .line 30
    .line 31
    fill-array-data v0, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v0, 0x5

    .line 43
    new-array v0, v0, [J

    .line 44
    .line 45
    fill-array-data v0, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v2, 0x3

    .line 58
    new-array v2, v2, [J

    .line 59
    .line 60
    fill-array-data v2, :array_3

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v1, v1, [J

    .line 77
    .line 78
    fill-array-data v1, :array_4

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    filled-new-array {v1}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v0, v2, v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        0x2b0db225a493b719L    # 2.651720647047935E-101
        -0xcb2a1c22f52798aL
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 8
        0x6e22330eccfa779bL    # 3.289311076153869E222
        -0x579a430b6cc50be0L    # -4.41360408133318E-114
        0x2868c5ea285e11d8L    # 5.029815809733183E-114
        0x582cefcbdb3654d0L    # 5.700821020558314E116
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_2
    .array-data 8
        -0x41aecf959829e185L    # -1.6008618865881596E-8
        -0x62703ad7a011c5f4L
        0x72907fa94c62e3f4L    # 7.040858663360202E243
        0x3c179743ba59eebbL    # 3.1971600383793576E-19
        -0x53ddd768d427cce4L    # -4.250624274659322E-96
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        0x6f69eae5280c2846L    # 4.9118016953370596E228
        -0x20e7af0f6254b61dL    # -1.2436926161189482E150
        -0x4bf343928472b04L    # -4.99518804604297E285
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_4
    .array-data 8
        -0x2faf1b625f2bffb2L    # -7.824317049032681E78
        -0x7690c4d1f8cce53dL
    .end array-data
.end method

.method public static setBestExposure(Landroid/hardware/Camera$Parameters;Z)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x4

    .line 4
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    if-eqz v4, :cond_3

    .line 19
    .line 20
    :cond_0
    const/4 v6, 0x0

    .line 21
    cmpl-float v7, v5, v6

    .line 22
    .line 23
    if-lez v7, :cond_3

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 29
    .line 30
    :goto_0
    div-float/2addr v6, v5

    .line 31
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-ne v3, p1, :cond_2

    .line 48
    .line 49
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array p1, v2, [J

    .line 52
    .line 53
    fill-array-data p1, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array p1, v1, [J

    .line 65
    .line 66
    fill-array-data p1, :array_1

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array p1, v0, [J

    .line 78
    .line 79
    fill-array-data p1, :array_2

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v2, v2, [J

    .line 92
    .line 93
    fill-array-data v2, :array_3

    .line 94
    .line 95
    .line 96
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v1, v1, [J

    .line 105
    .line 106
    fill-array-data v1, :array_4

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v0, v0, [J

    .line 118
    .line 119
    fill-array-data v0, :array_5

    .line 120
    .line 121
    .line 122
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array p1, v2, [J

    .line 135
    .line 136
    fill-array-data p1, :array_6

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    const/4 p1, 0x7

    .line 148
    new-array p1, p1, [J

    .line 149
    .line 150
    fill-array-data p1, :array_7

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    :goto_1
    return-void

    .line 160
    nop

    .line 161
    :array_0
    .array-data 8
        0x6bc5e09ac5ae6cebL    # 1.4384736921744358E211
        0x4f112a22e8c0e762L    # 7.581803649448031E72
        0x601291d172d46bf1L    # 6.224441484558452E154
        -0x3039623e1ca03723L    # -2.0459231650084378E76
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_1
    .array-data 8
        0x50325e8f9479ae0bL    # 2.1270286979077236E78
        0x453b67d1c4f5a639L    # 3.313127043927453E25
        0x2b0f18343369ca34L
        -0x7d2cfe5175c26673L    # -4.649946931451593E-295
        -0x16089a5e9085f004L    # -2.865478654186005E202
        0x28959e7db1861bcbL
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_2
    .array-data 8
        0x5d9ff6607007c4L
        0x44a6b154926b7997L    # 5.358161518779727E22
    .end array-data

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_3
    .array-data 8
        -0xabf1f8dc1fb942fL    # -6.33512167889662E256
        0x625002d8c3ff5edaL    # 3.6880716286773556E165
        -0x536b371cbf85e990L    # -6.227668535796428E-94
        0x384c803f6d34d9c2L    # 1.67513633285291E-37
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_4
    .array-data 8
        -0x7e7fc79a831d6a3L
        0x738e245e053ec4dfL    # 4.215017333500057E248
        0x6b0b0d19e5431e52L    # 4.3424335962187434E207
        0x5239447bbae88d3bL    # 1.2566121327094093E88
        -0x11ec5f1d984d929L
        0x1dd23ed90ef84e12L    # 4.950603486619553E-165
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_5
    .array-data 8
        0x2acd30ce52c4a2f0L
        0x1e474186190eed60L    # 8.076933081579855E-163
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_6
    .array-data 8
        -0x211a2b7143a0c3e2L    # -1.3956857173597181E149
        -0x633e2656fd234327L    # -3.695186821116682E-170
        -0x17c2cdbe0bb6591cL    # -1.3320647115215347E194
        0x28ca938ff4aaacaL
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_7
    .array-data 8
        -0x6635cb306fca6448L
        -0x661d2e8ec76ac091L    # -5.535912430089502E-184
        0x2299acd2a5226cebL    # 5.263734992034186E-142
        -0x239c069b3907224bL    # -1.1614414141987901E137
        -0x3f090007b9ca790fL    # -94207.51714089118
        -0x662a86e45018cad2L    # -3.158471617245166E-184
        -0x5fdc61030de9fdc7L    # -7.317022755253657E-154
    .end array-data
.end method

.method public static setBestPreviewFPS(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x14

    .line 1
    invoke-static {p0, v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setBestPreviewFPS(Landroid/hardware/Camera$Parameters;II)V

    return-void
.end method

.method public static setBestPreviewFPS(Landroid/hardware/Camera$Parameters;II)V
    .locals 8

    .line 2
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->toString(Ljava/util/Collection;)Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 6
    aget v5, v1, v4

    .line 7
    aget v6, v1, v3

    mul-int/lit16 v7, p1, 0x3e8

    if-lt v5, v7, :cond_0

    mul-int/lit16 v5, p2, 0x3e8

    if-gt v6, v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 8
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v2, [J

    fill-array-data p1, :array_2

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v2, [J

    fill-array-data p1, :array_3

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    .line 9
    new-array p1, p1, [I

    .line 10
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 11
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v2, [J

    fill-array-data p1, :array_4

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p1, 0x5

    new-array p1, p1, [J

    fill-array-data p1, :array_5

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    goto :goto_1

    .line 13
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v2, [J

    fill-array-data p2, :array_6

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v2, [J

    fill-array-data p2, :array_7

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 14
    aget p1, v1, v4

    aget p2, v1, v3

    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 8
        0x7d82afc8ac1c5a75L    # 3.819067476890249E296
        -0x45fcf111111b1800L    # -3.0068748166990865E-29
        0x1d0e8b007d3281c0L
        0x6cce16730b067c73L    # 1.296509777610561E216
    .end array-data

    :array_1
    .array-data 8
        0x31963b065e53526dL    # 8.052514830289477E-70
        -0x227070c665a4d57bL    # -4.8105829176795393E142
        -0x7c9bf60b7163cbd1L
        -0x29dc49c558796dcL    # -9.31536374499053E295
    .end array-data

    :array_2
    .array-data 8
        0x670bd5c506a8c841L    # 2.4222508672470357E188
        -0x3b96919eb2c6accfL    # -3.752978601346048E21
        0x14cbe6a1b3e690L
        0x4e417657c1368b0aL    # 9.415640879279752E68
    .end array-data

    :array_3
    .array-data 8
        0x6e2fce6bb33d384cL    # 5.7485774312465934E222
        -0x30e622d21507c2ffL    # -1.1424425126223977E73
        -0x22351db37a77b754L    # -6.5566426553557196E143
        -0xa326ec55c270655L
    .end array-data

    :array_4
    .array-data 8
        -0x71b6bb491e61e559L    # -7.578992457745097E-240
        0x1f3ee8389f318ab4L
        -0x1299b18386c83780L    # -9.842830083856123E218
        -0x20ae58db9c4c3658L    # -1.444620845465318E151
    .end array-data

    :array_5
    .array-data 8
        -0x7ca2f5419682c7d3L
        0x2e20f8ba8b31b9f6L    # 1.706294336245808E-86
        0x48d5de6b0091988bL    # 7.62017168148799E42
        0x3612c329f6bc66fcL    # 3.209431756303938E-48
        -0x175a29dba6f0996eL    # -1.2752345422924706E196
    .end array-data

    :array_6
    .array-data 8
        -0x26092905905ba60bL    # -2.415737426337811E125
        -0x17e8d6b65399453dL    # -2.6417991633256616E193
        0x61d6612b567ca8bcL    # 2.01367490179832E163
        -0x4669a473edda30e9L    # -2.7557877119948E-31
    .end array-data

    :array_7
    .array-data 8
        0x4abd3ae6807a9ee2L    # 1.0936271183564254E52
        0x43bff25da1326769L    # 2.30200530645650048E18
        -0x130e2f189c3b6babL    # -6.141689387396062E216
        0x7d7cfe28a650944aL    # 2.962688738476503E296
    .end array-data
.end method

.method public static setFocus(Landroid/hardware/Camera$Parameters;Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;Z)V
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x3

    .line 4
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    if-nez p2, :cond_4

    .line 9
    .line 10
    sget-object v4, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 11
    .line 12
    if-ne p1, v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    sget-object v4, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 17
    .line 18
    if-ne p1, v4, :cond_1

    .line 19
    .line 20
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v4, v2, [J

    .line 23
    .line 24
    fill-array-data v4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v5, v0, [J

    .line 37
    .line 38
    fill-array-data v5, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v6, v2, [J

    .line 51
    .line 52
    fill-array-data v6, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v7, v1, [J

    .line 65
    .line 66
    fill-array-data v7, :array_3

    .line 67
    .line 68
    .line 69
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {p1, v3, v4}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_1
    sget-object v4, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->INFINITY:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 87
    .line 88
    if-ne p1, v4, :cond_2

    .line 89
    .line 90
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v4, v2, [J

    .line 93
    .line 94
    fill-array-data v4, :array_4

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v5, v1, [J

    .line 107
    .line 108
    fill-array-data v5, :array_5

    .line 109
    .line 110
    .line 111
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    filled-new-array {v4}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {p1, v3, v4}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    sget-object v4, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->MACRO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 128
    .line 129
    if-ne p1, v4, :cond_3

    .line 130
    .line 131
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v4, v2, [J

    .line 134
    .line 135
    fill-array-data v4, :array_6

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v5, v1, [J

    .line 148
    .line 149
    fill-array-data v5, :array_7

    .line 150
    .line 151
    .line 152
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    filled-new-array {v4}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-static {p1, v3, v4}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    goto :goto_1

    .line 168
    :cond_3
    const/4 p1, 0x0

    .line 169
    goto :goto_1

    .line 170
    :cond_4
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    new-array v4, v2, [J

    .line 173
    .line 174
    fill-array-data v4, :array_8

    .line 175
    .line 176
    .line 177
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    new-array v5, v1, [J

    .line 187
    .line 188
    fill-array-data v5, :array_9

    .line 189
    .line 190
    .line 191
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    filled-new-array {v4}, [Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-static {p1, v3, v4}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    :goto_1
    if-nez p2, :cond_5

    .line 207
    .line 208
    if-nez p1, :cond_5

    .line 209
    .line 210
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array p2, v2, [J

    .line 213
    .line 214
    fill-array-data p2, :array_a

    .line 215
    .line 216
    .line 217
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v2, v1, [J

    .line 227
    .line 228
    fill-array-data v2, :array_b

    .line 229
    .line 230
    .line 231
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 239
    .line 240
    new-array v1, v1, [J

    .line 241
    .line 242
    fill-array-data v1, :array_c

    .line 243
    .line 244
    .line 245
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    filled-new-array {p2, v1}, [Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-static {p1, v3, p2}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    :cond_5
    if-eqz p1, :cond_7

    .line 261
    .line 262
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p2

    .line 270
    if-eqz p2, :cond_6

    .line 271
    .line 272
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 273
    .line 274
    new-array p1, v0, [J

    .line 275
    .line 276
    fill-array-data p1, :array_d

    .line 277
    .line 278
    .line 279
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 286
    .line 287
    const/4 p1, 0x5

    .line 288
    new-array p1, p1, [J

    .line 289
    .line 290
    fill-array-data p1, :array_e

    .line 291
    .line 292
    .line 293
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_6
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :cond_7
    :goto_2
    return-void

    .line 304
    nop

    .line 305
    :array_0
    .array-data 8
        0x53268eb191f2478bL    # 3.6760183384904575E92
        0x496c9f4723dc737L
        0x4a00d9e5f135b50dL    # 3.078500634693777E48
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_1
    .array-data 8
        0x1c3af793f8be3876L
        -0x48697e2102625e65L    # -6.459280851463243E-41
        -0x7cece669157df5e0L
        0x6c18774366728ceaL    # 5.14775250786911E212
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_2
    .array-data 8
        -0x67176b22c14a1669L
        -0x735812b6848498aL    # -7.166664454173861E273
        0x331c312c893728e1L    # 1.7132791088280646E-62
    .end array-data

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_3
    .array-data 8
        -0x5012fb17e7d5a7e1L    # -7.8317004076478155E-78
        0xa6c9ed0c34e0483L
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_4
    .array-data 8
        -0x6872be78615472f6L
        0x5b5ffda9843f012cL    # 1.4192017572122703E132
        0x6333b20dd179f576L    # 7.433016506018708E169
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_5
    .array-data 8
        -0x4970906548f6cd2eL    # -6.882992935012866E-46
        -0x5096c082f9f580f8L    # -2.6616942904863606E-80
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_6
    .array-data 8
        -0x3b7f5a6e5081a9c5L    # -9.826509280780206E21
        0x577c69593b32131dL    # 2.7330830098160115E113
        0x6a8b5161a259d3deL    # 1.7129879672413465E205
    .end array-data

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :array_7
    .array-data 8
        0x2ef1f6570cd432ecL    # 1.479388760581313E-82
        -0x7aaca99957d5f4b9L    # -5.201690393594541E-283
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :array_8
    .array-data 8
        0x316847a415a6779dL    # 1.0993525343930268E-70
        -0x5917e89066bdc9efL    # -2.915522769377704E-121
        -0xb25f4dc94a0dfbcL    # -7.637581392818531E254
    .end array-data

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :array_9
    .array-data 8
        -0x106d729510c3dff0L    # -2.8127887448211676E229
        -0x7ddd68c63c3f7efL    # -4.797421590792906E270
    .end array-data

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    :array_a
    .array-data 8
        0x49f3d73b085a751aL    # 1.8123300372912718E48
        0x2f40b79f8813d015L    # 4.405921345889319E-81
        -0x60dd760ed3c2ba8bL    # -1.054908428573404E-158
    .end array-data

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :array_b
    .array-data 8
        -0x7e41797b2f80abf5L
        0x38e6d15d27309097L    # 1.3732980482281997E-34
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    :array_c
    .array-data 8
        -0x2bc5df1d0208d397L    # -5.581005956908069E97
        0x14d69e04010cc592L    # 2.751837475965068E-208
    .end array-data

    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    :array_d
    .array-data 8
        0x7d775a2825bd4c53L    # 2.386289273953603E296
        -0x193c8b6c9f93d630L
        -0x1db7a445d091e98L
        -0x2f33ace24d6d9706L    # -1.6792437432833026E81
    .end array-data

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_e
    .array-data 8
        -0x6bdd25261e9835cdL
        0x5c17a2b53157a078L    # 4.294813209882542E135
        -0x4a927ccbbb9d393bL    # -2.4650003758628747E-51
        -0x6e5b4c10cfe7641fL
        -0x78643461714e6e21L    # -5.138030423275862E-272
    .end array-data
.end method

.method public static setFocusArea(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v2, v0, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v2, v0, [J

    .line 24
    .line 25
    fill-array-data v2, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x190

    .line 42
    .line 43
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->buildMiddleArea(I)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v3, v0, [J

    .line 50
    .line 51
    fill-array-data v3, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v0, v0, [J

    .line 63
    .line 64
    fill-array-data v0, :array_3

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v0, v0, [J

    .line 83
    .line 84
    fill-array-data v0, :array_4

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    const/4 v0, 0x6

    .line 96
    new-array v0, v0, [J

    .line 97
    .line 98
    fill-array-data v0, :array_5

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        0x6d533830fb82301dL    # 4.240322576057388E218
        0x11d6356ad2b70c47L    # 9.599875416920085E-223
        -0x5d9735b3d7b86566L    # -6.352907460485064E-143
        0x41f871d933553160L    # 6.561829685324554E9
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_1
    .array-data 8
        0xef20b55c32782c8L
        -0x117edabbd06b13d9L    # -1.9832559110118387E224
        0x2027bcfe82acc788L    # 8.85240102084147E-154
        0x3dad881b8cf040d1L    # 1.3429448876146699E-11
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 8
        -0x6622ea5b282f1392L
        -0x394f2adfd2050defL    # -3.4140411138099815E32
        -0x3584e3023d87ec6eL    # -6.340168796591367E50
        -0x551c8198124587a7L    # -4.351784593550499E-102
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_3
    .array-data 8
        -0x10cd3e602a22a7a4L    # -4.443293027148003E227
        0x200326535e148631L    # 1.785313237552233E-154
        -0xa09308ded178f8cL
        -0x2fcf1a433f691450L    # -1.956586566574917E78
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_4
    .array-data 8
        0x163e9ecf407afb9aL
        -0xc4fa807a658fb38L    # -1.828373996075578E249
        -0x4667678d2a6831dfL    # -3.031629711868549E-31
        0x52113c29eef7540fL    # 2.1428433416709418E87
    .end array-data

    :array_5
    .array-data 8
        -0x457bf0da3510ca0dL    # -8.101834412193586E-27
        0x4de46a0bec5d0607L    # 1.7198966913084662E67
        0x44af3c5d4bab61daL    # 7.375344413434356E22
        0x772e096e193c748L    # 8.72376316880217E-273
        0x1d5053752ed49e38L
        0x2a6de1bed84db85cL
    .end array-data
.end method

.method public static setInvertColor(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [J

    .line 30
    .line 31
    fill-array-data v0, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v0, 0x5

    .line 43
    new-array v0, v0, [J

    .line 44
    .line 45
    fill-array-data v0, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v2, 0x3

    .line 58
    new-array v2, v2, [J

    .line 59
    .line 60
    fill-array-data v2, :array_3

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v1, v1, [J

    .line 77
    .line 78
    fill-array-data v1, :array_4

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    filled-new-array {v1}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v0, v2, v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        -0x35a9a8e4bb866bebL    # -1.3060130521387337E50
        -0x74c23b936fc78464L
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 8
        0x6367adb069108f0bL    # 7.148933408211059E170
        -0x587d25bc1aeebbb0L
        -0x18a39bfb5e0447beL    # -7.905936473334899E189
        0x4be3a5144c1e69abL    # 3.853520790596348E57
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_2
    .array-data 8
        -0x7a6f1273496767ccL    # -7.285642880871954E-282
        0x57aa25ccf318b0bL
        -0x20fe9f7bf0162e70L    # -4.44388734765444E149
        -0x569cce5f35c5bc1bL    # -2.55395886936673E-109
        0x547e27f91cdcfa86L    # 1.0306101532587416E99
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        -0x47357c365329a219L    # -3.989503102942773E-35
        -0x2abf293afc2685c5L    # -4.714366955038041E102
        0x365a44cda340539dL    # 7.18952674737087E-47
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_4
    .array-data 8
        -0x244000a0f977f52L
        0x1d7ff1024fbb1cf1L
    .end array-data
.end method

.method public static setMetering(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v2, v0, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v2, v0, [J

    .line 24
    .line 25
    fill-array-data v2, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x190

    .line 42
    .line 43
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->buildMiddleArea(I)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v0, v0, [J

    .line 50
    .line 51
    fill-array-data v0, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 v2, 0x5

    .line 63
    new-array v2, v2, [J

    .line 64
    .line 65
    fill-array-data v2, :array_3

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v0, v0, [J

    .line 84
    .line 85
    fill-array-data v0, :array_4

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    const/4 v0, 0x6

    .line 97
    new-array v0, v0, [J

    .line 98
    .line 99
    fill-array-data v0, :array_5

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void

    .line 109
    :array_0
    .array-data 8
        0xbd2022de363c148L
        -0x2aaf61b7876c83f1L    # -9.305183771696583E102
        0x2dd23e9beee9f147L    # 5.732114170475174E-88
        -0x4021e5df676a402eL    # -0.47034468556284736
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_1
    .array-data 8
        0x6dfc1307f9ab44d5L    # 6.342586343394893E221
        -0x13793dc2666a725bL    # -6.129363496270676E214
        -0x10e2bb67005db206L    # -1.73336169287379E227
        0x4b2a0dbff43e3cd2L    # 1.2477248362752647E54
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 8
        0x1447f20b25fa641L
        -0x3ae53a050822b409L    # -8.091751763409832E24
        -0x3d46e46e9c84359eL    # -2.7606194027466383E13
        -0x2fb35baf901a4bbdL    # -6.632999851728695E78
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_3
    .array-data 8
        0x1219c7ff3c41f4b1L
        -0x2636bce71f2788ccL    # -3.3399321813761215E124
        -0x1077d538dafca781L    # -1.8320245048581702E229
        -0x1f839395a3ffe917L    # -6.097548811925053E156
        0x1096e2c43255634cL    # 9.434296485953892E-229
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_4
    .array-data 8
        0x4725590c4f7b07feL    # 5.542217190997897E34
        -0x47dd4155415fb3d6L    # -2.754299763745985E-38
        -0x453a69a9935f0c46L
        0xa974906268b655dL
    .end array-data

    :array_5
    .array-data 8
        -0x1e8344c444207330L    # -4.0393750872829275E161
        -0x5bfb0f992b4899ecL    # -3.601051439516786E-135
        0x213c9cacd4ad1128L    # 1.398526023465956E-148
        0x29446fbf18190082L
        0x16c0534533f66ab5L    # 4.26553365237745E-199
        -0x20e62711ff8678c1L    # -1.3220090036549654E150
    .end array-data
.end method

.method public static setTorch(Landroid/hardware/Camera$Parameters;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v4, v2, [J

    .line 27
    .line 28
    fill-array-data v4, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v2, v2, [J

    .line 41
    .line 42
    fill-array-data v2, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, v3, v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v0, v0, [J

    .line 64
    .line 65
    fill-array-data v0, :array_3

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v2, v2, [J

    .line 78
    .line 79
    fill-array-data v2, :array_4

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    filled-new-array {v0}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p1, v3, v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_0
    if-eqz p1, :cond_2

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array p1, v1, [J

    .line 112
    .line 113
    fill-array-data p1, :array_5

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    const/4 p1, 0x5

    .line 125
    new-array p1, p1, [J

    .line 126
    .line 127
    fill-array-data p1, :array_6

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v2, v1, [J

    .line 140
    .line 141
    fill-array-data v2, :array_7

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v1, v1, [J

    .line 153
    .line 154
    fill-array-data v1, :array_8

    .line 155
    .line 156
    .line 157
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_2
    :goto_1
    return-void

    .line 167
    :array_0
    .array-data 8
        -0x358fcff6f29579e0L    # -3.785321540753393E50
        0xb0877d03fe1ba88L
        0x3fbd600d631cd0cdL    # 0.11474689168682346
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_1
    .array-data 8
        0x29b25f01799f9ba9L    # 7.82234752431648E-108
        -0x6237084d977d2e7eL
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_2
    .array-data 8
        0x1ae13e1150e7ef72L    # 3.324234154193011E-179
        -0x67f15087ec57ed40L    # -8.407075441647244E-193
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_3
    .array-data 8
        -0x139709488cafff2fL    # -1.680801892076537E214
        0x617e4e633d84824dL    # 4.260780914971286E161
        0x335b9add0fdc465bL    # 2.6841552534066348E-61
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_4
    .array-data 8
        0x2d1bf1524f6157fbL    # 2.1433303190550157E-91
        -0xa63eed69c0379ecL    # -3.371420140294368E258
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_5
    .array-data 8
        0x79e979495ef8ff5fL    # 1.8062560720901245E279
        0x31bc4c3af64fe16bL    # 4.1000890599617373E-69
        -0x1f7fa64b4672649eL    # -7.01514268918839E156
        0x7cf9e3fe741461cfL    # 1.0334701182964619E294
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_6
    .array-data 8
        0x360b16a6ae1f8c15L    # 2.316836340242544E-48
        -0x56b1207ba8492495L
        -0x7b94c30f8fa6c78bL    # -2.23599106393129E-287
        0x14afcf5b8c3a45b2L    # 4.837896397111555E-209
        -0x5df179b2c8fe31e5L
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_7
    .array-data 8
        0x775f4f429143e52L
        0x22ba423d88010412L
        0x3f50303007d130L
        0x6ce1a46df3bd4513L    # 3.040900219130392E216
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_8
    .array-data 8
        0x3446f6eafb399b6aL    # 7.316919176682582E-57
        0x544850c4dddd5b13L    # 1.038752024045874E98
        -0x4a104aa8bffe7d13L    # -6.7799194014258966E-49
        -0x7993eb8e58963007L    # -9.900313269966094E-278
    .end array-data
.end method

.method public static setVideoStabilization(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v0, v0, [J

    .line 17
    .line 18
    fill-array-data v0, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v0, 0x6

    .line 30
    new-array v0, v0, [J

    .line 31
    .line 32
    fill-array-data v0, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v0, v0, [J

    .line 45
    .line 46
    fill-array-data v0, :array_2

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    new-array v1, v1, [J

    .line 59
    .line 60
    fill-array-data v1, :array_3

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v0, v0, [J

    .line 77
    .line 78
    fill-array-data v0, :array_4

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    const/4 v0, 0x7

    .line 90
    new-array v0, v0, [J

    .line 91
    .line 92
    fill-array-data v0, :array_5

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        -0x70976913c680b08L    # -4.876735565414769E274
        0x6cd0160628435701L    # 1.3863274341540178E216
        -0x2e6bacd4e44110e4L    # -9.871126344120634E84
        0x4af8a5dd3e6bd9d0L    # 1.4755003054275765E53
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_1
    .array-data 8
        0xf732c785308ed2fL
        -0xcbb369ec862d94fL
        -0x55e6ec2ac4ac80f2L    # -6.83384770578967E-106
        -0x611dc63828610bf8L    # -6.481815454437023E-160
        -0x67454c5b720b4b17L
        0x7f80632451cf062bL    # 1.438441800195229E306
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_2
    .array-data 8
        -0x27f1159c8bdd67b6L    # -1.522669845490321E116
        0x66f23c47c2660f2eL    # 7.934403308095266E187
        -0x39fe64e203cda26fL    # -1.743606486348755E29
        0x60ef3c6c9609cdc2L    # 8.577161545813059E158
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_3
    .array-data 8
        0x2b0fa03023a8dacL
        0x2658096aba9ccaf0L
        -0x43c3c46b0b2a65f6L    # -1.530499991284919E-18
        -0x7dbf5bddc61dd1c2L    # -7.951655576373408E-298
        -0x27803f390468cd9cL    # -2.0018133288531641E118
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_4
    .array-data 8
        -0x2b6f9a7f3fab9b55L    # -2.2414529629492607E99
        -0x241a821888633b8cL    # -4.881588143692215E134
        -0x4d0317148d2ee306L    # -4.392245911811821E-63
        -0x4b49eb1ba771433L    # -8.142934503700127E285
    .end array-data

    :array_5
    .array-data 8
        -0x2ac0889746addb5fL    # -4.404799835945162E102
        0x75ea6f6bdb4779d3L    # 1.0161305881522002E260
        -0x364e63d2000cec60L    # -1.0053576650295084E47
        0x48f6d685b2634512L    # 3.1831494889368277E43
        -0x184f8b56dfbf6a26L    # -2.9327414017381874E191
        0x3ee0a25c0ef8f9b1L    # 7.93181285907167E-6
        0xb9bc1e5c0c8c927L
    .end array-data
.end method

.method public static setZoom(Landroid/hardware/Camera$Parameters;D)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    invoke-static {p0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->indexOfClosestZoom(Landroid/hardware/Camera$Parameters;D)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ne p2, v1, :cond_1

    .line 24
    .line 25
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array p1, v0, [J

    .line 28
    .line 29
    fill-array-data p1, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array p1, v0, [J

    .line 41
    .line 42
    fill-array-data p1, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v0, v0, [J

    .line 55
    .line 56
    fill-array-data v0, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    new-array v0, v0, [J

    .line 69
    .line 70
    fill-array-data v0, :array_3

    .line 71
    .line 72
    .line 73
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array p1, v0, [J

    .line 90
    .line 91
    fill-array-data p1, :array_4

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array p1, v0, [J

    .line 103
    .line 104
    fill-array-data p1, :array_5

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void

    .line 114
    nop

    .line 115
    :array_0
    .array-data 8
        -0x5b5c8838f399a212L    # -3.428392961441952E-132
        0x7868a13f39cda6c4L    # 1.0409460921103262E272
        0x2c5d0067b6e46c7aL    # 5.431040932137321E-95
        -0x57cfdf37b287c894L    # -4.093206902961211E-115
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_1
    .array-data 8
        -0x17f63ce1a089f13dL    # -1.4692303310536364E193
        0x551a948a2650c54L    # 4.75079051532007E-283
        -0x66fd8658a92af8d1L    # -3.317279721163466E-188
        -0x330facdd8471d0f8L    # -4.1972565862419015E62
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_2
    .array-data 8
        0x4da9c901b8d39766L    # 1.357748331416145E66
        0x693429c4d9de7ffeL    # 6.028867664284536E198
        -0x131a36a9bc97ca44L    # -3.755206452499694E216
        0x310e4c462b978f97L    # 2.1435036963232011E-72
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_3
    .array-data 8
        0x52c658190523bca4L    # 5.6894750359767545E90
        -0x740c73b321efaf8aL
        0x56bd0464ed6067bcL    # 6.8148047698819075E109
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_4
    .array-data 8
        0x2380723571db995L    # 5.74063335262327E-298
        0x69ae41ec6c1d93aeL    # 1.158031478297131E201
        -0x6920cabfd2e6f99L    # -8.295644241062639E276
        0x4f38f161d2fad7e8L    # 4.4070287757856697E73
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_5
    .array-data 8
        0x6b0becc3fec1b68dL    # 4.482683970454379E207
        0x7bfe5153e9ce30b6L
        0x2eaa3a7722270124L    # 6.750604911753067E-84
        -0x77a19b9b420bf08eL    # -2.301152891791278E-268
    .end array-data
.end method

.method private static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    .line 13
    iget-object v2, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[I>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p0, 0x5d

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    :goto_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        0x549f8a31665d504L
        -0x6eb3e698b3c89406L    # -2.372289645902542E-225
    .end array-data

    :array_1
    .array-data 8
        0x5b2d437a543e4a23L    # 1.622765124468066E131
        0x5d2fde695ee469caL    # 7.590207337815573E140
    .end array-data
.end method
