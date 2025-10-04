.class public Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;
.super Lcom/airbnb/lottie/value/LottieValueCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/graphics/PointF;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/16 v1, 0xd

    .line 13
    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x396864f7110d41deL
        -0x37969851e655f7cfL    # -6.915898909419405E40
        -0x4dfe51b213068920L    # -8.197752006813221E-68
        -0x522034d90900818bL    # -9.988964727364085E-88
        0x1a04f81a1a3781dbL
        0x4a3551b730f3f395L    # 3.115804793715914E49
        -0x4d8cbab779dc12eeL    # -1.1436602967278065E-65
        0x461fd5163cc92bddL    # 6.305050571137794E29
        -0x6f507839289e252cL
        0x589a3f83b0dddcc6L    # 6.619058717898018E118
        -0x4fb72d4ff0e1d8b8L    # -4.287512059151211E-76
        -0xc8d161da56429e4L
        -0x286743c673e6af55L    # -9.517759726323387E113
    .end array-data
.end method

.method public final getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    .line 3
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 4
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 5
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v3

    .line 6
    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 8
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 9
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v4

    .line 10
    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->offset(FF)V

    .line 14
    iget-object p1, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-object p1
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
