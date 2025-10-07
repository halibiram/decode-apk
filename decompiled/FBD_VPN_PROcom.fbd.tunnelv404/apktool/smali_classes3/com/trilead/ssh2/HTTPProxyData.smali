.class public Lcom/trilead/ssh2/HTTPProxyData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/ProxyData;


# instance fields
.field private final proxyHost:Ljava/lang/String;

.field private final proxyPass:Ljava/lang/String;

.field private final proxyPort:I

.field private final proxyUser:Ljava/lang/String;

.field private final requestHeaderLines:[Ljava/lang/String;

.field private sock:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/trilead/ssh2/HTTPProxyData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/trilead/ssh2/HTTPProxyData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 4
    iput-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyHost:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPort:I

    .line 6
    iput-object p3, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_1

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x40d61df14792dffbL    # -1.9747190182273236E-4
        0x14c30518e6754a58L    # 1.157074968604725E-208
        0x375fc675bb69fc97L    # 5.699403076657631E-42
        -0x70e67d1ebac1662eL    # -6.268377518209655E-236
        0x24f5c9531c6d3bffL    # 1.2277440848599935E-130
    .end array-data

    :array_1
    .array-data 8
        0x67e72be05715deccL
        0x25dd3211d95f258cL
        0x4598b05b36f08c75L    # 1.9102104821929838E27
        -0x25383cb0ce892a31L    # -2.0589608728742716E129
        -0x208b5a710c8395c0L    # -6.75847548172532E151
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public openConnection(Ljava/lang/String;III)Ljava/net/Socket;
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-instance v1, Ljava/net/Socket;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyHost:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    .line 17
    .line 18
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 19
    .line 20
    iget v4, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPort:I

    .line 21
    .line 22
    invoke-direct {v3, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 26
    .line 27
    .line 28
    iget-object p3, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    .line 29
    .line 30
    invoke-virtual {p3, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 31
    .line 32
    .line 33
    new-instance p3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    new-array v2, v1, [J

    .line 42
    .line 43
    fill-array-data v2, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {p4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/16 p1, 0x3a

    .line 60
    .line 61
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 p2, 0x3

    .line 70
    new-array p2, p2, [J

    .line 71
    .line 72
    fill-array-data p2, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz p1, :cond_0

    .line 88
    .line 89
    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz p1, :cond_0

    .line 92
    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array p4, v1, [J

    .line 106
    .line 107
    fill-array-data p4, :array_2

    .line 108
    .line 109
    .line 110
    invoke-direct {p2, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object p2, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    sget-object p2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    const/4 p4, 0x5

    .line 142
    new-array p4, p4, [J

    .line 143
    .line 144
    fill-array-data p4, :array_3

    .line 145
    .line 146
    .line 147
    invoke-direct {p2, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array p2, v1, [J

    .line 163
    .line 164
    fill-array-data p2, :array_4

    .line 165
    .line 166
    .line 167
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    :cond_0
    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    .line 178
    .line 179
    const/4 p2, 0x0

    .line 180
    if-eqz p1, :cond_2

    .line 181
    .line 182
    array-length p4, p1

    .line 183
    const/4 v2, 0x0

    .line 184
    :goto_0
    if-ge v2, p4, :cond_2

    .line 185
    .line 186
    aget-object v3, p1, v2

    .line 187
    .line 188
    if-eqz v3, :cond_1

    .line 189
    .line 190
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    new-array v4, v1, [J

    .line 196
    .line 197
    fill-array-data v4, :array_5

    .line 198
    .line 199
    .line 200
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 214
    .line 215
    new-array p4, v1, [J

    .line 216
    .line 217
    fill-array-data p4, :array_6

    .line 218
    .line 219
    .line 220
    invoke-direct {p1, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p4

    .line 240
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 241
    .line 242
    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 243
    .line 244
    .line 245
    move-result-object p4

    .line 246
    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :catch_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p3

    .line 254
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 259
    .line 260
    .line 261
    :goto_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 262
    .line 263
    .line 264
    const/16 p1, 0x400

    .line 265
    .line 266
    new-array p1, p1, [B

    .line 267
    .line 268
    iget-object p3, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    .line 269
    .line 270
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 271
    .line 272
    .line 273
    move-result-object p3

    .line 274
    invoke-static {p3, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    .line 275
    .line 276
    .line 277
    move-result p4

    .line 278
    new-instance v2, Ljava/lang/String;

    .line 279
    .line 280
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 281
    .line 282
    invoke-direct {v2, p1, p2, p4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 283
    .line 284
    .line 285
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 286
    .line 287
    new-array p4, v1, [J

    .line 288
    .line 289
    fill-array-data p4, :array_7

    .line 290
    .line 291
    .line 292
    invoke-direct {p2, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    if-eqz p2, :cond_7

    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 306
    .line 307
    .line 308
    move-result p2

    .line 309
    const/16 p4, 0xe

    .line 310
    .line 311
    if-lt p2, p4, :cond_6

    .line 312
    .line 313
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 314
    .line 315
    .line 316
    move-result p2

    .line 317
    const/16 p4, 0x20

    .line 318
    .line 319
    if-ne p2, p4, :cond_6

    .line 320
    .line 321
    const/16 p2, 0xc

    .line 322
    .line 323
    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-ne v1, p4, :cond_6

    .line 328
    .line 329
    const/16 p4, 0x9

    .line 330
    .line 331
    :try_start_1
    invoke-virtual {v2, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    move-result p2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    if-ltz p2, :cond_5

    .line 340
    .line 341
    const/16 p4, 0x3e7

    .line 342
    .line 343
    if-gt p2, p4, :cond_5

    .line 344
    .line 345
    const/16 p4, 0xc8

    .line 346
    .line 347
    if-ne p2, p4, :cond_4

    .line 348
    .line 349
    :cond_3
    invoke-static {p3, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    .line 350
    .line 351
    .line 352
    move-result p2

    .line 353
    if-nez p2, :cond_3

    .line 354
    .line 355
    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    .line 356
    .line 357
    return-object p1

    .line 358
    :cond_4
    new-instance p1, Lcom/trilead/ssh2/HTTPProxyException;

    .line 359
    .line 360
    const/16 p3, 0xd

    .line 361
    .line 362
    invoke-virtual {v2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p3

    .line 366
    invoke-direct {p1, p3, p2}, Lcom/trilead/ssh2/HTTPProxyException;-><init>(Ljava/lang/String;I)V

    .line 367
    .line 368
    .line 369
    throw p1

    .line 370
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 371
    .line 372
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 373
    .line 374
    new-array p3, v0, [J

    .line 375
    .line 376
    fill-array-data p3, :array_8

    .line 377
    .line 378
    .line 379
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw p1

    .line 390
    :catch_1
    new-instance p1, Ljava/io/IOException;

    .line 391
    .line 392
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 393
    .line 394
    new-array p3, v0, [J

    .line 395
    .line 396
    fill-array-data p3, :array_9

    .line 397
    .line 398
    .line 399
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw p1

    .line 410
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 411
    .line 412
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 413
    .line 414
    new-array p3, v0, [J

    .line 415
    .line 416
    fill-array-data p3, :array_a

    .line 417
    .line 418
    .line 419
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p2

    .line 426
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw p1

    .line 430
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 431
    .line 432
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 433
    .line 434
    new-array p3, v0, [J

    .line 435
    .line 436
    fill-array-data p3, :array_b

    .line 437
    .line 438
    .line 439
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw p1

    .line 450
    nop

    :array_0
    .array-data 8
        -0x7eca40c035d9e49aL    # -7.928025990671224E-303
        -0x619ab55255fc19cfL
    .end array-data

    :array_1
    .array-data 8
        0x28804d19e24d5484L
        -0x18dc4ce12691903L
        0x1bca01b61a7a87c2L    # 8.21481001885618E-175
    .end array-data

    :array_2
    .array-data 8
        0x54937ccabdd4089aL    # 2.663998737358957E99
        -0x6041c5d2b9037b9L    # -3.955051128832363E279
    .end array-data

    :array_3
    .array-data 8
        -0x1a45e930f90cc3d4L    # -1.0825711203672154E182
        0x673018eb02037674L    # 1.1206533707791834E189
        -0x5e1a8ce07bedcd88L
        0x1ef6790cda54cc25L    # 1.598455335332359E-159
        0x7faf68cf85acb0c0L    # 1.1028221187212159E307
    .end array-data

    :array_4
    .array-data 8
        -0x4cef404705aaed76L    # -1.017859003406378E-62
        0x78d8cc27e81220a9L    # 1.3414784147093093E274
    .end array-data

    :array_5
    .array-data 8
        0x93f7773ba27ae64L
        -0x27fd3c6f113ec64dL    # -9.241706198025815E115
    .end array-data

    :array_6
    .array-data 8
        0x1824a9d6668e7b21L
        0x189b055e965f7148L
    .end array-data

    :array_7
    .array-data 8
        -0x20ea99de0264b483L    # -1.0944865953186473E150
        -0x2f07f5e1bcae58b2L    # -1.1401571287907307E82
    .end array-data

    :array_8
    .array-data 8
        -0x6169a3daaf3fd627L    # -2.485038101355617E-161
        0xde52fd074e47078L    # 9.92929321329332E-242
        0x4f110a6f1fc4c4bbL    # 7.527103366101848E72
        0x1be5215b6a2efca4L
        0x2942c596853e5d07L    # 6.244507014952012E-110
        -0x17119787e4d01dfaL    # -2.8412942643439756E197
        -0x8d9b7587be17548L    # -8.981638253524609E265
        -0x764773f011c12a93L    # -7.795505688089097E-262
    .end array-data

    :array_9
    .array-data 8
        -0x18ffa6f3785dfe73L    # -1.42261663761342E188
        -0x1ff960e4a8a92933L    # -3.791310922631865E154
        0x7e84713b599084f7L    # 2.738014138197399E301
        0x3ac752c365e273eL
        0x1cc9152c66b90e4bL
        -0xcb83d330115607fL    # -2.076682408523053E247
        0x203f630c03c00543L
        -0x53681993f7982dd8L    # -7.161117905170973E-94
    .end array-data

    :array_a
    .array-data 8
        -0x60d3a12a0a86470L
        -0x4908b6ce94aea84cL
        -0x5a7f90ad884d38f4L    # -4.741957439828999E-128
        0x3e4cd585ef5f186eL    # 1.3426912453303367E-8
        0x7edb4faf8bacaaf6L    # 1.170570536420829E303
        0x5cc3e47e7d21acb2L    # 7.40284382568315E138
        -0x4ce814f3f3ed11a5L    # -1.453545204035758E-62
        -0x78ef8e5f3f184e83L
    .end array-data

    :array_b
    .array-data 8
        -0x5bac20c4ee8c243aL
        0x568ae9a856f63952L    # 7.900710058669466E108
        -0x4fdf6d5290e9b419L    # -7.156343322318145E-77
        -0x4a4352a11ba348c4L    # -7.664748615589115E-50
        -0x3bca8cb770a492b9L    # -3.956886726834236E20
        0x471831de175ff015L    # 3.1406639640407474E34
        -0x195edee3ac970340L    # -2.329098867718582E186
        0x9841f3772fcdc0aL
    .end array-data
.end method
