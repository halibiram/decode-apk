.class public final Lcom/google/android/gms/internal/ads/zzhw;
.super Lcom/google/android/gms/internal/ads/zzgq;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/gms/internal/ads/zzhb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:J

.field private zzf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zza:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x104c1e980e514c3cL
        -0x7b90b16541111f97L    # -2.570018673376202E-287
        0x33408a4b17c71e70L    # 8.041403837069441E-62
    .end array-data
.end method

.method private static zzk(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzhb;)Landroid/content/res/AssetFileDescriptor;
    .locals 11

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    new-array v6, v5, [J

    .line 18
    .line 19
    fill-array-data v6, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/16 v4, 0x3ec

    .line 34
    .line 35
    const/16 v6, 0x7d5

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    if-nez v3, :cond_6

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v9, v5, [J

    .line 47
    .line 48
    fill-array-data v9, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v8, 0x1

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-ne v3, v8, :cond_0

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v10, v2, [J

    .line 85
    .line 86
    fill-array-data v10, :array_2

    .line 87
    .line 88
    .line 89
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_0

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v5, v5, [J

    .line 111
    .line 112
    fill-array-data v5, :array_3

    .line 113
    .line 114
    .line 115
    invoke-direct {v9, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v4, v2, [J

    .line 138
    .line 139
    fill-array-data v4, :array_4

    .line 140
    .line 141
    .line 142
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_1

    .line 154
    .line 155
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_2

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_3

    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    goto :goto_1

    .line 193
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_1
    invoke-static {v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array v5, v2, [J

    .line 208
    .line 209
    fill-array-data v5, :array_5

    .line 210
    .line 211
    .line 212
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-static {v4, v3, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v2, v2, [J

    .line 222
    .line 223
    fill-array-data v2, :array_6

    .line 224
    .line 225
    .line 226
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {p0, v0, v2, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_4

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhv;

    .line 241
    .line 242
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 243
    .line 244
    new-array v0, v1, [J

    .line 245
    .line 246
    fill-array-data v0, :array_7

    .line 247
    .line 248
    .line 249
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-direct {p0, p1, v7, v6}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 257
    .line 258
    .line 259
    throw p0

    .line 260
    :catch_0
    move-exception p0

    .line 261
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    .line 262
    .line 263
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    const/16 v1, 0xc

    .line 266
    .line 267
    new-array v1, v1, [J

    .line 268
    .line 269
    fill-array-data v1, :array_8

    .line 270
    .line 271
    .line 272
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-direct {p1, v0, p0, v6}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 280
    .line 281
    .line 282
    throw p1

    .line 283
    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhv;

    .line 284
    .line 285
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 295
    .line 296
    new-array v1, v1, [J

    .line 297
    .line 298
    fill-array-data v1, :array_9

    .line 299
    .line 300
    .line 301
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 315
    .line 316
    new-array v0, v0, [J

    .line 317
    .line 318
    fill-array-data v0, :array_a

    .line 319
    .line 320
    .line 321
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 322
    .line 323
    .line 324
    invoke-static {p1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-direct {p0, p1, v7, v4}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 329
    .line 330
    .line 331
    throw p0

    .line 332
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    if-eqz v2, :cond_8

    .line 341
    .line 342
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 346
    :goto_3
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 347
    .line 348
    .line 349
    move-result-object p0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 350
    if-eqz p0, :cond_7

    .line 351
    .line 352
    return-object p0

    .line 353
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhv;

    .line 354
    .line 355
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 360
    .line 361
    new-array v1, v1, [J

    .line 362
    .line 363
    fill-array-data v1, :array_b

    .line 364
    .line 365
    .line 366
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    const/16 v0, 0x7d0

    .line 378
    .line 379
    invoke-direct {p0, p1, v7, v0}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 380
    .line 381
    .line 382
    throw p0

    .line 383
    :catch_1
    move-exception p0

    .line 384
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    .line 385
    .line 386
    invoke-direct {p1, v7, p0, v6}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 387
    .line 388
    .line 389
    throw p1

    .line 390
    :cond_8
    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 391
    :catch_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhv;

    .line 392
    .line 393
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 394
    .line 395
    new-array v0, v0, [J

    .line 396
    .line 397
    fill-array-data v0, :array_c

    .line 398
    .line 399
    .line 400
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    invoke-direct {p0, p1, v7, v4}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 408
    .line 409
    .line 410
    throw p0

    .line 411
    :array_0
    .array-data 8
        0x64390d55d9055850L
        0x32bbd6c94c1a4e29L    # 2.6434719643453612E-64
        0x1319599a5277a62dL    # 1.149003318634599E-216
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_1
    .array-data 8
        -0x22ba842cd7bcca89L    # -2.0467126607591272E141
        -0xf49beed393783d5L    # -8.84480944234797E234
        0x1ac8bf3745321632L
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_2
    .array-data 8
        0x326faeac57b3f513L    # 9.401299677740315E-66
        0x279e25261a68ee73L    # 7.471342051335734E-118
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_3
    .array-data 8
        0x3a2963945af829bbL    # 1.602270055701984E-28
        0x2e5d75b28eac9774L
        -0x64674f0a2f04bf83L    # -9.749124864533123E-176
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :array_4
    .array-data 8
        0x7175076aafaf3de7L    # 3.4233761350714476E238
        -0x2927bfa6298df487L    # -2.2782150819090158E110
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    :array_5
    .array-data 8
        -0x4c88fa4dba473e83L    # -8.954238914359761E-61
        0x537ea0ac81a67902L    # 1.5971734717890146E94
    .end array-data

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :array_6
    .array-data 8
        -0x4a392d440d016a40L    # -1.2200198216825128E-49
        0x7a45014432ad0456L    # 9.532077378738226E280
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    :array_7
    .array-data 8
        -0x412756943922cb57L    # -5.8798315033084916E-6
        -0x34b9d8c8fa37d6f5L    # -4.243706833272881E54
        0x3b9de2ae2f988fdaL    # 1.5821236277746351E-21
        0x1aa6a5432676d42eL
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_8
    .array-data 8
        0x10b5ff8ebe19471fL    # 3.627370022999909E-228
        -0x4cba30275c893d55L    # -1.0604358058857899E-61
        -0x4364f199b0815904L    # -9.387021935709729E-17
        -0x6a8baab1c37a1fb4L
        -0x1b810ec7d65aeb8aL    # -1.224473981724911E176
        -0x1380ba651b4b6143L    # -4.21105705490609E214
        -0x2b54769eea596794L    # -7.528691330349232E99
        0x7cb0b38cdcb81c4bL    # 4.16665796886505E292
        0x7d7d1d08934bec70L    # 2.9750129365515072E296
        -0x75e0cb92a82756aeL    # -6.342274972663135E-260
        0x5cfd7a5dafe8eccaL    # 8.775985618199593E139
        0x1bcc2146d3a2fc9L
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :array_9
    .array-data 8
        0x71a05d6829183b6aL
        -0x5eb3e9c609aa3775L
        -0x159047463b509dcbL    # -4.972810924199093E204
        0x7b6048f5ed2081b2L    # 1.93728593019237E286
    .end array-data

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :array_a
    .array-data 8
        -0x3134bcc91d10673L    # -5.728842015161197E293
        -0x1797de5bc013ccdeL    # -8.807850924592764E194
        -0x2b5e1a269cdb4564L    # -4.893385212827865E99
        -0xdbd443cdfbaad6aL    # -2.498297784429376E242
        0x3aad1d06041933edL    # 4.703519091898358E-26
        0x525f0c82b828b6c9L    # 6.1765297303767436E88
    .end array-data

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :array_b
    .array-data 8
        -0x5f541dcc0366c258L
        0x5d758d487f555ba8L    # 1.6425677117621203E142
        0x1a4e9bf416a8ba22L
        0x2d37b8564cbab3e7L    # 7.277751566753505E-91
    .end array-data

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    :array_c
    .array-data 8
        0x28280cda3c818074L    # 3.05190107612427E-115
        0x5fc10d2c8eaff33bL    # 1.78611496805245E153
        0x1ba4eba218372817L
        0x771908cc1788e2e2L    # 5.0451346187864654E265
        -0x76561321dce33265L    # -4.116584002653785E-262
        0x6c878b6762375431L    # 6.340992668917435E214
    .end array-data
.end method


# virtual methods
.method public final zza([BII)I
    .locals 9

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zze:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    cmp-long v5, v0, v2

    .line 11
    .line 12
    if-eqz v5, :cond_5

    .line 13
    .line 14
    const/16 v2, 0x7d0

    .line 15
    .line 16
    const-wide/16 v5, -0x1

    .line 17
    .line 18
    cmp-long v3, v0, v5

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    int-to-long v7, p3

    .line 23
    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    long-to-int p3, v0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzd:Ljava/io/InputStream;

    .line 32
    .line 33
    sget v1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-ne p1, v4, :cond_3

    .line 40
    .line 41
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zze:J

    .line 42
    .line 43
    cmp-long p3, p1, v5

    .line 44
    .line 45
    if-nez p3, :cond_2

    .line 46
    .line 47
    return v4

    .line 48
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    .line 49
    .line 50
    new-instance p2, Ljava/io/EOFException;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/16 v0, 0x8

    .line 58
    .line 59
    new-array v0, v0, [J

    .line 60
    .line 61
    fill-array-data v0, :array_0

    .line 62
    .line 63
    .line 64
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-direct {p1, p3, p2, v2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_3
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zze:J

    .line 76
    .line 77
    cmp-long v0, p2, v5

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    int-to-long v0, p1

    .line 82
    sub-long/2addr p2, v0

    .line 83
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zze:J

    .line 84
    .line 85
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzg(I)V

    .line 86
    .line 87
    .line 88
    return p1

    .line 89
    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhv;

    .line 90
    .line 91
    const/4 p3, 0x0

    .line 92
    invoke-direct {p2, p3, p1, v2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 93
    .line 94
    .line 95
    throw p2

    .line 96
    :cond_5
    return v4

    .line 97
    :array_0
    .array-data 8
        0x2d64c8a72eac146eL    # 5.101481083572134E-90
        0x2a273fb7fc38eb20L    # 1.267108958554192E-105
        0x4db9b6cc50f90d13L    # 2.7080060727079267E66
        0x26a8c0f76bc8452fL    # 1.872290434842045E-122
        -0x7056eacc94effc32L
        0xcea417fa1d89de3L
        -0x5071a64ebbbb7a03L    # -1.2798380585019083E-79
        -0x7ec3d1ccc086298cL
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhb;)J
    .locals 13

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzb:Lcom/google/android/gms/internal/ads/zzhb;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzi(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zza:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhw;->zzk(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzhb;)Landroid/content/res/AssetFileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    new-instance v2, Ljava/io/FileInputStream;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzd:Ljava/io/InputStream;

    .line 30
    .line 31
    const/16 v3, 0x7d8

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const-wide/16 v5, -0x1

    .line 35
    .line 36
    cmp-long v7, v0, v5

    .line 37
    .line 38
    if-eqz v7, :cond_1

    .line 39
    .line 40
    :try_start_0
    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 41
    .line 42
    cmp-long v10, v8, v0

    .line 43
    .line 44
    if-gtz v10, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    .line 48
    .line 49
    invoke-direct {p1, v4, v4, v3}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :catch_1
    move-exception p1

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 60
    .line 61
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 66
    .line 67
    add-long/2addr v10, v8

    .line 68
    invoke-virtual {v2, v10, v11}, Ljava/io/FileInputStream;->skip(J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v10

    .line 72
    sub-long/2addr v10, v8

    .line 73
    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 74
    .line 75
    cmp-long v12, v10, v8

    .line 76
    .line 77
    if-nez v12, :cond_9

    .line 78
    .line 79
    const-wide/16 v8, 0x0

    .line 80
    .line 81
    if-nez v7, :cond_4

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    cmp-long v7, v1, v8

    .line 92
    .line 93
    if-nez v7, :cond_2

    .line 94
    .line 95
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzhw;->zze:J

    .line 96
    .line 97
    move-wide v1, v5

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    .line 100
    .line 101
    .line 102
    move-result-wide v1

    .line 103
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    sub-long/2addr v1, v10

    .line 108
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zze:J

    .line 109
    .line 110
    cmp-long v0, v1, v8

    .line 111
    .line 112
    if-ltz v0, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    .line 116
    .line 117
    invoke-direct {p1, v4, v4, v3}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_4
    sub-long v1, v0, v10

    .line 122
    .line 123
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zze:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhv; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    cmp-long v0, v1, v8

    .line 126
    .line 127
    if-ltz v0, :cond_8

    .line 128
    .line 129
    :goto_1
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 130
    .line 131
    cmp-long v0, v3, v5

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    cmp-long v0, v1, v5

    .line 136
    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    :goto_2
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zze:J

    .line 145
    .line 146
    :cond_6
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzf:Z

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 150
    .line 151
    .line 152
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 153
    .line 154
    cmp-long p1, v0, v5

    .line 155
    .line 156
    if-eqz p1, :cond_7

    .line 157
    .line 158
    return-wide v0

    .line 159
    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zze:J

    .line 160
    .line 161
    return-wide v0

    .line 162
    :cond_8
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgx;

    .line 163
    .line 164
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(I)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    .line 169
    .line 170
    invoke-direct {p1, v4, v4, v3}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 171
    .line 172
    .line 173
    throw p1
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzhv; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    .line 175
    .line 176
    const/16 v1, 0x7d0

    .line 177
    .line 178
    invoke-direct {v0, v4, p1, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :goto_4
    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzb:Lcom/google/android/gms/internal/ads/zzhb;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzb:Lcom/google/android/gms/internal/ads/zzhb;

    .line 3
    .line 4
    const/16 v1, 0x7d0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzd:Ljava/io/InputStream;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v3

    .line 16
    goto :goto_4

    .line 17
    :catch_0
    move-exception v3

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzd:Ljava/io/InputStream;

    .line 20
    .line 21
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    goto :goto_7

    .line 31
    :catch_1
    move-exception v3

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzf:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzf:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :goto_2
    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhv;

    .line 46
    .line 47
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 48
    .line 49
    .line 50
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :goto_3
    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhv;

    .line 52
    .line 53
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 54
    .line 55
    .line 56
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzd:Ljava/io/InputStream;

    .line 58
    .line 59
    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_5

    .line 67
    :catch_2
    move-exception v3

    .line 68
    goto :goto_6

    .line 69
    :cond_3
    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzf:Z

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzf:Z

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 78
    .line 79
    .line 80
    :cond_4
    throw v3

    .line 81
    :goto_6
    :try_start_5
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhv;

    .line 82
    .line 83
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 84
    .line 85
    .line 86
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 87
    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 88
    .line 89
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzf:Z

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzf:Z

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 96
    .line 97
    .line 98
    :cond_5
    throw v1
.end method
