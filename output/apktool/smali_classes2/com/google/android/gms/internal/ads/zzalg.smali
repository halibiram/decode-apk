.class final Lcom/google/android/gms/internal/ads/zzalg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalg;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzalg;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzalg;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzalg;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzalg;->zze:I

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalg;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x7

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v3, v2, [J

    .line 32
    .line 33
    fill-array-data v3, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v3, -0x1

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v6, -0x1

    .line 51
    const/4 v7, -0x1

    .line 52
    const/4 v8, -0x1

    .line 53
    const/4 v9, -0x1

    .line 54
    :goto_0
    array-length v10, p0

    .line 55
    if-ge v4, v10, :cond_5

    .line 56
    .line 57
    aget-object v5, p0, v4

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfwk;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    const/4 v11, 0x3

    .line 72
    sparse-switch v10, :sswitch_data_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :sswitch_0
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v12, v2, [J

    .line 79
    .line 80
    fill-array-data v12, :array_2

    .line 81
    .line 82
    .line 83
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_0

    .line 95
    .line 96
    const/4 v5, 0x2

    .line 97
    goto :goto_2

    .line 98
    :sswitch_1
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v12, v2, [J

    .line 101
    .line 102
    fill-array-data v12, :array_3

    .line 103
    .line 104
    .line 105
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_0

    .line 117
    .line 118
    const/4 v5, 0x0

    .line 119
    goto :goto_2

    .line 120
    :sswitch_2
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v12, v2, [J

    .line 123
    .line 124
    fill-array-data v12, :array_4

    .line 125
    .line 126
    .line 127
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_0

    .line 139
    .line 140
    const/4 v5, 0x3

    .line 141
    goto :goto_2

    .line 142
    :sswitch_3
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v12, v2, [J

    .line 145
    .line 146
    fill-array-data v12, :array_5

    .line 147
    .line 148
    .line 149
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_0

    .line 161
    .line 162
    const/4 v5, 0x1

    .line 163
    goto :goto_2

    .line 164
    :cond_0
    :goto_1
    const/4 v5, -0x1

    .line 165
    :goto_2
    if-eqz v5, :cond_4

    .line 166
    .line 167
    if-eq v5, v0, :cond_3

    .line 168
    .line 169
    if-eq v5, v2, :cond_2

    .line 170
    .line 171
    if-eq v5, v11, :cond_1

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_1
    move v9, v4

    .line 175
    goto :goto_3

    .line 176
    :cond_2
    move v8, v4

    .line 177
    goto :goto_3

    .line 178
    :cond_3
    move v7, v4

    .line 179
    goto :goto_3

    .line 180
    :cond_4
    move v6, v4

    .line 181
    :goto_3
    add-int/2addr v4, v0

    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_5
    if-eq v6, v3, :cond_6

    .line 185
    .line 186
    if-eq v7, v3, :cond_6

    .line 187
    .line 188
    if-eq v9, v3, :cond_6

    .line 189
    .line 190
    new-instance p0, Lcom/google/android/gms/internal/ads/zzalg;

    .line 191
    .line 192
    move-object v5, p0

    .line 193
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzalg;-><init>(IIIII)V

    .line 194
    .line 195
    .line 196
    return-object p0

    .line 197
    :cond_6
    const/4 p0, 0x0

    .line 198
    return-object p0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_3
        0x36452d -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

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
    :array_0
    .array-data 8
        -0x3c86da30f7cbe60fL    # -1.13255128701706E17
        -0x6fe0d044ebfd2714L    # -5.021913833238279E-231
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
    :array_1
    .array-data 8
        0x493732e5927f8eb4L    # 5.173508732544207E44
        -0x58a51efe63a25bd0L
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_2
    .array-data 8
        -0x749fafea7e7c9ffbL    # -6.953171239393085E-254
        0x1e1ced78187cef5fL
    .end array-data

    :array_3
    .array-data 8
        -0x74e80a4e407d0937L
        0x446fed8bd2e5100aL    # 4.71172858380005E21
    .end array-data

    :array_4
    .array-data 8
        0x3a752b03d723bfbdL    # 4.274849079505668E-27
        0x5a7ba3b9f17cc4cfL    # 7.483921810049231E127
    .end array-data

    :array_5
    .array-data 8
        0xabf0b952f9bd405L
        0x19488ee90922236cL    # 7.055210886299517E-187
    .end array-data
.end method
