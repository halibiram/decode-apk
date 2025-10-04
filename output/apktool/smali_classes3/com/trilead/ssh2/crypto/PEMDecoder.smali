.class public Lcom/trilead/ssh2/crypto/PEMDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final PEM_DSA_PRIVATE_KEY:I = 0x2

.field private static final PEM_RSA_PRIVATE_KEY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/trilead/ssh2/crypto/PEMDecoder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/trilead/ssh2/crypto/PEMDecoder;->LOGGER:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static decode([CLjava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x6

    .line 4
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/PEMDecoder;->parsePEM([C)Lcom/trilead/ssh2/crypto/PEMStructure;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/PEMDecoder;->isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decryptPEM(Lcom/trilead/ssh2/crypto/PEMStructure;[B)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 27
    .line 28
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v0, 0x7

    .line 31
    new-array v0, v0, [J

    .line 32
    .line 33
    fill-array-data v0, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_1
    :goto_0
    iget p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    .line 48
    .line 49
    const/4 v3, 0x2

    .line 50
    if-ne p1, v3, :cond_5

    .line 51
    .line 52
    new-instance p1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_3

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-nez p0, :cond_2

    .line 109
    .line 110
    new-instance p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    .line 111
    .line 112
    move-object v4, p0

    .line 113
    invoke-direct/range {v4 .. v9}, Lcom/trilead/ssh2/signature/DSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 114
    .line 115
    .line 116
    return-object p0

    .line 117
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 118
    .line 119
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v0, v2, [J

    .line 122
    .line 123
    fill-array-data v0, :array_1

    .line 124
    .line 125
    .line 126
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v1, v1, [J

    .line 147
    .line 148
    fill-array-data v1, :array_2

    .line 149
    .line 150
    .line 151
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v0, v0, [J

    .line 167
    .line 168
    fill-array-data v0, :array_3

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-static {p0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 183
    .line 184
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    new-array v0, v2, [J

    .line 187
    .line 188
    fill-array-data v0, :array_4

    .line 189
    .line 190
    .line 191
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_5
    const/4 v3, 0x1

    .line 203
    if-ne p1, v3, :cond_9

    .line 204
    .line 205
    new-instance p1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 208
    .line 209
    invoke-direct {p1, p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-nez v3, :cond_8

    .line 221
    .line 222
    invoke-virtual {p1, p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 230
    .line 231
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_7

    .line 236
    .line 237
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 238
    .line 239
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-nez v2, :cond_6

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 247
    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 254
    .line 255
    new-array v1, v1, [J

    .line 256
    .line 257
    fill-array-data v1, :array_5

    .line 258
    .line 259
    .line 260
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 274
    .line 275
    new-array v0, v0, [J

    .line 276
    .line 277
    fill-array-data v0, :array_6

    .line 278
    .line 279
    .line 280
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 281
    .line 282
    .line 283
    invoke-static {p0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw p1

    .line 291
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    new-instance v1, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    .line 304
    .line 305
    invoke-direct {v1, p1, v0, p0}, Lcom/trilead/ssh2/signature/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 306
    .line 307
    .line 308
    return-object v1

    .line 309
    :cond_8
    new-instance p0, Ljava/io/IOException;

    .line 310
    .line 311
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 312
    .line 313
    new-array v0, v2, [J

    .line 314
    .line 315
    fill-array-data v0, :array_7

    .line 316
    .line 317
    .line 318
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw p0

    .line 329
    :cond_9
    new-instance p0, Ljava/io/IOException;

    .line 330
    .line 331
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 332
    .line 333
    new-array v0, v2, [J

    .line 334
    .line 335
    fill-array-data v0, :array_8

    .line 336
    .line 337
    .line 338
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    throw p0

    .line 349
    :array_0
    .array-data 8
        -0x1be78ef7a54e605dL    # -1.5112835872728646E174
        -0x245fc9b429d8b02aL    # -2.301480119299043E133
        0xf1727c28a74fcfbL
        -0x2736a6210e28f755L    # -5.1142786507270315E119
        -0x3bdfc9f880597fccL    # -1.4952056296766505E20
        -0x7dbaf425cae11dcbL
        -0xd74d8d7ab071b55L    # -5.793802355721705E243
    .end array-data

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
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
    :array_1
    .array-data 8
        -0x70ced75eb3004451L
        0x53252d3b8880b1d8L    # 3.451014294911759E92
        0x4b24120f477acc58L    # 9.611881781142892E53
        -0x4fe2abe76dff2415L    # -6.33214671800826E-77
        -0x39dd2a08a69c8de6L    # -7.46163129575608E29
        -0x5ebf62fc3127157L
    .end array-data

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
    :array_2
    .array-data 8
        0x469fb090ba90fbd5L    # 1.6068591142549882E32
        0x25da614c3b8b5b68L
        -0x2696b86e16ed5e28L
    .end array-data

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
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :array_3
    .array-data 8
        0x6cdd559a19d51aeaL    # 2.528097718952138E216
        -0x5db670da9429f2a6L    # -1.637490293710109E-143
        0x78505cbcc1580ba8L    # 3.457635970724901E271
        0x259548120ea95b29L
        0x2cc4cac039353c4fL    # 4.98387938073717E-93
    .end array-data

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
    :array_4
    .array-data 8
        0x71a59d3921d92bbaL    # 2.814911802378725E239
        -0x6c08a49daa9e2947L
        -0x713802fba89a3e39L
        0x631cd3aabb05e001L    # 2.7197837548439946E169
        0x1bd9b2285d108730L
        -0x2488a78e7fe2346cL    # -4.1426758465231837E132
    .end array-data

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
    :array_5
    .array-data 8
        0x3bcedc1b5e8cb313L    # 1.3069630548515943E-20
        -0x3432966382532bf0L    # -1.442386966304947E57
        0x441c16a564b18efeL    # 1.2953516380440753E20
    .end array-data

    :array_6
    .array-data 8
        0x3186e61b70d50978L    # 4.147293862674847E-70
        0x50ee8af28f71990eL    # 7.242978134478793E81
        0x62aff774031a0fd2L
        -0x14b97ae925dcd66bL    # -5.784063915973691E208
        0x6d696247de3db9L
    .end array-data

    :array_7
    .array-data 8
        0x54cab3adf5f14455L    # 2.9201845732812807E100
        0x120a78951671c1fbL    # 9.153853567760595E-222
        0x429d6ff0de6b57e6L    # 8.091654920917975E12
        0x3360bf89c93f4957L    # 3.25700877579052E-61
        0xa004d3db6d82c00L
        0x182f30d0d43947d0L
    .end array-data

    :array_8
    .array-data 8
        0x5b7a1419e801a5b3L    # 4.6276558655266586E132
        -0x3dd72f28b3db51cbL    # -5.329149288234025E10
        0x70ac379165f564b1L    # 5.607359975995463E234
        -0x215df89017893d55L    # -7.20411710178922E147
        0x2293a29a03330906L    # 4.025469644896206E-142
        -0x736ad23cde6e6f27L    # -4.732864643144441E-248
    .end array-data
.end method

.method public static decodeKeyPair([CLjava/lang/String;)Ljava/security/KeyPair;
    .locals 10

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getCertificateDecoders()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/trilead/ssh2/crypto/CertificateDecoder;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p0, v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->parsePEM([CLcom/trilead/ssh2/crypto/CertificateDecoder;)Lcom/trilead/ssh2/crypto/PEMStructure;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4}, Lcom/trilead/ssh2/crypto/PEMDecoder;->isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 55
    .line 56
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v4, v5}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decryptPEM(Lcom/trilead/ssh2/crypto/PEMStructure;[B)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v4

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    new-instance v4, Ljava/io/IOException;

    .line 67
    .line 68
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v6, v0, [J

    .line 71
    .line 72
    fill-array-data v6, :array_0

    .line 73
    .line 74
    .line 75
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v4

    .line 86
    :cond_2
    :goto_1
    invoke-virtual {v3, v4, p1}, Lcom/trilead/ssh2/crypto/CertificateDecoder;->createKeyPair(Lcom/trilead/ssh2/crypto/PEMStructure;Ljava/lang/String;)Ljava/security/KeyPair;

    .line 87
    .line 88
    .line 89
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-object p0

    .line 91
    :goto_2
    sget-object v5, Lcom/trilead/ssh2/crypto/PEMDecoder;->LOGGER:Ljava/util/logging/Logger;

    .line 92
    .line 93
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 94
    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v9, v0, [J

    .line 103
    .line 104
    fill-array-data v9, :array_1

    .line 105
    .line 106
    .line 107
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v5, v6, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 137
    .line 138
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    const/4 v0, 0x6

    .line 141
    new-array v0, v0, [J

    .line 142
    .line 143
    fill-array-data v0, :array_2

    .line 144
    .line 145
    .line 146
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :array_0
    .array-data 8
        0x51f4b49a45ce7ce4L    # 6.435822396758105E86
        0x32cc1bb717c59398L    # 5.338078220493107E-64
        -0x588a3be045634a65L
        -0x7eee7698cc6eb724L
        -0x101e8db168b5a108L    # -8.464382833343214E230
        -0x46aa50421a84cd06L    # -1.670666522360629E-32
        0x48fde904452d7c6cL    # 4.1688764153866533E43
    .end array-data

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
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
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
    :array_1
    .array-data 8
        -0x7026addd87bf95ccL
        -0x31b5520133037373L    # -1.4385649174892078E69
        0xee417580e292befL    # 6.170765246956076E-237
        -0x655c6541e07decf5L    # -2.362259307444644E-180
        -0x30145eda8af3f13fL    # -9.997734247500736E76
        -0xb7c690a8ddf2129L
        -0x470f025baa1052f4L    # -2.0451918096800924E-34
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
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
    .line 218
    .line 219
    .line 220
    .line 221
    :array_2
    .array-data 8
        0x60779de3cfcd6d05L    # 5.066383150303223E156
        -0x14a2afe8f850ebceL    # -1.5057576374927237E209
        0x81f30f0e18932f6L
        -0x795617f965ee9938L
        0x2e74dc4bfda63e0L
        -0x21cfe4bd11354d8cL    # -5.028041200540384E145
    .end array-data
.end method

.method private static decryptPEM(Lcom/trilead/ssh2/crypto/PEMStructure;[B)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x3

    .line 4
    iget-object v3, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v3, :cond_8

    .line 7
    .line 8
    array-length v4, v3

    .line 9
    if-ne v4, v1, :cond_7

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aget-object v5, v3, v4

    .line 13
    .line 14
    aget-object v3, v3, v0

    .line 15
    .line 16
    invoke-static {v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToByteArray(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v7, v2, [J

    .line 23
    .line 24
    fill-array-data v7, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/16 v7, 0x18

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/DESede;

    .line 43
    .line 44
    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/DESede;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v3, v7}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, v4, p1}, Lcom/trilead/ssh2/crypto/cipher/DESede;->init(Z[B)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .line 55
    .line 56
    invoke-direct {p1, v1, v3, v4}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v1, v1, [J

    .line 64
    .line 65
    fill-array-data v1, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/DES;

    .line 82
    .line 83
    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/DES;-><init>()V

    .line 84
    .line 85
    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    invoke-static {p1, v3, v2}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v1, v4, p1}, Lcom/trilead/ssh2/crypto/cipher/DES;->init(Z[B)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .line 96
    .line 97
    invoke-direct {p1, v1, v3, v4}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v6, v2, [J

    .line 104
    .line 105
    fill-array-data v6, :array_2

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/AES;

    .line 122
    .line 123
    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/AES;-><init>()V

    .line 124
    .line 125
    .line 126
    const/16 v2, 0x10

    .line 127
    .line 128
    invoke-static {p1, v3, v2}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v1, v4, p1}, Lcom/trilead/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .line 136
    .line 137
    invoke-direct {p1, v1, v3, v4}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v6, v2, [J

    .line 144
    .line 145
    fill-array-data v6, :array_3

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_3

    .line 160
    .line 161
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/AES;

    .line 162
    .line 163
    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/AES;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v3, v7}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {v1, v4, p1}, Lcom/trilead/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 171
    .line 172
    .line 173
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .line 174
    .line 175
    invoke-direct {p1, v1, v3, v4}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v2, v2, [J

    .line 182
    .line 183
    fill-array-data v2, :array_4

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
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_6

    .line 198
    .line 199
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/AES;

    .line 200
    .line 201
    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/AES;-><init>()V

    .line 202
    .line 203
    .line 204
    const/16 v2, 0x20

    .line 205
    .line 206
    invoke-static {p1, v3, v2}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v1, v4, p1}, Lcom/trilead/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 211
    .line 212
    .line 213
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .line 214
    .line 215
    invoke-direct {p1, v1, v3, v4}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .line 216
    .line 217
    .line 218
    :goto_0
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 219
    .line 220
    array-length v1, v1

    .line 221
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    rem-int/2addr v1, v2

    .line 226
    if-nez v1, :cond_5

    .line 227
    .line 228
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 229
    .line 230
    array-length v1, v1

    .line 231
    new-array v1, v1, [B

    .line 232
    .line 233
    :goto_1
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 234
    .line 235
    array-length v2, v2

    .line 236
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    div-int/2addr v2, v3

    .line 241
    if-ge v4, v2, :cond_4

    .line 242
    .line 243
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 244
    .line 245
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    mul-int v3, v3, v4

    .line 250
    .line 251
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    mul-int v5, v5, v4

    .line 256
    .line 257
    invoke-interface {p1, v2, v3, v1, v5}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 258
    .line 259
    .line 260
    add-int/2addr v4, v0

    .line 261
    goto :goto_1

    .line 262
    :cond_4
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    invoke-static {v1, p1}, Lcom/trilead/ssh2/crypto/PEMDecoder;->removePadding([BI)[B

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 271
    .line 272
    const/4 p1, 0x0

    .line 273
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    .line 274
    .line 275
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    .line 276
    .line 277
    return-void

    .line 278
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 279
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 286
    .line 287
    const/16 v2, 0xa

    .line 288
    .line 289
    new-array v2, v2, [J

    .line 290
    .line 291
    fill-array-data v2, :array_5

    .line 292
    .line 293
    .line 294
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw p0

    .line 319
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 320
    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 327
    .line 328
    const/4 v1, 0x7

    .line 329
    new-array v1, v1, [J

    .line 330
    .line 331
    fill-array-data v1, :array_6

    .line 332
    .line 333
    .line 334
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 335
    .line 336
    .line 337
    invoke-static {v0, p1, v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p0

    .line 345
    :cond_7
    new-instance p0, Ljava/io/IOException;

    .line 346
    .line 347
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 348
    .line 349
    const/4 v0, 0x6

    .line 350
    new-array v0, v0, [J

    .line 351
    .line 352
    fill-array-data v0, :array_7

    .line 353
    .line 354
    .line 355
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw p0

    .line 366
    :cond_8
    new-instance p0, Ljava/io/IOException;

    .line 367
    .line 368
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 369
    .line 370
    const/16 v0, 0x9

    .line 371
    .line 372
    new-array v0, v0, [J

    .line 373
    .line 374
    fill-array-data v0, :array_8

    .line 375
    .line 376
    .line 377
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw p0

    .line 388
    nop

    .line 389
    :array_0
    .array-data 8
        -0x63aaa66c77863f92L
        0x2e14c62fcb0702b2L    # 1.0442990214187127E-86
        0x8e96ff9d8263966L
    .end array-data

    .line 390
    .line 391
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
    :array_1
    .array-data 8
        0x3bdb74093d945fbfL    # 2.3253820811338942E-20
        0x327f8b3c7caabf0L
    .end array-data

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
    :array_2
    .array-data 8
        0x4afd1c2db7cac04eL    # 1.7426193927476907E53
        0x23a1bff59a3d5e31L    # 4.769649403850529E-137
        -0x35d6ca284eead7c5L    # -1.8422463765208968E49
    .end array-data

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
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    :array_3
    .array-data 8
        -0x1100c445c1361294L    # -4.624393447044596E226
        -0x1e047c5ae7d97094L    # -9.90273475105968E163
        -0x57e7aa0a9c36cdc8L
    .end array-data

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
    :array_4
    .array-data 8
        -0x47eab40f64916337L    # -1.5646300098174782E-38
        0x7e8f2cde816939bdL    # 4.175571289100248E301
        0x354e3ddc730b8f62L    # 6.314750128143505E-52
    .end array-data

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
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_5
    .array-data 8
        -0x4802c13fa374bc70L    # -5.371480707364104E-39
        -0x5b2a86ee5206d1bbL    # -3.025193279953624E-131
        0x268753fd24bff0ebL    # 4.41113962271244E-123
        0x7b49cc977834e1c6L    # 7.672765233369734E285
        0x712e960de90ceec9L    # 1.5560065308652705E237
        -0x779cb683ec92f4a2L
        0x6d14cff50fd53fcfL    # 2.869839803678157E217
        0x4e4db8bbfc835c6bL    # 1.6025864962507828E69
        -0x7bdeef8b8b8dded1L    # -8.75511909635813E-289
        -0x4bcb5efc3d9d3c54L    # -3.2863835066380135E-57
    .end array-data

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    :array_6
    .array-data 8
        0x450b8681aace086fL    # 4.1595232720086416E24
        0x237f8ee3c5be5dceL
        -0x74a27ec1d31b6a5cL    # -6.288066884122122E-254
        -0x6ac964f8ee60cf8dL
        -0x7db5836cf7d319b4L
        -0x33ada0015ef3bbe2L    # -4.613664523238641E59
        -0x3b29f7cff4e831edL    # -4.1617239385053714E23
    .end array-data

    :array_7
    .array-data 8
        -0x2e49aeaf35b22844L    # -4.33557830553457E85
        -0x777b5794331d7521L
        0xa8dd6d00d1217a4L
        0x399bfb9b0dafab00L    # 3.449150671060786E-31
        0x6c2b6ac81ee463e1L    # 1.1537420536795476E213
        -0x26ebe0a4946a6125L    # -1.2990323506059949E121
    .end array-data

    :array_8
    .array-data 8
        -0x136d49fe2dcab8faL    # -1.0078435355128178E215
        -0x732809c869769063L    # -8.567670268697676E-247
        0x18b0399f16c7c1c6L    # 9.10394630739225E-190
        0x5ae05ecbb928898aL    # 5.67367797479968E129
        -0x4daed514409b7feeL    # -2.547135561545354E-66
        0x67c7f0ccb93b9da9L    # 8.533412077353543E191
        -0x332a3273bcb91b84L    # -1.4014377607621489E62
        0x20ba7b2929f71a8L
        -0x35e3854062a01699L    # -1.0405703967726168E49
    .end array-data
.end method

.method public static generateKeyFromPasswordSaltWithMD5([B[BI)[B
    .locals 9

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MD5;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    .line 9
    .line 10
    .line 11
    new-array v2, p2, [B

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/MD5;->getDigestLength()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    new-array v4, v3, [B

    .line 18
    .line 19
    move v5, p2

    .line 20
    :goto_0
    array-length v6, p0

    .line 21
    const/4 v7, 0x0

    .line 22
    invoke-virtual {v0, p0, v7, v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, v7, v1}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    .line 26
    .line 27
    .line 28
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-virtual {v0, v4, v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->digest([BI)V

    .line 33
    .line 34
    .line 35
    sub-int v8, p2, v5

    .line 36
    .line 37
    invoke-static {v4, v7, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    sub-int/2addr v5, v6

    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_0
    invoke-virtual {v0, v4, v7, v3}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array p2, v1, [J

    .line 53
    .line 54
    fill-array-data p2, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x477dc5475f7c5004L    # 2.473246373445256E36
        0x58380b6c2c51fa5bL    # 9.474062402604863E116
        -0xc16bff1f91b6787L
        -0x5a3259843fb1efc7L
        0x29177af03ebb4dceL    # 9.763463802931566E-111
        0x534ac3efa5c70211L    # 1.7447050488415494E93
        -0x4139fb1d92c21646L    # -2.6248788830816326E-6
        0x73c7d8242778c41bL    # 5.33495831644252E249
    .end array-data
.end method

.method private static hexToByteArray(Ljava/lang/String;)[B
    .locals 5

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    rem-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    div-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    new-array v1, v0, [B

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v0, :cond_0

    .line 21
    .line 22
    mul-int/lit8 v3, v2, 0x2

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-static {v4}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToInt(C)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToInt(C)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    mul-int/lit8 v4, v4, 0x10

    .line 43
    .line 44
    add-int/2addr v4, v3

    .line 45
    int-to-byte v3, v4

    .line 46
    aput-byte v3, v1, v2

    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-object v1

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/4 v1, 0x6

    .line 57
    new-array v1, v1, [J

    .line 58
    .line 59
    fill-array-data v1, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    const/4 v1, 0x3

    .line 78
    new-array v1, v1, [J

    .line 79
    .line 80
    fill-array-data v1, :array_1

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        0x74944d56d27ed7a6L    # 3.7211524132892405E253
        -0x6c4d358473994b9dL    # -8.721511766219903E-214
        0x6cd6d0f56c07acL
        0x50aa106e694fbe97L    # 3.8630737993701794E80
        0x5fcbea084f1b92dfL    # 2.9239694410940477E153
        -0x59b794f4d88c091dL
    .end array-data

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
    .line 120
    .line 121
    .line 122
    .line 123
    :array_1
    .array-data 8
        -0x746f63506f4075eeL    # -5.664570455727297E-253
        0x529153329f7872cL
        0x70cd942505962613L    # 2.3511783029247165E235
    .end array-data
.end method

.method private static hexToInt(C)I
    .locals 2

    .line 1
    const/16 v0, 0x61

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x66

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 p0, p0, -0x57

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/16 v0, 0x41

    .line 13
    .line 14
    if-lt p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x46

    .line 17
    .line 18
    if-gt p0, v0, :cond_1

    .line 19
    .line 20
    add-int/lit8 p0, p0, -0x37

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    const/16 v0, 0x30

    .line 24
    .line 25
    if-lt p0, v0, :cond_2

    .line 26
    .line 27
    const/16 v1, 0x39

    .line 28
    .line 29
    if-gt p0, v1, :cond_2

    .line 30
    .line 31
    sub-int/2addr p0, v0

    .line 32
    return p0

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    new-array v1, v1, [J

    .line 39
    .line 40
    fill-array-data v1, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x12fc6d2d9fd185f6L    # 3.221114664397235E-217
        -0x705abc5c3e2488efL
        0x6908c877b355df52L    # 9.262802107217122E197
    .end array-data
.end method

.method public static isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    array-length v1, v1

    .line 9
    if-ne v1, v0, :cond_2

    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v3, v0, [J

    .line 14
    .line 15
    fill-array-data v3, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v3, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    .line 26
    .line 27
    aget-object v3, v3, v2

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    new-array v1, v1, [J

    .line 39
    .line 40
    fill-array-data v1, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object p0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    aget-object p0, p0, v1

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v5, 0x5

    .line 70
    new-array v5, v5, [J

    .line 71
    .line 72
    fill-array-data v5, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    .line 86
    .line 87
    aget-object p0, p0, v2

    .line 88
    .line 89
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v0, v0, [J

    .line 95
    .line 96
    fill-array-data v0, :array_3

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-static {p0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1

    .line 110
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 111
    .line 112
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    const/4 v1, 0x4

    .line 115
    new-array v1, v1, [J

    .line 116
    .line 117
    fill-array-data v1, :array_4

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :array_0
    .array-data 8
        -0x11e9ed9e23bcc002L    # -1.9945947993234506E222
        -0x1857d02352528027L    # -2.155304168860081E191
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        0x28915a58fd39945bL    # 2.818604966307617E-113
        -0x3e138be35d4fd8d6L    # -3.818972437504781E9
        -0x3e55963b7df33a21L    # -2.2156960102494714E8
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_2
    .array-data 8
        -0x31f8bc3d2733ae65L    # -7.840185652980442E67
        0x68d39c93ff163d5dL    # 9.162435799150435E196
        -0x21be28312a3a75d3L    # -1.1140271753242142E146
        -0x78df3b2dfbf3d1f9L
        0x5cf77667365cc18aL    # 6.98509827208402E139
    .end array-data

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
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_3
    .array-data 8
        -0x1426a84492be3f94L    # -3.3326516335504204E211
        0x3a38f7ca0b43fe27L    # 3.151395400893876E-28
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    :array_4
    .array-data 8
        0x3155281a3ad3b2f9L    # 4.789695872750309E-71
        -0x66d2edf21063e360L
        0x37c697b08776039cL    # 5.186992197329616E-40
        -0x1961fabc1f4b72fcL    # -2.0409681523487026E186
    .end array-data
.end method

.method private static parsePEM([C)Lcom/trilead/ssh2/crypto/PEMStructure;
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x5

    .line 1
    new-instance v5, Lcom/trilead/ssh2/crypto/PEMStructure;

    invoke-direct {v5}, Lcom/trilead/ssh2/crypto/PEMStructure;-><init>()V

    .line 2
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/CharArrayReader;

    invoke-direct {v7, p0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    :cond_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_0

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_1

    invoke-direct {p0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    iput v3, v5, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    goto :goto_0

    .line 8
    :cond_1
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_2

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 9
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_3

    invoke-direct {p0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    iput v2, v5, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x3a

    .line 13
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-ne v7, v8, :cond_6

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-eqz v4, :cond_5

    .line 15
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    new-array v1, p0, [C

    .line 18
    invoke-virtual {v0, v9, p0, v1, v9}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 19
    invoke-static {v1}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object p0

    iput-object p0, v5, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 20
    array-length p0, p0

    if-eqz p0, :cond_3

    return-object v5

    .line 21
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 24
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_5

    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_6

    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    invoke-static {p0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/2addr v7, v2

    .line 27
    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 28
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 29
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v3, [J

    fill-array-data v10, :array_7

    invoke-direct {v7, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 30
    :goto_2
    array-length v7, v4

    if-ge v9, v7, :cond_7

    .line 31
    aget-object v7, v4, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    add-int/2addr v9, v2

    goto :goto_2

    .line 32
    :cond_7
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v0, [J

    fill-array-data v9, :array_8

    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 33
    iput-object v4, v5, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    goto/16 :goto_0

    .line 34
    :cond_8
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v0, [J

    fill-array-data v9, :array_9

    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 35
    iput-object v4, v5, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    goto/16 :goto_0

    .line 36
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_a

    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_b

    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    invoke-static {p0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_a
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_c

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 8
        -0x2393577f17a2de88L    # -1.666392149333405E137
        -0x51760238dd9eb26eL    # -1.6723976935962855E-84
        0x7a3c256ef59d4746L    # 6.386400074463673E280
        -0x1222856e33125384L    # -1.6649701329801238E221
        0x2a3eac0bf133d471L    # 3.343369929419595E-105
    .end array-data

    :array_1
    .array-data 8
        0x745fae4f4ac6fe2bL    # 3.6292247069203232E252
        -0x73a6469068e98277L
        -0x2b5e5ebcd7422446L    # -4.820134924421456E99
        0x2c54bdde95c0bb73L    # 3.88423286814479E-95
        -0x30e238b575e4adecL    # -1.3153505495493284E73
    .end array-data

    :array_2
    .array-data 8
        0x56ff8b94ab340d25L    # 1.1853653276442089E111
        0x327c25308866137aL    # 1.6703458444844328E-65
        0x798852cddc7be095L    # 2.694829323514732E277
        -0x7a25aa724c3494c6L
        0x812a33a844ab05fL
    .end array-data

    :array_3
    .array-data 8
        0x695185de2f384a7bL    # 2.0957702091602473E199
        0x17ec875c61443e4cL
        -0x5811b597dee39158L
        0x641af7efa57d709dL    # 1.6675325117567198E174
        -0x730773bf0ac4c3c7L
    .end array-data

    :array_4
    .array-data 8
        -0x2bae688fd31c55fL
        -0x5cdc17d50441e62dL    # -2.089564489807166E-139
        0x2d95918b2f238c45L    # 4.2352771933239603E-89
        -0x3bcf6c9af9e39c1aL    # -3.057688071945809E20
        -0x586f30f176553629L    # -4.16599573171619E-118
        0x864e0d2bd0489a4L
    .end array-data

    :array_5
    .array-data 8
        0x7c2d79e774fd32a3L    # 1.4362735397592401E290
        -0x2ed4d623a2643cb9L    # -1.030658650477517E83
        -0x9b3146fa3ca08fcL    # -7.114544720015669E261
        -0x1b66ef7f9910e4cdL    # -3.9674897738031415E176
    .end array-data

    :array_6
    .array-data 8
        0x2c018394da810e5cL    # 1.0249354151095677E-96
        0x5b3545e011e85b94L
    .end array-data

    :array_7
    .array-data 8
        0x61e8cbd6246ab57cL    # 4.462245181977751E163
        0x4b88ab7e13e2aec8L    # 7.56130006306225E55
    .end array-data

    :array_8
    .array-data 8
        0x73fefe39c4823d35L    # 5.547547026207749E250
        0x780e0b494dd49367L    # 1.984015875416472E270
        -0x341791f2062f363eL    # -4.792155388154244E57
    .end array-data

    :array_9
    .array-data 8
        0x1da68762522e278dL    # 7.641019460791858E-166
        0x4ffe8dd207d85ae6L    # 2.2111936754990472E77
        -0xb9e16cff5727ae1L    # -4.103585902256833E252
    .end array-data

    :array_a
    .array-data 8
        0x21f6d4abe6cb5a6cL    # 4.570905463989455E-145
        -0x25cb5c2cda97cf85L    # -3.492903915164233E126
        -0x424b02ec06760ef8L
        -0x21714984df8d4568L    # -3.0680860688558856E147
    .end array-data

    :array_b
    .array-data 8
        -0x1e2f45b10f409cd4L
        -0x2e26fbf199f16dcL
    .end array-data

    :array_c
    .array-data 8
        -0xff15704cae17f78L    # -5.950041719832908E231
        -0x682b3950ca6ffdcaL    # -7.115199106789145E-194
        -0x167c58e6b6d88fc8L
        0x723a353d30b8eff9L    # 1.7475508847776185E242
        -0x7b1fd50c09a9840aL    # -3.397696963053425E-285
        -0x1de71227d4d0074dL    # -3.5889209807776405E164
        -0x5cee670a97e8cc6dL    # -9.235764732615068E-140
    .end array-data
.end method

.method private static parsePEM([CLcom/trilead/ssh2/crypto/CertificateDecoder;)Lcom/trilead/ssh2/crypto/PEMStructure;
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    .line 46
    new-instance v3, Lcom/trilead/ssh2/crypto/PEMStructure;

    invoke-direct {v3}, Lcom/trilead/ssh2/crypto/PEMStructure;-><init>()V

    .line 47
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/CharArrayReader;

    invoke-direct {v5, p0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 48
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/CertificateDecoder;->getStartLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/CertificateDecoder;->getEndLine()Ljava/lang/String;

    move-result-object p0

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0x3a

    .line 54
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_5

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-eqz p1, :cond_4

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    new-array p1, p0, [C

    .line 59
    invoke-virtual {v0, v7, p0, p1, v7}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 60
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object p0

    iput-object p0, v3, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 61
    array-length p0, p0

    if-eqz p0, :cond_2

    return-object v3

    .line 62
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 65
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_2

    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    invoke-static {p0, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 68
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 70
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_3

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 71
    :goto_2
    array-length v5, p1

    if-ge v7, v5, :cond_6

    .line 72
    aget-object v5, p1, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 73
    :cond_6
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_4

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 74
    iput-object p1, v3, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    goto/16 :goto_0

    .line 75
    :cond_7
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_5

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    iput-object p1, v3, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    goto/16 :goto_0

    .line 77
    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_6

    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_7

    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    invoke-static {p0, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_9
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 8
        -0x33dd16096c31355L    # -9.072151962349273E292
        -0x339f5959c7b2ca99L    # -8.361588530311292E59
        -0x1ce1a7ec53887a34L    # -2.862932631492399E169
        0x4425e58d92c1fa5cL    # 2.0196133195806448E20
        0x2b41c4fd852c95d4L
        -0x5c235810ad442d6cL
    .end array-data

    :array_1
    .array-data 8
        -0x5d54b036547b8ad7L
        0x579ec5e93b83b51bL    # 1.1841030142704361E114
        -0x1c7d729448540a4L
        0x14eb044b781d02f7L    # 6.574254858603589E-208
    .end array-data

    :array_2
    .array-data 8
        -0x257c72db34ad5e26L    # -1.0587776434208445E128
        0x23a36c56b03a1386L    # 5.219305446524116E-137
    .end array-data

    :array_3
    .array-data 8
        0xed995ded6102db5L    # 3.929127940424296E-237
        0x155f2de6669174ffL    # 9.711566577849788E-206
    .end array-data

    :array_4
    .array-data 8
        0x2d115134a591c9a9L    # 1.3283093807103713E-91
        0x2cd559cbd609a5b4L    # 1.023563559663527E-92
        0x40b80e0b79f9571bL    # 6158.044829925314
    .end array-data

    :array_5
    .array-data 8
        0x7c71e78218403edfL    # 2.791732907042267E291
        -0x489293d6b89686f3L    # -1.0554805986941558E-41
        0x2230035f1dccc67bL    # 5.129551548779515E-144
    .end array-data

    :array_6
    .array-data 8
        -0x5d9cd8cc23159e4dL    # -4.908309508501966E-143
        0x469a16ecd040db23L    # 1.3228973987385484E32
        -0xd497c1296123469L    # -3.843395107724544E244
        0xf28f6a10ce68d1L
    .end array-data

    :array_7
    .array-data 8
        0x7de57de525d14aeaL    # 2.8111114332101247E298
        0x56f1e9c45ececaf6L    # 6.731168276535468E110
    .end array-data

    :array_8
    .array-data 8
        0x73fa66c1d1927998L    # 4.7256688308520335E250
        0x3ec52117fdac4f74L    # 2.518805542259538E-6
        -0x492bd05227b0630bL    # -1.4143478049963263E-44
        -0x3b942e867ce6d65cL    # -4.105250638082903E21
        0x2bc858cf77031f82L    # 8.905029638220802E-98
        0x7de15a79179dfb2L
        0x4b0bd3a2209a8bc7L    # 3.331584558815871E53
    .end array-data
.end method

.method private static removePadding([BI)[B
    .locals 4

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    const/4 v2, 0x1

    .line 5
    sub-int/2addr v1, v2

    .line 6
    aget-byte v1, p0, v1

    .line 7
    .line 8
    and-int/lit16 v1, v1, 0xff

    .line 9
    .line 10
    if-lt v1, v2, :cond_2

    .line 11
    .line 12
    if-gt v1, p1, :cond_2

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    :goto_0
    if-gt p1, v1, :cond_1

    .line 16
    .line 17
    array-length v3, p0

    .line 18
    sub-int/2addr v3, p1

    .line 19
    aget-byte v3, p0, v3

    .line 20
    .line 21
    if-ne v3, v1, :cond_0

    .line 22
    .line 23
    add-int/2addr p1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 26
    .line 27
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v0, v0, [J

    .line 30
    .line 31
    fill-array-data v0, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    array-length p1, p0

    .line 46
    sub-int/2addr p1, v1

    .line 47
    new-array p1, p1, [B

    .line 48
    .line 49
    array-length v0, p0

    .line 50
    sub-int/2addr v0, v1

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 57
    .line 58
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        -0x46a1b753eb3c54b7L    # -2.332984925512519E-32
        0x3519adb0627fd53L
        -0x463ac9842d20b323L    # -2.0917462288309222E-30
        -0x6af82040583f6f8dL    # -2.323798764076207E-207
        0x5d8c4a76b7456a1L
        -0x551cb897231d965dL
        0x781b534cafce185dL    # 3.60896337882929E270
        -0x32380bdcfc033cd2L    # -5.045229508467959E66
        -0x3ad750e97cc4e064L    # -1.4920524544904754E25
        -0x78e77407e773c99fL
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    :array_1
    .array-data 8
        -0x1afac199ee5db38dL    # -4.3042602734961716E178
        -0x79eb477a35ba0beeL
        -0x6fb33e4294547ddL    # -9.000632106536097E274
        0x2df59941a9a87a00L    # 2.7143636927693713E-87
        0x5ac2218281b570cdL    # 1.5709684490243443E129
        -0x2f4022074907dc20L    # -9.446285687740029E80
        -0x4fa60faf9f826467L    # -8.960448550593039E-76
        0x71645b4458c951b8L    # 1.6569520680769232E238
        0xc27038bb8468294L
        -0x7e96bb4ae52eb6edL    # -7.369396133930382E-302
    .end array-data
.end method
