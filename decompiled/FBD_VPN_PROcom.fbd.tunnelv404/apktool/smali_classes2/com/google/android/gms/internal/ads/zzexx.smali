.class final Lcom/google/android/gms/internal/ads/zzexx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgey;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgey;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexx;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexx;->zzb:Landroid/content/Context;

    return-void
.end method

.method private static zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

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
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 23
    .line 24
    .line 25
    const/high16 p1, 0x10000

    .line 26
    .line 27
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x2a2547fbef788990L
        -0x74378a9cb7e108d2L    # -6.67212657607898E-252
        0x7927448f6324c0c2L    # 4.027927204706467E275
        0x7ee39e705abcbd9fL    # 1.6817457793289075E303
        0x68b362d121747b99L    # 2.2642557478724983E196
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzexw;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzexw;-><init>(Lcom/google/android/gms/internal/ads/zzexx;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzexx;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgey;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzexv;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzexx;->zzb:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v6, 0x3

    .line 14
    new-array v6, v6, [J

    .line 15
    .line 16
    fill-array-data v6, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzexx;->zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v8, 0x4

    .line 37
    new-array v9, v8, [J

    .line 38
    .line 39
    fill-array-data v9, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzexx;->zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcdv;->zzr()Z

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzexx;->zzb:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v9}, Lcom/google/android/gms/common/util/DeviceProperties;->isLatchsky(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    invoke-static {v9}, Lcom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Landroid/content/Context;)Z

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v16

    .line 81
    new-instance v6, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    const/16 v10, 0x18

    .line 89
    .line 90
    const/4 v11, 0x0

    .line 91
    if-lt v9, v10, :cond_0

    .line 92
    .line 93
    invoke-static {}, L딻땔땫듨뎬딜땋뒀돸딃딝듌딽딜딻뒤땫땄듽딀돨땻뒤뒼땝땸듬뎠돠딄뒈된딄둠둣뒬듼따뒵된돸땁땨돰돠뒻딄뒈둥뒐됨딁둠뎡땲땋뎻딐땩둬딝땻딠딄됨땩땃돤딀땳땫딅디둬둑돠든뎰땠뒐뎻뒉돸돳됐딌땵듽둠뎬땐돼뎰둔딄땟땧됨뎻듰드뒙딸되듼뒬듽따딻딽딀뒾둠뒤돠땡듼되땋땩딝딄돰돝딞됴돴땩돸뎨;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두()Landroid/os/LocaleList;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    const/4 v10, 0x0

    .line 98
    :goto_0
    invoke-static {v9}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/os/LocaleList;)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-ge v10, v1, :cond_0

    .line 103
    .line 104
    invoke-static {v9, v10}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    add-int/2addr v10, v3

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzexx;->zzb:Landroid/content/Context;

    .line 118
    .line 119
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    const/4 v10, 0x7

    .line 122
    new-array v10, v10, [J

    .line 123
    .line 124
    fill-array-data v10, :array_2

    .line 125
    .line 126
    .line 127
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-static {v4, v9}, Lcom/google/android/gms/internal/ads/zzexx;->zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    if-nez v9, :cond_2

    .line 139
    .line 140
    :catch_0
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 143
    .line 144
    if-nez v9, :cond_3

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_1

    .line 158
    .line 159
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 160
    .line 161
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 162
    .line 163
    new-instance v10, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    new-array v3, v2, [J

    .line 174
    .line 175
    fill-array-data v3, :array_3

    .line 176
    .line 177
    .line 178
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzexx;->zzb:Landroid/content/Context;

    .line 196
    .line 197
    const/16 v9, 0x80

    .line 198
    .line 199
    :try_start_1
    invoke-static {v3}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v11, v8, [J

    .line 206
    .line 207
    fill-array-data v11, :array_4

    .line 208
    .line 209
    .line 210
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    invoke-virtual {v3, v10, v9}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    if-eqz v3, :cond_4

    .line 222
    .line 223
    iget v10, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 224
    .line 225
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 226
    .line 227
    new-instance v11, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 236
    .line 237
    new-array v2, v2, [J

    .line 238
    .line 239
    fill-array-data v2, :array_5

    .line 240
    .line 241
    .line 242
    invoke-direct {v10, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    goto :goto_3

    .line 260
    :catch_1
    nop

    .line 261
    :cond_4
    const/4 v2, 0x0

    .line 262
    :goto_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzexx;->zzb:Landroid/content/Context;

    .line 263
    .line 264
    sget-object v21, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 265
    .line 266
    if-nez v4, :cond_6

    .line 267
    .line 268
    :cond_5
    const/4 v3, 0x0

    .line 269
    goto :goto_5

    .line 270
    :cond_6
    new-instance v10, Landroid/content/Intent;

    .line 271
    .line 272
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 273
    .line 274
    new-array v8, v8, [J

    .line 275
    .line 276
    fill-array-data v8, :array_6

    .line 277
    .line 278
    .line 279
    invoke-direct {v11, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 287
    .line 288
    const/4 v9, 0x5

    .line 289
    new-array v9, v9, [J

    .line 290
    .line 291
    fill-array-data v9, :array_7

    .line 292
    .line 293
    .line 294
    invoke-direct {v11, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    invoke-direct {v10, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 306
    .line 307
    .line 308
    const/4 v8, 0x0

    .line 309
    invoke-virtual {v4, v10, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    const/high16 v8, 0x10000

    .line 314
    .line 315
    invoke-virtual {v4, v10, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    if-eqz v4, :cond_5

    .line 320
    .line 321
    if-eqz v9, :cond_5

    .line 322
    .line 323
    const/4 v8, 0x0

    .line 324
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 325
    .line 326
    .line 327
    move-result v10

    .line 328
    if-ge v8, v10, :cond_5

    .line 329
    .line 330
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v10

    .line 334
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 335
    .line 336
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 337
    .line 338
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 339
    .line 340
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 341
    .line 342
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v10

    .line 348
    if-eqz v10, :cond_7

    .line 349
    .line 350
    iget-object v4, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 351
    .line 352
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 353
    .line 354
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhhv;->zza(Landroid/content/Context;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    goto :goto_5

    .line 363
    :cond_7
    const/4 v10, 0x1

    .line 364
    add-int/2addr v8, v10

    .line 365
    goto :goto_4

    .line 366
    :goto_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 367
    .line 368
    .line 369
    new-instance v4, Landroid/os/StatFs;

    .line 370
    .line 371
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    invoke-direct {v4, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 383
    .line 384
    .line 385
    move-result-wide v8

    .line 386
    const-wide/16 v10, 0x400

    .line 387
    .line 388
    div-long v23, v8, v10

    .line 389
    .line 390
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgc;->zzkM:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 391
    .line 392
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    check-cast v4, Ljava/lang/Boolean;

    .line 401
    .line 402
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    if-eqz v4, :cond_8

    .line 407
    .line 408
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 409
    .line 410
    .line 411
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzexx;->zzb:Landroid/content/Context;

    .line 412
    .line 413
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzt;->zzA(Landroid/content/Context;)Z

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    if-eqz v4, :cond_8

    .line 418
    .line 419
    const/16 v25, 0x1

    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_8
    const/16 v25, 0x0

    .line 423
    .line 424
    :goto_6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgc;->zzkO:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 425
    .line 426
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 427
    .line 428
    .line 429
    move-result-object v8

    .line 430
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    check-cast v4, Ljava/lang/Boolean;

    .line 435
    .line 436
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    if-eqz v4, :cond_a

    .line 441
    .line 442
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzexx;->zzb:Landroid/content/Context;

    .line 443
    .line 444
    :try_start_2
    invoke-static {v4}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 445
    .line 446
    .line 447
    move-result-object v8

    .line 448
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    const/16 v9, 0x80

    .line 453
    .line 454
    invoke-virtual {v8, v4, v9}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 459
    .line 460
    if-eqz v4, :cond_9

    .line 461
    .line 462
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 463
    .line 464
    const/4 v9, 0x6

    .line 465
    new-array v10, v9, [J

    .line 466
    .line 467
    fill-array-data v10, :array_8

    .line 468
    .line 469
    .line 470
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v8

    .line 477
    invoke-virtual {v4, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 478
    .line 479
    .line 480
    move-result v8

    .line 481
    if-eqz v8, :cond_9

    .line 482
    .line 483
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 484
    .line 485
    const/4 v9, 0x6

    .line 486
    new-array v9, v9, [J

    .line 487
    .line 488
    fill-array-data v9, :array_9

    .line 489
    .line 490
    .line 491
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    invoke-virtual {v4, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 502
    move-object/from16 v26, v4

    .line 503
    .line 504
    const/4 v8, 0x1

    .line 505
    const/16 v17, 0x0

    .line 506
    .line 507
    goto :goto_7

    .line 508
    :catch_2
    nop

    .line 509
    :cond_9
    const/4 v8, 0x1

    .line 510
    const/16 v17, 0x0

    .line 511
    .line 512
    const/16 v26, 0x0

    .line 513
    .line 514
    goto :goto_7

    .line 515
    :cond_a
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 516
    .line 517
    const/4 v8, 0x1

    .line 518
    new-array v9, v8, [J

    .line 519
    .line 520
    const-wide v10, 0x9374a1f3ca44116L

    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    const/16 v17, 0x0

    .line 526
    .line 527
    aput-wide v10, v9, v17

    .line 528
    .line 529
    invoke-direct {v4, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    move-object/from16 v26, v4

    .line 537
    .line 538
    :goto_7
    if-eqz v7, :cond_b

    .line 539
    .line 540
    const/4 v11, 0x1

    .line 541
    goto :goto_8

    .line 542
    :cond_b
    const/4 v11, 0x0

    .line 543
    :goto_8
    if-eqz v5, :cond_c

    .line 544
    .line 545
    const/4 v10, 0x1

    .line 546
    goto :goto_9

    .line 547
    :cond_c
    const/4 v10, 0x0

    .line 548
    :goto_9
    new-instance v4, Lcom/google/android/gms/internal/ads/zzexv;

    .line 549
    .line 550
    move-object v9, v4

    .line 551
    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 552
    .line 553
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 554
    .line 555
    move-object/from16 v17, v6

    .line 556
    .line 557
    move-object/from16 v18, v1

    .line 558
    .line 559
    move-object/from16 v19, v2

    .line 560
    .line 561
    move-object/from16 v20, v21

    .line 562
    .line 563
    move/from16 v21, v3

    .line 564
    .line 565
    invoke-direct/range {v9 .. v27}, Lcom/google/android/gms/internal/ads/zzexv;-><init>(ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JZLjava/lang/String;I)V

    .line 566
    .line 567
    .line 568
    return-object v4

    .line 569
    :array_0
    .array-data 8
        -0xf7470e8e7a3c2eaL    # -1.3691444002891843E234
        -0x5c88ae2f4a2b5ff3L    # -7.832906132665718E-138
        0x667cec5eeeec106bL    # 4.915928327996057E185
    .end array-data

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
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_1
    .array-data 8
        -0x671a31a77006d6f1L    # -9.78835042857794E-189
        0x1c5e67c8f9842891L    # 4.917375332598725E-172
        -0x60445fc5804fa98dL    # -8.048567194065475E-156
        -0x741912884826b44L
    .end array-data

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
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    :array_2
    .array-data 8
        -0x42f9f888fe0ade4cL    # -9.7829121082148E-15
        0x6193e5f7b816fd82L    # 1.119009831145392E162
        0x2d78bb65034e69dfL    # 1.2141174909080384E-89
        -0x38449f5800b5487cL    # -3.639102377332107E37
        -0x52f946b7f66b23f3L    # -8.715081203580446E-92
        0x2e37bb7e93057bf6L    # 4.772027201444982E-86
        0x499c7f6f60862cc7L    # 4.06734096331189E46
    .end array-data

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
    :array_3
    .array-data 8
        0x16aa9402dae5054eL
        0x1062588b6a136815L    # 9.453481996903928E-230
    .end array-data

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
    .line 648
    .line 649
    :array_4
    .array-data 8
        -0x2b72d6106785b104L    # -1.9933927921174481E99
        0x2a75e3229253fb8dL    # 3.817267840157221E-104
        0x55ab5dfa31300550L    # 4.9036252658452716E104
        0x53931407d627f428L    # 3.97957842606778E94
    .end array-data

    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    :array_5
    .array-data 8
        -0x5191d7dbc198b829L    # -4.8510587606797253E-85
        -0x3a3b8dc7bfc17056L    # -1.2655566754971278E28
    .end array-data

    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    :array_6
    .array-data 8
        0x6b3101c8de554653L    # 2.18405713136699E208
        -0x30eb42e254ef4445L    # -9.160542802212504E72
        -0x5b17602067b937c0L    # -6.938401278400888E-131
        -0x61fb49f36f7fdbb9L
    .end array-data

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    :array_7
    .array-data 8
        -0x453310708d2b7c0eL
        0x129ae68cb2313c86L
        -0x6de02aa129b1a01cL    # -2.201645009942538E-221
        -0x7dc6926b69986a79L    # -6.075154577699859E-298
        -0x72ed337b56724743L    # -1.075464223269369E-245
    .end array-data

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    :array_8
    .array-data 8
        0x1777eaa838143dd8L    # 1.279802044395742E-195
        0x576601517c6adfd6L    # 1.0584070336744686E113
        0x4aac09e7c0a76c83L    # 5.2452601621598525E51
        0x551b4ae31d049b4bL    # 9.551296255020268E101
        -0x47d852319c4e61e7L    # -3.4793061299387145E-38
        -0x40bf6837163eabfbL    # -5.0637541017784E-4
    .end array-data

    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_9
    .array-data 8
        0x75503f0fa5f42875L    # 1.219696148261565E257
        0x2172efbe07ff5d04L
        0x79c476ffa59f0c69L    # 3.627724727995242E278
        -0x3993daeb7f9d904L
        0x27cf827816806512L
        -0x5c56efd98a61e175L    # -6.734828491793333E-137
    .end array-data
.end method
