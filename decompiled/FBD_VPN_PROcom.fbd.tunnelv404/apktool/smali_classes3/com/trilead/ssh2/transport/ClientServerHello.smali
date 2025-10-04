.class public Lcom/trilead/ssh2/transport/ClientServerHello;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field client_line:Ljava/lang/String;

.field server_line:Ljava/lang/String;

.field server_versioncomment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x5

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
    iput-object v1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->client_line:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->client_line:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    new-array v4, v3, [J

    .line 37
    .line 38
    fill-array-data v4, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 58
    .line 59
    .line 60
    const/16 p2, 0x200

    .line 61
    .line 62
    new-array p2, p2, [B

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    const/4 v2, 0x0

    .line 66
    :goto_0
    const/16 v4, 0x32

    .line 67
    .line 68
    if-ge v2, v4, :cond_1

    .line 69
    .line 70
    invoke-static {p1, p2}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    new-instance v5, Ljava/lang/String;

    .line 75
    .line 76
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 77
    .line 78
    invoke-direct {v5, p2, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 79
    .line 80
    .line 81
    iput-object v5, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v6, v3, [J

    .line 86
    .line 87
    fill-array-data v6, :array_2

    .line 88
    .line 89
    .line 90
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_0

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    .line 108
    .line 109
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v1, v3, [J

    .line 112
    .line 113
    fill-array-data v1, :array_3

    .line 114
    .line 115
    .line 116
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    iget-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    .line 130
    .line 131
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    const/4 v1, 0x3

    .line 134
    new-array v1, v1, [J

    .line 135
    .line 136
    fill-array-data v1, :array_4

    .line 137
    .line 138
    .line 139
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_2

    .line 151
    .line 152
    iget-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iput-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_versioncomment:Ljava/lang/String;

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_2
    iget-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    .line 162
    .line 163
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v1, v3, [J

    .line 166
    .line 167
    fill-array-data v1, :array_5

    .line 168
    .line 169
    .line 170
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_3

    .line 182
    .line 183
    iget-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    .line 184
    .line 185
    const/16 p2, 0x8

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_versioncomment:Ljava/lang/String;

    .line 192
    .line 193
    :goto_2
    return-void

    .line 194
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 195
    .line 196
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 197
    .line 198
    new-array v0, v0, [J

    .line 199
    .line 200
    fill-array-data v0, :array_6

    .line 201
    .line 202
    .line 203
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1

    .line 214
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 215
    .line 216
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 217
    .line 218
    const/16 v0, 0xf

    .line 219
    .line 220
    new-array v0, v0, [J

    .line 221
    .line 222
    fill-array-data v0, :array_7

    .line 223
    .line 224
    .line 225
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    nop

    .line 237
    :array_0
    .array-data 8
        0x236082d3f1d60ed7L
        0x6252ce9633a41d7dL    # 4.3320821268575485E165
        0x47ab5d03bc6d9b57L    # 1.8186057635040746E37
        0x584e014b82b56adcL    # 2.364518997941973E117
        -0x61d73a10bdc7d46eL
    .end array-data

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
    :array_1
    .array-data 8
        0x53190d56fa7c5361L    # 2.0412818466839308E92
        0x1ae3e35491d88517L    # 3.83428067228203E-179
    .end array-data

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
    :array_2
    .array-data 8
        -0x715ef3bb25ead773L
        -0x1bc77b4642f7d815L    # -6.064160343378035E174
    .end array-data

    .line 274
    .line 275
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
    :array_3
    .array-data 8
        -0x467adaf2b0ca0981L    # -1.3031448647367592E-31
        0x78138a73d221dcc5L    # 2.580828377396585E270
    .end array-data

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
    :array_4
    .array-data 8
        0x436b7ab2f0d1d297L    # 6.1877866673902776E16
        -0x560f81eec81339b7L
        -0x777c7a17d6d172a5L
    .end array-data

    .line 298
    .line 299
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
    .line 310
    .line 311
    .line 312
    .line 313
    :array_5
    .array-data 8
        -0x2e64872a5eb31894L    # -1.3342254680419615E85
        0x1de4ccc0c7de126bL
    .end array-data

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
    :array_6
    .array-data 8
        -0x52c3c9689528eca0L    # -8.65634194519876E-91
        -0x73b3443675527b9cL
        -0x14c544474c724e68L    # -3.433123122075198E208
        0x2a6ec00c012ef824L
        0x7b3cfd95a5684b49L    # 4.31094598485559E285
        -0x32ea90aff71c826bL    # -2.2044428587341515E63
        -0x143c04661769a291L    # -1.3139041776243953E211
        0x4af875773551f5f7L    # 1.464182769649568E53
        0x2233d5ac1df71e7cL
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
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
    :array_7
    .array-data 8
        -0x34a9246a4c5b79cL
        0x69e86960b0a1122aL
        0xbc7b5ddd9043a43L    # 6.46804181043773E-252
        0x20aae875ca5d5370L
        -0x3f168ad7fd50053eL    # -52137.2503280542
        -0x4c15425cfe5bfac3L    # -1.3312656888519598E-58
        0x7cb665285c42f70dL    # 5.587142165212375E292
        -0x735cc43ea6dc1b9cL    # -8.59627044463327E-248
        -0x8f38980cac5e96aL
        0x626776958928407cL    # 1.0809241669605002E166
        0x342d5b338e3447b9L    # 2.3383606528774678E-57
        0x335fa8dbc165046bL    # 3.078409287768726E-61
        0xdea6145fff54ddL
        0x58a05df3276fed34L    # 8.254621439523959E118
        -0x324697f6098c3356L    # -2.675606419653101E66
    .end array-data
.end method

.method public static readLineRN(Ljava/io/InputStream;[B)I
    .locals 8

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    const/4 v6, -0x1

    .line 12
    if-eq v5, v6, :cond_4

    .line 13
    .line 14
    add-int/lit8 v6, v2, 0x1

    .line 15
    .line 16
    int-to-byte v7, v5

    .line 17
    aput-byte v7, p1, v2

    .line 18
    .line 19
    const/16 v2, 0xd

    .line 20
    .line 21
    if-ne v5, v2, :cond_0

    .line 22
    .line 23
    move v2, v6

    .line 24
    const/4 v3, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-ne v5, v0, :cond_1

    .line 27
    .line 28
    return v4

    .line 29
    :cond_1
    if-nez v3, :cond_3

    .line 30
    .line 31
    add-int/2addr v4, v1

    .line 32
    array-length v2, p1

    .line 33
    if-ge v6, v2, :cond_2

    .line 34
    .line 35
    move v2, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v2, 0x6

    .line 47
    new-array v2, v2, [J

    .line 48
    .line 49
    fill-array-data v2, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/lang/String;

    .line 63
    .line 64
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 65
    .line 66
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 81
    .line 82
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v0, v0, [J

    .line 85
    .line 86
    fill-array-data v0, :array_1

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 101
    .line 102
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    const/4 v0, 0x5

    .line 105
    new-array v0, v0, [J

    .line 106
    .line 107
    fill-array-data v0, :array_2

    .line 108
    .line 109
    .line 110
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :array_0
    .array-data 8
        0x4ce49624a39f9e4eL    # 2.6464979627950395E62
        0x523a272f946c5c0fL    # 1.300652929499605E88
        0x6b2a992f9ef1ff6dL    # 1.7078992766949563E208
        -0x6a6980c44f674e90L
        0xdac6502a3c2544L
        0x62d85da28cf404f2L    # 1.4368041974581009E168
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
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
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_1
    .array-data 8
        0x60a9e4d5a522363eL    # 4.443907022951646E157
        0x2d82fed3e46d8a09L    # 1.8650059145284517E-89
        0x1723fa2af0f9ef77L    # 3.340625960781552E-197
        -0x60c6057167d595bcL
        -0x52d6292fdbc0cc32L    # -3.9639569742503187E-91
        -0x4cd846d5f0d08403L    # -2.883407149341035E-62
        -0x79dbd6feba286e73L
        0x1321bacbaf3231bbL    # 1.607214308567394E-216
        0x50343dddd6ca87e0L    # 2.343824824145156E78
        0x7efbb9018910b1b1L    # 4.7528143823669997E303
    .end array-data

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
    .line 190
    .line 191
    .line 192
    .line 193
    :array_2
    .array-data 8
        0x44a188991afc1619L    # 4.140000990510875E22
        0x5739824f0f441655L    # 1.5336708358145649E112
        -0x3a306578f113dd96L    # -1.9561695350854467E28
        -0x2679933f6c3c395bL    # -1.853007101231876E123
        -0x6eb11b8708df466aL    # -2.608109980016841E-225
    .end array-data
.end method


# virtual methods
.method public getClientString()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->client_line:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getServerString()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
