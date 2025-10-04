.class abstract Lcom/google/android/gms/internal/ads/zzhdb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zzd(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
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
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    sub-int/2addr v4, p1

    .line 10
    or-int v5, p1, p2

    .line 11
    .line 12
    sub-int/2addr v4, p2

    .line 13
    or-int/2addr v4, v5

    .line 14
    if-ltz v4, :cond_9

    .line 15
    .line 16
    add-int v4, p1, p2

    .line 17
    .line 18
    new-array p2, p2, [C

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    :goto_0
    if-ge p1, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhda;->zzd(B)Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    add-int/2addr p1, v3

    .line 34
    add-int/lit8 v7, v5, 0x1

    .line 35
    .line 36
    int-to-char v6, v6

    .line 37
    aput-char v6, p2, v5

    .line 38
    .line 39
    move v5, v7

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v11, v5

    .line 42
    :cond_1
    :goto_1
    if-ge p1, v4, :cond_8

    .line 43
    .line 44
    add-int/lit8 v5, p1, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhda;->zzd(B)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_2

    .line 55
    .line 56
    add-int/lit8 p1, v11, 0x1

    .line 57
    .line 58
    int-to-char v6, v6

    .line 59
    aput-char v6, p2, v11

    .line 60
    .line 61
    move v11, p1

    .line 62
    move p1, v5

    .line 63
    :goto_2
    if-ge p1, v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhda;->zzd(B)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    add-int/2addr p1, v3

    .line 76
    add-int/lit8 v6, v11, 0x1

    .line 77
    .line 78
    int-to-char v5, v5

    .line 79
    aput-char v5, p2, v11

    .line 80
    .line 81
    move v11, v6

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhda;->zzf(B)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_4

    .line 88
    .line 89
    if-ge v5, v4, :cond_3

    .line 90
    .line 91
    add-int/lit8 v7, v11, 0x1

    .line 92
    .line 93
    add-int/2addr p1, v2

    .line 94
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-static {v6, v5, p2, v11}, Lcom/google/android/gms/internal/ads/zzhda;->zzc(BB[CI)V

    .line 99
    .line 100
    .line 101
    :goto_3
    move v11, v7

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzd()Lcom/google/android/gms/internal/ads/zzhag;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    throw p0

    .line 108
    :cond_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhda;->zze(B)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_6

    .line 113
    .line 114
    add-int/lit8 v7, v4, -0x1

    .line 115
    .line 116
    if-ge v5, v7, :cond_5

    .line 117
    .line 118
    add-int/lit8 v7, v11, 0x1

    .line 119
    .line 120
    add-int/lit8 v8, p1, 0x2

    .line 121
    .line 122
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    add-int/2addr p1, v1

    .line 127
    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    invoke-static {v6, v5, v8, p2, v11}, Lcom/google/android/gms/internal/ads/zzhda;->zzb(BBB[CI)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzd()Lcom/google/android/gms/internal/ads/zzhag;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    throw p0

    .line 140
    :cond_6
    add-int/lit8 v7, v4, -0x2

    .line 141
    .line 142
    if-ge v5, v7, :cond_7

    .line 143
    .line 144
    add-int/lit8 v7, p1, 0x2

    .line 145
    .line 146
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    add-int/lit8 v5, p1, 0x3

    .line 151
    .line 152
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    add-int/lit8 p1, p1, 0x4

    .line 157
    .line 158
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    move v5, v6

    .line 163
    move v6, v8

    .line 164
    move v8, v9

    .line 165
    move-object v9, p2

    .line 166
    move v10, v11

    .line 167
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzhda;->zza(BBBB[CI)V

    .line 168
    .line 169
    .line 170
    add-int/2addr v11, v2

    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zzd()Lcom/google/android/gms/internal/ads/zzhag;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    throw p0

    .line 178
    :cond_8
    new-instance p0, Ljava/lang/String;

    .line 179
    .line 180
    invoke-direct {p0, p2, v0, v11}, Ljava/lang/String;-><init>([CII)V

    .line 181
    .line 182
    .line 183
    return-object p0

    .line 184
    :cond_9
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    new-array v1, v1, [Ljava/lang/Object;

    .line 203
    .line 204
    aput-object p0, v1, v0

    .line 205
    .line 206
    aput-object p1, v1, v3

    .line 207
    .line 208
    aput-object p2, v1, v2

    .line 209
    .line 210
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    const/4 p1, 0x6

    .line 213
    new-array p1, p1, [J

    .line 214
    .line 215
    fill-array-data p1, :array_0

    .line 216
    .line 217
    .line 218
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-direct {v4, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v4

    .line 233
    :array_0
    .array-data 8
        -0x527837bd30ced7b8L    # -2.3349876689443237E-89
        -0x6b988f58c6416e8aL    # -2.228084226180211E-210
        -0x5ff2fca5f7ed06ceL
        0x246b657a7ea8560cL    # 3.015403495260387E-133
        -0x210b543ea3c810L
        -0x33a19f8b44bb83b9L    # -7.627125834805588E59
    .end array-data
.end method


# virtual methods
.method public abstract zza(I[BII)I
.end method

.method public abstract zzb([BII)Ljava/lang/String;
.end method

.method public final zzc([BII)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhdb;->zza(I[BII)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_0
    return v0
.end method
