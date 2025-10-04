.class final Lcom/google/android/material/color/ColorResourcesLoaderCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/ColorResourcesLoaderCreator;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x37a023b31ccaba5bL    # 9.263591017469352E-41
        0xc5a486e6a82e80L
        -0x1a94fdbb58f01764L
        -0x406b8cf3366eaae0L    # -0.019970130732265834
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/util/Map;)Landroid/content/res/loader/ResourcesLoader;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/res/loader/ResourcesLoader;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->create(Landroid/content/Context;Ljava/util/Map;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v2, v0, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v2, v0, [J

    .line 23
    .line 24
    fill-array-data v2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    array-length p1, p0

    .line 34
    array-length p1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    :try_start_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    new-array v2, v2, [J

    .line 42
    .line 43
    fill-array-data v2, :array_2

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, L뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Ljava/lang/String;)Ljava/io/FileDescriptor;

    .line 54
    .line 55
    .line 56
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    :try_start_2
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v2, v0, [J

    .line 62
    .line 63
    fill-array-data v2, :array_3

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 v2, 0x6

    .line 75
    new-array v2, v2, [J

    .line 76
    .line 77
    fill-array-data v2, :array_4

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    :try_start_3
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    .line 90
    .line 91
    :cond_1
    return-object v1

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_4

    .line 94
    :cond_2
    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    .line 95
    .line 96
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    .line 98
    .line 99
    :try_start_5
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 103
    .line 104
    .line 105
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 106
    :try_start_6
    invoke-static {}, L뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬()V

    .line 107
    .line 108
    .line 109
    invoke-static {}, L뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()Landroid/content/res/loader/ResourcesLoader;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {p0}, L뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/loader/ResourcesProvider;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v3, v4}, L뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/content/res/loader/ResourcesLoader;Landroid/content/res/loader/ResourcesProvider;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 118
    .line 119
    .line 120
    if-eqz p0, :cond_3

    .line 121
    .line 122
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    :goto_0
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 129
    .line 130
    .line 131
    :try_start_9
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 132
    .line 133
    .line 134
    return-object v3

    .line 135
    :catchall_2
    move-exception v3

    .line 136
    if-eqz p0, :cond_4

    .line 137
    .line 138
    :try_start_a
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catchall_3
    move-exception p0

    .line 143
    :try_start_b
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    :goto_1
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 147
    :goto_2
    :try_start_c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :catchall_4
    move-exception v2

    .line 152
    :try_start_d
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    :goto_3
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 156
    :catchall_5
    move-exception p0

    .line 157
    move-object p1, v1

    .line 158
    :goto_4
    if-eqz p1, :cond_5

    .line 159
    .line 160
    :try_start_e
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    throw p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 164
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array p1, v0, [J

    .line 167
    .line 168
    fill-array-data p1, :array_5

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    const/4 p1, 0x7

    .line 180
    new-array p1, p1, [J

    .line 181
    .line 182
    fill-array-data p1, :array_6

    .line 183
    .line 184
    .line 185
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    return-object v1

    .line 192
    nop

    .line 193
    :array_0
    .array-data 8
        0x29d736e46afbed13L
        0x13f76c38e5395017L    # 1.73940544810388E-212
        -0x50ec4bcbfc9f128cL    # -6.491331586071934E-82
        -0x4a1605db30cb63a6L    # -5.554459259420153E-49
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
    :array_1
    .array-data 8
        0x781a102fee8acc49L    # 3.442265650617093E270
        -0x5f7ca911407e1792L    # -4.61571779251784E-152
        -0x7fdb2daef4a610fbL    # -5.791185585213679E-308
        -0x754e234a5f07b13L
    .end array-data

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
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_2
    .array-data 8
        -0x1fd75ecdb40506bL    # -9.699745133543209E298
        -0x6df9345ad02004b2L    # -7.882829316250744E-222
        -0x2b53ee7d0c0105c4L    # -7.6740797432333435E99
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
    :array_3
    .array-data 8
        0x53ede3f034173a38L    # 1.9951710201963115E96
        0x24d87bfe9d2640b5L    # 3.449455498664773E-131
        -0x58d524f97ee2766fL    # -5.200032775005305E-120
        0x210970ef3f1c053cL
    .end array-data

    .line 250
    .line 251
    .line 252
    :array_4
    .array-data 8
        -0x7ed55e5d27988d97L
        -0x47c49788497f960aL    # -8.054509824251487E-38
        -0x2c4f51e205aa612bL    # -1.3917411452802046E95
        -0x3114210a009c7d50L    # -1.5388653287658736E72
        0x37dde3c24de98e7eL
        0x33123a55d01178e5L    # 1.1077375518533055E-62
    .end array-data

    :array_5
    .array-data 8
        0x41e91f8f2625e98fL    # 3.3719892971847606E9
        0x3d5e604a75a53947L    # 4.3167085781594797E-13
        0xf6bd117ad4d3197L
        0x1f3d9122bd11caa2L
    .end array-data

    :array_6
    .array-data 8
        0x373c81a192981293L    # 1.2782699142539242E-42
        -0xb3e5b953ae86642L
        -0x381698e7493bc38cL    # -2.7012806183312156E38
        0x71af9676e636fd4aL    # 4.113820012326379E239
        0x30f62fdf89b79ce1L    # 7.848374765578139E-73
        -0x7df04f740b6c8fbcL
        0x3278daa7ea3328a7L    # 1.4750251539602737E-65
    .end array-data
.end method
