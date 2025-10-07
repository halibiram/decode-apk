.class public final Lcom/google/android/gms/internal/ads/zzfwh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfvt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvt;

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
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvt;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwh;->zza:Lcom/google/android/gms/internal/ads/zzfvt;

    .line 22
    .line 23
    return-void

    .line 24
    nop

    :array_0
    .array-data 8
        0x609d2e1a2c73b872L    # 2.503942401536708E157
        0x75d15198f3c90088L    # 3.3285307617167934E259
        -0x5083e5d8c277d033L    # -5.925170932787092E-80
        -0x130572c90efd722dL    # -9.153093792511509E216
        -0x66023f3209409d9bL    # -1.750553949812063E-183
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
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfwg;->zza([B)Ljava/lang/String;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfwh;->zza:Lcom/google/android/gms/internal/ads/zzfvt;

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
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzfvt;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    .line 185
    .line 186
    :catch_0
    :cond_5
    return v3

    .line 187
    :array_0
    .array-data 8
        0x75aed2007487432cL    # 7.404290141031013E258
        0x403192583686344aL    # 17.57165852333518
        -0x696034f12348c3faL
        0x4fe0a27d18bded1bL    # 6.019278549727994E76
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
        -0x5173595b538a8c38L    # -1.84353020317876E-84
        -0x4cdc406f08f02679L    # -2.4002736004343557E-62
        -0x4a6f0061077fef4cL    # -1.1358260727738818E-50
        -0x4b8cf501b029a9e1L    # -4.853945350922643E-56
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
        -0x3226156eb15e064eL    # -1.0917211231676791E67
        -0x4d44b0a4b1c9296aL    # -2.593238313309715E-64
        -0x558a807acae557bfL    # -3.749402974881267E-104
        -0x4f91996964b29761L    # -2.1003670130035249E-75
        -0x2253cbe36ce35141L    # -1.7196176896727931E143
        -0x319c0f13239357bfL    # -4.300891005228961E69
        0xa96467c1374a761L
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
        -0x430e970802a6b945L    # -3.865804126070809E-15
        -0x40c0a689d46080afL    # -4.7835478801338144E-4
    .end array-data

    :array_4
    .array-data 8
        -0x2f5b02f104ad7899L    # -3.110788359500935E80
        -0xc18aaa727a77046L
        0x6973f29821f9ef50L    # 9.543079161051179E199
    .end array-data

    :array_5
    .array-data 8
        0x3423064471aa480eL    # 1.51538740923847E-57
        -0x397b18cf2a219ba4L    # -5.299562643071452E31
        0x29d81a9a31da1947L    # 4.105340137619215E-107
        -0xa6fe11fc7cc9ab5L    # -1.93641187193666E258
        0x23852b69df5e2025L    # 1.422146441502019E-137
        0x1b6b8904fc31f47aL
        0x8ee1e7222fa36efL
    .end array-data

    :array_6
    .array-data 8
        -0x7d1a8cac685b2713L
        0x778bca8c2ae58d10L    # 7.168915846570564E267
        -0x6f24fba8f483d11eL    # -1.7819670001395225E-227
        -0x2b2c92d32728bd2eL    # -4.2490550879234885E100
        0x601a4f0612c7774fL    # 8.81854536090166E154
        -0x1dd6c584786c1d5cL    # -7.264039044945096E164
        -0x54c1a5dce38869eeL
        0x609db546374dfa0eL
        -0xb744220b3345b4bL
        0x4a0406a72ad583d1L    # 3.6585018308828154E48
        0x798baf7e22cec837L    # 3.0673171601104143E277
    .end array-data
.end method
