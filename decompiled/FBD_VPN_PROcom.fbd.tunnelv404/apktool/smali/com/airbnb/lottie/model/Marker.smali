.class public Lcom/airbnb/lottie/model/Marker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CARRIAGE_RETURN:Ljava/lang/String;


# instance fields
.field public final durationFrames:F

.field private final name:Ljava/lang/String;

.field public final startFrame:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/model/Marker;->CARRIAGE_RETURN:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x2f958d7c1e52472dL    # 1.8177005408583543E-79
        -0x3a2b82f5fe6a7359L    # -2.5363452707065898E28
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput p3, p0, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    .line 7
    .line 8
    iput p2, p0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getDurationFrames()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartFrame()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    .line 2
    .line 3
    return v0
.end method

.method public matchesName(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v3, v1

    .line 42
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v1, 0x0

    .line 54
    :goto_0
    return v1

    .line 55
    :array_0
    .array-data 8
        -0x24a088ab9180bbb3L    # -1.3959230527033242E132
        0x2bbe0803cb03111dL    # 5.4920649995081684E-98
    .end array-data
.end method
