.class public final Lcom/google/android/gms/internal/ads/zzfie;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array p1, v0, [J

    .line 7
    .line 8
    fill-array-data p1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcdv;->zzy(Landroid/content/Context;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/16 v2, 0xa

    .line 37
    .line 38
    new-array v2, v2, [J

    .line 39
    .line 40
    fill-array-data v2, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v0, v0, [J

    .line 59
    .line 60
    fill-array-data v0, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :array_0
    .array-data 8
        -0x44b45640d160bbdeL    # -4.5764716095524917E-23
        0x24e015c310c749c6L    # 4.532242806693853E-131
        -0x65a11eb5d93869ccL
        -0x39faa313aed398c6L    # -2.115687154409155E29
        -0x5af8ab821376442fL
        0x25ce8415c207aa09L
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
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
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 8
        -0x7330d9c01bec3c78L
        -0x71d64567a1f97486L
        0x1e8e81c7d7de7747L
        0x78802cd513c833feL    # 2.7344738449081017E272
        0x3119f64e8cc74f0fL    # 3.673512070477189E-72
        -0x9fc0ce90aa9076aL
        -0x36f5f40638310e18L    # -7.260782577591245E43
        -0x63fb7976270a7bc3L
        0x4c8ff33b9b125a0L
        -0x2d72064b3966abf8L    # -4.7703904755636745E89
    .end array-data

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
    :array_2
    .array-data 8
        0x1e569bd133735168L    # 1.570424963675601E-162
        -0x52ed2a80f3c4bb6cL    # -1.4446518483282816E-91
        0x1f0206eeef883c43L    # 2.564470866316873E-159
        -0x24137b4b6e1c9e0dL    # -6.477582231244216E134
        0x5027b99d3f9fcefeL    # 1.3735868817768986E78
        0x4a6829004f534aa8L    # 2.8248091862206966E50
    .end array-data
.end method

.method public static zzb(ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    if-ne p0, v0, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :array_0
    .array-data 8
        0x663cb5b80ebaba3aL    # 3.0497773312637084E184
        -0x36f14b707fb1a86cL    # -8.559392479375802E43
        -0x3c0205a9f44f7a23L    # -3.4562137271740256E19
        0x10b77120864b5117L    # 3.865415210893786E-228
    .end array-data
.end method
