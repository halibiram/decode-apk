.class public Lcom/github/mikephil/charting/utils/ObjectPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static ids:I


# instance fields
.field private desiredCapacity:I

.field private modelObject:Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private objects:[Ljava/lang/Object;

.field private objectsPointer:I

.field private poolId:I

.field private replenishPercentage:F


# direct methods
.method private constructor <init>(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->desiredCapacity:I

    .line 7
    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objects:[Ljava/lang/Object;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I

    .line 14
    .line 15
    iput-object p2, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->modelObject:Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    .line 16
    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    iput p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->replenishPercentage:F

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->refillPool()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/16 v0, 0x9

    .line 30
    .line 31
    new-array v0, v0, [J

    .line 32
    .line 33
    fill-array-data v0, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :array_0
    .array-data 8
        -0x11378abbd1e011f1L    # -4.526567299005964E225
        0x66e8d33aef9790bfL    # 5.400806755330008E187
        0x13d3050c87c8cdb3L    # 3.53107753327945E-213
        0x3158c59a97ea815L
        0x6b82d1c510b2342cL    # 7.73380243432582E209
        0x2d6667d72371ff75L    # 5.499565732430184E-90
        -0x12a29413f864fa3cL
        0x5af7b9e3c3f9577aL    # 1.6446181564244862E130
        0x4f78266dd43860fL
    .end array-data
.end method

.method public static declared-synchronized create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;
    .locals 2

    .line 1
    const-class v0, Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 5
    .line 6
    invoke-direct {v1, p0, p1}, Lcom/github/mikephil/charting/utils/ObjectPool;-><init>(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    .line 7
    .line 8
    .line 9
    sget p0, Lcom/github/mikephil/charting/utils/ObjectPool;->ids:I

    .line 10
    .line 11
    iput p0, v1, Lcom/github/mikephil/charting/utils/ObjectPool;->poolId:I

    .line 12
    .line 13
    add-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    sput p0, Lcom/github/mikephil/charting/utils/ObjectPool;->ids:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p0
.end method

.method private refillPool()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->replenishPercentage:F

    invoke-direct {p0, v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->refillPool(F)V

    return-void
.end method

.method private refillPool(F)V
    .locals 4

    .line 2
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->desiredCapacity:I

    int-to-float v1, v0

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_2

    .line 3
    iget-object v2, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objects:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->modelObject:Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v1

    .line 4
    iput v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I

    return-void
.end method

.method private resizePool()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->desiredCapacity:I

    .line 2
    .line 3
    mul-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    iput v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->desiredCapacity:I

    .line 6
    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objects:[Ljava/lang/Object;

    .line 13
    .line 14
    aget-object v3, v3, v2

    .line 15
    .line 16
    aput-object v3, v1, v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objects:[Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->replenishPercentage:F

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    cmpl-float v0, v0, v1

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->refillPool()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objects:[Ljava/lang/Object;

    .line 21
    .line 22
    iget v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I

    .line 23
    .line 24
    aget-object v0, v0, v1

    .line 25
    .line 26
    check-cast v0, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    .line 27
    .line 28
    sget v2, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->NO_OWNER:I

    .line 29
    .line 30
    iput v2, v0, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->currentOwnerId:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    iput v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-object v0

    .line 38
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0
.end method

.method public getPoolCapacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objects:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getPoolCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public getPoolId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->poolId:I

    .line 2
    .line 3
    return v0
.end method

.method public getReplenishPercentage()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->replenishPercentage:F

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p1, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->currentOwnerId:I

    sget v1, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->NO_OWNER:I

    if-eq v0, v1, :cond_1

    .line 2
    iget v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->poolId:I

    if-ne v0, v1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x7

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->currentOwnerId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0xa

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I

    .line 6
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objects:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->resizePool()V

    .line 8
    :cond_2
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->poolId:I

    iput v0, p1, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->currentOwnerId:I

    .line 9
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objects:[Ljava/lang/Object;

    iget v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :array_0
    .array-data 8
        -0x4a5cc3740bf1960eL    # -2.570733322967427E-50
        0x37f97a7cff6bc403L    # 4.6796558334520994E-39
        -0xdc0973606e473edL    # -2.0943787820007877E242
        0xb728d276fcb30a9L
        0x33e382a5e83f649bL    # 9.713053524589152E-59
        0x44e8773f87188cbL    # 6.26539345646854E-288
        -0x7d450083430902fL    # -7.313544349174393E270
        -0x3326e01f4560f899L    # -1.614942063962026E62
    .end array-data

    :array_1
    .array-data 8
        -0x1bf5f36afbfc35b5L    # -8.053433038071868E173
        -0xd765d17842869ecL
        -0x3ebfdb200e47740dL    # -2116031.8884444176
        -0x25bba821622eac31L    # -6.885386561714223E126
        -0x422fd1096909fd5L    # -4.417591289751043E288
        0xbff83e239936582L
        0x7ba10ebcaee2cdf9L    # 3.246705909316009E287
    .end array-data

    :array_2
    .array-data 8
        -0x7902395878b592c9L
        0x59ab3a71fd274480L    # 8.999715723126202E123
        -0x9788cd36ed5208aL    # -9.230116967939835E262
        0x650b9407baaf39d7L    # 5.587712326019143E178
        -0x91d1f4b2d9add2bL    # -4.755505039473444E264
        -0x3e5a9dc2a93c2076L    # -1.7937988338256484E8
        -0x6dec582612eca074L    # -1.359411785892118E-221
        -0xfccf0ae11a511dfL    # -2.959075252066095E232
        0x2615c364b5b12e5aL    # 3.21503475684262E-125
        0x750874c429785eacL    # 5.7376474660074645E255
    .end array-data
.end method

.method public declared-synchronized recycle(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 11
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->desiredCapacity:I

    if-le v0, v1, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->resizePool()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    .line 15
    iget v3, v2, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->currentOwnerId:I

    sget v4, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->NO_OWNER:I

    if-eq v3, v4, :cond_2

    .line 16
    iget p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->poolId:I

    if-ne v3, p1, :cond_1

    .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x7

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->currentOwnerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0xa

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    iget v3, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->poolId:I

    iput v3, v2, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->currentOwnerId:I

    .line 20
    iget-object v3, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objects:[Ljava/lang/Object;

    iget v4, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21
    :cond_3
    iget p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->objectsPointer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :array_0
    .array-data 8
        0x6c9a1851f2a9e43cL    # 1.4055756655681475E215
        -0x3447a7b106b9d759L    # -5.969365607464016E56
        -0x4b1cd796265786bfL    # -6.250545151818436E-54
        0x6793bc83973cb547L    # 8.793562017578668E190
        0x36c129c5ac201bc0L    # 6.012681813617047E-45
        0x2781e6fdec77f3L
        0x1b6107addaa927daL    # 8.40518184906902E-177
        0x3f5136578a6e70e5L    # 0.0010505537881960122
    .end array-data

    :array_1
    .array-data 8
        0xb7fea25eda9eb74L
        0x612cfd59d6d5a337L    # 1.2736518132308641E160
        -0x2a6eb5b1f695d11fL    # -1.5490301520097793E104
        -0x711a32de9039f0a3L    # -6.696003037138531E-237
        0x7be7e80b76bf4a33L    # 7.280488055620447E288
        0x2d449055b0ea2a06L
        -0x1e434d641c4545eaL    # -6.455421937419632E162
    .end array-data

    :array_2
    .array-data 8
        -0x649238d862da664L
        -0x2baf13c849a5d11cL    # -1.4458688572507096E98
        -0x651e9a9bf8eb031fL    # -3.353848373335125E-179
        -0x7ddaf86d79ff12c0L
        -0x52af0d32f4c8a937L    # -2.0800370510381388E-90
        0x703ed7f859a41b1fL    # 4.7885298688170055E232
        -0x7699cee79fbcb24fL    # -2.20234780458629E-263
        -0x9d39a406dd874c3L
        -0x5f8d4aefd22c0930L
        -0x7347415e7820166L    # -7.45097566138419E273
    .end array-data
.end method

.method public setReplenishPercentage(F)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float v1, p1, v0

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    cmpg-float v1, p1, v0

    .line 12
    .line 13
    if-gez v1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :cond_1
    :goto_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->replenishPercentage:F

    .line 17
    .line 18
    return-void
.end method
