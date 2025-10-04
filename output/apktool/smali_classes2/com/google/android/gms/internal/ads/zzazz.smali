.class public final Lcom/google/android/gms/internal/ads/zzazz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public static zza(JI)J
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-wide p0

    :cond_0
    mul-long v1, p0, p0

    shr-int/lit8 v3, p2, 0x1

    and-int/2addr p2, v0

    const-wide/32 v4, 0x4000ffff

    rem-long/2addr v1, v4

    if-nez p2, :cond_1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzazz;->zza(JI)J

    move-result-wide p0

    rem-long/2addr p0, v4

    return-wide p0

    :cond_1
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzazz;->zza(JI)J

    move-result-wide v0

    rem-long/2addr v0, v4

    mul-long v0, v0, p0

    rem-long/2addr v0, v4

    return-wide v0
.end method

.method public static zzb([Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    array-length v1, p0

    .line 3
    add-int/2addr p2, p1

    .line 4
    if-ge v1, p2, :cond_0

    .line 5
    .line 6
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 p1, 0x5

    .line 9
    new-array p1, p1, [J

    .line 10
    .line 11
    fill-array-data p1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array p1, v0, [J

    .line 27
    .line 28
    const-wide v0, -0x599ff47b12ed4ae1L    # -7.584927467533284E-124

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    aput-wide v0, p1, p2

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    :goto_0
    add-int/lit8 v2, p2, -0x1

    .line 50
    .line 51
    if-ge p1, v2, :cond_1

    .line 52
    .line 53
    aget-object v2, p0, p1

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 v2, 0x20

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/2addr p1, v0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    aget-object p0, p0, v2

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :array_0
    .array-data 8
        0x624adaf3039ae6adL    # 3.0929804124499954E165
        -0xc9c1a7a4d71dc32L    # -6.95576164675177E247
        0x619f7ba101ce738dL    # 1.7704870990838087E162
        -0x51530496218dd6e7L    # -7.459347369395976E-84
        -0x30578b73b304e491L    # -5.530715472700927E75
    .end array-data
.end method

.method public static zzc([Ljava/lang/String;IILjava/util/PriorityQueue;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    array-length v4, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x6

    .line 6
    if-ge v4, v2, :cond_0

    .line 7
    .line 8
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzazz;->zze([Ljava/lang/String;II)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzazz;->zzb([Ljava/lang/String;II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    move/from16 v0, p1

    .line 17
    .line 18
    move-wide v1, v2

    .line 19
    move-object v3, v5

    .line 20
    move-object/from16 v5, p3

    .line 21
    .line 22
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzazz;->zzd(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzazz;->zze([Ljava/lang/String;II)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzazz;->zzb([Ljava/lang/String;II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    const/4 v10, 0x6

    .line 35
    move/from16 v6, p1

    .line 36
    .line 37
    move-wide v7, v3

    .line 38
    move-object/from16 v11, p3

    .line 39
    .line 40
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzazz;->zzd(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :goto_0
    array-length v9, v0

    .line 45
    add-int/lit8 v5, v9, -0x5

    .line 46
    .line 47
    if-ge v1, v5, :cond_1

    .line 48
    .line 49
    add-int/lit8 v5, v1, -0x1

    .line 50
    .line 51
    aget-object v5, v0, v5

    .line 52
    .line 53
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzazv;->zza(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    add-int/lit8 v6, v1, 0x5

    .line 58
    .line 59
    aget-object v6, v0, v6

    .line 60
    .line 61
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzazv;->zza(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    int-to-long v7, v5

    .line 66
    const-wide/32 v10, 0x4000ffff

    .line 67
    .line 68
    .line 69
    add-long/2addr v3, v10

    .line 70
    int-to-long v5, v6

    .line 71
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzazz;->zzb([Ljava/lang/String;II)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    const-wide/32 v13, 0x7fffffff

    .line 76
    .line 77
    .line 78
    add-long/2addr v5, v13

    .line 79
    add-long/2addr v7, v13

    .line 80
    const-wide/32 v13, 0x1001fff

    .line 81
    .line 82
    .line 83
    const/4 v15, 0x5

    .line 84
    invoke-static {v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzazz;->zza(JI)J

    .line 85
    .line 86
    .line 87
    move-result-wide v15

    .line 88
    rem-long/2addr v7, v10

    .line 89
    mul-long v7, v7, v15

    .line 90
    .line 91
    rem-long/2addr v7, v10

    .line 92
    sub-long/2addr v3, v7

    .line 93
    rem-long/2addr v3, v10

    .line 94
    mul-long v3, v3, v13

    .line 95
    .line 96
    rem-long/2addr v3, v10

    .line 97
    rem-long/2addr v5, v10

    .line 98
    add-long/2addr v5, v3

    .line 99
    rem-long v3, v5, v10

    .line 100
    .line 101
    move/from16 v5, p1

    .line 102
    .line 103
    move-wide v6, v3

    .line 104
    move-object v8, v12

    .line 105
    move-object/from16 v10, p3

    .line 106
    .line 107
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzazz;->zzd(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    return-void
.end method

.method public static zzd(IJLjava/lang/String;ILjava/util/PriorityQueue;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazy;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzazy;-><init>(JLjava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-ne p1, p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/zzazy;

    .line 17
    .line 18
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzazy;->zzc:I

    .line 19
    .line 20
    iget p2, v0, Lcom/google/android/gms/internal/ads/zzazy;->zzc:I

    .line 21
    .line 22
    if-gt p1, p2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/gms/internal/ads/zzazy;

    .line 29
    .line 30
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzazy;->zza:J

    .line 31
    .line 32
    iget-wide p3, v0, Lcom/google/android/gms/internal/ads/zzazy;->zza:J

    .line 33
    .line 34
    cmp-long v1, p1, p3

    .line 35
    .line 36
    if-gtz v1, :cond_2

    .line 37
    .line 38
    :cond_0
    invoke-virtual {p5, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p5, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-le p1, p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method private static zze([Ljava/lang/String;II)J
    .locals 8

    .line 1
    const/4 p1, 0x0

    .line 2
    aget-object p1, p0, p1

    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazv;->zza(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    int-to-long v0, p1

    .line 9
    const-wide/32 v2, 0x7fffffff

    .line 10
    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    const-wide/32 v4, 0x4000ffff

    .line 14
    .line 15
    .line 16
    rem-long/2addr v0, v4

    .line 17
    const/4 p1, 0x1

    .line 18
    :goto_0
    if-ge p1, p2, :cond_0

    .line 19
    .line 20
    const-wide/32 v6, 0x1001fff

    .line 21
    .line 22
    .line 23
    mul-long v0, v0, v6

    .line 24
    .line 25
    rem-long/2addr v0, v4

    .line 26
    aget-object v6, p0, p1

    .line 27
    .line 28
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzazv;->zza(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    int-to-long v6, v6

    .line 33
    add-long/2addr v6, v2

    .line 34
    rem-long/2addr v6, v4

    .line 35
    add-long/2addr v6, v0

    .line 36
    rem-long v0, v6, v4

    .line 37
    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-wide v0
.end method
