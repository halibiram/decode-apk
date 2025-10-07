.class public final Lcom/google/android/gms/internal/ads/zzaeg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzby;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x2

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    if-ge v6, v7, :cond_2

    .line 17
    .line 18
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    check-cast v7, Ljava/lang/String;

    .line 23
    .line 24
    sget v8, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 25
    .line 26
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v9, v3, [J

    .line 29
    .line 30
    fill-array-data v9, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    array-length v9, v8

    .line 45
    if-eq v9, v3, :cond_0

    .line 46
    .line 47
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v9, v2, [J

    .line 50
    .line 51
    fill-array-data v9, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v10, v1, [J

    .line 64
    .line 65
    fill-array-data v10, :array_2

    .line 66
    .line 67
    .line 68
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    aget-object v7, v8, v5

    .line 84
    .line 85
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    const/4 v10, 0x4

    .line 88
    new-array v10, v10, [J

    .line 89
    .line 90
    fill-array-data v10, :array_3

    .line 91
    .line 92
    .line 93
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_1

    .line 105
    .line 106
    :try_start_0
    aget-object v7, v8, v0

    .line 107
    .line 108
    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfp;

    .line 113
    .line 114
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzfp;-><init>([B)V

    .line 115
    .line 116
    .line 117
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzafw;->zzb(Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzafw;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_0
    move-exception v7

    .line 126
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v9, v1, [J

    .line 129
    .line 130
    fill-array-data v9, :array_4

    .line 131
    .line 132
    .line 133
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v10, v2, [J

    .line 143
    .line 144
    fill-array-data v10, :array_5

    .line 145
    .line 146
    .line 147
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    invoke-static {v8, v9, v7}, Lcom/google/android/gms/internal/ads/zzff;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzaho;

    .line 159
    .line 160
    aget-object v9, v8, v5

    .line 161
    .line 162
    aget-object v8, v8, v0

    .line 163
    .line 164
    invoke-direct {v7, v9, v8}, Lcom/google/android/gms/internal/ads/zzaho;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :goto_1
    add-int/2addr v6, v0

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_3

    .line 178
    .line 179
    const/4 p0, 0x0

    .line 180
    return-object p0

    .line 181
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzby;

    .line 182
    .line 183
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzby;-><init>(Ljava/util/List;)V

    .line 184
    .line 185
    .line 186
    return-object p0

    .line 187
    :array_0
    .array-data 8
        0x46e5556197803399L    # 3.4615615895165096E33
        -0x4ab21f8004ff4270L    # -6.238598840741687E-52
    .end array-data

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
    :array_1
    .array-data 8
        -0x3e96efd3c2cd94a9L    # -1.31403219124047E7
        0x22741279543e18fcL
        -0x7db8a781ff3bb87dL
        0x27954d634e3b91dcL    # 5.279686484607747E-118
        -0x6d657e9b634bdff5L
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
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_2
    .array-data 8
        0x606700dc85daf3d6L    # 2.4673975878587804E156
        0x798cec980094d300L    # 3.204551793125478E277
        0x4f5b227c2e8f51f9L    # 1.9177151224607165E74
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
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
    :array_3
    .array-data 8
        0x68cc2ac1ce89d204L
        0x25607bc8368f851L
        -0x7e724daaf1c4545dL    # -3.464345753531835E-301
        0x4a61fd680640aab0L    # 2.103377785745848E50
    .end array-data

    :array_4
    .array-data 8
        -0x3f2921d2cfee3f91L    # -23416.706058919834
        -0x7f297b5311c5b698L    # -1.282682878022443E-304
        -0x1749eb88d95c2992L    # -2.5789037882819053E196
    .end array-data

    :array_5
    .array-data 8
        -0x5cb3ad21f1d75086L    # -1.189219455308416E-138
        -0x552f0bea5ce6ea94L    # -1.892342332220753E-102
        0x4f577f82976d488eL    # 1.660701000644984E74
        0x510830cb3f2f3be6L    # 2.2946449526498762E82
        -0x2615f390527e6c37L    # -1.377565493678594E125
    .end array-data
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfp;ZZ)Lcom/google/android/gms/internal/ads/zzaed;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x3

    .line 5
    invoke-static {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzaeg;->zzd(ILcom/google/android/gms/internal/ads/zzfp;Z)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzs()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    long-to-int p1, v1

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzA(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzs()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    long-to-int v4, v2

    .line 28
    new-array v4, v4, [Ljava/lang/String;

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0xf

    .line 31
    .line 32
    :goto_0
    int-to-long v5, v0

    .line 33
    cmp-long v7, v5, v2

    .line 34
    .line 35
    if-gez v7, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzs()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    long-to-int v6, v5

    .line 42
    add-int/lit8 v1, v1, 0x4

    .line 43
    .line 44
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 45
    .line 46
    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzA(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    aput-object v5, v4, v0

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    add-int/2addr v1, v5

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    if-eqz p2, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    and-int/lit8 p0, p0, 0x1

    .line 67
    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    const/4 p1, 0x5

    .line 74
    new-array p1, p1, [J

    .line 75
    .line 76
    fill-array-data p1, :array_0

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const/4 p1, 0x0

    .line 87
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    throw p0

    .line 92
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaed;

    .line 95
    .line 96
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzaed;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        0x255f0e17a72ac915L    # 1.120041398437585E-128
        -0x7be32b3e8bd6fcccL    # -7.396138502117643E-289
        -0x5e721befd76790b7L
        -0x74000de7c3d2f6c8L
        -0x4be2544a2541e868L    # -1.1817055418118209E-57
    .end array-data
.end method

.method public static zzd(ILcom/google/android/gms/internal/ads/zzfp;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x7

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    return v4

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v0, v0, [J

    .line 26
    .line 27
    fill-array-data v0, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eq v1, p0, :cond_3

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    return v4

    .line 61
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array p2, v0, [J

    .line 72
    .line 73
    fill-array-data p2, :array_1

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    throw p0

    .line 92
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    const/16 v0, 0x76

    .line 97
    .line 98
    if-ne p0, v0, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    const/16 v0, 0x6f

    .line 105
    .line 106
    if-ne p0, v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    const/16 v0, 0x72

    .line 113
    .line 114
    if-ne p0, v0, :cond_5

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    const/16 v0, 0x62

    .line 121
    .line 122
    if-ne p0, v0, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    const/16 v0, 0x69

    .line 129
    .line 130
    if-ne p0, v0, :cond_5

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    const/16 p1, 0x73

    .line 137
    .line 138
    if-eq p0, p1, :cond_4

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    const/4 p0, 0x1

    .line 142
    return p0

    .line 143
    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 144
    .line 145
    return v4

    .line 146
    :cond_6
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    const/4 p1, 0x5

    .line 149
    new-array p1, p1, [J

    .line 150
    .line 151
    fill-array-data p1, :array_2

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    throw p0

    .line 166
    nop

    .line 167
    :array_0
    .array-data 8
        0x6dd1344631d2b586L    # 9.716977978434316E220
        -0xa21941d17a648afL
        -0x405d62527b62fefcL    # -0.03635923618139894
        -0x32cfb8f6534ee70dL    # -6.696171558733126E63
    .end array-data

    .line 168
    .line 169
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
    :array_1
    .array-data 8
        0x2a30ee5b9ba62026L
        -0x53250dbc0ff88423L    # -1.2918178369619788E-92
        -0x5db83570cb8b28ebL
        0x18b1dd0966403f94L
    .end array-data

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
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_2
    .array-data 8
        0x481893ea5e7d19aeL    # 2.0908475588514434E39
        0x2fcbbfd435077148L    # 1.872249269468925E-78
        0x5cdf9684d4baa6c4L    # 2.3510380240726744E139
        -0x400be42b44021d48L    # -1.256794676153886
        0x39c9c2538733f017L    # 2.5400420898288394E-30
    .end array-data
.end method
