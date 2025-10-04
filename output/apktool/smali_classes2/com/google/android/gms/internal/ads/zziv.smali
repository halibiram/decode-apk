.class public final Lcom/google/android/gms/internal/ads/zziv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlc;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzyx;

.field private final zzc:J

.field private final zzd:J

.field private final zze:J

.field private final zzf:J

.field private final zzg:J

.field private zzh:I

.field private zzi:Z


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyx;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/high16 v2, 0x10000

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzyx;-><init>(ZI)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    new-array v3, v2, [J

    .line 16
    .line 17
    fill-array-data v3, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    new-array v5, v4, [J

    .line 31
    .line 32
    fill-array-data v5, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/16 v5, 0x9c4

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static {v5, v6, v1, v3}, Lcom/google/android/gms/internal/ads/zziv;->zzj(IILjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v3, 0x5

    .line 51
    new-array v7, v3, [J

    .line 52
    .line 53
    fill-array-data v7, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v8, v4, [J

    .line 66
    .line 67
    fill-array-data v8, :array_3

    .line 68
    .line 69
    .line 70
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const/16 v8, 0x1388

    .line 78
    .line 79
    invoke-static {v8, v6, v1, v7}, Lcom/google/android/gms/internal/ads/zziv;->zzj(IILjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    const/4 v7, 0x3

    .line 85
    new-array v9, v7, [J

    .line 86
    .line 87
    fill-array-data v9, :array_4

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v10, v2, [J

    .line 100
    .line 101
    fill-array-data v10, :array_5

    .line 102
    .line 103
    .line 104
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    const v10, 0xc350

    .line 112
    .line 113
    .line 114
    invoke-static {v10, v5, v1, v9}, Lcom/google/android/gms/internal/ads/zziv;->zzj(IILjava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v5, v7, [J

    .line 120
    .line 121
    fill-array-data v5, :array_6

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v3, v3, [J

    .line 134
    .line 135
    fill-array-data v3, :array_7

    .line 136
    .line 137
    .line 138
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v10, v8, v1, v3}, Lcom/google/android/gms/internal/ads/zziv;->zzj(IILjava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v3, v7, [J

    .line 151
    .line 152
    fill-array-data v3, :array_8

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v5, v7, [J

    .line 165
    .line 166
    fill-array-data v5, :array_9

    .line 167
    .line 168
    .line 169
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v10, v10, v1, v3}, Lcom/google/android/gms/internal/ads/zziv;->zzj(IILjava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v2, v2, [J

    .line 182
    .line 183
    fill-array-data v2, :array_a

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    new-array v3, v4, [J

    .line 196
    .line 197
    fill-array-data v3, :array_b

    .line 198
    .line 199
    .line 200
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v6, v6, v1, v2}, Lcom/google/android/gms/internal/ads/zziv;->zzj(IILjava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzb:Lcom/google/android/gms/internal/ads/zzyx;

    .line 211
    .line 212
    const-wide/32 v0, 0xc350

    .line 213
    .line 214
    .line 215
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 216
    .line 217
    .line 218
    move-result-wide v2

    .line 219
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziv;->zzc:J

    .line 220
    .line 221
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 222
    .line 223
    .line 224
    move-result-wide v0

    .line 225
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzd:J

    .line 226
    .line 227
    const-wide/16 v0, 0x9c4

    .line 228
    .line 229
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 230
    .line 231
    .line 232
    move-result-wide v0

    .line 233
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zze:J

    .line 234
    .line 235
    const-wide/16 v0, 0x1388

    .line 236
    .line 237
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 238
    .line 239
    .line 240
    move-result-wide v0

    .line 241
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzf:J

    .line 242
    .line 243
    const/high16 v0, 0xc80000

    .line 244
    .line 245
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzh:I

    .line 246
    .line 247
    const-wide/16 v0, 0x0

    .line 248
    .line 249
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 250
    .line 251
    .line 252
    move-result-wide v0

    .line 253
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzg:J

    .line 254
    .line 255
    return-void

    .line 256
    nop

    .line 257
    :array_0
    .array-data 8
        0x650a13b32bd0edb6L    # 5.283531306392145E178
        0x4962477fb97f8507L    # 3.2611347864368335E45
        0x3e87b41d78518bb9L    # 1.7660539356191862E-7
        0x4ef26e26e9bdf95L
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
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
    :array_1
    .array-data 8
        0x60ea20d72d486974L    # 7.174615133074208E158
        -0x63ffd1531341d26dL    # -8.178496267700993E-174
    .end array-data

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
    :array_2
    .array-data 8
        -0x25126a6153365efL    # -2.52189631061662E297
        0x642fd9992e376dbfL    # 3.93873585193336E174
        -0x7310eaebfe64aee3L
        0x20d8f2060c5138f9L
        0x16210af84c865965L    # 4.348657173524885E-202
    .end array-data

    .line 290
    :array_3
    .array-data 8
        -0x2780bd03a4f51151L    # -1.9708355916920082E118
        -0x360302580580d351L    # -2.648135409754913E48
    .end array-data

    :array_4
    .array-data 8
        0x2551519b6f9c2f4L
        -0x184b2364bd50f336L
        -0x2ce181bfaf5f2d81L    # -2.484627280688092E92
    .end array-data

    :array_5
    .array-data 8
        0x6b07eb4f4203c000L    # 3.839664538955434E207
        0x68e8d2b1bf2923c6L    # 2.3194332393940227E197
        0x289f3e685003b4d6L    # 5.074873238089045E-113
        0x4841007f67213541L    # 1.1570923502152375E40
    .end array-data

    :array_6
    .array-data 8
        0x7f6fe1071324143fL    # 6.9956890842107335E305
        0x6376c1a94e0332bdL    # 1.3741141888689027E171
        0x74a1ae1c654a3953L    # 6.481142788916462E253
    .end array-data

    :array_7
    .array-data 8
        -0x424f8fbe3356d41eL    # -1.4950732311285616E-11
        0x368b725cac1e1b14L    # 6.009539967175643E-46
        0x224a29d97a3b0f31L    # 1.6762064125949996E-143
        0x7cd289f460cb5647L    # 1.8500327151993596E293
        -0x732cc907ff4d0a6dL    # -6.870331035949426E-247
    .end array-data

    :array_8
    .array-data 8
        0x371785e579d00282L    # 2.6370231761177085E-43
        0x2f5b5e8528e313d4L    # 1.4426586400133304E-80
        0x9d695f95109d4aaL    # 2.869062000121998E-261
    .end array-data

    :array_9
    .array-data 8
        0x20635d9da3d8464bL
        0x6feb482751a8aa28L    # 1.3236114266988867E231
        0x442f749c655d314bL    # 2.9012588437034798E20
    .end array-data

    :array_a
    .array-data 8
        -0x4e18643f825d5384L    # -2.7365138896400466E-68
        -0x5f036e3607ddc614L    # -8.727796795043789E-150
        -0x2cc9b38b28d476fbL    # -7.267706920569326E92
        -0x14080596381bb129L    # -1.2612846752069678E212
    .end array-data

    :array_b
    .array-data 8
        -0x67020f1659556b7L
        0x4783057a3f0febebL    # 3.16047160680993E36
    .end array-data
.end method

.method private static zzj(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p2, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-lt p0, p1, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzek;->zze(ZLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x74b17403d41ec045L    # 1.2795905101533253E254
        -0x780984d3bc546923L    # -2.659636675806331E-270
        -0x713cf0d3f41daa80L
        -0x41ecb83b4aa310b1L    # -1.1222638005120111E-9
    .end array-data
.end method

.method private final zzk(Z)V
    .locals 1

    .line 1
    const/high16 v0, 0xc80000

    .line 2
    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzh:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzi:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziv;->zzb:Lcom/google/android/gms/internal/ads/zzyx;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyx;->zze()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzg:J

    return-wide v0
.end method

.method public final zzb()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziv;->zzk(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziv;->zzk(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final zzd()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziv;->zzk(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzur;[Lcom/google/android/gms/internal/ads/zzmf;Lcom/google/android/gms/internal/ads/zzws;[Lcom/google/android/gms/internal/ads/zzyi;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p2, 0x0

    .line 3
    :goto_0
    array-length p4, p3

    .line 4
    const/4 p4, 0x2

    .line 5
    const/high16 v0, 0xc80000

    .line 6
    .line 7
    if-ge p1, p4, :cond_2

    .line 8
    .line 9
    aget-object p4, p5, p1

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    aget-object p4, p3, p1

    .line 14
    .line 15
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzmf;->zzbj()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq p4, v1, :cond_0

    .line 21
    .line 22
    const/high16 v0, 0x7d00000

    .line 23
    .line 24
    :cond_0
    add-int/2addr p2, v0

    .line 25
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziv;->zzh:I

    .line 33
    .line 34
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zziv;->zzb:Lcom/google/android/gms/internal/ads/zzyx;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzyx;->zzf(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final zzf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzg(JJF)Z
    .locals 5

    .line 1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float p1, p5, p1

    .line 4
    .line 5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zziv;->zzb:Lcom/google/android/gms/internal/ads/zzyx;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzyx;->zza()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzh:I

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zziv;->zzc:J

    .line 14
    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    invoke-static {v1, v2, p5}, Lcom/google/android/gms/internal/ads/zzfy;->zzo(JF)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zziv;->zzd:J

    .line 22
    .line 23
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    :cond_0
    const-wide/32 v3, 0x7a120

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    const/4 p1, 0x0

    .line 35
    cmp-long p5, p3, v1

    .line 36
    .line 37
    if-gez p5, :cond_2

    .line 38
    .line 39
    if-ge p2, v0, :cond_1

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zziv;->zzi:Z

    .line 43
    .line 44
    if-nez p1, :cond_4

    .line 45
    .line 46
    cmp-long p1, p3, v3

    .line 47
    .line 48
    if-gez p1, :cond_4

    .line 49
    .line 50
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 p2, 0x4

    .line 53
    new-array p2, p2, [J

    .line 54
    .line 55
    fill-array-data p2, :array_0

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    const/16 p3, 0xa

    .line 68
    .line 69
    new-array p3, p3, [J

    .line 70
    .line 71
    fill-array-data p3, :array_1

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zziv;->zzd:J

    .line 86
    .line 87
    cmp-long p5, p3, v1

    .line 88
    .line 89
    if-gez p5, :cond_3

    .line 90
    .line 91
    if-lt p2, v0, :cond_4

    .line 92
    .line 93
    :cond_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zziv;->zzi:Z

    .line 94
    .line 95
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zziv;->zzi:Z

    .line 96
    .line 97
    return p1

    .line 98
    nop

    .line 99
    :array_0
    .array-data 8
        0x62bfeee228646953L    # 4.707596265827243E167
        -0x2d1fea77282acdb3L    # -1.6381964841011978E91
        0x1724e09dd07091c9L    # 3.4911573910149E-197
        0x1f5717f36f9c1035L
    .end array-data

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
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 8
        0x78618b1d64259187L    # 7.414473101536236E271
        -0x2d7d8aa13b431195L    # -2.937545494835538E89
        0x3f0e35c1453c66a8L    # 5.762096466650535E-5
        -0xdceb7ac55da9ed5L
        0x1a22047ee47640baL    # 8.48064037429417E-183
        -0xcb6961dd061b910L
        -0x5ab55009a8feb882L    # -4.81257335747553E-129
        0x45a2968589c03550L    # 2.876349832761315E27
        -0x6fc759c89ecdf2aeL
        -0x6a454fc2a0de0a8dL    # -5.320176982034456E-204
    .end array-data
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzur;JFZJ)Z
    .locals 1

    .line 1
    invoke-static {p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzfy;->zzp(JF)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    if-eqz p6, :cond_0

    .line 6
    .line 7
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zziv;->zzf:J

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zziv;->zze:J

    .line 11
    .line 12
    :goto_0
    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v0, p7, p5

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-wide/16 p5, 0x2

    .line 22
    .line 23
    div-long/2addr p7, p5

    .line 24
    invoke-static {p7, p8, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide p3

    .line 28
    :cond_1
    const-wide/16 p5, 0x0

    .line 29
    .line 30
    cmp-long p7, p3, p5

    .line 31
    .line 32
    if-lez p7, :cond_3

    .line 33
    .line 34
    cmp-long p5, p1, p3

    .line 35
    .line 36
    if-gez p5, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziv;->zzb:Lcom/google/android/gms/internal/ads/zzyx;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyx;->zza()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget p2, p0, Lcom/google/android/gms/internal/ads/zziv;->zzh:I

    .line 45
    .line 46
    if-lt p1, p2, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    return p1

    .line 51
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 52
    return p1
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziv;->zzb:Lcom/google/android/gms/internal/ads/zzyx;

    return-object v0
.end method
