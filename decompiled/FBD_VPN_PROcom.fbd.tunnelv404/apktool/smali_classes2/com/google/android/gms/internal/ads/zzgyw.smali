.class final Lcom/google/android/gms/internal/ads/zzgyw;
.super Lcom/google/android/gms/internal/ads/zzgza;
.source "SourceFile"


# instance fields
.field private final zza:[B

.field private final zzb:I

.field private zzc:I


# direct methods
.method public constructor <init>([BII)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgza;-><init>(Lcom/google/android/gms/internal/ads/zzgyz;)V

    .line 3
    .line 4
    .line 5
    array-length p2, p1

    .line 6
    sub-int v0, p2, p3

    .line 7
    .line 8
    or-int/2addr v0, p3

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 13
    .line 14
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 15
    .line 16
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const/4 v2, 0x3

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p2, v2, v1

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    aput-object v0, v2, p2

    .line 40
    .line 41
    const/4 p2, 0x2

    .line 42
    aput-object p3, v2, p2

    .line 43
    .line 44
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/16 p3, 0x9

    .line 47
    .line 48
    new-array p3, p3, [J

    .line 49
    .line 50
    fill-array-data p3, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x2f2c5a62d3fc1d0fL    # -2.3295580306391405E81
        0x5cb795c1f4aa8aa5L    # 4.3884760603435555E138
        0x730803855d91f047L    # 1.311736271396803E246
        0x42ea0b816a80a0fL
        0xaaf44219afae291L
        0x151cc6fdd73b3f5cL    # 5.602130213595833E-207
        -0x4979a366dd438053L    # -4.896161283762648E-46
        -0x2860fec5edb95775L    # -1.1930185744699107E114
        0x70f10a42d797010dL    # 1.0835982855059652E236
    .end array-data
.end method


# virtual methods
.method public final zzH()V
    .locals 0

    return-void
.end method

.method public final zzI(B)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 3
    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 5
    .line 6
    add-int/lit8 v3, v2, 0x1

    .line 7
    .line 8
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 9
    .line 10
    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyx;

    .line 15
    .line 16
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:I

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x3

    .line 33
    new-array v5, v5, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    aput-object v2, v5, v6

    .line 37
    .line 38
    aput-object v3, v5, v0

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    aput-object v4, v5, v0

    .line 42
    .line 43
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v2, 0x5

    .line 46
    new-array v2, v2, [J

    .line 47
    .line 48
    fill-array-data v2, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x3b11743235c8ff10L    # -1.1539993651002818E24
        -0x672feb51dcd208efL    # -3.609191280997177E-189
        0xa122f10b23462cfL
        -0x371fc82f1d67375bL    # -1.1302318088558814E43
        0x5d885acdfbc145c0L    # 3.712366541385328E142
    .end array-data
.end method

.method public final zzJ(IZ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgyw;->zzI(B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzK(ILcom/google/android/gms/internal/ads/zzgyl;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgyl;->zzd()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzo(Lcom/google/android/gms/internal/ads/zzgya;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zza([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgyw;->zze([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzb()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zze([BII)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgyx;

    .line 16
    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const/4 v2, 0x3

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object v0, v2, v3

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object v1, v2, v0

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    aput-object p3, v2, v0

    .line 44
    .line 45
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v0, 0x5

    .line 48
    new-array v0, v0, [J

    .line 49
    .line 50
    fill-array-data v0, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p2

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x3fe8ce0d3749eac6L    # -5.798777710069141
        0x53bf24ad48ffd6cdL    # 2.598500746091941E95
        0x386ff539c0e19830L    # 7.5132691209988675E-37
        0x7951514bbbffd4eL
        -0x7d205933afad02d6L    # -7.743535795623221E-295
    .end array-data
.end method

.method public final zzh(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgyw;->zzi(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzi(I)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 5
    .line 6
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 7
    .line 8
    add-int/lit8 v5, v4, 0x1

    .line 9
    .line 10
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 11
    .line 12
    and-int/lit16 v6, p1, 0xff

    .line 13
    .line 14
    int-to-byte v6, v6

    .line 15
    aput-byte v6, v3, v4

    .line 16
    .line 17
    add-int/lit8 v6, v4, 0x2

    .line 18
    .line 19
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 20
    .line 21
    shr-int/lit8 v7, p1, 0x8

    .line 22
    .line 23
    and-int/lit16 v7, v7, 0xff

    .line 24
    .line 25
    int-to-byte v7, v7

    .line 26
    aput-byte v7, v3, v5

    .line 27
    .line 28
    add-int/lit8 v5, v4, 0x3

    .line 29
    .line 30
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 31
    .line 32
    shr-int/lit8 v7, p1, 0x10

    .line 33
    .line 34
    and-int/lit16 v7, v7, 0xff

    .line 35
    .line 36
    int-to-byte v7, v7

    .line 37
    aput-byte v7, v3, v6

    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x4

    .line 40
    .line 41
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 42
    .line 43
    shr-int/lit8 p1, p1, 0x18

    .line 44
    .line 45
    and-int/lit16 p1, p1, 0xff

    .line 46
    .line 47
    int-to-byte p1, p1

    .line 48
    aput-byte p1, v3, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgyx;

    .line 53
    .line 54
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 55
    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:I

    .line 61
    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    aput-object v4, v0, v7

    .line 74
    .line 75
    aput-object v5, v0, v2

    .line 76
    .line 77
    aput-object v6, v0, v1

    .line 78
    .line 79
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    const/4 v2, 0x5

    .line 82
    new-array v2, v2, [J

    .line 83
    .line 84
    fill-array-data v2, :array_0

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-direct {v3, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v3

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        0x17683da6731a8698L    # 6.485749297875532E-196
        0x149f61ff012c42b5L    # 2.386462851796887E-209
        0x3705d427279f9018L    # 1.22354221014686E-43
        -0x1474d3f60d3933f4L    # -1.1166293256796702E210
        -0x2c54e14c7f003f22L    # -1.1314025672881385E95
    .end array-data
.end method

.method public final zzj(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgyw;->zzk(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzk(J)V
    .locals 11

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 6
    .line 7
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 8
    .line 9
    add-int/lit8 v6, v5, 0x1

    .line 10
    .line 11
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 12
    .line 13
    long-to-int v7, p1

    .line 14
    and-int/lit16 v7, v7, 0xff

    .line 15
    .line 16
    int-to-byte v7, v7

    .line 17
    aput-byte v7, v4, v5

    .line 18
    .line 19
    add-int/lit8 v7, v5, 0x2

    .line 20
    .line 21
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 22
    .line 23
    const/16 v8, 0x8

    .line 24
    .line 25
    shr-long v9, p1, v8

    .line 26
    .line 27
    long-to-int v10, v9

    .line 28
    and-int/lit16 v9, v10, 0xff

    .line 29
    .line 30
    int-to-byte v9, v9

    .line 31
    aput-byte v9, v4, v6

    .line 32
    .line 33
    add-int/lit8 v6, v5, 0x3

    .line 34
    .line 35
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 36
    .line 37
    const/16 v9, 0x10

    .line 38
    .line 39
    shr-long v9, p1, v9

    .line 40
    .line 41
    long-to-int v10, v9

    .line 42
    and-int/lit16 v9, v10, 0xff

    .line 43
    .line 44
    int-to-byte v9, v9

    .line 45
    aput-byte v9, v4, v7

    .line 46
    .line 47
    add-int/lit8 v7, v5, 0x4

    .line 48
    .line 49
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 50
    .line 51
    const/16 v9, 0x18

    .line 52
    .line 53
    shr-long v9, p1, v9

    .line 54
    .line 55
    long-to-int v10, v9

    .line 56
    and-int/lit16 v9, v10, 0xff

    .line 57
    .line 58
    int-to-byte v9, v9

    .line 59
    aput-byte v9, v4, v6

    .line 60
    .line 61
    add-int/lit8 v6, v5, 0x5

    .line 62
    .line 63
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 64
    .line 65
    const/16 v9, 0x20

    .line 66
    .line 67
    shr-long v9, p1, v9

    .line 68
    .line 69
    long-to-int v10, v9

    .line 70
    and-int/lit16 v9, v10, 0xff

    .line 71
    .line 72
    int-to-byte v9, v9

    .line 73
    aput-byte v9, v4, v7

    .line 74
    .line 75
    add-int/lit8 v7, v5, 0x6

    .line 76
    .line 77
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 78
    .line 79
    const/16 v9, 0x28

    .line 80
    .line 81
    shr-long v9, p1, v9

    .line 82
    .line 83
    long-to-int v10, v9

    .line 84
    and-int/lit16 v9, v10, 0xff

    .line 85
    .line 86
    int-to-byte v9, v9

    .line 87
    aput-byte v9, v4, v6

    .line 88
    .line 89
    add-int/lit8 v6, v5, 0x7

    .line 90
    .line 91
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 92
    .line 93
    const/16 v9, 0x30

    .line 94
    .line 95
    shr-long v9, p1, v9

    .line 96
    .line 97
    long-to-int v10, v9

    .line 98
    and-int/lit16 v9, v10, 0xff

    .line 99
    .line 100
    int-to-byte v9, v9

    .line 101
    aput-byte v9, v4, v7

    .line 102
    .line 103
    add-int/2addr v5, v8

    .line 104
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 105
    .line 106
    const/16 v5, 0x38

    .line 107
    .line 108
    shr-long/2addr p1, v5

    .line 109
    long-to-int p2, p1

    .line 110
    and-int/lit16 p1, p2, 0xff

    .line 111
    .line 112
    int-to-byte p1, p1

    .line 113
    aput-byte p1, v4, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    return-void

    .line 116
    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgyx;

    .line 118
    .line 119
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:I

    .line 126
    .line 127
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    new-array v1, v1, [Ljava/lang/Object;

    .line 136
    .line 137
    const/4 v7, 0x0

    .line 138
    aput-object v4, v1, v7

    .line 139
    .line 140
    aput-object v5, v1, v3

    .line 141
    .line 142
    aput-object v6, v1, v2

    .line 143
    .line 144
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v0, v0, [J

    .line 147
    .line 148
    fill-array-data v0, :array_0

    .line 149
    .line 150
    .line 151
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw p2

    .line 166
    nop

    .line 167
    :array_0
    .array-data 8
        -0x6d7033c36eb5d8e2L
        0x6ed5eef174bf4511L    # 8.118619104938995E225
        -0x7e034d59d22ac7bbL
        0x36349e363eebf5b2L    # 1.4107418492318682E-47
        0x799018bf754a58ffL    # 3.566745306760269E277
    .end array-data
.end method

.method public final zzl(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgyw;->zzm(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzm(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzu(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzn(ILcom/google/android/gms/internal/ads/zzhbe;Lcom/google/android/gms/internal/ads/zzhby;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 6
    .line 7
    .line 8
    move-object p1, p2

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxt;

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzgxt;->zzat(Lcom/google/android/gms/internal/ads/zzhby;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgza;->zze:Lcom/google/android/gms/internal/ads/zzgzb;

    .line 19
    .line 20
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzhby;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzb;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final zzo(ILjava/lang/String;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgyw;->zzp(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzp(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int/lit8 v1, v1, 0x3

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgza;->zzz(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgza;->zzz(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v2, v1, :cond_0

    .line 22
    .line 23
    add-int v1, v0, v2

    .line 24
    .line 25
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 28
    .line 29
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:I

    .line 30
    .line 31
    sub-int/2addr v4, v1

    .line 32
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzhde;->zzd(Ljava/lang/String;[BII)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 37
    .line 38
    sub-int v3, v1, v0

    .line 39
    .line 40
    sub-int/2addr v3, v2

    .line 41
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 42
    .line 43
    .line 44
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhde;->zze(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 59
    .line 60
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 61
    .line 62
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:I

    .line 63
    .line 64
    sub-int/2addr v3, v2

    .line 65
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhde;->zzd(Ljava/lang/String;[BII)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhdd; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    return-void

    .line 72
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyx;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 79
    .line 80
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgza;->zzD(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhdd;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final zzq(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzr(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzs(I)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    and-int/lit8 v1, p1, -0x80

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 7
    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    aput-byte p1, v1, v2

    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 21
    .line 22
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 23
    .line 24
    add-int/lit8 v3, v2, 0x1

    .line 25
    .line 26
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 27
    .line 28
    or-int/lit16 v3, p1, 0x80

    .line 29
    .line 30
    and-int/lit16 v3, v3, 0xff

    .line 31
    .line 32
    int-to-byte v3, v3

    .line 33
    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    ushr-int/lit8 p1, p1, 0x7

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyx;

    .line 39
    .line 40
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:I

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v5, 0x3

    .line 57
    new-array v5, v5, [Ljava/lang/Object;

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    aput-object v2, v5, v6

    .line 61
    .line 62
    aput-object v3, v5, v0

    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    aput-object v4, v5, v0

    .line 66
    .line 67
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v2, 0x5

    .line 70
    new-array v2, v2, [J

    .line 71
    .line 72
    fill-array-data v2, :array_0

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        0x546c3ef59b68ebb5L    # 4.826636106643228E98
        -0x5a238a176449c04eL
        -0x12a61c222df44814L    # -5.712032310104108E218
        -0x3e5dde0dc9a415a4L    # -1.521072911795224E8
        0x4a1b4786822b4251L    # 9.967220547959234E48
    .end array-data
.end method

.method public final zzt(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzs(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgyw;->zzu(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzu(J)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgza;->zzE()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x7

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const-wide/16 v5, -0x80

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:I

    .line 14
    .line 15
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 16
    .line 17
    sub-int/2addr v1, v7

    .line 18
    const/16 v7, 0xa

    .line 19
    .line 20
    if-lt v1, v7, :cond_1

    .line 21
    .line 22
    :goto_0
    and-long v7, p1, v5

    .line 23
    .line 24
    cmp-long v1, v7, v3

    .line 25
    .line 26
    long-to-int v7, p1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 30
    .line 31
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 32
    .line 33
    add-int/2addr v0, p2

    .line 34
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 35
    .line 36
    int-to-long v0, p2

    .line 37
    int-to-byte p2, v7

    .line 38
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhcz;->zzq([BJB)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 43
    .line 44
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 45
    .line 46
    add-int/lit8 v9, v8, 0x1

    .line 47
    .line 48
    iput v9, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 49
    .line 50
    int-to-long v8, v8

    .line 51
    or-int/lit16 v7, v7, 0x80

    .line 52
    .line 53
    and-int/lit16 v7, v7, 0xff

    .line 54
    .line 55
    int-to-byte v7, v7

    .line 56
    invoke-static {v1, v8, v9, v7}, Lcom/google/android/gms/internal/ads/zzhcz;->zzq([BJB)V

    .line 57
    .line 58
    .line 59
    ushr-long/2addr p1, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    :goto_1
    and-long v7, p1, v5

    .line 62
    .line 63
    cmp-long v1, v7, v3

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 68
    .line 69
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 70
    .line 71
    add-int/lit8 v3, v2, 0x1

    .line 72
    .line 73
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 74
    .line 75
    long-to-int p2, p1

    .line 76
    int-to-byte p1, p2

    .line 77
    aput-byte p1, v1, v2

    .line 78
    .line 79
    return-void

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:[B

    .line 83
    .line 84
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 85
    .line 86
    add-int/lit8 v8, v7, 0x1

    .line 87
    .line 88
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 89
    .line 90
    long-to-int v8, p1

    .line 91
    or-int/lit16 v8, v8, 0x80

    .line 92
    .line 93
    and-int/lit16 v8, v8, 0xff

    .line 94
    .line 95
    int-to-byte v8, v8

    .line 96
    aput-byte v8, v1, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    ushr-long/2addr p1, v2

    .line 99
    goto :goto_1

    .line 100
    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgyx;

    .line 101
    .line 102
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzc:I

    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:I

    .line 109
    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const/4 v4, 0x3

    .line 119
    new-array v4, v4, [Ljava/lang/Object;

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    aput-object v1, v4, v5

    .line 123
    .line 124
    aput-object v2, v4, v0

    .line 125
    .line 126
    const/4 v0, 0x2

    .line 127
    aput-object v3, v4, v0

    .line 128
    .line 129
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    const/4 v1, 0x5

    .line 132
    new-array v1, v1, [J

    .line 133
    .line 134
    fill-array-data v1, :array_0

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw p2

    .line 152
    nop

    .line 153
    :array_0
    .array-data 8
        0x3054d2ab34693f05L    # 7.193211561870728E-76
        0x4c469d114945c9c2L    # 2.838950453364246E59
        0x3c64911d100f0415L    # 8.919449255596424E-18
        0x7575c8ab7e955136L    # 6.541709863261129E257
        -0x37ba396602147f35L    # -1.4819832840065169E40
    .end array-data
.end method
