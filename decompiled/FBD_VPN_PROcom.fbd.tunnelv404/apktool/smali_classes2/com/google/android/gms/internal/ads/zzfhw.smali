.class public final Lcom/google/android/gms/internal/ads/zzfhw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghg;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v2, 0x4

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
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        -0x33168142b25c177bL    # -3.2775206102487372E62
        0x1b66c98834bfac76L
        0x6ba1b9c349e3da03L    # 2.913726716324208E210
        -0x53c04de61402e9a5L    # -1.4838904685617286E-95
        -0x5a40ab22ec0d4445L    # -7.232076365463322E-127
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
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
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        -0x7de20ead213d0336L
        -0x1cbe730cbf5e537eL    # -1.3247050976618608E170
        0x1a9673a726dea405L
        0x1429e755825a5831L
    .end array-data
.end method

.method public static final zza()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyl;->zzt()Lcom/google/android/gms/internal/ads/zzgyi;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    new-array v3, v3, [J

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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgoa;->zzb()Lcom/google/android/gms/internal/ads/zzgoa;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzgoa;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggq;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzggf;->zza(Lcom/google/android/gms/internal/ads/zzggq;)Lcom/google/android/gms/internal/ads/zzggq;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzggm;->zzc(Lcom/google/android/gms/internal/ads/zzggq;)Lcom/google/android/gms/internal/ads/zzggm;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgfu;->zzb(Ljava/io/OutputStream;)Lcom/google/android/gms/internal/ads/zzgfu;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgfv;->zzb(Lcom/google/android/gms/internal/ads/zzggm;Lcom/google/android/gms/internal/ads/zzgfu;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception v2

    .line 46
    goto :goto_0

    .line 47
    :catch_1
    move-exception v2

    .line 48
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v4, v0, [J

    .line 51
    .line 52
    fill-array-data v4, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v0, v0, [J

    .line 76
    .line 77
    fill-array-data v0, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgyi;->zzb()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzA()[B

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const/16 v2, 0xb

    .line 103
    .line 104
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgyi;->zzc()V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    nop

    .line 113
    :array_0
    .array-data 8
        0x2907014eedd6e445L    # 4.782951030289788E-111
        -0x178b5d4c3af170b1L    # -1.506375950304832E195
        -0x3c586c784515eaf8L    # -8.4942536065486131E17
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
    .line 126
    .line 127
    .line 128
    .line 129
    :array_1
    .array-data 8
        0x19a15160cb0196b1L    # 3.184105738099768E-185
        -0x4713e7d4c2e045c1L    # -1.6908707827574918E-34
        0x37511140ab2c8f55L    # 3.061313487657573E-42
        0x29ea4f85e79a79c2L    # 8.962370847884652E-107
    .end array-data

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
    :array_2
    .array-data 8
        -0x782a25230c5f21fL    # -2.482217920355237E272
        0x38e252460ee07d44L
        0x7cff6875638198eaL    # 1.2537086937831413E294
        -0x322a74033e7da08bL    # -9.076582285884539E66
    .end array-data
.end method

.method public static final zzb([B[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdwa;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfhw;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggm;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-class v3, Lcom/google/android/gms/internal/ads/zzgfs;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpb;->zza()Lcom/google/android/gms/internal/ads/zzgpb;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzggm;->zze(Lcom/google/android/gms/internal/ads/zzgfw;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lcom/google/android/gms/internal/ads/zzgfs;

    .line 22
    .line 23
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzgfs;->zza([B[B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdwa;->zza()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v3, v1, [J

    .line 34
    .line 35
    fill-array-data v3, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v4, v1, [J

    .line 48
    .line 49
    fill-array-data v4, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    new-instance p1, Ljava/lang/String;

    .line 63
    .line 64
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v3, v1, [J

    .line 67
    .line 68
    fill-array-data v3, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :catch_0
    move-exception p0

    .line 83
    goto :goto_0

    .line 84
    :catch_1
    move-exception p0

    .line 85
    goto :goto_0

    .line 86
    :catch_2
    move-exception p0

    .line 87
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array p2, v0, [J

    .line 90
    .line 91
    fill-array-data p2, :array_3

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array p2, v0, [J

    .line 115
    .line 116
    fill-array-data p2, :array_4

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdwa;->zza()Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array p3, v1, [J

    .line 140
    .line 141
    fill-array-data p3, :array_5

    .line 142
    .line 143
    .line 144
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    return-object v2

    .line 159
    :array_0
    .array-data 8
        -0x1ea5703e7dcfbe50L    # -9.335789668427847E160
        -0x21a8d17ff92e2c87L    # -2.894690171358962E146
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
        -0x40fcb8cda4f54210L    # -3.677008078761454E-5
        0x32d0941fb2ae3e2cL
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
        0x41b6eb0d5caf7b63L    # 3.845031326854765E8
        -0x7e8add0c29e4c8e2L
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
    :array_3
    .array-data 8
        0x3537a7bafa1205aL
        -0xd94117cdd6589ccL    # -1.4899912144952998E243
        -0x650d8ae1433a762L
        -0x37ca29a2f7c46682L    # -7.430867547026765E39
    .end array-data

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
        0x41dadc4b57222360L    # 1.802579292533409E9
        -0x1baaf0851116bb34L    # -2.0835577568404264E175
        -0x3164c744fc29ad4eL    # -4.696915083844498E70
        -0x12810d9fad69d641L    # -2.7310670342848934E219
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
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    :array_5
    .array-data 8
        -0x2175a46c74ea8e4cL
        -0x44bbfc42555a9041L    # -3.3111399405500656E-23
    .end array-data
.end method

.method private static final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggm;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgft;->zzb([B)Lcom/google/android/gms/internal/ads/zzgft;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgfv;->zza(Lcom/google/android/gms/internal/ads/zzgft;)Lcom/google/android/gms/internal/ads/zzggm;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p0

    .line 19
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    new-array v1, v1, [J

    .line 23
    .line 24
    fill-array-data v1, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    new-array v1, v1, [J

    .line 49
    .line 50
    fill-array-data v1, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    :goto_1
    return-object p0

    .line 69
    :array_0
    .array-data 8
        -0x16e171fad4f2a395L    # -2.2840001675767852E198
        0x14f84ba1ba1b5801L    # 1.182408945780996E-207
        -0x40da6e048cd69143L    # -1.6456789451778876E-4
        -0x4037d247c78cbc84L    # -0.18889525181159772
        -0x368dce39d0955c89L    # -6.491989672324361E45
    .end array-data

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
        0x40e9f8dbab5af349L    # 53190.864667391936
        -0x23f4fa3f503bbb94L    # -2.45512233123418E135
        -0x1a2c7394154a773L
        -0x4a74d174f8a5eb10L    # -9.081322451351615E-51
    .end array-data
.end method
