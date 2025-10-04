.class final Lcom/google/android/gms/internal/ads/zzghk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfs;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzggx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgrx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzggx;Lcom/google/android/gms/internal/ads/zzghj;)V
    .locals 4

    .line 1
    const/4 p2, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghk;->zza:Lcom/google/android/gms/internal/ads/zzggx;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzggx;->zzf()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnz;->zza()Lcom/google/android/gms/internal/ads/zzgnz;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnz;->zzb()Lcom/google/android/gms/internal/ads/zzgry;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgns;->zza(Lcom/google/android/gms/internal/ads/zzggx;)Lcom/google/android/gms/internal/ads/zzgsd;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v2, p2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v3, p2, [J

    .line 42
    .line 43
    fill-array-data v3, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgry;->zza(Lcom/google/android/gms/internal/ads/zzgsd;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgrx;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzghk;->zzb:Lcom/google/android/gms/internal/ads/zzgrx;

    .line 58
    .line 59
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v2, p2, [J

    .line 62
    .line 63
    fill-array-data v2, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array p2, p2, [J

    .line 76
    .line 77
    fill-array-data p2, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzgry;->zza(Lcom/google/android/gms/internal/ads/zzgsd;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgrx;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghk;->zzc:Lcom/google/android/gms/internal/ads/zzgrx;

    .line 92
    .line 93
    return-void

    .line 94
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgns;->zza:Lcom/google/android/gms/internal/ads/zzgrx;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghk;->zzb:Lcom/google/android/gms/internal/ads/zzgrx;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :array_0
    .array-data 8
        0x9711be2d5f53830L
        0x77d79b86e97e8e38L    # 1.94870743594419E269
    .end array-data

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
    :array_1
    .array-data 8
        0x799df558c8f70ab1L    # 6.638262649701184E277
        0x5384d3f9f0ac5107L    # 2.1722855212767337E94
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_2
    .array-data 8
        -0x11bc6009c346b2b8L    # -1.418773843215764E223
        -0x7eb2cda731ab697fL
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_3
    .array-data 8
        0x166799a0c09789bL
        0x6a8872449c8c5b5L
    .end array-data
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x5

    .line 3
    if-le v0, v1, :cond_0

    .line 4
    .line 5
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghk;->zza:Lcom/google/android/gms/internal/ads/zzggx;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzggx;->zze([B)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/google/android/gms/internal/ads/zzggt;

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzggt;->zze()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/google/android/gms/internal/ads/zzgfs;

    .line 40
    .line 41
    invoke-interface {v3, v0, p2}, Lcom/google/android/gms/internal/ads/zzgfs;->zza([B[B)[B

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzggt;->zza()I

    .line 46
    .line 47
    .line 48
    array-length p1, v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object v3

    .line 50
    :catch_0
    nop

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghk;->zza:Lcom/google/android/gms/internal/ads/zzggx;

    .line 53
    .line 54
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfx;->zza:[B

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzggx;->zze([B)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/google/android/gms/internal/ads/zzggt;

    .line 75
    .line 76
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzggt;->zze()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgfs;

    .line 81
    .line 82
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzgfs;->zza([B[B)[B

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzggt;->zza()I
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :catch_1
    nop

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 93
    .line 94
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    const/4 v0, 0x4

    .line 97
    new-array v0, v0, [J

    .line 98
    .line 99
    fill-array-data v0, :array_0

    .line 100
    .line 101
    .line 102
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :array_0
    .array-data 8
        0x1781ba1cac7625c8L    # 1.897177948534401E-195
        -0x5ed0c64197f899b8L    # -7.631368293219834E-149
        -0x3e4ad869e9ad4393L    # -3.5491586232318765E8
        -0x7d865439955de306L
    .end array-data
.end method
