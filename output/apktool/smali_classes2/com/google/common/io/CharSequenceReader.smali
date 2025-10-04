.class final Lcom/google/common/io/CharSequenceReader;
.super Ljava/io/Reader;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private mark:I

.field private pos:I

.field private seq:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/CharSequence;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    .line 11
    .line 12
    return-void
.end method

.method private checkOpen()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :array_0
    .array-data 8
        -0x6037ee810c28ca3aL
        -0x4ffde3d2fab08e92L    # -1.9550193455909584E-77
        -0x117b5ecccf59163eL    # -2.3862691854294517E224
    .end array-data
.end method

.method private hasRemaining()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private remaining()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    new-array v2, v2, [J

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
    move-result-object v1

    .line 22
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 26
    .line 27
    .line 28
    iget p1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    .line 29
    .line 30
    iput p1, p0, Lcom/google/common/io/CharSequenceReader;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1

    .line 37
    :array_0
    .array-data 8
        -0x64843cf75600b55dL
        0x3ade3ac87c6fb04dL    # 3.907087027218993E-25
        -0x75dee006088bad01L    # -6.961166092540568E-260
        -0x7a9e0ec7b2302edaL    # -9.652756617810512E-283
        -0x16114859f30c52b0L    # -1.8810105986089122E202
        0x78e4f306375ed279L    # 2.266605118985518E274
    .end array-data
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 10
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized read(Ljava/nio/CharBuffer;)I
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 3
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 5
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_1
    monitor-exit p0

    return v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized read([CII)I
    .locals 5

    monitor-enter p0

    add-int v0, p2, p3

    .line 12
    :try_start_0
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 13
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 14
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 16
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 17
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 18
    iget-object v2, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 19
    :cond_1
    monitor-exit p0

    return p3

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized ready()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/google/common/io/CharSequenceReader;->mark:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/common/io/CharSequenceReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v2, p1, v0

    .line 5
    .line 6
    if-ltz v2, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-long v0, v0

    .line 37
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    long-to-int p2, p1

    .line 42
    iget p1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    .line 43
    .line 44
    add-int/2addr p1, p2

    .line 45
    iput p1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    int-to-long p1, p2

    .line 48
    monitor-exit p0

    .line 49
    return-wide p1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p1

    .line 53
    :array_0
    .array-data 8
        -0x15c2aeea615d6df5L    # -5.744770775958933E203
        -0x262c768fe2a6bcb7L    # -5.165985012412512E124
        -0x522e3d4f73bcc72bL    # -5.580031100406342E-88
        0x10203a879e4066deL    # 5.226551609779466E-231
        0x2e51d79a681510b7L    # 1.4350586098576445E-85
    .end array-data
.end method
