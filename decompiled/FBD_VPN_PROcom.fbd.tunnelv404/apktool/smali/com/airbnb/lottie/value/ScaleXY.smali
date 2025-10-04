.class public Lcom/airbnb/lottie/value/ScaleXY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private scaleX:F

.field private scaleY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-direct {p0, v0, v0}, Lcom/airbnb/lottie/value/ScaleXY;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 3
    iput p2, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    return-void
.end method


# virtual methods
.method public equals(FF)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 2
    .line 3
    cmpl-float p1, v0, p1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 8
    .line 9
    cmpl-float p1, p1, p2

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public getScaleX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 2
    .line 3
    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 2
    .line 3
    return v0
.end method

.method public set(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 2
    .line 3
    iput p2, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 4
    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [J

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :array_0
    .array-data 8
        -0x21cc6cdf1b2e2130L    # -6.110735587432951E145
        -0x37dfeba27b9f9e7L    # -5.614851388181176E291
    .end array-data
.end method
