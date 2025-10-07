.class final Lcom/google/android/gms/internal/measurement/zzjg;
.super Lcom/google/android/gms/internal/measurement/zzjj;
.source "SourceFile"


# instance fields
.field private final zzb:[B

.field private final zzc:I

.field private zzd:I


# direct methods
.method public constructor <init>([BII)V
    .locals 4

    .line 1
    const/4 p2, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjj;-><init>(Lcom/google/android/gms/internal/measurement/zzji;)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    sub-int v2, v1, p3

    .line 11
    .line 12
    or-int/2addr v2, p3

    .line 13
    if-ltz v2, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 18
    .line 19
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const/4 v3, 0x3

    .line 37
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v1, v3, v0

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    aput-object v2, v3, v0

    .line 43
    .line 44
    aput-object p3, v3, p2

    .line 45
    .line 46
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/16 p3, 0x9

    .line 49
    .line 50
    new-array p3, p3, [J

    .line 51
    .line 52
    fill-array-data p3, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 71
    .line 72
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array p2, p2, [J

    .line 75
    .line 76
    fill-array-data p2, :array_1

    .line 77
    .line 78
    .line 79
    invoke-direct {p3, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x3ef6d5b21acda49bL    # -206153.73691245462
        -0x6e7b108c2d25d556L
        -0x744cf7456b21d385L    # -2.596186699361245E-252
        -0x54fc3adbbe141038L
        -0x4ba6de91078b175dL    # -1.601414193069192E-56
        0x7763b3be688b918fL    # 1.2705718311630994E267
        -0x191f5d42f1abcd09L    # -3.61916451002235E187
        -0x343b1bbc4f418862L    # -1.0245239210443416E57
        0x5193cd5894da9eceL    # 9.617246894110454E84
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :array_1
    .array-data 8
        0x45110653205c2a4L    # 7.003999706651764E-288
        0x5adffff9d4cb8fffL    # 5.545323076635669E129
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzb(B)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 3
    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 5
    .line 6
    add-int/lit8 v3, v2, 0x1

    .line 7
    .line 8
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjh;

    .line 15
    .line 16
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:I

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
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzjh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x6fabbf86fda22a52L    # -5.217806234907526E-230
        -0x17e527685dc21aafL    # -3.062089291623101E193
        -0x3a168e402078fb9eL    # -6.299711966800996E28
        0x7b85390f6d1b3e07L    # 1.009881558661222E287
        0x49f867ebfc1b7be7L    # 2.2293329988816596E48
    .end array-data
.end method

.method public final zzc([BII)V
    .locals 4

    .line 1
    const/4 p2, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 5
    .line 6
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 10
    .line 11
    add-int/2addr p1, p3

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjh;

    .line 17
    .line 18
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:I

    .line 25
    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    const/4 v3, 0x3

    .line 35
    new-array v3, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object v1, v3, p2

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    aput-object v2, v3, p2

    .line 41
    .line 42
    const/4 p2, 0x2

    .line 43
    aput-object p3, v3, p2

    .line 44
    .line 45
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 p3, 0x5

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
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzjh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x4ce8c6349c689b37L    # -1.4114673591727338E-62
        -0x620596fb1593fce0L
        0xab77f67c6ade283L
        -0x4ee0460a73cb565eL    # -4.489126937284113E-72
        0x4463de9f234a007eL    # 2.9322377327915303E21
    .end array-data
.end method

.method public final zzd(IZ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjg;->zzb(B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zze(ILcom/google/android/gms/internal/measurement/zzjb;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzh(Lcom/google/android/gms/internal/measurement/zzir;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzf(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjg;->zzg(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzg(I)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 5
    .line 6
    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 7
    .line 8
    add-int/lit8 v5, v4, 0x1

    .line 9
    .line 10
    iput v5, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    iput v6, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    iput v5, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    iput v4, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzjh;

    .line 53
    .line 54
    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 55
    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget v5, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:I

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
    invoke-direct {v3, v0, p1}, Lcom/google/android/gms/internal/measurement/zzjh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v3

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        0xfd6e57a5e04eb2dL
        -0x4b5fcf6ac167eb71L    # -3.3013508152933424E-55
        0x562936d06384b38L
        -0x39b7adbba49220dcL    # -3.8538726197311044E30
        0x65b42fa7fe9a89dfL    # 8.376277334214487E181
    .end array-data
.end method

.method public final zzh(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjg;->zzi(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzi(J)V
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
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 6
    .line 7
    iget v5, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 8
    .line 9
    add-int/lit8 v6, v5, 0x1

    .line 10
    .line 11
    iput v6, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    iput v6, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    iput v6, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    iput v6, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    iput v5, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzjh;

    .line 118
    .line 119
    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget v5, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:I

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
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzjh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw p2

    .line 166
    nop

    .line 167
    :array_0
    .array-data 8
        0x3bfea820d3f12f0dL    # 1.0386911231965481E-19
        -0x6f1de7c65735b3edL
        -0x37eaddc5ef00f27L    # -5.401509830491162E291
        -0x49a5f2bf2d8835c5L    # -7.130137850531253E-47
        -0x27939eafea9ceabcL    # -8.945871906319E117
    .end array-data
.end method

.method public final zzj(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjg;->zzk(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzk(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzs(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzl([BII)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjg;->zzc([BII)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final zzm(ILjava/lang/String;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjg;->zzn(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzjj;->zzA(I)I

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
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzjj;->zzA(I)I

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
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 28
    .line 29
    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:I

    .line 30
    .line 31
    sub-int/2addr v4, v1

    .line 32
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzna;->zzb(Ljava/lang/CharSequence;[BII)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 37
    .line 38
    sub-int v3, v1, v0

    .line 39
    .line 40
    sub-int/2addr v3, v2

    .line 41
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 42
    .line 43
    .line 44
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzna;->zzc(Ljava/lang/CharSequence;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 59
    .line 60
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 61
    .line 62
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:I

    .line 63
    .line 64
    sub-int/2addr v3, v2

    .line 65
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzna;->zzb(Ljava/lang/CharSequence;[BII)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmz; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    return-void

    .line 72
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjh;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjh;-><init>(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 79
    .line 80
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjj;->zzE(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzmz;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final zzo(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzp(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzq(I)V
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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 7
    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 21
    .line 22
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 23
    .line 24
    add-int/lit8 v3, v2, 0x1

    .line 25
    .line 26
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 27
    .line 28
    and-int/lit8 v3, p1, 0x7f

    .line 29
    .line 30
    or-int/lit16 v3, v3, 0x80

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
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjh;

    .line 39
    .line 40
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:I

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
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzjh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        0x48208fc31b5e497bL    # 2.81780526355746E39
        0x4159178a4d2eaadeL    # 6577705.205973355
        -0x6d19751d1e82a6bdL
        0x6d71c09b77969794L    # 1.5666545939639872E219
        0x22fb5075538196b0L
    .end array-data
.end method

.method public final zzr(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzq(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjg;->zzs(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzs(J)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjj;->zzF()Z

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
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:I

    .line 14
    .line 15
    iget v7, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

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
    if-nez v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 29
    .line 30
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 31
    .line 32
    add-int/2addr v0, v2

    .line 33
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 34
    .line 35
    int-to-long v2, v2

    .line 36
    long-to-int p2, p1

    .line 37
    int-to-byte p1, p2

    .line 38
    invoke-static {v1, v2, v3, p1}, Lcom/google/android/gms/internal/measurement/zzmv;->zzn([BJB)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 43
    .line 44
    iget v7, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 45
    .line 46
    add-int/lit8 v8, v7, 0x1

    .line 47
    .line 48
    iput v8, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 49
    .line 50
    int-to-long v7, v7

    .line 51
    long-to-int v9, p1

    .line 52
    and-int/lit8 v9, v9, 0x7f

    .line 53
    .line 54
    or-int/lit16 v9, v9, 0x80

    .line 55
    .line 56
    int-to-byte v9, v9

    .line 57
    invoke-static {v1, v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzmv;->zzn([BJB)V

    .line 58
    .line 59
    .line 60
    ushr-long/2addr p1, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    and-long v7, p1, v5

    .line 63
    .line 64
    cmp-long v1, v7, v3

    .line 65
    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 69
    .line 70
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 71
    .line 72
    add-int/lit8 v3, v2, 0x1

    .line 73
    .line 74
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 75
    .line 76
    long-to-int p2, p1

    .line 77
    int-to-byte p1, p2

    .line 78
    aput-byte p1, v1, v2

    .line 79
    .line 80
    return-void

    .line 81
    :catch_0
    move-exception p1

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:[B

    .line 84
    .line 85
    iget v7, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 86
    .line 87
    add-int/lit8 v8, v7, 0x1

    .line 88
    .line 89
    iput v8, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 90
    .line 91
    long-to-int v8, p1

    .line 92
    and-int/lit8 v8, v8, 0x7f

    .line 93
    .line 94
    or-int/lit16 v8, v8, 0x80

    .line 95
    .line 96
    int-to-byte v8, v8

    .line 97
    aput-byte v8, v1, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    ushr-long/2addr p1, v2

    .line 100
    goto :goto_1

    .line 101
    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzjh;

    .line 102
    .line 103
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzd:I

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:I

    .line 110
    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const/4 v4, 0x3

    .line 120
    new-array v4, v4, [Ljava/lang/Object;

    .line 121
    .line 122
    const/4 v5, 0x0

    .line 123
    aput-object v1, v4, v5

    .line 124
    .line 125
    aput-object v2, v4, v0

    .line 126
    .line 127
    const/4 v0, 0x2

    .line 128
    aput-object v3, v4, v0

    .line 129
    .line 130
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    const/4 v1, 0x5

    .line 133
    new-array v1, v1, [J

    .line 134
    .line 135
    fill-array-data v1, :array_0

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzjh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    throw p2

    .line 153
    :array_0
    .array-data 8
        0x4cf684c61ad20dcfL    # 5.789771506806089E62
        0x5248eef483cfa4a0L    # 2.479993676743887E88
        -0x262b8413028c30e5L    # -5.416450643579291E124
        0x7a3c4b99d84339a1L    # 6.420229136984865E280
        -0x65c2d2010e408ba6L    # -2.746901161877926E-182
    .end array-data
.end method
