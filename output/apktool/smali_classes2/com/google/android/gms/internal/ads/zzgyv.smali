.class abstract Lcom/google/android/gms/internal/ads/zzgyv;
.super Lcom/google/android/gms/internal/ads/zzgza;
.source "SourceFile"


# instance fields
.field final zza:[B

.field final zzb:I

.field zzc:I

.field zzd:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgza;-><init>(Lcom/google/android/gms/internal/ads/zzgyz;)V

    .line 3
    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x14

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    new-array p1, p1, [B

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 16
    .line 17
    array-length p1, p1

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzb:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    new-array v1, v1, [J

    .line 27
    .line 28
    fill-array-data v1, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x6e12f3cda44abff5L    # 1.7126950263291392E222
        -0x6b3e98e89b3c5076L
        -0x4db8acfe8b0ef8b6L
        0x2c277464d49a109dL    # 5.490357187689981E-96
    .end array-data
.end method


# virtual methods
.method public final zzb()I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0xe

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :array_0
    .array-data 8
        0x36b53076cc0d930bL    # 3.711568918259033E-45
        0x5cff0be54b66af0eL    # 9.242941373086809E139
        -0x1c15b10f0a04215eL    # -2.0333932179017747E173
        0x77a3a08848a12831L    # 2.0251716357205172E268
        0x4bfcc3d6f5166c30L    # 1.1285051469021318E58
        -0x35cb22cc90b351e9L    # -3.0492866740531855E49
        -0x13ef096107dadf38L    # -3.5691838268109235E212
        -0x56fec584898a1e8dL    # -3.581935197374335E-111
        0x69c10e78cdbd7216L    # 2.611186067524388E201
        -0x756d4e256fb6eb86L    # -9.727095487887022E-258
        0x7c7ae1bf26ed0fc2L    # 4.1915489011677707E291
        -0x8387adaab26317aL    # -9.707453646943946E268
        -0x6b9540453eaf8916L
        -0x19f53a4a02071d7bL    # -3.5549475139216545E183
    .end array-data
.end method

.method public final zzc(B)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 8
    .line 9
    aput-byte p1, v1, v0

    .line 10
    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 16
    .line 17
    return-void
.end method

.method public final zzd(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 6
    .line 7
    and-int/lit16 v2, p1, 0xff

    .line 8
    .line 9
    int-to-byte v2, v2

    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 11
    .line 12
    aput-byte v2, v3, v0

    .line 13
    .line 14
    add-int/lit8 v2, v0, 0x2

    .line 15
    .line 16
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 17
    .line 18
    shr-int/lit8 v4, p1, 0x8

    .line 19
    .line 20
    and-int/lit16 v4, v4, 0xff

    .line 21
    .line 22
    int-to-byte v4, v4

    .line 23
    aput-byte v4, v3, v1

    .line 24
    .line 25
    add-int/lit8 v1, v0, 0x3

    .line 26
    .line 27
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 28
    .line 29
    shr-int/lit8 v4, p1, 0x10

    .line 30
    .line 31
    and-int/lit16 v4, v4, 0xff

    .line 32
    .line 33
    int-to-byte v4, v4

    .line 34
    aput-byte v4, v3, v2

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x4

    .line 37
    .line 38
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 39
    .line 40
    shr-int/lit8 p1, p1, 0x18

    .line 41
    .line 42
    and-int/lit16 p1, p1, 0xff

    .line 43
    .line 44
    int-to-byte p1, p1

    .line 45
    aput-byte p1, v3, v1

    .line 46
    .line 47
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 48
    .line 49
    add-int/lit8 p1, p1, 0x4

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 52
    .line 53
    return-void
.end method

.method public final zze(J)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 6
    .line 7
    const-wide/16 v2, 0xff

    .line 8
    .line 9
    and-long v4, p1, v2

    .line 10
    .line 11
    long-to-int v5, v4

    .line 12
    int-to-byte v4, v5

    .line 13
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 14
    .line 15
    aput-byte v4, v5, v0

    .line 16
    .line 17
    add-int/lit8 v4, v0, 0x2

    .line 18
    .line 19
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 20
    .line 21
    const/16 v6, 0x8

    .line 22
    .line 23
    shr-long v7, p1, v6

    .line 24
    .line 25
    and-long/2addr v7, v2

    .line 26
    long-to-int v8, v7

    .line 27
    int-to-byte v7, v8

    .line 28
    aput-byte v7, v5, v1

    .line 29
    .line 30
    add-int/lit8 v1, v0, 0x3

    .line 31
    .line 32
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 33
    .line 34
    const/16 v7, 0x10

    .line 35
    .line 36
    shr-long v7, p1, v7

    .line 37
    .line 38
    and-long/2addr v7, v2

    .line 39
    long-to-int v8, v7

    .line 40
    int-to-byte v7, v8

    .line 41
    aput-byte v7, v5, v4

    .line 42
    .line 43
    add-int/lit8 v4, v0, 0x4

    .line 44
    .line 45
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 46
    .line 47
    const/16 v7, 0x18

    .line 48
    .line 49
    shr-long v7, p1, v7

    .line 50
    .line 51
    and-long/2addr v2, v7

    .line 52
    long-to-int v3, v2

    .line 53
    int-to-byte v2, v3

    .line 54
    aput-byte v2, v5, v1

    .line 55
    .line 56
    add-int/lit8 v1, v0, 0x5

    .line 57
    .line 58
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 59
    .line 60
    const/16 v2, 0x20

    .line 61
    .line 62
    shr-long v2, p1, v2

    .line 63
    .line 64
    long-to-int v3, v2

    .line 65
    and-int/lit16 v2, v3, 0xff

    .line 66
    .line 67
    int-to-byte v2, v2

    .line 68
    aput-byte v2, v5, v4

    .line 69
    .line 70
    add-int/lit8 v2, v0, 0x6

    .line 71
    .line 72
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 73
    .line 74
    const/16 v3, 0x28

    .line 75
    .line 76
    shr-long v3, p1, v3

    .line 77
    .line 78
    long-to-int v4, v3

    .line 79
    and-int/lit16 v3, v4, 0xff

    .line 80
    .line 81
    int-to-byte v3, v3

    .line 82
    aput-byte v3, v5, v1

    .line 83
    .line 84
    add-int/lit8 v1, v0, 0x7

    .line 85
    .line 86
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 87
    .line 88
    const/16 v3, 0x30

    .line 89
    .line 90
    shr-long v3, p1, v3

    .line 91
    .line 92
    long-to-int v4, v3

    .line 93
    and-int/lit16 v3, v4, 0xff

    .line 94
    .line 95
    int-to-byte v3, v3

    .line 96
    aput-byte v3, v5, v2

    .line 97
    .line 98
    add-int/2addr v0, v6

    .line 99
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 100
    .line 101
    const/16 v0, 0x38

    .line 102
    .line 103
    shr-long/2addr p1, v0

    .line 104
    long-to-int p2, p1

    .line 105
    and-int/lit16 p1, p2, 0xff

    .line 106
    .line 107
    int-to-byte p1, p1

    .line 108
    aput-byte p1, v5, v1

    .line 109
    .line 110
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 111
    .line 112
    add-int/2addr p1, v6

    .line 113
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 114
    .line 115
    return-void
.end method

.method public final zzf(I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgza;->zzE()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 8
    .line 9
    int-to-long v0, v0

    .line 10
    :goto_0
    and-int/lit8 v2, p1, -0x80

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 15
    .line 16
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 17
    .line 18
    add-int/lit8 v4, v3, 0x1

    .line 19
    .line 20
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 21
    .line 22
    int-to-long v3, v3

    .line 23
    int-to-byte p1, p1

    .line 24
    invoke-static {v2, v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzhcz;->zzq([BJB)V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 28
    .line 29
    int-to-long v2, p1

    .line 30
    sub-long/2addr v2, v0

    .line 31
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 32
    .line 33
    long-to-int v0, v2

    .line 34
    add-int/2addr p1, v0

    .line 35
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 39
    .line 40
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 41
    .line 42
    add-int/lit8 v4, v3, 0x1

    .line 43
    .line 44
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 45
    .line 46
    int-to-long v3, v3

    .line 47
    or-int/lit16 v5, p1, 0x80

    .line 48
    .line 49
    and-int/lit16 v5, v5, 0xff

    .line 50
    .line 51
    int-to-byte v5, v5

    .line 52
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhcz;->zzq([BJB)V

    .line 53
    .line 54
    .line 55
    ushr-int/lit8 p1, p1, 0x7

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 63
    .line 64
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 65
    .line 66
    add-int/lit8 v2, v1, 0x1

    .line 67
    .line 68
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 69
    .line 70
    int-to-byte p1, p1

    .line 71
    aput-byte p1, v0, v1

    .line 72
    .line 73
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 74
    .line 75
    add-int/lit8 p1, p1, 0x1

    .line 76
    .line 77
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 81
    .line 82
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 83
    .line 84
    add-int/lit8 v2, v1, 0x1

    .line 85
    .line 86
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 87
    .line 88
    or-int/lit16 v2, p1, 0x80

    .line 89
    .line 90
    and-int/lit16 v2, v2, 0xff

    .line 91
    .line 92
    int-to-byte v2, v2

    .line 93
    aput-byte v2, v0, v1

    .line 94
    .line 95
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 96
    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 100
    .line 101
    ushr-int/lit8 p1, p1, 0x7

    .line 102
    .line 103
    goto :goto_1
.end method

.method public final zzg(J)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgza;->zzE()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const-wide/16 v4, -0x80

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 13
    .line 14
    int-to-long v6, v0

    .line 15
    :goto_0
    and-long v8, p1, v4

    .line 16
    .line 17
    cmp-long v0, v8, v2

    .line 18
    .line 19
    long-to-int v8, p1

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 23
    .line 24
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 25
    .line 26
    add-int/lit8 v0, p2, 0x1

    .line 27
    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 29
    .line 30
    int-to-long v0, p2

    .line 31
    int-to-byte p2, v8

    .line 32
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhcz;->zzq([BJB)V

    .line 33
    .line 34
    .line 35
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 36
    .line 37
    int-to-long p1, p1

    .line 38
    sub-long/2addr p1, v6

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 40
    .line 41
    long-to-int p2, p1

    .line 42
    add-int/2addr v0, p2

    .line 43
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 47
    .line 48
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 49
    .line 50
    add-int/lit8 v10, v9, 0x1

    .line 51
    .line 52
    iput v10, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 53
    .line 54
    int-to-long v9, v9

    .line 55
    or-int/lit16 v8, v8, 0x80

    .line 56
    .line 57
    and-int/lit16 v8, v8, 0xff

    .line 58
    .line 59
    int-to-byte v8, v8

    .line 60
    invoke-static {v0, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhcz;->zzq([BJB)V

    .line 61
    .line 62
    .line 63
    ushr-long/2addr p1, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    and-long v6, p1, v4

    .line 66
    .line 67
    cmp-long v0, v6, v2

    .line 68
    .line 69
    long-to-int v6, p1

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 73
    .line 74
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 75
    .line 76
    add-int/lit8 v0, p2, 0x1

    .line 77
    .line 78
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 79
    .line 80
    int-to-byte v0, v6

    .line 81
    aput-byte v0, p1, p2

    .line 82
    .line 83
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 84
    .line 85
    add-int/lit8 p1, p1, 0x1

    .line 86
    .line 87
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:[B

    .line 91
    .line 92
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 93
    .line 94
    add-int/lit8 v8, v7, 0x1

    .line 95
    .line 96
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzc:I

    .line 97
    .line 98
    or-int/lit16 v6, v6, 0x80

    .line 99
    .line 100
    and-int/lit16 v6, v6, 0xff

    .line 101
    .line 102
    int-to-byte v6, v6

    .line 103
    aput-byte v6, v0, v7

    .line 104
    .line 105
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 106
    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zzd:I

    .line 110
    .line 111
    ushr-long/2addr p1, v1

    .line 112
    goto :goto_1
.end method
