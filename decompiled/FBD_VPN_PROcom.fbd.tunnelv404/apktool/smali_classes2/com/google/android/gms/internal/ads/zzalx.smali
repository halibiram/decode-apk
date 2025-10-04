.class public final Lcom/google/android/gms/internal/ads/zzalx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzakq;Lcom/google/android/gms/internal/ads/zzep;)V
    .locals 9

    .line 1
    const/4 p4, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    add-int/2addr p3, p2

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzfp;->zzI([BI)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-lez p2, :cond_8

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 p2, 0x8

    .line 32
    .line 33
    if-lt p1, p2, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_1
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    new-array v1, v1, [J

    .line 42
    .line 43
    fill-array-data v1, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzek;->zze(ZLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    add-int/lit8 p3, p3, -0x8

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const v1, 0x76747463

    .line 69
    .line 70
    .line 71
    if-ne p1, v1, :cond_7

    .line 72
    .line 73
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    move-object v3, v1

    .line 77
    move-object v4, v3

    .line 78
    :goto_2
    if-lez p3, :cond_4

    .line 79
    .line 80
    if-lt p3, p2, :cond_1

    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_1
    const/4 v5, 0x0

    .line 85
    :goto_3
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    const/4 v7, 0x6

    .line 88
    new-array v7, v7, [J

    .line 89
    .line 90
    fill-array-data v7, :array_1

    .line 91
    .line 92
    .line 93
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzek;->zze(ZLjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    add-int/lit8 p3, p3, -0x8

    .line 112
    .line 113
    add-int/lit8 v5, v5, -0x8

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    invoke-static {v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzfy;->zzA([BII)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 128
    .line 129
    .line 130
    const v8, 0x73747467

    .line 131
    .line 132
    .line 133
    if-ne v6, v8, :cond_2

    .line 134
    .line 135
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzamh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzea;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    goto :goto_4

    .line 140
    :cond_2
    const v8, 0x7061796c

    .line 141
    .line 142
    .line 143
    if-ne v6, v8, :cond_3

    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-static {v1, v3, v6}, Lcom/google/android/gms/internal/ads/zzamh;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    :cond_3
    :goto_4
    sub-int/2addr p3, v5

    .line 158
    goto :goto_2

    .line 159
    :cond_4
    if-nez v3, :cond_5

    .line 160
    .line 161
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array p2, p4, [J

    .line 164
    .line 165
    const-wide v5, -0x58330b77855ce5bbL    # -5.741143166815138E-117

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    aput-wide v5, p2, v0

    .line 171
    .line 172
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    :cond_5
    if-eqz v4, :cond_6

    .line 180
    .line 181
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzea;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzea;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzea;->zzp()Lcom/google/android/gms/internal/ads/zzec;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    goto :goto_5

    .line 189
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzamg;

    .line 190
    .line 191
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamg;-><init>()V

    .line 192
    .line 193
    .line 194
    iput-object v3, p1, Lcom/google/android/gms/internal/ads/zzamg;->zzc:Ljava/lang/CharSequence;

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamg;->zza()Lcom/google/android/gms/internal/ads/zzea;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzea;->zzp()Lcom/google/android/gms/internal/ads/zzec;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    :goto_5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 210
    .line 211
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakj;

    .line 217
    .line 218
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    move-object v1, p1

    .line 224
    move-wide v3, v5

    .line 225
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Ljava/util/List;JJ)V

    .line 226
    .line 227
    .line 228
    invoke-interface {p5, p1}, Lcom/google/android/gms/internal/ads/zzep;->zza(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    nop

    .line 233
    :array_0
    .array-data 8
        0x202c92ee35d234a7L    # 1.065571174985787E-153
        -0x60e696ca55a50959L    # -7.229755811898706E-159
        -0x173dd48fa3ba196bL    # -4.244382760826674E196
        -0x4c0636ea78a33704L    # -2.5674154490197356E-58
        0xf345671e26ac5f1L
        0xe0ed72d208f695dL    # 5.781431010439361E-241
        -0x5a369e8c949537d1L
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
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_1
    .array-data 8
        0x23caabb09b456f50L
        -0x7ed0eb251d99b146L    # -5.66546883022279E-303
        0x7d71b3d4f0298a04L    # 1.8089625123370416E296
        0x7ee5a33a3a136c4fL    # 1.8547905901280073E303
        -0x233a050097d9da1aL    # -8.179839634961784E138
        -0x4161042ba470334bL    # -4.616932432470454E-7
    .end array-data
.end method
