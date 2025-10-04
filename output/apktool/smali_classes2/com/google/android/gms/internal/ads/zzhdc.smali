.class final Lcom/google/android/gms/internal/ads/zzhdc;
.super Lcom/google/android/gms/internal/ads/zzhdb;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhdb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I[BII)I
    .locals 11

    .line 1
    const/16 v0, -0x13

    .line 2
    .line 3
    const/16 v1, -0x10

    .line 4
    .line 5
    const/16 v2, -0x3e

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, -0x60

    .line 9
    .line 10
    const/16 v5, -0x20

    .line 11
    .line 12
    const/16 v6, -0x41

    .line 13
    .line 14
    const/4 v7, -0x1

    .line 15
    if-eqz p1, :cond_e

    .line 16
    .line 17
    if-lt p3, p4, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    int-to-byte v8, p1

    .line 21
    if-ge v8, v5, :cond_2

    .line 22
    .line 23
    if-lt v8, v2, :cond_1

    .line 24
    .line 25
    add-int/lit8 p1, p3, 0x1

    .line 26
    .line 27
    aget-byte p3, p2, p3

    .line 28
    .line 29
    if-gt p3, v6, :cond_1

    .line 30
    .line 31
    :goto_0
    move p3, p1

    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_1
    return v7

    .line 35
    :cond_2
    shr-int/lit8 v9, p1, 0x8

    .line 36
    .line 37
    not-int v9, v9

    .line 38
    if-ge v8, v1, :cond_8

    .line 39
    .line 40
    int-to-byte p1, v9

    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    add-int/lit8 p1, p3, 0x1

    .line 44
    .line 45
    aget-byte p3, p2, p3

    .line 46
    .line 47
    if-ge p1, p4, :cond_3

    .line 48
    .line 49
    move v10, p3

    .line 50
    move p3, p1

    .line 51
    move p1, v10

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-static {v8, p3}, Lcom/google/android/gms/internal/ads/zzhde;->zza(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_4
    :goto_1
    if-gt p1, v6, :cond_7

    .line 59
    .line 60
    if-ne v8, v5, :cond_5

    .line 61
    .line 62
    if-lt p1, v4, :cond_7

    .line 63
    .line 64
    :cond_5
    if-ne v8, v0, :cond_6

    .line 65
    .line 66
    if-ge p1, v4, :cond_7

    .line 67
    .line 68
    :cond_6
    add-int/lit8 p1, p3, 0x1

    .line 69
    .line 70
    aget-byte p3, p2, p3

    .line 71
    .line 72
    if-gt p3, v6, :cond_7

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_7
    return v7

    .line 76
    :cond_8
    int-to-byte v9, v9

    .line 77
    if-nez v9, :cond_a

    .line 78
    .line 79
    add-int/lit8 p1, p3, 0x1

    .line 80
    .line 81
    aget-byte v9, p2, p3

    .line 82
    .line 83
    if-ge p1, p4, :cond_9

    .line 84
    .line 85
    move p3, p1

    .line 86
    const/4 p1, 0x0

    .line 87
    goto :goto_2

    .line 88
    :cond_9
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzhde;->zza(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :cond_a
    shr-int/lit8 p1, p1, 0x10

    .line 94
    .line 95
    :goto_2
    if-nez p1, :cond_c

    .line 96
    .line 97
    add-int/lit8 p1, p3, 0x1

    .line 98
    .line 99
    aget-byte p3, p2, p3

    .line 100
    .line 101
    if-ge p1, p4, :cond_b

    .line 102
    .line 103
    move v10, p3

    .line 104
    move p3, p1

    .line 105
    move p1, v10

    .line 106
    goto :goto_3

    .line 107
    :cond_b
    invoke-static {v8, v9, p3}, Lcom/google/android/gms/internal/ads/zzhde;->zzb(III)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    return p1

    .line 112
    :cond_c
    :goto_3
    if-gt v9, v6, :cond_d

    .line 113
    .line 114
    shl-int/lit8 v8, v8, 0x1c

    .line 115
    .line 116
    add-int/lit8 v9, v9, 0x70

    .line 117
    .line 118
    add-int/2addr v9, v8

    .line 119
    shr-int/lit8 v8, v9, 0x1e

    .line 120
    .line 121
    if-nez v8, :cond_d

    .line 122
    .line 123
    if-gt p1, v6, :cond_d

    .line 124
    .line 125
    add-int/lit8 p1, p3, 0x1

    .line 126
    .line 127
    aget-byte p3, p2, p3

    .line 128
    .line 129
    if-gt p3, v6, :cond_d

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_d
    return v7

    .line 133
    :cond_e
    :goto_4
    if-ge p3, p4, :cond_f

    .line 134
    .line 135
    aget-byte p1, p2, p3

    .line 136
    .line 137
    if-ltz p1, :cond_f

    .line 138
    .line 139
    add-int/lit8 p3, p3, 0x1

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_f
    if-lt p3, p4, :cond_10

    .line 143
    .line 144
    goto/16 :goto_7

    .line 145
    .line 146
    :cond_10
    :goto_5
    if-lt p3, p4, :cond_11

    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_11
    add-int/lit8 p1, p3, 0x1

    .line 150
    .line 151
    aget-byte v8, p2, p3

    .line 152
    .line 153
    if-gez v8, :cond_1a

    .line 154
    .line 155
    if-ge v8, v5, :cond_14

    .line 156
    .line 157
    if-lt p1, p4, :cond_12

    .line 158
    .line 159
    move v3, v8

    .line 160
    goto :goto_7

    .line 161
    :cond_12
    if-lt v8, v2, :cond_13

    .line 162
    .line 163
    add-int/lit8 p3, p3, 0x2

    .line 164
    .line 165
    aget-byte p1, p2, p1

    .line 166
    .line 167
    if-le p1, v6, :cond_10

    .line 168
    .line 169
    :cond_13
    :goto_6
    const/4 v3, -0x1

    .line 170
    goto :goto_7

    .line 171
    :cond_14
    if-ge v8, v1, :cond_18

    .line 172
    .line 173
    add-int/lit8 v9, p4, -0x1

    .line 174
    .line 175
    if-lt p1, v9, :cond_15

    .line 176
    .line 177
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzhde;->zzc([BII)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    goto :goto_7

    .line 182
    :cond_15
    add-int/lit8 v9, p3, 0x2

    .line 183
    .line 184
    aget-byte p1, p2, p1

    .line 185
    .line 186
    if-gt p1, v6, :cond_13

    .line 187
    .line 188
    if-ne v8, v5, :cond_16

    .line 189
    .line 190
    if-lt p1, v4, :cond_13

    .line 191
    .line 192
    :cond_16
    if-ne v8, v0, :cond_17

    .line 193
    .line 194
    if-ge p1, v4, :cond_13

    .line 195
    .line 196
    :cond_17
    add-int/lit8 p3, p3, 0x3

    .line 197
    .line 198
    aget-byte p1, p2, v9

    .line 199
    .line 200
    if-le p1, v6, :cond_10

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_18
    add-int/lit8 v9, p4, -0x2

    .line 204
    .line 205
    if-lt p1, v9, :cond_19

    .line 206
    .line 207
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzhde;->zzc([BII)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    goto :goto_7

    .line 212
    :cond_19
    add-int/lit8 v9, p3, 0x2

    .line 213
    .line 214
    aget-byte p1, p2, p1

    .line 215
    .line 216
    if-gt p1, v6, :cond_13

    .line 217
    .line 218
    shl-int/lit8 v8, v8, 0x1c

    .line 219
    .line 220
    add-int/lit8 p1, p1, 0x70

    .line 221
    .line 222
    add-int/2addr p1, v8

    .line 223
    shr-int/lit8 p1, p1, 0x1e

    .line 224
    .line 225
    if-nez p1, :cond_13

    .line 226
    .line 227
    add-int/lit8 p1, p3, 0x3

    .line 228
    .line 229
    aget-byte v8, p2, v9

    .line 230
    .line 231
    if-gt v8, v6, :cond_13

    .line 232
    .line 233
    add-int/lit8 p3, p3, 0x4

    .line 234
    .line 235
    aget-byte p1, p2, p1

    .line 236
    .line 237
    if-le p1, v6, :cond_10

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :goto_7
    return v3

    .line 241
    :cond_1a
    move p3, p1

    .line 242
    goto :goto_5
.end method

.method public final zzb([BII)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    array-length v4, p1

    .line 6
    sub-int v5, v4, p2

    .line 7
    .line 8
    or-int v6, p2, p3

    .line 9
    .line 10
    sub-int/2addr v5, p3

    .line 11
    or-int/2addr v5, v6

    .line 12
    if-ltz v5, :cond_9

    .line 13
    .line 14
    add-int v4, p2, p3

    .line 15
    .line 16
    new-array p3, p3, [C

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    if-ge p2, v4, :cond_0

    .line 20
    .line 21
    aget-byte v6, p1, p2

    .line 22
    .line 23
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhda;->zzd(B)Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    add-int/2addr p2, v3

    .line 30
    add-int/lit8 v7, v5, 0x1

    .line 31
    .line 32
    int-to-char v6, v6

    .line 33
    aput-char v6, p3, v5

    .line 34
    .line 35
    move v5, v7

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v11, v5

    .line 38
    :cond_1
    :goto_1
    if-ge p2, v4, :cond_8

    .line 39
    .line 40
    add-int/lit8 v5, p2, 0x1

    .line 41
    .line 42
    aget-byte v6, p1, p2

    .line 43
    .line 44
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhda;->zzd(B)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    add-int/lit8 p2, v11, 0x1

    .line 51
    .line 52
    int-to-char v6, v6

    .line 53
    aput-char v6, p3, v11

    .line 54
    .line 55
    move v11, p2

    .line 56
    move p2, v5

    .line 57
    :goto_2
    if-ge p2, v4, :cond_1

    .line 58
    .line 59
    aget-byte v5, p1, p2

    .line 60
    .line 61
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhda;->zzd(B)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    add-int/2addr p2, v3

    .line 68
    add-int/lit8 v6, v11, 0x1

    .line 69
    .line 70
    int-to-char v5, v5

    .line 71
    aput-char v5, p3, v11

    .line 72
    .line 73
    move v11, v6

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhda;->zzf(B)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_4

    .line 80
    .line 81
    if-ge v5, v4, :cond_3

    .line 82
    .line 83
    add-int/lit8 v7, v11, 0x1

    .line 84
    .line 85
    add-int/2addr p2, v2

    .line 86
    aget-byte v5, p1, v5

    .line 87
    .line 88
    invoke-static {v6, v5, p3, v11}, Lcom/google/android/gms/internal/ads/zzhda;->zzc(BB[CI)V

    .line 89
    .line 90
    .line 91
    :goto_3
    move v11, v7

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzd()Lcom/google/android/gms/internal/ads/zzhag;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    throw p1

    .line 98
    :cond_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhda;->zze(B)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_6

    .line 103
    .line 104
    add-int/lit8 v7, v4, -0x1

    .line 105
    .line 106
    if-ge v5, v7, :cond_5

    .line 107
    .line 108
    add-int/lit8 v7, v11, 0x1

    .line 109
    .line 110
    add-int/lit8 v8, p2, 0x2

    .line 111
    .line 112
    aget-byte v5, p1, v5

    .line 113
    .line 114
    add-int/2addr p2, v1

    .line 115
    aget-byte v8, p1, v8

    .line 116
    .line 117
    invoke-static {v6, v5, v8, p3, v11}, Lcom/google/android/gms/internal/ads/zzhda;->zzb(BBB[CI)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzd()Lcom/google/android/gms/internal/ads/zzhag;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    throw p1

    .line 126
    :cond_6
    add-int/lit8 v7, v4, -0x2

    .line 127
    .line 128
    if-ge v5, v7, :cond_7

    .line 129
    .line 130
    add-int/lit8 v7, p2, 0x2

    .line 131
    .line 132
    aget-byte v8, p1, v5

    .line 133
    .line 134
    add-int/lit8 v5, p2, 0x3

    .line 135
    .line 136
    aget-byte v7, p1, v7

    .line 137
    .line 138
    add-int/lit8 p2, p2, 0x4

    .line 139
    .line 140
    aget-byte v9, p1, v5

    .line 141
    .line 142
    move v5, v6

    .line 143
    move v6, v8

    .line 144
    move v8, v9

    .line 145
    move-object v9, p3

    .line 146
    move v10, v11

    .line 147
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzhda;->zza(BBBB[CI)V

    .line 148
    .line 149
    .line 150
    add-int/2addr v11, v2

    .line 151
    goto :goto_1

    .line 152
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzd()Lcom/google/android/gms/internal/ads/zzhag;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    throw p1

    .line 157
    :cond_8
    new-instance p1, Ljava/lang/String;

    .line 158
    .line 159
    invoke-direct {p1, p3, v0, v11}, Ljava/lang/String;-><init>([CII)V

    .line 160
    .line 161
    .line 162
    return-object p1

    .line 163
    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 164
    .line 165
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    new-array v1, v1, [Ljava/lang/Object;

    .line 178
    .line 179
    aput-object v4, v1, v0

    .line 180
    .line 181
    aput-object p2, v1, v3

    .line 182
    .line 183
    aput-object p3, v1, v2

    .line 184
    .line 185
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    const/4 p3, 0x6

    .line 188
    new-array p3, p3, [J

    .line 189
    .line 190
    fill-array-data p3, :array_0

    .line 191
    .line 192
    .line 193
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1

    .line 208
    nop

    .line 209
    :array_0
    .array-data 8
        0x76aff7e9a90c32e8L    # 5.033235463276987E263
        -0x3654c7de37d03710L    # -7.769726768439378E46
        0x3b628a43e5895c09L    # 1.2268808040660358E-22
        -0x19fefe9bc19b3d76L
        0x77e9ac79f6a3cae8L    # 4.2385294781889307E269
        -0x5a01a2d2a2458444L
    .end array-data
.end method
