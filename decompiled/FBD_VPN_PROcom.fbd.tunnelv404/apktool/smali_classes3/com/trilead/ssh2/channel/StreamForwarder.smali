.class public Lcom/trilead/ssh2/channel/StreamForwarder;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field buffer:[B

.field c:Lcom/trilead/ssh2/channel/Channel;

.field is:Ljava/io/InputStream;

.field mode:Ljava/lang/String;

.field os:Ljava/io/OutputStream;

.field s:Ljava/net/Socket;

.field sibling:Lcom/trilead/ssh2/channel/StreamForwarder;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    .line 15
    .line 16
    const/16 p1, 0x2000

    .line 17
    .line 18
    new-array p1, p1, [B

    .line 19
    .line 20
    iput-object p1, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->buffer:[B

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    :goto_0
    const/4 v2, 0x1

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    .line 5
    .line 6
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->buffer:[B

    .line 7
    .line 8
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    .line 9
    .line 10
    .line 11
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-gtz v3, :cond_1

    .line 13
    .line 14
    :try_start_1
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catch_1
    nop

    .line 26
    :goto_1
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 27
    .line 28
    if-eqz v3, :cond_5

    .line 29
    .line 30
    :goto_2
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    :try_start_3
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catch_2
    nop

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :try_start_4
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 47
    .line 48
    iget-object v4, v3, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v1, v1, [J

    .line 58
    .line 59
    fill-array-data v1, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v0, v0, [J

    .line 80
    .line 81
    fill-array-data v0, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v4, v3, v0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 99
    .line 100
    .line 101
    :catch_3
    :try_start_5
    iget-object v0, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    :goto_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    .line 106
    .line 107
    .line 108
    goto/16 :goto_a

    .line 109
    .line 110
    :cond_1
    :try_start_6
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    .line 111
    .line 112
    iget-object v5, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->buffer:[B

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    invoke-virtual {v4, v5, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 116
    .line 117
    .line 118
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v3

    .line 125
    goto :goto_4

    .line 126
    :catch_4
    move-exception v3

    .line 127
    :try_start_7
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 128
    .line 129
    iget-object v5, v4, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 130
    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    const/4 v8, 0x7

    .line 139
    new-array v8, v8, [J

    .line 140
    .line 141
    fill-array-data v8, :array_2

    .line 142
    .line 143
    .line 144
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v7, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    const/4 v8, 0x2

    .line 162
    new-array v8, v8, [J

    .line 163
    .line 164
    fill-array-data v8, :array_3

    .line 165
    .line 166
    .line 167
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v5, v4, v3, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 189
    .line 190
    .line 191
    goto :goto_7

    .line 192
    :goto_4
    :try_start_8
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 195
    .line 196
    .line 197
    :catch_5
    :try_start_9
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :catch_6
    nop

    .line 204
    :goto_5
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 205
    .line 206
    if-eqz v4, :cond_3

    .line 207
    .line 208
    :goto_6
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_2

    .line 215
    .line 216
    :try_start_a
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 217
    .line 218
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :catch_7
    nop

    .line 223
    goto :goto_6

    .line 224
    :cond_2
    :try_start_b
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 225
    .line 226
    iget-object v5, v4, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 227
    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 234
    .line 235
    new-array v1, v1, [J

    .line 236
    .line 237
    fill-array-data v1, :array_4

    .line 238
    .line 239
    .line 240
    invoke-direct {v7, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v1, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v0, v0, [J

    .line 258
    .line 259
    fill-array-data v0, :array_5

    .line 260
    .line 261
    .line 262
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v5, v4, v0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 277
    .line 278
    .line 279
    :catch_8
    :try_start_c
    iget-object v0, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    .line 280
    .line 281
    if-eqz v0, :cond_3

    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 284
    .line 285
    .line 286
    :catch_9
    :cond_3
    throw v3

    .line 287
    :catch_a
    :goto_7
    :try_start_d
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 290
    .line 291
    .line 292
    :catch_b
    :try_start_e
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 295
    .line 296
    .line 297
    goto :goto_8

    .line 298
    :catch_c
    nop

    .line 299
    :goto_8
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 300
    .line 301
    if-eqz v3, :cond_5

    .line 302
    .line 303
    :goto_9
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 304
    .line 305
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_4

    .line 310
    .line 311
    :try_start_f
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 312
    .line 313
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_d

    .line 314
    .line 315
    .line 316
    goto :goto_9

    .line 317
    :catch_d
    nop

    .line 318
    goto :goto_9

    .line 319
    :cond_4
    :try_start_10
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 320
    .line 321
    iget-object v4, v3, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 322
    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 329
    .line 330
    new-array v1, v1, [J

    .line 331
    .line 332
    fill-array-data v1, :array_6

    .line 333
    .line 334
    .line 335
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    iget-object v1, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 351
    .line 352
    new-array v0, v0, [J

    .line 353
    .line 354
    fill-array-data v0, :array_7

    .line 355
    .line 356
    .line 357
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v4, v3, v0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 372
    .line 373
    .line 374
    :catch_e
    :try_start_11
    iget-object v0, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 375
    .line 376
    if-eqz v0, :cond_5

    .line 377
    .line 378
    goto/16 :goto_3

    .line 379
    .line 380
    :catch_f
    :cond_5
    :goto_a
    return-void

    .line 381
    :array_0
    .array-data 8
        0x4d191fb2803c3dc3L    # 2.5838347577648248E63
        0x7ef201d241c12dffL    # 3.0871645109429197E303
        0x69fc359229339262L    # 3.4548470078609044E202
        0x889c370dd79f052L
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
    :array_1
    .array-data 8
        0x64c90e579ca484bbL    # 3.172923679806189E177
        -0x55a26e3a0f6ec02dL
        0x641957e356754069L    # 1.5670429229978093E174
        0x48361111b7533f6fL    # 7.508900935512112E39
        -0x1c20a3d81b1462d2L    # -1.2119183387474343E173
    .end array-data

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
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :array_2
    .array-data 8
        -0x68b2b8d2eba83371L
        -0x6778651556ee94e4L
        0x35ba5e231099ae81L    # 7.047471830931983E-50
        0x54300029a9c2e783L    # 3.4177150483457995E97
        0x3ba7210bb606596eL    # 2.4488871236597124E-21
        0x392f81bd0629027fL    # 3.0339935665003228E-33
        -0x38c5974dc1beb668L    # -1.3712321080061115E35
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
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :array_3
    .array-data 8
        0x4a8c516e56385cb4L    # 1.3243819100963033E51
        -0x73e62f81a6256dceL
    .end array-data

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
    :array_4
    .array-data 8
        -0x66d1a5b85d335066L
        0x66c95087ef2e5cbcL    # 1.37682248968088E187
        -0x36b494f2dec0bc5eL    # -1.222891205637611E45
        0x627d7316478f6557L    # 2.7134162107939358E166
    .end array-data

    .line 470
    .line 471
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
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_5
    .array-data 8
        0x3733c70c3aa782f5L    # 8.868551331120134E-43
        0x156a1fba3353e221L
        -0xa6c4308f14e18a5L    # -2.3709512676999457E258
        -0x5bd4673379258f6cL
        0x2b049480aa8812abL
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
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
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_6
    .array-data 8
        0x302967a5fc8f7387L    # 1.0970039780480291E-76
        -0x6bccae51c2cad90eL
        -0x4e3b1a398ca7b3b7L    # -6.055730916580191E-69
        0x2eb89d7085b2e0e2L
    .end array-data

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
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_7
    .array-data 8
        0x48dfa547da6dc144L    # 1.1026891855044132E43
        -0xd690728380e23d9L    # -9.803386324781292E243
        0x596012530439198dL    # 3.320066680835529E122
        0xdf29691bb5d7963L
        0x5d2696a91ded55eeL    # 5.379918928531909E140
    .end array-data
.end method
