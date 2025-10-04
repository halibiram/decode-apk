.class public abstract Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewScalingStrategy"


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


# virtual methods
.method public getBestPreviewOrder(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;",
            "Lcom/journeyapps/barcodescanner/Size;",
            ")",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;-><init>(Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;Lcom/journeyapps/barcodescanner/Size;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public getBestPreviewSize(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .locals 2
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
    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->getBestPreviewOrder(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    new-array v0, v0, [J

    .line 26
    .line 27
    fill-array-data v0, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    .line 45
    .line 46
    return-object p1

    .line 47
    :array_0
    .array-data 8
        0x2c053916c081cbe3L    # 1.2419904159508198E-96
        0x7c094736b66456abL    # 3.079297350680403E289
        0x4dcb7182eb32a131L    # 5.78025551420293E66
        0x62bfcbf8be00c1efL    # 4.687491934700062E167
    .end array-data

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
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 8
        -0x7c11608dc9e05292L    # -9.819731194063196E-290
        -0xc351f299d7853abL    # -6.013783030699377E249
        0x241116afb831102fL    # 5.877720254697801E-135
        -0x3180fb5d3365540aL    # -1.3379945081106668E70
        0x49611672ad126998L    # 3.048545287259157E45
    .end array-data
.end method

.method public getScore(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public abstract scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
.end method
