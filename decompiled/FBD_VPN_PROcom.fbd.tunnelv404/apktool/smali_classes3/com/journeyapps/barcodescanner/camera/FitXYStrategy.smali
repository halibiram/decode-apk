.class public Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FitXYStrategy"


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

.method private static absRatio(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    div-float/2addr v0, p0

    return v0

    :cond_0
    return p0
.end method


# virtual methods
.method public getScore(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)F
    .locals 4

    .line 1
    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 6
    .line 7
    if-gtz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    int-to-float v0, v0

    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    mul-float v0, v0, v1

    .line 14
    .line 15
    iget v2, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 16
    .line 17
    int-to-float v2, v2

    .line 18
    div-float/2addr v0, v2

    .line 19
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    mul-float v2, v2, v1

    .line 27
    .line 28
    iget v3, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 29
    .line 30
    int-to-float v3, v3

    .line 31
    div-float/2addr v2, v3

    .line 32
    invoke-static {v2}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    div-float v0, v1, v0

    .line 37
    .line 38
    div-float/2addr v0, v2

    .line 39
    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 40
    .line 41
    int-to-float v2, v2

    .line 42
    mul-float v2, v2, v1

    .line 43
    .line 44
    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 45
    .line 46
    int-to-float p1, p1

    .line 47
    div-float/2addr v2, p1

    .line 48
    iget p1, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 49
    .line 50
    int-to-float p1, p1

    .line 51
    mul-float p1, p1, v1

    .line 52
    .line 53
    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 54
    .line 55
    int-to-float p2, p2

    .line 56
    div-float/2addr p1, p2

    .line 57
    div-float/2addr v2, p1

    .line 58
    invoke-static {v2}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    div-float/2addr v1, p1

    .line 63
    div-float/2addr v1, p1

    .line 64
    div-float/2addr v1, p1

    .line 65
    mul-float v1, v1, v0

    .line 66
    .line 67
    return v1

    .line 68
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 69
    return p1
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 4
    .line 5
    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p1, v1, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method
