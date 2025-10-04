.class public Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyPreviewScalingStrategy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .locals 6

    .line 1
    invoke-virtual {p1, p0}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x2

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v3, v1}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    invoke-virtual {p1, p0}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v1, v3}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p1, v4}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    return-object p0

    .line 54
    :cond_4
    move-object p0, v4

    .line 55
    goto :goto_0
.end method


# virtual methods
.method public getBestPreviewSize(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;",
            "Lcom/journeyapps/barcodescanner/Size;",
            ")",
            "Lcom/journeyapps/barcodescanner/Size;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;

    .line 12
    .line 13
    invoke-direct {v1, p0, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;-><init>(Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;Lcom/journeyapps/barcodescanner/Size;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    new-array v2, v2, [J

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/Size;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v1, 0x5

    .line 39
    new-array v1, v1, [J

    .line 40
    .line 41
    fill-array-data v1, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    .line 58
    .line 59
    return-object p1

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        -0x5872d08621844a0cL
        0x6c3e9df050acc1b5L    # 2.576788932066924E213
        -0x66db51d1e521aebaL
        -0xa30dec0b4038e1eL
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 8
        -0x79e38f173fb17635L
        0x473db9e908ba613aL    # 1.543473175372508E35
        0x3d7c216c35a970edL    # 1.5990370569463725E-12
        0x44d3c1e2e1dedbb2L    # 3.732061334956268E23
        -0x71a8be38774eda7cL
    .end array-data
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    .line 2
    .line 3
    .line 4
    move-result-object v0

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
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v1, v2, [J

    .line 25
    .line 26
    fill-array-data v1, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    new-array v2, v1, [J

    .line 42
    .line 43
    fill-array-data v2, :array_2

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    iget p1, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 56
    .line 57
    iget v2, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 58
    .line 59
    sub-int/2addr p1, v2

    .line 60
    div-int/2addr p1, v1

    .line 61
    iget v2, v0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 62
    .line 63
    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 64
    .line 65
    sub-int/2addr v2, p2

    .line 66
    div-int/2addr v2, v1

    .line 67
    new-instance p2, Landroid/graphics/Rect;

    .line 68
    .line 69
    neg-int v1, p1

    .line 70
    neg-int v3, v2

    .line 71
    iget v4, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 72
    .line 73
    sub-int/2addr v4, p1

    .line 74
    iget p1, v0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 75
    .line 76
    sub-int/2addr p1, v2

    .line 77
    invoke-direct {p2, v1, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    .line 79
    .line 80
    return-object p2

    .line 81
    :array_0
    .array-data 8
        -0x69143a6dac2b6000L
        -0x62f4b82063b6324dL    # -9.035846381260427E-169
        -0x142883bb17d78381L    # -3.088413368895298E211
    .end array-data

    .line 82
    :array_1
    .array-data 8
        0x3ff8b86284d135a0L    # 1.5450158298657257
        0x34a593f857b5b294L    # 4.400096032539754E-55
        0x3e5317307dd6358eL    # 1.777949153662665E-8
    .end array-data

    :array_2
    .array-data 8
        -0x580b9559613baf91L    # -3.238509738003907E-116
        0x34b41edd62620487L    # 8.205801020263908E-55
    .end array-data
.end method
