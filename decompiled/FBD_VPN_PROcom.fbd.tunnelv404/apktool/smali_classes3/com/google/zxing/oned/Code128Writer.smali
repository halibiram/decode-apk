.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;,
        Lcom/google/zxing/oned/Code128Writer$CType;
    }
.end annotation


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static check(Ljava/lang/String;Ljava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x9

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, -0x1

    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    sget-object v5, Lcom/google/zxing/EncodeHintType;->FORCE_CODE_SET:Lcom/google/zxing/EncodeHintType;

    .line 10
    .line 11
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    if-eqz v6, :cond_4

    .line 16
    .line 17
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    packed-switch v5, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v6, v2, [J

    .line 36
    .line 37
    fill-array-data v6, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    const/4 v4, 0x2

    .line 54
    goto :goto_0

    .line 55
    :pswitch_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v6, v2, [J

    .line 58
    .line 59
    fill-array-data v6, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_0

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    goto :goto_0

    .line 77
    :pswitch_2
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v6, v2, [J

    .line 80
    .line 81
    fill-array-data v6, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_0

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    .line 99
    .line 100
    if-eq v4, v0, :cond_2

    .line 101
    .line 102
    if-ne v4, v2, :cond_1

    .line 103
    .line 104
    const/16 v4, 0x63

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    const/4 v2, 0x5

    .line 117
    new-array v2, v2, [J

    .line 118
    .line 119
    fill-array-data v2, :array_3

    .line 120
    .line 121
    .line 122
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_2
    const/16 v4, 0x64

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    const/16 v4, 0x65

    .line 137
    .line 138
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    :goto_2
    if-ge v3, p1, :cond_b

    .line 143
    .line 144
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const/16 v5, 0x7f

    .line 149
    .line 150
    packed-switch v2, :pswitch_data_1

    .line 151
    .line 152
    .line 153
    if-gt v2, v5, :cond_5

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    const/4 v1, 0x6

    .line 166
    new-array v1, v1, [J

    .line 167
    .line 168
    fill-array-data v1, :array_4

    .line 169
    .line 170
    .line 171
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-static {v0, p1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0

    .line 182
    :goto_3
    :pswitch_3
    packed-switch v4, :pswitch_data_2

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :pswitch_4
    const/16 v6, 0x5f

    .line 187
    .line 188
    if-le v2, v6, :cond_9

    .line 189
    .line 190
    if-le v2, v5, :cond_6

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array v1, v1, [J

    .line 203
    .line 204
    fill-array-data v1, :array_5

    .line 205
    .line 206
    .line 207
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-static {v0, p1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :pswitch_5
    const/16 v5, 0x20

    .line 219
    .line 220
    if-lt v2, v5, :cond_7

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 224
    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v1, v1, [J

    .line 233
    .line 234
    fill-array-data v1, :array_6

    .line 235
    .line 236
    .line 237
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-static {v0, p1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p0

    .line 248
    :pswitch_6
    const/16 v6, 0x30

    .line 249
    .line 250
    if-lt v2, v6, :cond_a

    .line 251
    .line 252
    const/16 v6, 0x39

    .line 253
    .line 254
    if-le v2, v6, :cond_8

    .line 255
    .line 256
    if-le v2, v5, :cond_a

    .line 257
    .line 258
    :cond_8
    const/16 v5, 0xf2

    .line 259
    .line 260
    if-eq v2, v5, :cond_a

    .line 261
    .line 262
    const/16 v5, 0xf3

    .line 263
    .line 264
    if-eq v2, v5, :cond_a

    .line 265
    .line 266
    const/16 v5, 0xf4

    .line 267
    .line 268
    if-eq v2, v5, :cond_a

    .line 269
    .line 270
    :cond_9
    :goto_4
    add-int/2addr v3, v0

    .line 271
    goto/16 :goto_2

    .line 272
    .line 273
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 274
    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 281
    .line 282
    new-array v1, v1, [J

    .line 283
    .line 284
    fill-array-data v1, :array_7

    .line 285
    .line 286
    .line 287
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 288
    .line 289
    .line 290
    invoke-static {v0, p1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw p0

    .line 298
    :cond_b
    return v4

    .line 299
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

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
    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :array_0
    .array-data 8
        -0x664be43098d2d78aL    # -7.394438973590936E-185
        0x4e21a194bba09c9bL    # 2.37667778737205E68
    .end array-data

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :array_1
    .array-data 8
        0x513c2bfa4e8f1d12L    # 2.1378303296108478E83
        0x11494999aeea50e1L    # 2.134908045814753E-225
    .end array-data

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :array_2
    .array-data 8
        -0x784c0f07bc8189fL
        -0x28ed2ebfc896c536L    # -2.828379685643273E111
    .end array-data

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :array_3
    .array-data 8
        0x780aa2a017864ca5L    # 1.7589074643554463E270
        -0x3a73f7b5a3bf9734L    # -1.0844503548019937E27
        -0x78e2bd556d22112L
        0x20ade595557fe9b8L    # 2.854151616678195E-151
        -0x694821ecc730a7dfL    # -3.118095848654234E-199
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    :array_4
    .array-data 8
        -0x7d94838d710f0405L
        0x7226d0b7ea0e785fL    # 7.606639588034164E241
        0x7e3344c066536704L    # 8.065011223017794E299
        -0x5197a5fca99bcb0dL    # -3.91722914078883E-85
        -0x19ba2a4d3bc1d3f7L    # -4.638908029989422E184
        -0x14273e82a42f7f8cL    # -3.255474316716519E211
    .end array-data

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :array_5
    .array-data 8
        -0x501a4d48401a05d5L    # -5.855893427000707E-78
        0x330b2cad9924ef07L    # 8.257201044418996E-63
        0x54b5926da27ecf84L    # 1.1795835171727515E100
        0x4e6f9b57f1cab78cL    # 6.816943441271694E69
        -0xed9f83f695272e6L    # -1.1207446375097333E237
        0x67d90a1a82b6e2c6L    # 1.7850168964733537E192
        -0x58ce8ae3fe7e8971L    # -6.760561297334613E-120
        0x29a347110a61ccadL
        0x522985106ed72a27L    # 6.345790287668025E87
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
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
    .line 456
    .line 457
    .line 458
    .line 459
    :array_6
    .array-data 8
        -0x10bfc458bd45252cL    # -7.691057955962179E227
        -0x19e9e44d12ad75f2L    # -5.871252210196529E183
        -0x2dcb0873d563d84eL    # -1.0427367604703988E88
        -0x6022273fab18447aL
        -0x59ce10916d2024bdL
        -0x5d82d3b41a7c89bdL
        -0x23821b46c208c3a9L    # -3.476434912562017E137
        0x5344f13717316d15L    # 1.3651235293100665E93
        -0xa3d2c59926f56afL
    .end array-data

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
    .line 472
    .line 473
    .line 474
    :array_7
    .array-data 8
        0x20e364ba5948bc59L
        0x3c4bc1965dce64deL    # 3.009333305513199E-18
        0x45b9daeaf8444379L    # 8.001780687678046E27
        0x727c6165ba7d12cfL    # 3.02786091058592E243
        -0x5d9462aad9cea7c5L    # -7.076695660383162E-143
        0x144c269f85f9afd2L
        -0x1b56a26ddbd2ae99L    # -8.030287444575923E176
        0x32ef4a23900824L
        -0x24cab36e4797a99bL    # -2.362214598692021E131
    .end array-data
.end method

.method private static chooseCode(Ljava/lang/CharSequence;II)I
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 6
    .line 7
    const/16 v2, 0x65

    .line 8
    .line 9
    const/16 v3, 0x64

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    if-ne p2, v2, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    return v3

    .line 17
    :cond_1
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 18
    .line 19
    if-ne v0, v4, :cond_4

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ge p1, v0, :cond_3

    .line 26
    .line 27
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    const/16 p1, 0x20

    .line 32
    .line 33
    if-lt p0, p1, :cond_2

    .line 34
    .line 35
    if-ne p2, v2, :cond_3

    .line 36
    .line 37
    const/16 p1, 0x60

    .line 38
    .line 39
    if-lt p0, p1, :cond_2

    .line 40
    .line 41
    const/16 p1, 0xf1

    .line 42
    .line 43
    if-lt p0, p1, :cond_3

    .line 44
    .line 45
    const/16 p1, 0xf4

    .line 46
    .line 47
    if-gt p0, p1, :cond_3

    .line 48
    .line 49
    :cond_2
    return v2

    .line 50
    :cond_3
    return v3

    .line 51
    :cond_4
    if-ne p2, v2, :cond_5

    .line 52
    .line 53
    sget-object v5, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 54
    .line 55
    if-ne v0, v5, :cond_5

    .line 56
    .line 57
    return v2

    .line 58
    :cond_5
    const/16 v2, 0x63

    .line 59
    .line 60
    if-ne p2, v2, :cond_6

    .line 61
    .line 62
    return v2

    .line 63
    :cond_6
    if-ne p2, v3, :cond_e

    .line 64
    .line 65
    sget-object p2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 66
    .line 67
    if-ne v0, p2, :cond_7

    .line 68
    .line 69
    return v3

    .line 70
    :cond_7
    add-int/lit8 v0, p1, 0x2

    .line 71
    .line 72
    invoke-static {p0, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eq v0, v4, :cond_d

    .line 77
    .line 78
    if-ne v0, v1, :cond_8

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_8
    if-ne v0, p2, :cond_a

    .line 82
    .line 83
    add-int/lit8 p1, p1, 0x3

    .line 84
    .line 85
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    sget-object p1, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 90
    .line 91
    if-ne p0, p1, :cond_9

    .line 92
    .line 93
    return v2

    .line 94
    :cond_9
    return v3

    .line 95
    :cond_a
    add-int/lit8 p1, p1, 0x4

    .line 96
    .line 97
    :goto_0
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 102
    .line 103
    if-ne p2, v0, :cond_b

    .line 104
    .line 105
    add-int/lit8 p1, p1, 0x2

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_b
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 109
    .line 110
    if-ne p2, p0, :cond_c

    .line 111
    .line 112
    return v3

    .line 113
    :cond_c
    return v2

    .line 114
    :cond_d
    :goto_1
    return v3

    .line 115
    :cond_e
    sget-object p2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 116
    .line 117
    if-ne v0, p2, :cond_f

    .line 118
    .line 119
    add-int/lit8 p1, p1, 0x1

    .line 120
    .line 121
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :cond_f
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 126
    .line 127
    if-ne v0, p0, :cond_10

    .line 128
    .line 129
    return v2

    .line 130
    :cond_10
    return v3
.end method

.method private static encodeFast(Ljava/lang/String;I)[Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    :cond_0
    :goto_0
    if-ge v2, v0, :cond_a

    .line 16
    .line 17
    const/4 v7, -0x1

    .line 18
    if-ne p1, v7, :cond_1

    .line 19
    .line 20
    invoke-static {p0, v2, v5}, Lcom/google/zxing/oned/Code128Writer;->chooseCode(Ljava/lang/CharSequence;II)I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v7, p1

    .line 26
    :goto_1
    const/16 v8, 0x64

    .line 27
    .line 28
    const/16 v9, 0x65

    .line 29
    .line 30
    if-ne v7, v5, :cond_6

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    packed-switch v7, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    if-eq v5, v8, :cond_4

    .line 40
    .line 41
    if-eq v5, v9, :cond_3

    .line 42
    .line 43
    add-int/lit8 v7, v2, 0x1

    .line 44
    .line 45
    if-eq v7, v0, :cond_2

    .line 46
    .line 47
    add-int/lit8 v8, v2, 0x2

    .line 48
    .line 49
    invoke-virtual {p0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    move v2, v7

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/16 v0, 0x8

    .line 64
    .line 65
    new-array v0, v0, [J

    .line 66
    .line 67
    fill-array-data v0, :array_0

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    add-int/lit8 v8, v7, -0x20

    .line 86
    .line 87
    if-gez v8, :cond_5

    .line 88
    .line 89
    add-int/lit8 v8, v7, 0x40

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    add-int/lit8 v8, v7, -0x20

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :pswitch_0
    if-ne v5, v9, :cond_5

    .line 100
    .line 101
    const/16 v8, 0x65

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :pswitch_1
    const/16 v8, 0x60

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :pswitch_2
    const/16 v8, 0x61

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :pswitch_3
    const/16 v8, 0x66

    .line 111
    .line 112
    :cond_5
    :goto_2
    add-int/2addr v2, v3

    .line 113
    goto :goto_4

    .line 114
    :cond_6
    if-nez v5, :cond_9

    .line 115
    .line 116
    if-eq v7, v8, :cond_8

    .line 117
    .line 118
    if-eq v7, v9, :cond_7

    .line 119
    .line 120
    const/16 v5, 0x69

    .line 121
    .line 122
    const/16 v8, 0x69

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    const/16 v5, 0x67

    .line 126
    .line 127
    const/16 v8, 0x67

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_8
    const/16 v5, 0x68

    .line 131
    .line 132
    const/16 v8, 0x68

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_9
    move v8, v7

    .line 136
    :goto_3
    move v5, v7

    .line 137
    :goto_4
    sget-object v7, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    .line 138
    .line 139
    aget-object v7, v7, v8

    .line 140
    .line 141
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    mul-int v8, v8, v6

    .line 145
    .line 146
    add-int/2addr v4, v8

    .line 147
    if-eqz v2, :cond_0

    .line 148
    .line 149
    add-int/2addr v6, v3

    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_a
    invoke-static {v1, v4}, Lcom/google/zxing/oned/Code128Writer;->produceResult(Ljava/util/Collection;I)[Z

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_0
    .array-data 8
        -0x3e3f70a8cb5dc692L    # -5.556588572673776E8
        0x2794a5db4a4fe11fL    # 5.117491385630023E-118
        0x4b4d6d8bdc877322L    # 5.6372686344673875E54
        -0x49cf62eee5385ecL
        0x168098d815ddeb97L
        -0x37aa65ba7dc8903cL    # -2.9403966905116844E40
        0x21fc09a23b8886b0L    # 5.613366850016552E-145
        -0xcb59a45e67c0138L
    .end array-data
.end method

.method private static findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0xf1

    .line 15
    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const/16 v2, 0x30

    .line 22
    .line 23
    if-lt v1, v2, :cond_6

    .line 24
    .line 25
    const/16 v3, 0x39

    .line 26
    .line 27
    if-le v1, v3, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    if-lt p1, v0, :cond_3

    .line 33
    .line 34
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-lt p0, v2, :cond_5

    .line 42
    .line 43
    if-le p0, v3, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_5
    :goto_0
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_6
    :goto_1
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 53
    .line 54
    return-object p0
.end method

.method public static produceResult(Ljava/util/Collection;I)[Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[I>;I)[Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    rem-int/lit8 p1, p1, 0x67

    .line 3
    .line 4
    if-ltz p1, :cond_3

    .line 5
    .line 6
    sget-object v1, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    .line 7
    .line 8
    aget-object p1, v1, p1

    .line 9
    .line 10
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x6a

    .line 14
    .line 15
    aget-object p1, v1, p1

    .line 16
    .line 17
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, [I

    .line 37
    .line 38
    array-length v4, v3

    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_0
    if-ge v5, v4, :cond_0

    .line 41
    .line 42
    aget v6, v3, v5

    .line 43
    .line 44
    add-int/2addr v2, v6

    .line 45
    add-int/2addr v5, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-array p1, v2, [Z

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, [I

    .line 64
    .line 65
    invoke-static {p1, v1, v2, v0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    add-int/2addr v1, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    return-object p1

    .line 72
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v0, 0x6

    .line 77
    new-array v0, v0, [J

    .line 78
    .line 79
    fill-array-data v0, :array_0

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :array_0
    .array-data 8
        -0xef689aefcc9edf0L    # -3.23833735299707E236
        -0x461c6d8e43c322c4L    # -7.719811736563906E-30
        -0x264026bcd9aa4f16L    # -2.1053760589718145E124
        0x57fae1bcc0f983e7L    # 6.619976965509109E115
        0x3f5cc4cb0875f4dbL    # 0.0017559035057666459
        0x1f545917f0763e93L    # 9.262846546160514E-158
    .end array-data
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/Code128Writer;->encode(Ljava/lang/String;Ljava/util/Map;)[Z

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Ljava/util/Map;)[Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)[Z"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/google/zxing/oned/Code128Writer;->check(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    if-eqz p2, :cond_0

    .line 3
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CODE128_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;-><init>(Lcom/google/zxing/oned/Code128Writer$1;)V

    invoke-static {p2, p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->access$100(Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;Ljava/lang/String;)[Z

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/google/zxing/oned/Code128Writer;->encodeFast(Ljava/lang/String;I)[Z

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getSupportedWriteFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
