.class public final Lcom/google/android/gms/ads/AdSize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTO_HEIGHT:I = -0x2

.field public static final BANNER:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final FLUID:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final FULL_BANNER:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final FULL_WIDTH:I = -0x1

.field public static final INVALID:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final LEADERBOARD:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final SEARCH:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final SMART_BANNER:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final zza:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final zzb:I

.field private final zzc:I

.field private final zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:Z

.field private zzg:I

.field private zzh:Z

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    .line 17
    .line 18
    const/16 v3, 0x140

    .line 19
    .line 20
    const/16 v4, 0x32

    .line 21
    .line 22
    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 26
    .line 27
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v2, v1, [J

    .line 30
    .line 31
    fill-array-data v2, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    .line 42
    .line 43
    const/16 v5, 0x1d4

    .line 44
    .line 45
    const/16 v6, 0x3c

    .line 46
    .line 47
    invoke-direct {v2, v5, v6, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v2, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 51
    .line 52
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v2, v1, [J

    .line 55
    .line 56
    fill-array-data v2, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    .line 67
    .line 68
    const/16 v5, 0x64

    .line 69
    .line 70
    invoke-direct {v2, v3, v5, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sput-object v2, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 74
    .line 75
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v2, v1, [J

    .line 78
    .line 79
    fill-array-data v2, :array_3

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    .line 90
    .line 91
    const/16 v3, 0x2d8

    .line 92
    .line 93
    const/16 v5, 0x5a

    .line 94
    .line 95
    invoke-direct {v2, v3, v5, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sput-object v2, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    .line 99
    .line 100
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v2, v1, [J

    .line 103
    .line 104
    fill-array-data v2, :array_4

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    .line 115
    .line 116
    const/16 v3, 0x12c

    .line 117
    .line 118
    const/16 v5, 0xfa

    .line 119
    .line 120
    invoke-direct {v2, v3, v5, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sput-object v2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    .line 124
    .line 125
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v2, v1, [J

    .line 128
    .line 129
    fill-array-data v2, :array_5

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    .line 140
    .line 141
    const/16 v3, 0xa0

    .line 142
    .line 143
    const/16 v5, 0x258

    .line 144
    .line 145
    invoke-direct {v2, v3, v5, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sput-object v2, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    .line 149
    .line 150
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v2, v1, [J

    .line 153
    .line 154
    fill-array-data v2, :array_6

    .line 155
    .line 156
    .line 157
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    .line 165
    .line 166
    const/4 v3, -0x1

    .line 167
    const/4 v5, -0x2

    .line 168
    invoke-direct {v2, v3, v5, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sput-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 172
    .line 173
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    const/4 v2, 0x2

    .line 176
    new-array v3, v2, [J

    .line 177
    .line 178
    fill-array-data v3, :array_7

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    .line 189
    .line 190
    const/4 v5, -0x4

    .line 191
    const/4 v6, -0x3

    .line 192
    invoke-direct {v3, v6, v5, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sput-object v3, Lcom/google/android/gms/ads/AdSize;->FLUID:Lcom/google/android/gms/ads/AdSize;

    .line 196
    .line 197
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    .line 198
    .line 199
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v5, v2, [J

    .line 202
    .line 203
    fill-array-data v5, :array_8

    .line 204
    .line 205
    .line 206
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    const/4 v5, 0x0

    .line 214
    invoke-direct {v0, v5, v5, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    sput-object v0, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    .line 218
    .line 219
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v2, v2, [J

    .line 222
    .line 223
    fill-array-data v2, :array_9

    .line 224
    .line 225
    .line 226
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    .line 234
    .line 235
    invoke-direct {v2, v4, v4, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sput-object v2, Lcom/google/android/gms/ads/AdSize;->zza:Lcom/google/android/gms/ads/AdSize;

    .line 239
    .line 240
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 241
    .line 242
    new-array v1, v1, [J

    .line 243
    .line 244
    fill-array-data v1, :array_a

    .line 245
    .line 246
    .line 247
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    .line 255
    .line 256
    invoke-direct {v1, v6, v5, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    sput-object v1, Lcom/google/android/gms/ads/AdSize;->SEARCH:Lcom/google/android/gms/ads/AdSize;

    .line 260
    .line 261
    return-void

    .line 262
    nop

    .line 263
    :array_0
    .array-data 8
        -0x5dd13f7cc9c6d2f2L
        0x5e58a130e50c7cc3L    # 3.075503257520086E146
        0x2298ac0c76c03a17L    # 5.058101721834225E-142
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
    .line 276
    .line 277
    .line 278
    .line 279
    :array_1
    .array-data 8
        -0x393df5ac4a840901L    # -7.318031222953372E32
        -0x1351a50561b4b343L    # -3.270112440936632E215
        -0x20b817fa06ca088L    # -5.361243696458592E298
    .end array-data

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
    :array_2
    .array-data 8
        -0x193e1f1b5cd6060dL    # -9.723847289081847E186
        -0x78f41f30aa421d49L
        -0x41c3f0f214845922L    # -6.532949896096082E-9
    .end array-data

    :array_3
    .array-data 8
        -0x2f8d36b4945c1de6L    # -3.480489192435085E79
        0x4f2db063d57b5254L    # 2.622798187628901E73
        0x40290c3cfc9fe653L    # 12.523902792471892
    .end array-data

    :array_4
    .array-data 8
        -0x5e94325e5a542f0eL
        -0x6d267e348c4bfbeaL
        -0x23267750a485d187L    # -1.9004463115801232E139
    .end array-data

    :array_5
    .array-data 8
        -0x7d6aa2ef03fbb184L
        -0x77245e739c1c3f46L    # -5.355761214479631E-266
        0x8974123f34b96e3L
    .end array-data

    :array_6
    .array-data 8
        0x25720b055fbf3188L    # 2.602985965354742E-128
        0x28075eb24d01b293L    # 7.413933454911397E-116
        -0x3558a2cb8a02442L    # -3.300652734162297E292
    .end array-data

    :array_7
    .array-data 8
        -0x7ee1ef4cd5e88c1aL
        0x6d53bdf897cfdf33L    # 4.355616711001907E218
    .end array-data

    :array_8
    .array-data 8
        -0x74b14abfffdd2953L
        0x1d6ce7fa954022ceL    # 6.127494466436272E-167
    .end array-data

    :array_9
    .array-data 8
        0x723551b6ed4cfa16L
        -0x55f060ea11b1e3ddL
    .end array-data

    :array_a
    .array-data 8
        -0x1c15a25abe0f08e9L    # -2.0378326911312052E173
        -0x1604883ecf7df94L
        -0x7085eeb3bc20d9dcL    # -4.099245512606742E-234
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v0, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    :goto_1
    invoke-static {v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 6
    invoke-static {v2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x15a5eb048ec66e63L    # -2.0443597904762716E204
        0x50e758e4a9ba962dL    # 5.5366156199728485E81
    .end array-data

    :array_1
    .array-data 8
        -0x83d1443a270e9c0L
        -0x7aadd52eedd8bed4L    # -4.886898747515827E-283
    .end array-data

    :array_2
    .array-data 8
        -0x7912fbe37ea5d369L    # -2.618981412124359E-275
        0x4235e5a914e9dfacL    # 9.404737661787372E10
    .end array-data

    :array_3
    .array-data 8
        -0x313769ec7fe3a71cL    # -3.393759159165718E71
        0x4aa2bfc33f1d2e2L
    .end array-data
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, -0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    invoke-static {v1, p3, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-gez p2, :cond_3

    const/4 v1, -0x2

    if-eq p2, v1, :cond_3

    const/4 v1, -0x4

    if-ne p2, v1, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    invoke-static {v1, p3, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    :goto_1
    iput p1, p0, Lcom/google/android/gms/ads/AdSize;->zzb:I

    iput p2, p0, Lcom/google/android/gms/ads/AdSize;->zzc:I

    iput-object p3, p0, Lcom/google/android/gms/ads/AdSize;->zzd:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x57229f2aa07b3726L    # 5.597946775422541E111
        -0x3b7bd142cead370aL    # -1.1913689081669206E22
        0x3345bdb80df1611fL    # 1.0569932292933536E-61
        -0x22cc696807d9b871L    # -9.33069014283181E140
        -0x78a41eb4c37f69c5L    # -3.221050698156897E-273
    .end array-data

    :array_1
    .array-data 8
        -0x19ee71b1b9375d67L    # -4.66229793846501E183
        -0x514410c02741408aL    # -1.437947973765171E-83
        0x59e9f42cc4912cdbL    # 1.3725535807475954E125
        0x4f51b3fe81c5951L
        0x20bce533488d13aL
    .end array-data
.end method

.method public static getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzc(Landroid/content/Context;III)Lcom/google/android/gms/ads/AdSize;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/ads/AdSize;->zze:Z

    .line 10
    .line 11
    return-object p0
.end method

.method public static getCurrentOrientationInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zza(Landroid/content/Context;I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    .line 13
    .line 14
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 15
    .line 16
    .line 17
    iput p0, v1, Lcom/google/android/gms/ads/AdSize;->zzg:I

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    iput-boolean p0, v1, Lcom/google/android/gms/ads/AdSize;->zzf:Z

    .line 21
    .line 22
    return-object v1
.end method

.method public static getCurrentOrientationInterscrollerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zza(Landroid/content/Context;I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/AdSize;->zzj(II)Lcom/google/android/gms/ads/AdSize;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static getInlineAdaptiveBannerAdSize(II)Lcom/google/android/gms/ads/AdSize;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 7
    .line 8
    .line 9
    iput p1, v1, Lcom/google/android/gms/ads/AdSize;->zzg:I

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    iput-boolean p0, v1, Lcom/google/android/gms/ads/AdSize;->zzf:Z

    .line 13
    .line 14
    const/16 p0, 0x20

    .line 15
    .line 16
    if-ge p1, p0, :cond_0

    .line 17
    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v3, v0, [J

    .line 26
    .line 27
    fill-array-data v3, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v0, v0, [J

    .line 46
    .line 47
    fill-array-data v0, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-object v1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0xe782a85f62c907eL    # -7.759997325968652E238
        -0x6a2ab8df185289ecL
        0x657865428068542dL    # 6.3268561169362025E180
        -0x210f7a21fc4264c1L    # -2.112733110206371E149
        0x5f6217c075d7a96dL    # 2.961236881662864E151
        -0x46371c925a69c273L    # -2.4541849133422332E-30
        -0x4d9b6409676a5ef9L    # -6.115511061292989E-66
        -0x3f8da0587e6178d5L    # -293.97839509892464
        -0x461f975b1716141eL    # -6.472117128013688E-30
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 8
        -0x42af2470bed15604L    # -2.395616809565504E-13
        0x32ecc7c3f039187cL    # 2.186284854410279E-63
        0xf0b16363e13577dL
        -0x4218e8249b3efe3cL    # -1.6802508202241068E-10
        -0x45a0d134d98a8d96L    # -1.5743284376126858E-27
        0x2667f46f178bc6dbL    # 1.13241263126683E-123
        -0x79aa6fbe4af084ebL
        -0x32fecc0fd8cd43d1L    # -8.846069593031876E62
        0x7938a8a32b17a4ceL    # 8.537425415513924E275
    .end array-data
.end method

.method public static getLandscapeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzc(Landroid/content/Context;III)Lcom/google/android/gms/ads/AdSize;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/ads/AdSize;->zze:Z

    .line 10
    .line 11
    return-object p0
.end method

.method public static getLandscapeInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zza(Landroid/content/Context;I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 10
    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    iput p0, v0, Lcom/google/android/gms/ads/AdSize;->zzg:I

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    iput-boolean p0, v0, Lcom/google/android/gms/ads/AdSize;->zzf:Z

    .line 22
    .line 23
    return-object v0
.end method

.method public static getLandscapeInterscrollerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zza(Landroid/content/Context;I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/AdSize;->zzj(II)Lcom/google/android/gms/ads/AdSize;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static getPortraitAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzc(Landroid/content/Context;III)Lcom/google/android/gms/ads/AdSize;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/ads/AdSize;->zze:Z

    .line 9
    .line 10
    return-object p0
.end method

.method public static getPortraitInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zza(Landroid/content/Context;I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 10
    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    iput p0, v1, Lcom/google/android/gms/ads/AdSize;->zzg:I

    .line 19
    .line 20
    iput-boolean v0, v1, Lcom/google/android/gms/ads/AdSize;->zzf:Z

    .line 21
    .line 22
    return-object v1
.end method

.method public static getPortraitInterscrollerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zza(Landroid/content/Context;I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/AdSize;->zzj(II)Lcom/google/android/gms/ads/AdSize;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static zzj(II)Lcom/google/android/gms/ads/AdSize;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iput p1, v0, Lcom/google/android/gms/ads/AdSize;->zzi:I

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    iput-boolean p0, v0, Lcom/google/android/gms/ads/AdSize;->zzh:Z

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p1, p0, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/ads/AdSize;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v0

    .line 14
    :cond_2
    check-cast p1, Lcom/google/android/gms/ads/AdSize;

    .line 15
    .line 16
    iget v2, p0, Lcom/google/android/gms/ads/AdSize;->zzb:I

    .line 17
    .line 18
    iget v3, p1, Lcom/google/android/gms/ads/AdSize;->zzb:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_3

    .line 21
    .line 22
    iget v2, p0, Lcom/google/android/gms/ads/AdSize;->zzc:I

    .line 23
    .line 24
    iget v3, p1, Lcom/google/android/gms/ads/AdSize;->zzc:I

    .line 25
    .line 26
    if-ne v2, v3, :cond_3

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/gms/ads/AdSize;->zzd:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/android/gms/ads/AdSize;->zzd:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    return v1

    .line 39
    :cond_3
    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->zzc:I

    return v0
.end method

.method public getHeightInPixels(Landroid/content/Context;)I
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->zzc:I

    .line 2
    .line 3
    const/4 v1, -0x4

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, -0x3

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, -0x2

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zzx(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzq;->zza(Landroid/util/DisplayMetrics;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_1
    const/4 p1, -0x1

    .line 34
    return p1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->zzb:I

    return v0
.end method

.method public getWidthInPixels(Landroid/content/Context;)I
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->zzb:I

    .line 2
    .line 3
    const/4 v1, -0x3

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zzx(Landroid/content/Context;I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    .line 27
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 28
    .line 29
    return p1

    .line 30
    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdSize;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isAutoHeight()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->zzc:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFluid()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->zzb:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->zzc:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFullWidth()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->zzb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdSize;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->zzi:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->zzg:I

    return v0
.end method

.method public final zzc(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/AdSize;->zzg:I

    return-void
.end method

.method public final zzd(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/AdSize;->zzi:I

    return-void
.end method

.method public final zze(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/AdSize;->zzf:Z

    return-void
.end method

.method public final zzf(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/AdSize;->zzh:Z

    return-void
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/AdSize;->zze:Z

    return v0
.end method

.method public final zzh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/AdSize;->zzf:Z

    return v0
.end method

.method public final zzi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/AdSize;->zzh:Z

    return v0
.end method
