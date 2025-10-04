.class public Lcom/google/android/gms/internal/ads/zzbvw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcjk;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjk;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Lcom/google/android/gms/internal/ads/zzcjk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvw;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzg(IIII)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v3, v0, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v2, v0, [J

    .line 28
    .line 29
    fill-array-data v2, :array_1

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
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v1, v0, [J

    .line 46
    .line 47
    fill-array-data v1, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array p3, v0, [J

    .line 64
    .line 65
    fill-array-data p3, :array_3

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 80
    .line 81
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    const/4 p4, 0x5

    .line 84
    new-array p4, p4, [J

    .line 85
    .line 86
    fill-array-data p4, :array_4

    .line 87
    .line 88
    .line 89
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbqa;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catch_0
    move-exception p1

    .line 101
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    const/16 p3, 0x8

    .line 104
    .line 105
    new-array p3, p3, [J

    .line 106
    .line 107
    fill-array-data p3, :array_5

    .line 108
    .line 109
    .line 110
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :array_0
    .array-data 8
        -0x436816f60388cf75L    # -8.295554738698919E-17
        0x5fc64f757bdf2ac6L    # 2.336979498829906E153
    .end array-data

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
    :array_1
    .array-data 8
        -0x4987ab2b31a6373bL    # -2.663712066138032E-46
        0x60cb97ef2a672129L    # 1.8942374705987457E158
    .end array-data

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
    :array_2
    .array-data 8
        -0x4357187e2fa4c48fL    # -1.72808465820329E-16
        -0x72c26d578a73f033L    # -6.767327634763847E-245
    .end array-data

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
    :array_3
    .array-data 8
        -0x4405c82564757e3L
        0x7b6d88f6017f9fbaL    # 3.513523997626348E286
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_4
    .array-data 8
        -0xf1db2e121b1c52cL    # -5.818987571568934E235
        0x544fe1544dfb6296L    # 1.3619135634789111E98
        -0x50f3273d6d3a72c2L    # -4.7516847065465653E-82
        0xf98c3927f2fafe0L
        0x57657b6112434e09L    # 1.033242095568352E113
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_5
    .array-data 8
        0x1aefcfae91065809L    # 6.133006495893402E-179
        0x285b0a5dd27b4e20L    # 2.745088052449655E-114
        0x2632b697c0946151L
        0x68bf2f8a8d947c1aL    # 3.6424432747544742E196
        0x6077887922cb9fe1L    # 5.0484362108047665E156
        0x5180003f692ce9c4L    # 3.885572743613881E84
        0x403eb56d10176642L    # 30.708695417130237
        -0x2e72faf86d056410L    # -7.046945643096262E84
    .end array-data
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v3, v0, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v2, v0, [J

    .line 28
    .line 29
    fill-array-data v2, :array_1

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
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvw;->zzb:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v0, v0, [J

    .line 52
    .line 53
    fill-array-data v0, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzbqa;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    return-void

    .line 70
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/4 v1, 0x7

    .line 73
    new-array v1, v1, [J

    .line 74
    .line 75
    fill-array-data v1, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :array_0
    .array-data 8
        -0x4571e8f9fb1e0fbdL    # -1.2153228201233494E-26
        0xed888879ce94ac4L
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
    :array_1
    .array-data 8
        -0x5d0381c6be7387f2L
        0x55be9dc9f24d97fL
    .end array-data

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
    :array_2
    .array-data 8
        0xef35bd166ab27f6L
        0x1b46bc138759e323L    # 2.805183490666469E-177
    .end array-data

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
    :array_3
    .array-data 8
        0x79c879eb1827d0faL    # 4.3388113913856983E278
        -0x6275a34975e73ff4L
        0x26b470c86fb1d61aL    # 3.09210708024324E-122
        -0x4b2f8d36c25ec92dL    # -2.683267708029813E-54
        0x47fecb94b2cca9f7L    # 6.549422735744757E38
        0x1fc631b608f9d190L
        -0x4e0fbffdabe036a4L
    .end array-data
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

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
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 26
    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbqa;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    new-array v1, v1, [J

    .line 51
    .line 52
    fill-array-data v1, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x26df8f32d85e14ddL    # -2.122690794116148E121
        0x7ca547aa6a6bdfe7L    # 2.654460637136071E292
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x490537bf230fa795L    # 5.914648317896688E43
        0x603f43c7f52add98L    # 4.191920292854556E155
        -0x40881a8101add97fL    # -0.005834098880890815
        0x1a4acd84a446cd5dL    # 5.046297866899044E-182
    .end array-data

    :array_2
    .array-data 8
        -0x4e82259f98ae25a5L    # -2.7033949092435573E-70
        -0x7f78b0feabca3ee0L    # -4.149071020155855E-306
        -0x4d6e5ad5af71ff6aL    # -4.188774320880856E-65
        -0x5ba0e1ae042ec4b4L
        0x789c6e07b3569d43L    # 9.612358722073675E272
        -0x498be4659ff459b2L    # -2.201333074384643E-46
        0x68209e0732c4b6a1L    # 3.790771616398666E193
    .end array-data
.end method

.method public final zzj(IIIIFI)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v4, v1, [J

    .line 11
    .line 12
    fill-array-data v4, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v3, v1, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v2, v0, [J

    .line 47
    .line 48
    fill-array-data v2, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array p3, v0, [J

    .line 65
    .line 66
    fill-array-data p3, :array_3

    .line 67
    .line 68
    .line 69
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array p3, v1, [J

    .line 83
    .line 84
    fill-array-data p3, :array_4

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    float-to-double p3, p5

    .line 95
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array p3, v1, [J

    .line 102
    .line 103
    fill-array-data p3, :array_5

    .line 104
    .line 105
    .line 106
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 118
    .line 119
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    const/4 p4, 0x4

    .line 122
    new-array p4, p4, [J

    .line 123
    .line 124
    fill-array-data p4, :array_6

    .line 125
    .line 126
    .line 127
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbqa;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catch_0
    move-exception p1

    .line 139
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    const/16 p3, 0x8

    .line 142
    .line 143
    new-array p3, p3, [J

    .line 144
    .line 145
    fill-array-data p3, :array_7

    .line 146
    .line 147
    .line 148
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :array_0
    .array-data 8
        0x6b53aa7675cec58L
        0x34499792bb74dcdfL    # 8.154107989745498E-57
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_1
    .array-data 8
        0x51f058bde1996780L    # 5.080979730298677E86
        0x401690573931ea3bL    # 5.640957730933731
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_2
    .array-data 8
        0x5b399fdf3c4860dbL    # 2.8419309889681627E131
        -0x5d44d14d3f8bedbfL    # -2.229102740642423E-141
        -0x541dd5203f5fd462L    # -2.6579451890716555E-97
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_3
    .array-data 8
        -0x7920b6641ddc5f90L
        -0x18ee606f72a9d25dL    # -3.067217147114673E188
        0x4a2c2adef54699ecL    # 2.0583397794804186E49
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_4
    .array-data 8
        -0x47e6df712388cd8L    # -8.360817398547059E286
        -0x1216e8d0dc07585aL    # -2.83424401220882E221
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_5
    .array-data 8
        -0x29b07c0e625ca2e4L    # -5.782443114321726E107
        0x10d37cf1919764e6L
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_6
    .array-data 8
        0x454b803d74d84892L    # 6.649318742070019E25
        -0x15c3d8374d7dcfb0L    # -5.5172019712798984E203
        -0x222c8dc278397ac0L    # -9.485360476783736E143
        0x65ffde80532b69e2L    # 2.115864252170591E183
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_7
    .array-data 8
        -0x6f4fa3a7bfd0f271L
        0x2c792fc2071fc4c5L    # 1.886644737530322E-94
        0x6244c2246451394bL    # 2.3907867450533226E165
        -0x70e6afc8f9cfe8ddL    # -6.219748925523929E-236
        -0x670b56b75b58779aL
        0x19a3b28d6b562eacL    # 3.621622099148327E-185
        -0x26a3c7416b6ab6e4L    # -2.9150149198992643E122
        -0x369a0215dd359201L    # -3.923477838628518E45
    .end array-data
.end method

.method public final zzk(IIII)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v3, v0, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v2, v0, [J

    .line 28
    .line 29
    fill-array-data v2, :array_1

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
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v1, v0, [J

    .line 46
    .line 47
    fill-array-data v1, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array p3, v0, [J

    .line 64
    .line 65
    fill-array-data p3, :array_3

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 80
    .line 81
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    const/4 p4, 0x3

    .line 84
    new-array p4, p4, [J

    .line 85
    .line 86
    fill-array-data p4, :array_4

    .line 87
    .line 88
    .line 89
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbqa;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catch_0
    move-exception p1

    .line 101
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    const/4 p3, 0x7

    .line 104
    new-array p3, p3, [J

    .line 105
    .line 106
    fill-array-data p3, :array_5

    .line 107
    .line 108
    .line 109
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :array_0
    .array-data 8
        -0x51f5371c57192703L    # -6.73222208703911E-87
        -0x7b4ffcae1ec7e555L    # -4.206452288788492E-286
    .end array-data

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
    :array_1
    .array-data 8
        -0x313302901ac15ceL    # -5.750390010118331E293
        0x470560090a57e8dcL
    .end array-data

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
    :array_2
    .array-data 8
        0x4e1261a64f951615L    # 1.2389068715590637E68
        0x14a23dff05b0e6e1L
    .end array-data

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
    :array_3
    .array-data 8
        -0x3db5529517b4c012L    # -2.2915722869449945E11
        -0xb9fba3178d4a033L    # -3.7282543517753E252
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_4
    .array-data 8
        0x58e74af8e62dc22eL    # 1.879624560208478E120
        -0x6421a211a30d8a61L
        -0x3dc1c9a5923fd410L    # -1.2976091488017163E11
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_5
    .array-data 8
        0x19582a69892c5990L
        0x5078ccb88f718ed9L    # 4.594572884284383E79
        0x4ecf5f11faeb1c2fL    # 4.330344504293747E71
        -0x4f94f737f2135d3L    # -4.217485518011346E284
        0x7031917726004f32L    # 2.727498609234232E232
        0x182b5c6dc2cbf06bL
        0x221d15696f49277cL
    .end array-data
.end method

.method public final zzl(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

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
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 26
    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbqa;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    new-array v1, v1, [J

    .line 51
    .line 52
    fill-array-data v1, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x65bb1970f83e455dL    # 1.1244929934493305E182
        -0x449b2916af12277fL    # -1.3790422726346567E-22
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x7d58b856fafba006L    # 6.315177799899962E295
        0x410a8fb1c23380f6L    # 217590.2198247981
        0x8800dbfb27932beL    # 9.72409464518726E-268
    .end array-data

    :array_2
    .array-data 8
        -0x7d42dbe8125213fL    # -7.348923458254785E270
        0x62c974fdb524eb64L    # 7.50576151361944E167
        -0x1733cb257b456d6bL    # -6.588943140558769E196
        0x7f36bd44cfd7ab41L    # 6.237539620113382E304
        -0x2a02005f04f60329L    # -1.72004082951045E106
        0x4194f1d1ae770ca4L    # 8.784804361625916E7
        -0x692f77f28ba1d979L    # -8.638810701358536E-199
    .end array-data
.end method
