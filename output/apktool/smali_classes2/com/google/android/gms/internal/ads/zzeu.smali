.class public final Lcom/google/android/gms/internal/ads/zzeu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {v3}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v4, v0, [J

    .line 38
    .line 39
    fill-array-data v4, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v4, v0, [J

    .line 56
    .line 57
    fill-array-data v4, :array_1

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    if-nez v2, :cond_3

    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Lcom/google/android/gms/internal/ads/zzet;

    .line 83
    .line 84
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzet;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    nop

    .line 89
    :array_0
    .array-data 8
        0x51697c5d25c374e8L    # 1.5472019906590778E84
        -0x18fc6f2078661d1L
        0x27e23b60178dae4cL
    .end array-data

    .line 90
    .line 91
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
    :array_1
    .array-data 8
        0x3ed19fe79c54d342L    # 4.202038728796943E-6
        -0x60af21047db8b2f8L    # -7.680044835499636E-158
        0x6b145018da883af0L    # 6.521515218235178E207
    .end array-data
.end method

.method public static zzb(ZLjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzet;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzet;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static zzc(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 3
    .line 4
    const/16 v2, 0x18

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v2, 0x1a

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v4, v0, [J

    .line 16
    .line 17
    fill-array-data v4, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfy;->zzc:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    fill-array-data v0, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfy;->zzd:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    :cond_1
    if-ge v1, v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    new-array v1, v1, [J

    .line 67
    .line 68
    fill-array-data v1, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 86
    return p0

    .line 87
    :cond_3
    :goto_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    const/4 v0, 0x5

    .line 90
    new-array v0, v0, [J

    .line 91
    .line 92
    fill-array-data v0, :array_3

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    return p0

    .line 107
    :array_0
    .array-data 8
        0x1c644042069f9a54L    # 6.550268743106725E-172
        0x83cb327c79ee6b5L
    .end array-data

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
    :array_1
    .array-data 8
        -0x597c38007b3d5a2eL    # -3.740462908636966E-123
        -0x5940c36eea9fb8cbL    # -4.725256297994247E-122
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_2
    .array-data 8
        -0xb4c3328c835e576L
        0x4d6eaaaa004a93cdL    # 1.0092424609496944E65
        -0x3520ec0d1f82a17fL    # -4.651052842808796E52
        -0x53cc29c4bd9eeffdL    # -9.286967285598677E-96
        -0x121913820dfd1fb8L    # -2.5894848830124646E221
        0x34ed7fcbd434e13cL    # 9.624564361214655E-54
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        -0x58bc1e197813cc82L
        0x1f9d4085e3727bdL
        0x425e5da1fc955259L    # 5.216796637012867E11
        0x2eb42f49d2e83ac5L    # 1.0390200972190044E-83
        -0x1ee91cb932e22548L    # -5.027843508684181E159
    .end array-data
.end method

.method public static zzd()Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0x448830a88b215d33L    # 1.4279298017739231E22
        -0x3f732a2207e4929cL    # -922.7333833830603
        -0x138fa57de1dcef93L    # -2.2021602465536737E214
        0x20e478c580a3c8eeL    # 3.126996759810999E-150
        0x6dcddfe1419cea70L    # 8.436609223863299E220
    .end array-data
.end method
