.class public final Lcom/google/android/gms/internal/ads/zzajn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Z

.field public final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzc:Lcom/google/android/gms/internal/ads/zzadz;

.field public final zzd:I

.field public final zze:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;I[BII[B)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-nez p7, :cond_1

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 v4, 0x0

    .line 17
    :goto_1
    xor-int/2addr v3, v4

    .line 18
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 19
    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajn;->zza:Z

    .line 22
    .line 23
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajn;->zzb:Ljava/lang/String;

    .line 24
    .line 25
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzajn;->zzd:I

    .line 26
    .line 27
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzajn;->zze:[B

    .line 28
    .line 29
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadz;

    .line 30
    .line 31
    if-nez p2, :cond_3

    .line 32
    .line 33
    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    const/4 p7, 0x3

    .line 41
    sparse-switch p3, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :sswitch_0
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v1, v0, [J

    .line 48
    .line 49
    fill-array-data v1, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-eqz p3, :cond_4

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    goto :goto_4

    .line 67
    :sswitch_1
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v3, v0, [J

    .line 70
    .line 71
    fill-array-data v3, :array_1

    .line 72
    .line 73
    .line 74
    invoke-direct {p3, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-eqz p3, :cond_4

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :sswitch_2
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v1, v0, [J

    .line 91
    .line 92
    fill-array-data v1, :array_2

    .line 93
    .line 94
    .line 95
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    if-eqz p3, :cond_4

    .line 107
    .line 108
    const/4 v1, 0x3

    .line 109
    goto :goto_4

    .line 110
    :sswitch_3
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v1, v0, [J

    .line 113
    .line 114
    fill-array-data v1, :array_3

    .line 115
    .line 116
    .line 117
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    if-eqz p3, :cond_4

    .line 129
    .line 130
    const/4 v1, 0x2

    .line 131
    goto :goto_4

    .line 132
    :cond_4
    :goto_3
    const/4 v1, -0x1

    .line 133
    :goto_4
    if-eqz v1, :cond_2

    .line 134
    .line 135
    if-eq v1, v2, :cond_2

    .line 136
    .line 137
    if-eq v1, v0, :cond_5

    .line 138
    .line 139
    if-eq v1, p7, :cond_5

    .line 140
    .line 141
    new-instance p3, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    new-instance p7, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    const/4 v0, 0x6

    .line 149
    new-array v0, v0, [J

    .line 150
    .line 151
    fill-array-data v0, :array_4

    .line 152
    .line 153
    .line 154
    invoke-direct {p7, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p7

    .line 161
    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    const/4 p7, 0x5

    .line 170
    new-array p7, p7, [J

    .line 171
    .line 172
    fill-array-data p7, :array_5

    .line 173
    .line 174
    .line 175
    invoke-direct {p2, p7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-static {p2, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    const/4 p7, 0x4

    .line 185
    new-array p7, p7, [J

    .line 186
    .line 187
    fill-array-data p7, :array_6

    .line 188
    .line 189
    .line 190
    invoke-direct {p3, p7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :cond_5
    :goto_5
    invoke-direct {p1, v0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzadz;-><init>(I[BII)V

    .line 203
    .line 204
    .line 205
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajn;->zzc:Lcom/google/android/gms/internal/ads/zzadz;

    .line 206
    .line 207
    return-void

    .line 208
    nop

    .line 209
    :sswitch_data_0
    .sparse-switch
        0x2e7ccd -> :sswitch_3
        0x2e7d0f -> :sswitch_2
        0x2e8997 -> :sswitch_1
        0x2e89a7 -> :sswitch_0
    .end sparse-switch

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
    :array_0
    .array-data 8
        0x57bec338845ea755L    # 4.734794579615952E114
        -0x48698be26d38084bL    # -6.443860361817572E-41
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
    :array_1
    .array-data 8
        -0x1af130ff2a9a4f6eL
        0x1c8ba2b7463ffdebL    # 3.575538972131158E-171
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
    :array_2
    .array-data 8
        -0x5ab0d5ba1a02488dL
        -0x3fb07f17b4b26330L    # -63.007089054962876
    .end array-data

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
    :array_3
    .array-data 8
        0x277e770ba57e92c9L    # 1.887657532724083E-118
        -0x18720ea8d9e894d3L    # -6.670505619588742E190
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_4
    .array-data 8
        -0x25337f5a0dfc0246L    # -2.4696283446855087E129
        -0x73c79e8a0e5d645dL    # -8.513142123142437E-250
        0xeb48e62b38a819aL    # 7.891982845943065E-238
        -0x17f1c536a2b3dee9L    # -1.724011436671884E193
        -0x3552a99f3700b758L    # -5.488214920928238E51
        0x646e06e825d9e43fL    # 5.9412679742106025E175
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_5
    .array-data 8
        -0x72eea10c7289a56cL    # -9.937701839322064E-246
        -0x23eb4eba854d0ac0L    # -3.760021473788613E135
        -0x62979aa094053762L    # -5.171431938080657E-167
        0x2e3a04142d094272L    # 5.231191900052192E-86
        -0x6a1834f64ef38d64L
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :array_6
    .array-data 8
        0x15ef7cde57f9fc93L    # 5.021515507051886E-203
        -0x6e4c0f76ed5d589L    # -2.358318101803305E275
        -0x8f56c59398d9e5bL
        0x48f59ff8079b796L
    .end array-data
.end method
