.class final Lcom/google/android/gms/internal/ads/zzanb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzd:[B


# instance fields
.field public zza:I

.field public zzb:I

.field public zzc:[B

.field private zze:Z

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanb;->zzd:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzc:[B

    return-void
.end method


# virtual methods
.method public final zza([BII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zze:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sub-int/2addr p3, p2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzc:[B

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzanb;->zza:I

    .line 11
    .line 12
    add-int/2addr v2, p3

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    add-int/2addr v2, v2

    .line 16
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzc:[B

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzc:[B

    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zza:I

    .line 25
    .line 26
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zza:I

    .line 30
    .line 31
    add-int/2addr p1, p3

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zza:I

    .line 33
    .line 34
    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zze:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zza:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzf:I

    return-void
.end method

.method public final zzc(II)Z
    .locals 7

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzf:I

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-eqz v2, :cond_7

    .line 8
    .line 9
    const/16 v5, 0xb5

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    if-eq v2, v4, :cond_5

    .line 13
    .line 14
    if-eq v2, v6, :cond_3

    .line 15
    .line 16
    if-eq v2, v1, :cond_1

    .line 17
    .line 18
    const/16 v0, 0xb3

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    if-ne p1, v5, :cond_8

    .line 23
    .line 24
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zza:I

    .line 25
    .line 26
    sub-int/2addr p1, p2

    .line 27
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zza:I

    .line 28
    .line 29
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzanb;->zze:Z

    .line 30
    .line 31
    return v4

    .line 32
    :cond_1
    and-int/lit16 p1, p1, 0xf0

    .line 33
    .line 34
    const/16 p2, 0x20

    .line 35
    .line 36
    if-eq p1, p2, :cond_2

    .line 37
    .line 38
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array p2, v1, [J

    .line 41
    .line 42
    fill-array-data p2, :array_0

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v0, v0, [J

    .line 55
    .line 56
    fill-array-data v0, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanb;->zzb()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zza:I

    .line 74
    .line 75
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    .line 76
    .line 77
    const/4 p1, 0x4

    .line 78
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzf:I

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/16 p2, 0x1f

    .line 82
    .line 83
    if-le p1, p2, :cond_4

    .line 84
    .line 85
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    new-array p2, v1, [J

    .line 88
    .line 89
    fill-array-data p2, :array_2

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v0, v0, [J

    .line 102
    .line 103
    fill-array-data v0, :array_3

    .line 104
    .line 105
    .line 106
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanb;->zzb()V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzf:I

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    if-eq p1, v5, :cond_6

    .line 124
    .line 125
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array p2, v1, [J

    .line 128
    .line 129
    fill-array-data p2, :array_4

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v0, v0, [J

    .line 142
    .line 143
    fill-array-data v0, :array_5

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanb;->zzb()V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_6
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzf:I

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_7
    const/16 p2, 0xb0

    .line 164
    .line 165
    if-ne p1, p2, :cond_8

    .line 166
    .line 167
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzf:I

    .line 168
    .line 169
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzanb;->zze:Z

    .line 170
    .line 171
    :cond_8
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzanb;->zzd:[B

    .line 172
    .line 173
    invoke-virtual {p0, p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzanb;->zza([BII)V

    .line 174
    .line 175
    .line 176
    return v3

    .line 177
    :array_0
    .array-data 8
        -0x203a46adf84453b3L    # -2.275546758086516E153
        0x3d6d6910cb965fa8L    # 8.358941990246502E-13
        -0x35b1a6f9b0756909L    # -8.870658006406364E49
    .end array-data

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
    :array_1
    .array-data 8
        0x7289b0b809668615L    # 5.481707062806438E243
        0x126f7245c7249ee1L    # 6.959592287364364E-220
        -0x1e4599243547e1fcL    # -5.9389691445208094E162
        0x29be8bd201f5c506L    # 1.300643788048875E-107
        -0x28dee20ebf26f221L    # -5.145589155840358E111
    .end array-data

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
    :array_2
    .array-data 8
        0x9ac4d4a988b7df5L
        -0x75f5caab450c7478L    # -2.66337924191569E-260
        -0x1a3845617db9741aL
    .end array-data

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
    :array_3
    .array-data 8
        -0x1bd0ac3ea39e64ddL    # -3.874080667952667E174
        -0x3c0946359a47edf2L    # -2.6200999644073353E19
        0x3194102752c20877L    # 7.267399806304406E-70
        0x1d7d555ec11a5422L
        -0x786cd7ce06c10d63L    # -3.541210244090058E-272
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
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
    :array_4
    .array-data 8
        0x8f303432276b9d8L
        -0x539aea3f5dc292acL    # -7.89704066669636E-95
        0x43677ccc1ed96bc0L    # 5.2889124776664576E16
    .end array-data

    :array_5
    .array-data 8
        0x76d0eb36211e8e86L    # 2.1310107023044224E264
        0x6040226ccbc5f481L    # 4.326558192107501E155
        0x70a51a478aefc955L    # 4.19356830357232E234
        -0x6a366129d663727cL    # -1.02145629327991E-203
        0x79b36a4190d58597L    # 1.720817499868046E278
    .end array-data
.end method
