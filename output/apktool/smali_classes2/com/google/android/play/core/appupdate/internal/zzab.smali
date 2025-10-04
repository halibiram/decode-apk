.class public final Lcom/google/android/play/core/appupdate/internal/zzab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/play/core/appupdate/internal/zzm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/play/core/appupdate/internal/zzab;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 22
    .line 23
    return-void

    .line 24
    nop

    :array_0
    .array-data 8
        -0x8d3258881ee201L
        -0x139f9d0b9563e2d3L    # -1.1033016047490733E214
        0x4d6c44e65a6d9c73L    # 9.303399711159546E64
        0x2649b4e460e870b4L    # 3.038061803970055E-124
        0x454691959f06c8b1L    # 5.4567742390943775E25
    .end array-data
.end method

.method public static zza(Landroid/content/Context;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v6, v2, [J

    .line 12
    .line 13
    fill-array-data v6, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 28
    .line 29
    if-eqz v4, :cond_5

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v2, v2, [J

    .line 38
    .line 39
    fill-array-data v2, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/16 v4, 0x40

    .line 50
    .line 51
    invoke-virtual {p0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    array-length v2, p0

    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 v4, 0x0

    .line 64
    :goto_0
    if-ge v4, v2, :cond_5

    .line 65
    .line 66
    aget-object v5, p0, v4

    .line 67
    .line 68
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v5}, Lcom/google/android/play/core/appupdate/internal/zzaa;->zza([B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v7, v1, [J

    .line 79
    .line 80
    fill-array-data v7, :array_2

    .line 81
    .line 82
    .line 83
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_3

    .line 95
    .line 96
    sget-object v6, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    const/4 v8, 0x2

    .line 101
    new-array v8, v8, [J

    .line 102
    .line 103
    fill-array-data v8, :array_3

    .line 104
    .line 105
    .line 106
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-nez v7, :cond_1

    .line 118
    .line 119
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    const/4 v8, 0x3

    .line 122
    new-array v8, v8, [J

    .line 123
    .line 124
    fill-array-data v8, :array_4

    .line 125
    .line 126
    .line 127
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_2

    .line 139
    .line 140
    :cond_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v7, v1, [J

    .line 143
    .line 144
    fill-array-data v7, :array_5

    .line 145
    .line 146
    .line 147
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-nez v5, :cond_3

    .line 159
    .line 160
    :cond_2
    add-int/2addr v4, v0

    .line 161
    goto :goto_0

    .line 162
    :cond_3
    return v0

    .line 163
    :cond_4
    :goto_1
    sget-object p0, Lcom/google/android/play/core/appupdate/internal/zzab;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 164
    .line 165
    new-array v0, v3, [Ljava/lang/Object;

    .line 166
    .line 167
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    const/16 v2, 0xb

    .line 170
    .line 171
    new-array v2, v2, [J

    .line 172
    .line 173
    fill-array-data v2, :array_6

    .line 174
    .line 175
    .line 176
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p0, v1, v0}, Lcom/google/android/play/core/appupdate/internal/zzm;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    .line 185
    .line 186
    :catch_0
    :cond_5
    return v3

    .line 187
    :array_0
    .array-data 8
        -0xdcbc994e0c7e5e1L
        0x72af19f5c2b25646L    # 2.6545232103956754E244
        0xbae12d6197fd740L
        -0x6c3bbd5bf0dcf555L
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
    :array_1
    .array-data 8
        0x57092a01cd9ac82cL    # 1.8911659825316565E111
        -0x6c17e952dd34a94aL    # -8.944256842907843E-213
        0x4fa238b9c455aa9cL    # 4.1209284131859085E75
        -0x5f9d2e4113dc0e87L
    .end array-data

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
    .line 224
    .line 225
    .line 226
    .line 227
    :array_2
    .array-data 8
        -0x7055bbe266c37163L    # -3.304369281683071E-233
        -0x651660eb4a3ae906L
        -0x5413ce8b1e9b47aL
        -0x653586ca9bf730b0L
        0x73ae11f66e777d78L    # 1.6819855646564963E249
        -0xe28ba1b41c453a0L    # -2.4247631855739323E240
        0x2c089ace46d726bbL    # 1.439891114692425E-96
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
    :array_3
    .array-data 8
        -0x588c8a3103b1bd55L
        -0x55cbe345010cbf09L    # -2.192308749475761E-105
    .end array-data

    :array_4
    .array-data 8
        -0x3efc0673320d28c8L    # -163633.60056083812
        0x52b51fa42fa9b829L    # 2.6893456986588616E90
        0x2347a4bdd290eac3L    # 9.927140495456712E-139
    .end array-data

    :array_5
    .array-data 8
        0x2e0c599858822d03L    # 7.1256425363601995E-87
        -0x6635129e87da0b6aL    # -1.980363748312013E-184
        -0x767bfc7cf8b42110L    # -7.944774446523281E-263
        -0x4f02532434568cb0L    # -1.0497240184779022E-72
        -0x66d26516261889aeL    # -2.126276278198725E-187
        0xc170455c65b22b5L
        0x7af3622252b5bd5cL    # 1.8014592946763703E284
    .end array-data

    :array_6
    .array-data 8
        0x7bf2bbf8c92fa3dcL    # 1.1410705901934546E289
        0x706e38885b38e20eL    # 3.7534709057147856E233
        -0x5d60963767d64fdbL    # -6.440127577705392E-142
        0x7e74dacc222fbe66L    # 1.396622891242261E301
        -0x355b093eb1fe0829L    # -3.921760680382984E51
        0x229262667c0e337fL
        0x6d3222826d41ccf6L    # 1.0002526530388207E218
        0x3799da61e7f3365dL    # 7.419463325784892E-41
        -0x33746ae676ab41caL    # -5.5404051881851116E60
        0x133025c02631db0eL    # 2.927570927940106E-216
        -0x15710dcb8afb8f15L    # -1.9404978709933446E205
    .end array-data
.end method
