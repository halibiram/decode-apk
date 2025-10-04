.class final Lcom/google/android/gms/internal/ads/zzgch;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private zza:J

.field private zzb:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->zzb:J

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    cmp-long p1, p2, v0

    .line 14
    .line 15
    if-ltz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    new-array v1, v1, [J

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfxe;->zzf(ZLjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 8
        -0xe4c6d3b8cc6dbbL
        -0x16e5d4d436598cceL    # -1.9561324853276508E198
        0xd7365af491452e5L
        0x69234f966913ba80L    # 2.8870175479218455E198
        -0x1a3fb47c54a61fddL    # -1.3523252868818158E182
    .end array-data
.end method


# virtual methods
.method public final available()I
    .locals 4

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    long-to-int v1, v0

    .line 15
    return v1
.end method

.method public final declared-synchronized mark(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->zzb:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public final read()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    :cond_1
    return v0
.end method

.method public final read([BII)I
    .locals 6

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    :cond_0
    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 3
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-eq p1, v4, :cond_1

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    :cond_1
    return p1
.end method

.method public final declared-synchronized reset()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->zzb:J

    .line 11
    .line 12
    const-wide/16 v2, -0x1

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 21
    .line 22
    .line 23
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->zzb:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 32
    .line 33
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    new-array v2, v2, [J

    .line 37
    .line 38
    fill-array-data v2, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 53
    .line 54
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    new-array v2, v2, [J

    .line 58
    .line 59
    fill-array-data v2, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw v0

    .line 75
    :array_0
    .array-data 8
        0x254428b406f9e51aL
        -0x121fd41d595e613dL    # -1.826733442223808E221
        -0x7720d089bf370e39L    # -6.044705334259522E-266
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0x3a25fd533c38fa03L    # 1.3877357887151395E-28
        -0x3b02e9dfd8a793cL
        0x6925032618a54c6fL    # 3.141382020510253E198
        -0x6a8a5c780a29b63cL
    .end array-data
.end method

.method public final skip(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    .line 2
    .line 3
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    .line 14
    .line 15
    sub-long/2addr v0, p1

    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->zza:J

    .line 17
    .line 18
    return-wide p1
.end method
