.class final Lcom/google/android/gms/internal/ads/zzqg;
.super Lcom/google/android/gms/internal/ads/zzdu;
.source "SourceFile"


# instance fields
.field private zzd:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdu;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zze(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zze:[I

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sub-int v3, v2, v1

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdu;->zzb:Lcom/google/android/gms/internal/ads/zzdr;

    .line 17
    .line 18
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzdr;->zze:I

    .line 19
    .line 20
    div-int/2addr v3, v4

    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdu;->zzc:Lcom/google/android/gms/internal/ads/zzdr;

    .line 22
    .line 23
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzdr;->zze:I

    .line 24
    .line 25
    mul-int v3, v3, v4

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzdu;->zzj(I)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :goto_0
    if-ge v1, v2, :cond_1

    .line 32
    .line 33
    array-length v4, v0

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_1
    if-ge v5, v4, :cond_0

    .line 36
    .line 37
    aget v6, v0, v5

    .line 38
    .line 39
    add-int/2addr v6, v6

    .line 40
    add-int/2addr v6, v1

    .line 41
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdu;->zzb:Lcom/google/android/gms/internal/ads/zzdr;

    .line 52
    .line 53
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzdr;->zze:I

    .line 54
    .line 55
    add-int/2addr v1, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzdr;)Lcom/google/android/gms/internal/ads/zzdr;
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:[I

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdr;->zza:Lcom/google/android/gms/internal/ads/zzdr;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzdr;->zzd:I

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-ne v3, v4, :cond_6

    .line 14
    .line 15
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzdr;->zzc:I

    .line 16
    .line 17
    array-length v5, v2

    .line 18
    const/4 v6, 0x0

    .line 19
    if-eq v3, v5, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v3, 0x0

    .line 24
    :goto_0
    const/4 v5, 0x0

    .line 25
    :goto_1
    array-length v7, v2

    .line 26
    if-ge v5, v7, :cond_4

    .line 27
    .line 28
    aget v7, v2, v5

    .line 29
    .line 30
    iget v8, p1, Lcom/google/android/gms/internal/ads/zzdr;->zzc:I

    .line 31
    .line 32
    if-ge v7, v8, :cond_3

    .line 33
    .line 34
    if-eq v7, v5, :cond_2

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/4 v7, 0x0

    .line 39
    :goto_2
    or-int/2addr v3, v7

    .line 40
    add-int/2addr v5, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzds;

    .line 43
    .line 44
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzds;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdr;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_4
    if-eqz v3, :cond_5

    .line 63
    .line 64
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdr;

    .line 65
    .line 66
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdr;->zzb:I

    .line 67
    .line 68
    invoke-direct {v0, p1, v7, v4}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(III)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdr;->zza:Lcom/google/android/gms/internal/ads/zzdr;

    .line 73
    .line 74
    :goto_3
    return-object v0

    .line 75
    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzds;

    .line 76
    .line 77
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v0, v0, [J

    .line 80
    .line 81
    fill-array-data v0, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzds;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdr;)V

    .line 92
    .line 93
    .line 94
    throw v1

    .line 95
    :array_0
    .array-data 8
        -0x57114df6cb1cbeefL
        0x6d8dc31cb2bb41f1L    # 5.253046613683736E219
        -0x7a6b6efdd2d9e4dfL    # -8.851628504356484E-282
        -0x2bcb860171ba27a7L    # -4.37376249685029E97
    .end array-data

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
    :array_1
    .array-data 8
        0xc727e903b3a4d7dL
        -0x694cd74767ea3043L    # -2.502979127899393E-199
        -0x494224233607e8dbL    # -5.230142930776117E-45
        -0x4e5af2303109d0c3L    # -1.5252626724685796E-69
    .end array-data
.end method

.method public final zzk()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zze:[I

    return-void
.end method

.method public final zzm()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zze:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:[I

    return-void
.end method

.method public final zzo([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:[I

    return-void
.end method
