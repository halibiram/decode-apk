.class public Lcom/github/mikephil/charting/utils/MPPointD;
.super Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
.source "SourceFile"


# static fields
.field private static pool:Lcom/github/mikephil/charting/utils/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/utils/ObjectPool<",
            "Lcom/github/mikephil/charting/utils/MPPointD;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:D

.field public y:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/github/mikephil/charting/utils/MPPointD;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2, v1, v2}, Lcom/github/mikephil/charting/utils/MPPointD;-><init>(DD)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x40

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/github/mikephil/charting/utils/MPPointD;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 15
    .line 16
    const/high16 v1, 0x3f000000    # 0.5f

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->setReplenishPercentage(F)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    .line 7
    .line 8
    return-void
.end method

.method public static getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/utils/MPPointD;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/github/mikephil/charting/utils/MPPointD;

    .line 8
    .line 9
    iput-wide p0, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 10
    .line 11
    iput-wide p2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    .line 12
    .line 13
    return-object v0
.end method

.method public static recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/utils/MPPointD;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static recycleInstances(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/utils/MPPointD;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/utils/MPPointD;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .locals 3

    .line 1
    new-instance v0, Lcom/github/mikephil/charting/utils/MPPointD;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2, v1, v2}, Lcom/github/mikephil/charting/utils/MPPointD;-><init>(DD)V

    .line 6
    .line 7
    .line 8
    return-object v0
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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-wide v1, p0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [J

    .line 33
    .line 34
    fill-array-data v2, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-wide v1, p0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :array_0
    .array-data 8
        0x751642912578eb26L
        -0x7e7bfc8994c2eb3fL    # -2.334736924277085E-301
        0x50bc7236f18a1f40L    # 8.432228454833861E80
    .end array-data

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
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        0x650ca4215a46e583L    # 5.803067925558864E178
        -0x7d78c08ca728ac84L
    .end array-data
.end method
