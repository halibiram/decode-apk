.class final Lcom/google/android/gms/internal/ads/zzgyp;
.super Lcom/google/android/gms/internal/ads/zzgyt;
.source "SourceFile"


# instance fields
.field private final zze:Ljava/lang/Iterable;

.field private final zzf:Ljava/util/Iterator;

.field private zzg:Ljava/nio/ByteBuffer;

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:J

.field private zzo:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;IZLcom/google/android/gms/internal/ads/zzgyo;)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgyt;-><init>(Lcom/google/android/gms/internal/ads/zzgys;)V

    .line 3
    .line 4
    .line 5
    const p3, 0x7fffffff

    .line 6
    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzj:I

    .line 9
    .line 10
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzh:I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zze:Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzf:Ljava/util/Iterator;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzl:I

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhae;->zze:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzg:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    const-wide/16 p1, 0x0

    .line 30
    .line 31
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 32
    .line 33
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzn:J

    .line 34
    .line 35
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzN()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private final zzJ()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzl:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzn:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private final zzK()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzf:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzN()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzj()Lcom/google/android/gms/internal/ads/zzhag;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    throw v0
.end method

.method private final zzL([BII)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzJ()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-gt p3, p2, :cond_1

    .line 6
    .line 7
    move p2, p3

    .line 8
    :goto_0
    if-lez p2, :cond_2

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzK()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 25
    .line 26
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 27
    .line 28
    sub-long/2addr v0, v2

    .line 29
    long-to-int v1, v0

    .line 30
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 35
    .line 36
    sub-int v3, p3, p2

    .line 37
    .line 38
    int-to-long v8, v0

    .line 39
    int-to-long v4, v3

    .line 40
    move-object v3, p1

    .line 41
    move-wide v6, v8

    .line 42
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhcz;->zzo(J[BJJ)V

    .line 43
    .line 44
    .line 45
    sub-int/2addr p2, v0

    .line 46
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 47
    .line 48
    add-long/2addr v0, v8

    .line 49
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-gtz p3, :cond_3

    .line 53
    .line 54
    :cond_2
    return-void

    .line 55
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzj()Lcom/google/android/gms/internal/ads/zzhag;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    throw p1
.end method

.method private final zzM()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzi:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzj:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzi:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzh:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzi:I

    return-void
.end method

.method private final zzN()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzf:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzg:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzl:I

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 14
    .line 15
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzn:J

    .line 16
    .line 17
    sub-long/2addr v2, v4

    .line 18
    long-to-int v3, v2

    .line 19
    add-int/2addr v1, v3

    .line 20
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzl:I

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v0, v0

    .line 27
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzn:J

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzg:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-long v0, v0

    .line 38
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzg:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zze(Ljava/nio/ByteBuffer;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 47
    .line 48
    add-long/2addr v2, v0

    .line 49
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 50
    .line 51
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzn:J

    .line 52
    .line 53
    add-long/2addr v2, v0

    .line 54
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzn:J

    .line 55
    .line 56
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 57
    .line 58
    add-long/2addr v2, v0

    .line 59
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final zzA(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzj:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzM()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzB(I)V
    .locals 5

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzh:I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzl:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 9
    .line 10
    int-to-long v3, v0

    .line 11
    sub-long/2addr v3, v1

    .line 12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzn:J

    .line 13
    .line 14
    add-long/2addr v3, v0

    .line 15
    int-to-long v0, p1

    .line 16
    cmp-long v2, v0, v3

    .line 17
    .line 18
    if-gtz v2, :cond_2

    .line 19
    .line 20
    :goto_0
    if-lez p1, :cond_1

    .line 21
    .line 22
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 25
    .line 26
    sub-long/2addr v0, v2

    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long v4, v0, v2

    .line 30
    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzK()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 37
    .line 38
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 39
    .line 40
    sub-long/2addr v0, v2

    .line 41
    long-to-int v1, v0

    .line 42
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sub-int/2addr p1, v0

    .line 47
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 48
    .line 49
    int-to-long v3, v0

    .line 50
    add-long/2addr v1, v3

    .line 51
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void

    .line 55
    :cond_2
    if-gez p1, :cond_3

    .line 56
    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzf()Lcom/google/android/gms/internal/ads/zzhag;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    throw p1

    .line 62
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzj()Lcom/google/android/gms/internal/ads/zzhag;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    throw p1
.end method

.method public final zzC()Z
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzl:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzn:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzh:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzD()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzr()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final zzE(I)Z
    .locals 5

    .line 1
    and-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    if-eq v0, v2, :cond_5

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_4

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    const/4 v4, 0x3

    .line 14
    if-eq v0, v4, :cond_2

    .line 15
    .line 16
    if-eq v0, v3, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x5

    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzgyp;->zzB(I)V

    .line 22
    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zza()Lcom/google/android/gms/internal/ads/zzhaf;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    throw p1

    .line 30
    :cond_1
    return v1

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzm()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzE(I)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    :cond_3
    ushr-int/2addr p1, v4

    .line 44
    shl-int/2addr p1, v4

    .line 45
    or-int/2addr p1, v3

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyp;->zzz(I)V

    .line 47
    .line 48
    .line 49
    return v2

    .line 50
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzj()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyp;->zzB(I)V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_5
    const/16 p1, 0x8

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyp;->zzB(I)V

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    :goto_0
    const/16 p1, 0xa

    .line 65
    .line 66
    if-ge v1, p1, :cond_8

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-ltz p1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zze()Lcom/google/android/gms/internal/ads/zzhag;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    throw p1
.end method

.method public final zza()B
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzK()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 16
    .line 17
    const-wide/16 v2, 0x1

    .line 18
    .line 19
    add-long/2addr v2, v0

    .line 20
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public final zzb()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzq()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final zzc()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzi()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final zzd()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzl:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzn:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final zze(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzd()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr p1, v0

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzj:I

    .line 9
    .line 10
    if-gt p1, v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzj:I

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzM()V

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzj()Lcom/google/android/gms/internal/ads/zzhag;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    throw p1

    .line 23
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzf()Lcom/google/android/gms/internal/ads/zzhag;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    throw p1
.end method

.method public final zzf()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzj()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final zzg()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzi()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final zzh()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzj()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final zzi()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    const-wide/16 v4, 0x4

    .line 7
    .line 8
    cmp-long v6, v0, v4

    .line 9
    .line 10
    if-ltz v6, :cond_0

    .line 11
    .line 12
    add-long/2addr v4, v2

    .line 13
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    const-wide/16 v4, 0x1

    .line 22
    .line 23
    add-long/2addr v4, v2

    .line 24
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    and-int/lit16 v1, v1, 0xff

    .line 29
    .line 30
    shl-int/lit8 v1, v1, 0x8

    .line 31
    .line 32
    const-wide/16 v4, 0x2

    .line 33
    .line 34
    add-long/2addr v4, v2

    .line 35
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    and-int/lit16 v4, v4, 0xff

    .line 40
    .line 41
    shl-int/lit8 v4, v4, 0x10

    .line 42
    .line 43
    const-wide/16 v5, 0x3

    .line 44
    .line 45
    add-long/2addr v2, v5

    .line 46
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    and-int/lit16 v2, v2, 0xff

    .line 51
    .line 52
    shl-int/lit8 v2, v2, 0x18

    .line 53
    .line 54
    or-int/2addr v0, v1

    .line 55
    or-int/2addr v0, v4

    .line 56
    or-int/2addr v0, v2

    .line 57
    return v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    and-int/lit16 v0, v0, 0xff

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    and-int/lit16 v1, v1, 0xff

    .line 69
    .line 70
    shl-int/lit8 v1, v1, 0x8

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    and-int/lit16 v2, v2, 0xff

    .line 77
    .line 78
    shl-int/lit8 v2, v2, 0x10

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    and-int/lit16 v3, v3, 0xff

    .line 85
    .line 86
    shl-int/lit8 v3, v3, 0x18

    .line 87
    .line 88
    or-int/2addr v0, v1

    .line 89
    or-int/2addr v0, v2

    .line 90
    or-int/2addr v0, v3

    .line 91
    return v0
.end method

.method public final zzj()I
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 4
    .line 5
    cmp-long v4, v2, v0

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    add-long v4, v0, v2

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-ltz v6, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 25
    .line 26
    return v6

    .line 27
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 28
    .line 29
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 30
    .line 31
    sub-long/2addr v2, v7

    .line 32
    const-wide/16 v7, 0xa

    .line 33
    .line 34
    cmp-long v9, v2, v7

    .line 35
    .line 36
    if-ltz v9, :cond_7

    .line 37
    .line 38
    const-wide/16 v2, 0x2

    .line 39
    .line 40
    add-long/2addr v2, v0

    .line 41
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    shl-int/lit8 v4, v4, 0x7

    .line 46
    .line 47
    xor-int/2addr v4, v6

    .line 48
    if-gez v4, :cond_2

    .line 49
    .line 50
    xor-int/lit8 v0, v4, -0x80

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_2
    const-wide/16 v5, 0x3

    .line 55
    .line 56
    add-long/2addr v5, v0

    .line 57
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    shl-int/lit8 v2, v2, 0xe

    .line 62
    .line 63
    xor-int/2addr v2, v4

    .line 64
    if-ltz v2, :cond_3

    .line 65
    .line 66
    xor-int/lit16 v0, v2, 0x3f80

    .line 67
    .line 68
    :goto_0
    move-wide v2, v5

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    const-wide/16 v3, 0x4

    .line 71
    .line 72
    add-long/2addr v3, v0

    .line 73
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    shl-int/lit8 v5, v5, 0x15

    .line 78
    .line 79
    xor-int/2addr v2, v5

    .line 80
    if-gez v2, :cond_4

    .line 81
    .line 82
    const v0, -0x1fc080

    .line 83
    .line 84
    .line 85
    xor-int/2addr v0, v2

    .line 86
    :goto_1
    move-wide v2, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const-wide/16 v5, 0x5

    .line 89
    .line 90
    add-long/2addr v5, v0

    .line 91
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    shl-int/lit8 v4, v3, 0x1c

    .line 96
    .line 97
    xor-int/2addr v2, v4

    .line 98
    const v4, 0xfe03f80

    .line 99
    .line 100
    .line 101
    xor-int/2addr v2, v4

    .line 102
    if-gez v3, :cond_5

    .line 103
    .line 104
    const-wide/16 v3, 0x6

    .line 105
    .line 106
    add-long/2addr v3, v0

    .line 107
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-gez v5, :cond_6

    .line 112
    .line 113
    const-wide/16 v5, 0x7

    .line 114
    .line 115
    add-long/2addr v5, v0

    .line 116
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-gez v3, :cond_5

    .line 121
    .line 122
    const-wide/16 v3, 0x8

    .line 123
    .line 124
    add-long/2addr v3, v0

    .line 125
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-gez v5, :cond_6

    .line 130
    .line 131
    const-wide/16 v5, 0x9

    .line 132
    .line 133
    add-long/2addr v5, v0

    .line 134
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-gez v3, :cond_5

    .line 139
    .line 140
    add-long/2addr v0, v7

    .line 141
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-ltz v3, :cond_7

    .line 146
    .line 147
    move-wide v10, v0

    .line 148
    move v0, v2

    .line 149
    move-wide v2, v10

    .line 150
    goto :goto_2

    .line 151
    :cond_5
    move v0, v2

    .line 152
    goto :goto_0

    .line 153
    :cond_6
    move v0, v2

    .line 154
    goto :goto_1

    .line 155
    :goto_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 156
    .line 157
    return v0

    .line 158
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzs()J

    .line 159
    .line 160
    .line 161
    move-result-wide v0

    .line 162
    long-to-int v1, v0

    .line 163
    return v1
.end method

.method public final zzk()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzi()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final zzl()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzj()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyt;->zzF(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final zzm()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzC()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzk:I

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzj()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzk:I

    .line 16
    .line 17
    ushr-int/lit8 v1, v0, 0x3

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzc()Lcom/google/android/gms/internal/ads/zzhag;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    throw v0
.end method

.method public final zzn()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzj()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final zzo()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzq()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final zzp()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzr()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final zzq()J
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 6
    .line 7
    sub-long/2addr v1, v3

    .line 8
    const/16 v7, 0x28

    .line 9
    .line 10
    const/16 v8, 0x20

    .line 11
    .line 12
    const/16 v9, 0x18

    .line 13
    .line 14
    const/16 v10, 0x10

    .line 15
    .line 16
    const/16 v11, 0x8

    .line 17
    .line 18
    const-wide/16 v12, 0xff

    .line 19
    .line 20
    const-wide/16 v14, 0x8

    .line 21
    .line 22
    cmp-long v16, v1, v14

    .line 23
    .line 24
    if-ltz v16, :cond_0

    .line 25
    .line 26
    add-long/2addr v14, v3

    .line 27
    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 28
    .line 29
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-long v1, v1

    .line 34
    and-long/2addr v1, v12

    .line 35
    const-wide/16 v14, 0x1

    .line 36
    .line 37
    add-long/2addr v14, v3

    .line 38
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 39
    .line 40
    .line 41
    move-result v14

    .line 42
    int-to-long v14, v14

    .line 43
    and-long/2addr v14, v12

    .line 44
    shl-long/2addr v14, v11

    .line 45
    const-wide/16 v16, 0x2

    .line 46
    .line 47
    add-long v16, v3, v16

    .line 48
    .line 49
    invoke-static/range {v16 .. v17}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    int-to-long v5, v11

    .line 54
    and-long/2addr v5, v12

    .line 55
    shl-long/2addr v5, v10

    .line 56
    const-wide/16 v10, 0x3

    .line 57
    .line 58
    add-long/2addr v10, v3

    .line 59
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    int-to-long v10, v10

    .line 64
    and-long/2addr v10, v12

    .line 65
    shl-long v9, v10, v9

    .line 66
    .line 67
    const-wide/16 v18, 0x4

    .line 68
    .line 69
    add-long v18, v3, v18

    .line 70
    .line 71
    invoke-static/range {v18 .. v19}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    move-wide/from16 v18, v9

    .line 76
    .line 77
    int-to-long v9, v11

    .line 78
    and-long/2addr v9, v12

    .line 79
    shl-long v8, v9, v8

    .line 80
    .line 81
    const-wide/16 v10, 0x5

    .line 82
    .line 83
    add-long/2addr v10, v3

    .line 84
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    int-to-long v10, v10

    .line 89
    and-long/2addr v10, v12

    .line 90
    shl-long/2addr v10, v7

    .line 91
    const-wide/16 v20, 0x6

    .line 92
    .line 93
    add-long v20, v3, v20

    .line 94
    .line 95
    invoke-static/range {v20 .. v21}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    move-wide/from16 v20, v10

    .line 100
    .line 101
    int-to-long v10, v7

    .line 102
    and-long/2addr v10, v12

    .line 103
    const/16 v7, 0x30

    .line 104
    .line 105
    shl-long/2addr v10, v7

    .line 106
    const-wide/16 v22, 0x7

    .line 107
    .line 108
    add-long v3, v3, v22

    .line 109
    .line 110
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    int-to-long v3, v3

    .line 115
    and-long/2addr v3, v12

    .line 116
    const/16 v7, 0x38

    .line 117
    .line 118
    shl-long/2addr v3, v7

    .line 119
    or-long/2addr v1, v14

    .line 120
    or-long/2addr v1, v5

    .line 121
    or-long v1, v1, v18

    .line 122
    .line 123
    or-long/2addr v1, v8

    .line 124
    or-long v1, v1, v20

    .line 125
    .line 126
    or-long/2addr v1, v10

    .line 127
    or-long/2addr v1, v3

    .line 128
    return-wide v1

    .line 129
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    int-to-long v1, v1

    .line 134
    and-long/2addr v1, v12

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    int-to-long v3, v3

    .line 140
    and-long/2addr v3, v12

    .line 141
    shl-long/2addr v3, v11

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    int-to-long v5, v5

    .line 147
    and-long/2addr v5, v12

    .line 148
    shl-long/2addr v5, v10

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    int-to-long v10, v10

    .line 154
    and-long/2addr v10, v12

    .line 155
    shl-long v9, v10, v9

    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    int-to-long v14, v11

    .line 162
    and-long/2addr v14, v12

    .line 163
    shl-long/2addr v14, v8

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    move-wide/from16 v18, v14

    .line 169
    .line 170
    int-to-long v14, v8

    .line 171
    and-long/2addr v14, v12

    .line 172
    shl-long v7, v14, v7

    .line 173
    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    int-to-long v14, v11

    .line 179
    and-long/2addr v14, v12

    .line 180
    const/16 v11, 0x30

    .line 181
    .line 182
    shl-long/2addr v14, v11

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    move-wide/from16 v20, v14

    .line 188
    .line 189
    int-to-long v14, v11

    .line 190
    and-long v11, v14, v12

    .line 191
    .line 192
    const/16 v13, 0x38

    .line 193
    .line 194
    shl-long/2addr v11, v13

    .line 195
    or-long/2addr v1, v3

    .line 196
    or-long/2addr v1, v5

    .line 197
    or-long/2addr v1, v9

    .line 198
    or-long v1, v1, v18

    .line 199
    .line 200
    or-long/2addr v1, v7

    .line 201
    or-long v1, v1, v20

    .line 202
    .line 203
    or-long/2addr v1, v11

    .line 204
    return-wide v1
.end method

.method public final zzr()J
    .locals 15

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 4
    .line 5
    cmp-long v4, v2, v0

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    add-long v4, v0, v2

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-ltz v6, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 25
    .line 26
    int-to-long v0, v6

    .line 27
    return-wide v0

    .line 28
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 29
    .line 30
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 31
    .line 32
    sub-long/2addr v2, v7

    .line 33
    const-wide/16 v7, 0xa

    .line 34
    .line 35
    cmp-long v9, v2, v7

    .line 36
    .line 37
    if-ltz v9, :cond_a

    .line 38
    .line 39
    const-wide/16 v2, 0x2

    .line 40
    .line 41
    add-long/2addr v2, v0

    .line 42
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    shl-int/lit8 v4, v4, 0x7

    .line 47
    .line 48
    xor-int/2addr v4, v6

    .line 49
    if-gez v4, :cond_2

    .line 50
    .line 51
    xor-int/lit8 v0, v4, -0x80

    .line 52
    .line 53
    int-to-long v0, v0

    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_2
    const-wide/16 v5, 0x3

    .line 57
    .line 58
    add-long/2addr v5, v0

    .line 59
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    shl-int/lit8 v2, v2, 0xe

    .line 64
    .line 65
    xor-int/2addr v2, v4

    .line 66
    if-ltz v2, :cond_3

    .line 67
    .line 68
    xor-int/lit16 v0, v2, 0x3f80

    .line 69
    .line 70
    int-to-long v0, v0

    .line 71
    :goto_0
    move-wide v2, v5

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_3
    const-wide/16 v3, 0x4

    .line 75
    .line 76
    add-long/2addr v3, v0

    .line 77
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    shl-int/lit8 v5, v5, 0x15

    .line 82
    .line 83
    xor-int/2addr v2, v5

    .line 84
    if-gez v2, :cond_4

    .line 85
    .line 86
    const v0, -0x1fc080

    .line 87
    .line 88
    .line 89
    xor-int/2addr v0, v2

    .line 90
    int-to-long v0, v0

    .line 91
    move-wide v2, v3

    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_4
    const-wide/16 v5, 0x5

    .line 95
    .line 96
    add-long/2addr v5, v0

    .line 97
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    int-to-long v3, v3

    .line 102
    int-to-long v9, v2

    .line 103
    const/16 v2, 0x1c

    .line 104
    .line 105
    shl-long v2, v3, v2

    .line 106
    .line 107
    xor-long/2addr v2, v9

    .line 108
    const-wide/16 v9, 0x0

    .line 109
    .line 110
    cmp-long v4, v2, v9

    .line 111
    .line 112
    if-ltz v4, :cond_5

    .line 113
    .line 114
    const-wide/32 v0, 0xfe03f80

    .line 115
    .line 116
    .line 117
    xor-long/2addr v0, v2

    .line 118
    goto :goto_0

    .line 119
    :cond_5
    const-wide/16 v11, 0x6

    .line 120
    .line 121
    add-long/2addr v11, v0

    .line 122
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    int-to-long v4, v4

    .line 127
    const/16 v6, 0x23

    .line 128
    .line 129
    shl-long/2addr v4, v6

    .line 130
    xor-long/2addr v2, v4

    .line 131
    cmp-long v4, v2, v9

    .line 132
    .line 133
    if-gez v4, :cond_6

    .line 134
    .line 135
    const-wide v0, -0x7f01fc080L

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    :goto_1
    xor-long/2addr v0, v2

    .line 141
    move-wide v2, v11

    .line 142
    goto :goto_3

    .line 143
    :cond_6
    const-wide/16 v4, 0x7

    .line 144
    .line 145
    add-long/2addr v4, v0

    .line 146
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    int-to-long v11, v6

    .line 151
    const/16 v6, 0x2a

    .line 152
    .line 153
    shl-long/2addr v11, v6

    .line 154
    xor-long/2addr v2, v11

    .line 155
    cmp-long v6, v2, v9

    .line 156
    .line 157
    if-ltz v6, :cond_7

    .line 158
    .line 159
    const-wide v0, 0x3f80fe03f80L

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    xor-long/2addr v0, v2

    .line 165
    :goto_2
    move-wide v2, v4

    .line 166
    goto :goto_3

    .line 167
    :cond_7
    const-wide/16 v11, 0x8

    .line 168
    .line 169
    add-long/2addr v11, v0

    .line 170
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    int-to-long v4, v4

    .line 175
    const/16 v6, 0x31

    .line 176
    .line 177
    shl-long/2addr v4, v6

    .line 178
    xor-long/2addr v2, v4

    .line 179
    cmp-long v4, v2, v9

    .line 180
    .line 181
    if-gez v4, :cond_8

    .line 182
    .line 183
    const-wide v0, -0x1fc07f01fc080L

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_8
    const-wide/16 v4, 0x9

    .line 190
    .line 191
    add-long/2addr v4, v0

    .line 192
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    int-to-long v11, v6

    .line 197
    const/16 v6, 0x38

    .line 198
    .line 199
    shl-long/2addr v11, v6

    .line 200
    xor-long/2addr v2, v11

    .line 201
    const-wide v11, 0xfe03f80fe03f80L

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    xor-long/2addr v2, v11

    .line 207
    cmp-long v6, v2, v9

    .line 208
    .line 209
    if-gez v6, :cond_9

    .line 210
    .line 211
    add-long/2addr v0, v7

    .line 212
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzhcz;->zza(J)B

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    int-to-long v4, v4

    .line 217
    cmp-long v6, v4, v9

    .line 218
    .line 219
    if-ltz v6, :cond_a

    .line 220
    .line 221
    move-wide v13, v0

    .line 222
    move-wide v0, v2

    .line 223
    move-wide v2, v13

    .line 224
    goto :goto_3

    .line 225
    :cond_9
    move-wide v0, v2

    .line 226
    goto :goto_2

    .line 227
    :goto_3
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 228
    .line 229
    return-wide v0

    .line 230
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzs()J

    .line 231
    .line 232
    .line 233
    move-result-wide v0

    .line 234
    return-wide v0
.end method

.method public final zzs()J
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    :goto_0
    const/16 v3, 0x40

    .line 5
    .line 6
    if-ge v0, v3, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zza()B

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    and-int/lit8 v4, v3, 0x7f

    .line 13
    .line 14
    int-to-long v4, v4

    .line 15
    shl-long/2addr v4, v0

    .line 16
    or-long/2addr v1, v4

    .line 17
    and-int/lit16 v3, v3, 0x80

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    return-wide v1

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zze()Lcom/google/android/gms/internal/ads/zzhag;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    throw v0
.end method

.method public final zzt()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzq()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final zzu()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzr()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyt;->zzG(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final zzv()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzr()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final zzw()Lcom/google/android/gms/internal/ads/zzgyl;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzj()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 10
    .line 11
    sub-long/2addr v1, v3

    .line 12
    int-to-long v10, v0

    .line 13
    cmp-long v5, v10, v1

    .line 14
    .line 15
    if-lez v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-array v0, v0, [B

    .line 19
    .line 20
    const-wide/16 v6, 0x0

    .line 21
    .line 22
    move-object v5, v0

    .line 23
    move-wide v8, v10

    .line 24
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzhcz;->zzo(J[BJJ)V

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 28
    .line 29
    add-long/2addr v1, v10

    .line 30
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 31
    .line 32
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyh;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyh;-><init>([B)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    :goto_0
    if-lez v0, :cond_3

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzJ()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-le v0, v1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-array v1, v0, [B

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzL([BII)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyh;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyh;-><init>([B)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 60
    .line 61
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_4
    if-gez v0, :cond_5

    .line 65
    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzf()Lcom/google/android/gms/internal/ads/zzhag;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    throw v0

    .line 71
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzj()Lcom/google/android/gms/internal/ads/zzhag;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    throw v0
.end method

.method public final zzx()Ljava/lang/String;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzj()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-lez v1, :cond_1

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 9
    .line 10
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 11
    .line 12
    sub-long/2addr v2, v4

    .line 13
    int-to-long v11, v1

    .line 14
    cmp-long v6, v11, v2

    .line 15
    .line 16
    if-lez v6, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-array v0, v1, [B

    .line 20
    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    move-object v6, v0

    .line 24
    move-wide v9, v11

    .line 25
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzhcz;->zzo(J[BJJ)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/String;

    .line 29
    .line 30
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhae;->zzb:Ljava/nio/charset/Charset;

    .line 31
    .line 32
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 33
    .line 34
    .line 35
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 36
    .line 37
    add-long/2addr v2, v11

    .line 38
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    :goto_0
    if-lez v1, :cond_3

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzJ()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-le v1, v2, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    new-array v2, v1, [B

    .line 51
    .line 52
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgyp;->zzL([BII)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/lang/String;

    .line 56
    .line 57
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhae;->zzb:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 64
    .line 65
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    new-array v2, v2, [J

    .line 69
    .line 70
    const-wide v3, 0x4736c395d0ece387L    # 1.1819747041595591E35

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    aput-wide v3, v2, v0

    .line 76
    .line 77
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0

    .line 85
    :cond_4
    if-gez v1, :cond_5

    .line 86
    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzf()Lcom/google/android/gms/internal/ads/zzhag;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    throw v0

    .line 92
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzj()Lcom/google/android/gms/internal/ads/zzhag;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    throw v0
.end method

.method public final zzy()Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzj()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-lez v1, :cond_1

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzo:J

    .line 9
    .line 10
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 11
    .line 12
    sub-long/2addr v2, v4

    .line 13
    int-to-long v6, v1

    .line 14
    cmp-long v8, v6, v2

    .line 15
    .line 16
    if-lez v8, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzn:J

    .line 20
    .line 21
    sub-long/2addr v4, v2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzg:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    long-to-int v2, v4

    .line 25
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhde;->zzg(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 30
    .line 31
    add-long/2addr v1, v6

    .line 32
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzm:J

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    :goto_0
    if-ltz v1, :cond_3

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyp;->zzJ()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-le v1, v2, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    new-array v2, v1, [B

    .line 45
    .line 46
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgyp;->zzL([BII)V

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhde;->zzh([BII)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 55
    .line 56
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    new-array v2, v2, [J

    .line 60
    .line 61
    const-wide v3, -0x344c366bc65d46efL    # -4.851860772639701E56

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    aput-wide v3, v2, v0

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0

    .line 76
    :cond_4
    if-gtz v1, :cond_5

    .line 77
    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzf()Lcom/google/android/gms/internal/ads/zzhag;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    throw v0

    .line 83
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzj()Lcom/google/android/gms/internal/ads/zzhag;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    throw v0
.end method

.method public final zzz(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzk:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzb()Lcom/google/android/gms/internal/ads/zzhag;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    throw p1
.end method
