.class public Lcom/journeyapps/barcodescanner/camera/CenterCropStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CenterCropStrategy"


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


# virtual methods
.method public getScore(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)F
    .locals 7

    .line 1
    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 2
    .line 3
    if-lez v0, :cond_2

    .line 4
    .line 5
    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->scaleCrop(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 15
    .line 16
    int-to-float v1, v1

    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    .line 19
    mul-float v1, v1, v2

    .line 20
    .line 21
    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 22
    .line 23
    int-to-float p1, p1

    .line 24
    div-float/2addr v1, p1

    .line 25
    cmpl-float p1, v1, v2

    .line 26
    .line 27
    if-lez p1, :cond_1

    .line 28
    .line 29
    div-float p1, v2, v1

    .line 30
    .line 31
    float-to-double v3, p1

    .line 32
    const-wide v5, 0x3ff199999999999aL    # 1.1

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    double-to-float v1, v3

    .line 42
    :cond_1
    iget p1, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 43
    .line 44
    int-to-float p1, p1

    .line 45
    mul-float p1, p1, v2

    .line 46
    .line 47
    iget v3, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 48
    .line 49
    int-to-float v3, v3

    .line 50
    div-float/2addr p1, v3

    .line 51
    iget v0, v0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 52
    .line 53
    int-to-float v0, v0

    .line 54
    mul-float v0, v0, v2

    .line 55
    .line 56
    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 57
    .line 58
    int-to-float p2, p2

    .line 59
    div-float/2addr v0, p2

    .line 60
    add-float/2addr v0, p1

    .line 61
    div-float/2addr v2, v0

    .line 62
    div-float/2addr v2, v0

    .line 63
    mul-float v2, v2, v1

    .line 64
    .line 65
    return v2

    .line 66
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 67
    return p1
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->scaleCrop(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

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
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/Size;->toString()Ljava/lang/String;

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
        -0x3cccfecfbfa5f7d6L    # -5.349331307202602E15
        0x71624c0217106b74L    # 1.489307119567486E238
        0x7a4d53d9110ed5aaL    # 1.3308878896433351E281
    .end array-data

    .line 82
    :array_1
    .array-data 8
        0x79d8316f4abeea45L    # 8.577240790638789E278
        -0x71025125e7bf928bL
        0x4a80052e9ccf4ea0L    # 7.492355406555925E50
    .end array-data

    :array_2
    .array-data 8
        0xf9db4d2832d2fc8L
        -0x366e8b5922fbe3afL    # -2.491356634859163E46
    .end array-data
.end method
