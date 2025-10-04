.class public Lcom/tknetwork/tunnel/thread/UDPTunnelThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;
    }
.end annotation


# static fields
.field private static final DNS_BIN:Ljava/lang/String;

.field public static socksListener:Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;


# instance fields
.field private dnsProcess:Ljava/lang/Process;

.field private filled:Ljava/io/File;

.field private final mConfig:Lconfig/ConfigUtil;

.field private final mContext:Landroid/content/Context;

.field private mLastReceived:J

.field private mLastSent:J

.field private mReceived:J

.field private mSent:J

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->DNS_BIN:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0xbdfd496ff3fa60aL
        -0x26e04d9a92ebdcb8L    # -2.0462303307605039E121
        -0x1007682f0d7d51f8L    # -2.3863204484731116E231
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mConfig:Lconfig/ConfigUtil;

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    return-void
.end method

.method private excludeIps()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mConfig:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object v0

    .line 16
    :catch_0
    sget-object v0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->socksListener:Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;->stopSocksOpenVPN()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->interrupt()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method private getIPv4Addresses([Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    instance-of v3, v2, Ljava/net/Inet4Address;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    check-cast v2, Ljava/net/Inet4Address;

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method private synthetic lambda$run$0(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    new-array v5, v4, [J

    .line 11
    .line 12
    fill-array-data v5, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v1, v1, [J

    .line 36
    .line 37
    fill-array-data v1, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->excludeIps()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    check-cast v1, Ljava/lang/CharSequence;

    .line 58
    .line 59
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->logs(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->socksListener:Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;

    .line 88
    .line 89
    invoke-interface {p1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;->startSocksOpenVPN()V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/tknetwork/tunnel/service/c_06;->startmanager()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v5, v4, [J

    .line 104
    .line 105
    fill-array-data v5, :array_3

    .line 106
    .line 107
    .line 108
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_1

    .line 120
    .line 121
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    const/16 v0, 0xb

    .line 124
    .line 125
    new-array v0, v0, [J

    .line 126
    .line 127
    fill-array-data v0, :array_4

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->logs(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v0, v1, [J

    .line 143
    .line 144
    fill-array-data v0, :array_5

    .line 145
    .line 146
    .line 147
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    const v1, 0x7f130255

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {p1, v0}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    sget-object p1, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->socksListener:Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;

    .line 167
    .line 168
    invoke-interface {p1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;->stopSocksOpenVPN()V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 172
    .line 173
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_09;->stopSocksHttp(Landroid/content/Context;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    new-array v5, v0, [J

    .line 185
    .line 186
    fill-array-data v5, :array_6

    .line 187
    .line 188
    .line 189
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_2

    .line 201
    .line 202
    sget-object p1, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->socksListener:Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;

    .line 203
    .line 204
    invoke-interface {p1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;->stopSocksOpenVPN()V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 208
    .line 209
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_09;->stopSocksHttp(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 219
    .line 220
    new-array v5, v4, [J

    .line 221
    .line 222
    fill-array-data v5, :array_7

    .line 223
    .line 224
    .line 225
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_3

    .line 237
    .line 238
    sget-object p1, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->socksListener:Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;

    .line 239
    .line 240
    invoke-interface {p1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;->stopSocksOpenVPN()V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_09;->stopSocksHttp(Landroid/content/Context;)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 255
    .line 256
    new-array v5, v4, [J

    .line 257
    .line 258
    fill-array-data v5, :array_8

    .line 259
    .line 260
    .line 261
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_4

    .line 273
    .line 274
    sget-object p1, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->socksListener:Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;

    .line 275
    .line 276
    invoke-interface {p1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;->startSocksOpenVPN()V

    .line 277
    .line 278
    .line 279
    invoke-static {}, Lcom/tknetwork/tunnel/service/c_06;->startmanager()V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 289
    .line 290
    new-array v5, v1, [J

    .line 291
    .line 292
    fill-array-data v5, :array_9

    .line 293
    .line 294
    .line 295
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_5

    .line 307
    .line 308
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 309
    .line 310
    new-array v0, v1, [J

    .line 311
    .line 312
    fill-array-data v0, :array_a

    .line 313
    .line 314
    .line 315
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->logs(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto :goto_0

    .line 326
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 331
    .line 332
    new-array v4, v4, [J

    .line 333
    .line 334
    fill-array-data v4, :array_b

    .line 335
    .line 336
    .line 337
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v2, :cond_6

    .line 349
    .line 350
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 351
    .line 352
    const/4 v0, 0x6

    .line 353
    new-array v0, v0, [J

    .line 354
    .line 355
    fill-array-data v0, :array_c

    .line 356
    .line 357
    .line 358
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->logs(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->interrupt()V

    .line 369
    .line 370
    .line 371
    goto :goto_0

    .line 372
    :cond_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 373
    .line 374
    new-array v0, v0, [J

    .line 375
    .line 376
    fill-array-data v0, :array_d

    .line 377
    .line 378
    .line 379
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-eqz v0, :cond_7

    .line 391
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 398
    .line 399
    new-array v1, v1, [J

    .line 400
    .line 401
    fill-array-data v1, :array_e

    .line 402
    .line 403
    .line 404
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->logs(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->interrupt()V

    .line 425
    .line 426
    .line 427
    :cond_7
    :goto_0
    return-void

    .line 428
    nop

    .line 429
    :array_0
    .array-data 8
        -0x2d65fbe276f08698L    # -8.280575329942881E89
        0x475db8004418c5c3L    # 6.172343733580428E35
        -0x62945ad0a6ea965bL    # -5.860207518985482E-167
    .end array-data

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
    :array_1
    .array-data 8
        0x196fd08792abf8f8L    # 3.655937245312761E-186
        0x2c209758b7468257L    # 3.883730839300494E-96
        0x7e21d2a6d600041fL    # 3.7299503869865025E299
        -0x1207e853a1d5ed6L
    .end array-data

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
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_2
    .array-data 8
        0x5ce154b5b9d9ee22L    # 2.5798180319072443E139
        -0x2887140a88e87135L    # -2.397376805108745E113
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
    .line 475
    .line 476
    .line 477
    :array_3
    .array-data 8
        0x215320f816f88fa3L    # 3.739982244019536E-148
        0x371ad087ef80808eL    # 3.006017733178662E-43
        -0x7805c3637e2cc5cL    # -2.674421134104503E272
    .end array-data

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
    .line 490
    .line 491
    .line 492
    .line 493
    :array_4
    .array-data 8
        -0x3890af356adc3414L    # -1.3007987650259323E36
        0x793b1b702d63ee72L    # 9.385132150542185E275
        -0x3d574f6b1ac1b707L    # -1.3573345681188486E13
        0x53a37d9438983556L    # 8.131161525174838E94
        -0x63aa5633909ff9a2L
        0x36e0c21104344a36L    # 2.3483060768849756E-44
        0x62a939899183ecd8L    # 1.8593218548821718E167
        0x1023b9a06320885fL    # 6.352616327792161E-231
        -0x73511b9a3d7ff1e8L
        0x2d947b7b6543d975L    # 4.021991139062335E-89
        0x8ac6977d3fe858fL
    .end array-data

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
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    :array_5
    .array-data 8
        0x1cb0e337fba1aaa1L
        -0x233e99628e48a8ddL    # -6.475573391527136E138
        0x47a310d7e7d0c515L    # 1.2671393877015712E37
        0x240bf278e63789bdL    # 4.806285827672926E-135
    .end array-data

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
    :array_6
    .array-data 8
        0x307a7fee9a8c53c7L    # 3.6616987883202804E-75
        0x49fa8b755bc276d4L    # 2.4247005917704354E48
    .end array-data

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
    :array_7
    .array-data 8
        -0x3a81679520490d30L    # -5.9180073230473225E26
        0x475cf15734b93fbaL    # 6.011171276830668E35
        0x315df721e1db0c8dL    # 6.783917261303885E-71
    .end array-data

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
    .line 586
    .line 587
    .line 588
    .line 589
    :array_8
    .array-data 8
        0x712b536dc7ac4f99L    # 1.3901478168194949E237
        -0x2a5f8fb921b25b5bL    # -2.945458094586996E104
        0x697778ad0ef4ab65L    # 1.122886757731382E200
    .end array-data

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
    :array_9
    .array-data 8
        -0x677fce3f773dc85bL
        -0x7de41b5825159603L    # -1.666028540566094E-298
        0xffb87ba9956e070L
        0x140a41dd968ff1b0L
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
    :array_a
    .array-data 8
        0x73b7a5d23d01d64bL    # 2.6454895771672075E249
        0x72b10e280d357fd6L    # 2.911359423516735E244
        -0x37b48ecbf1f4077eL    # -1.8676193909455663E40
        0x4df2662ebf93aa39L    # 3.100250780708674E67
    .end array-data

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
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    :array_b
    .array-data 8
        -0x65d37b0e9d653fe8L
        0x23428d83c835b6bL
        -0x438a6641dc734565L    # -1.8735497128415838E-17
    .end array-data

    .line 646
    .line 647
    .line 648
    .line 649
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
    :array_c
    .array-data 8
        -0x76c5decd7343ef41L
        -0x7f95c06b7f912a05L    # -1.168090780209476E-306
        0x6ffe08cd26b869b9L    # 2.9143074312144236E231
        -0x542738ddaf9f4edeL    # -1.8125305569380052E-97
        0x58a29838d07e64d7L    # 9.378114701786505E118
        -0x379b1e0c89170988L    # -5.684790221910836E40
    .end array-data

    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
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
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :array_d
    .array-data 8
        -0x69398eb27b611f6fL    # -5.863890238395022E-199
        -0x5cd64f93f80c551dL
    .end array-data

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
    :array_e
    .array-data 8
        -0x57d579c06246531aL
        -0x419621d6cd4caaf2L    # -4.818256224009738E-8
        -0x4693009010616970L    # -4.467818778174077E-32
        0x390eeb1a4032d38eL    # 7.443326659526608E-34
    .end array-data
.end method

.method private makeConfig(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {v0, p2}, Lcom/tknetwork/tunnel/utils/VPNUtil;->saveTextFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    new-instance p2, Ljava/io/File;

    .line 34
    .line 35
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v2, v2, [J

    .line 38
    .line 39
    fill-array-data v2, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_2

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :try_start_0
    new-instance p1, Ljava/io/IOException;

    .line 66
    .line 67
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/16 v0, 0x9

    .line 70
    .line 71
    new-array v0, v0, [J

    .line 72
    .line 73
    fill-array-data v0, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    new-instance p2, Ljava/lang/RuntimeException;

    .line 89
    .line 90
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw p2

    .line 94
    :cond_2
    :goto_0
    return-object v0

    .line 95
    :array_0
    .array-data 8
        -0x675eee4d10976d53L    # -4.788773522559263E-190
        -0x7a0ea6d9649a439cL    # -4.77858809363239E-280
        -0x21899e479b99e47cL    # -1.117921623996271E147
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
    :array_1
    .array-data 8
        0x15a720a773a54a03L
        0x67ea3cde0d2ced14L    # 3.7408823970539823E192
        0x4cd75ddbf0753fe9L    # 1.5019495350009739E62
    .end array-data

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
    .line 124
    .line 125
    .line 126
    .line 127
    :array_2
    .array-data 8
        0x38d160097a4933caL    # 5.228642391827401E-35
        0x719985ef8c494f7eL    # 1.6620017158567811E239
        -0x3c8dc632eddb9955L    # -8.2081640259938992E16
        -0x6aedbe465a110b6dL    # -3.554071815382023E-207
        0x31c1df698b3164f1L    # 5.179183157813043E-69
        0x3b546810c2b6da5fL    # 6.751946369382657E-23
        -0x775657d79742b920L    # -6.21637880111724E-267
        -0x7ad90aaf3232e8b9L    # -7.719570668275169E-284
        0x688fab185853a807L    # 4.623517495618105E195
    .end array-data
.end method

.method public static setSocksListener(Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->socksListener:Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;

    .line 2
    .line 3
    return-void
.end method

.method private updateByteCount()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mLastReceived:J

    .line 25
    .line 26
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iput-wide v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mLastSent:J

    .line 47
    .line 48
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->startNetStat()V

    .line 49
    .line 50
    .line 51
    new-instance v0, Ljava/util/Timer;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->timer:Ljava/util/Timer;

    .line 57
    .line 58
    new-instance v2, Lcom/tknetwork/tunnel/thread/UDPTunnelThread$1;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread$1;-><init>(Lcom/tknetwork/tunnel/thread/UDPTunnelThread;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->timer:Ljava/util/Timer;

    .line 64
    .line 65
    const-wide/16 v5, 0x3e8

    .line 66
    .line 67
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :array_0
    .array-data 8
        0x565d7a920a35595bL    # 1.0817530577777257E108
        0x7190e3c08d04358L
        0x49b4dea6ec5d3212L    # 1.1914512192053204E47
    .end array-data

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
    :array_1
    .array-data 8
        0x6561df77a69351cfL    # 2.3176236756588883E180
        0x74081c0154a8e11L    # 9.53537590034931E-274
        -0x2566ea79377048b7L    # -2.716792588884009E128
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/thread/UDPTunnelThread;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->lambda$run$0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/thread/UDPTunnelThread;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mLastReceived:J

    return-wide v0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/thread/UDPTunnelThread;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mLastSent:J

    return-wide v0
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/thread/UDPTunnelThread;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mReceived:J

    return-wide v0
.end method

.method public static bridge synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/thread/UDPTunnelThread;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mSent:J

    return-wide v0
.end method

.method public static bridge synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/tknetwork/tunnel/thread/UDPTunnelThread;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static bridge synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Lcom/tknetwork/tunnel/thread/UDPTunnelThread;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mLastReceived:J

    return-void
.end method

.method public static bridge synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Lcom/tknetwork/tunnel/thread/UDPTunnelThread;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mLastSent:J

    return-void
.end method

.method public static bridge synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/tknetwork/tunnel/thread/UDPTunnelThread;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mReceived:J

    return-void
.end method

.method public static bridge synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/tknetwork/tunnel/thread/UDPTunnelThread;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mSent:J

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->socksListener:Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;

    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread$SocksListener;->addStatus(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 28
    .line 29
    .line 30
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->filled:Ljava/io/File;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/VPNUtil;->killProcess(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    nop

    .line 39
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->timer:Ljava/util/Timer;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->stopNetStat()V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->filled:Ljava/io/File;

    .line 53
    .line 54
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        -0x416c4e414cc576ceL    # -2.934681788501478E-7
        0x11f41780e370f85fL    # 3.473939738163124E-222
        -0x64b9591b7ad81437L    # -2.794973321843553E-177
    .end array-data
.end method

.method public logs(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public run()V
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 5
    .line 6
    .line 7
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v4, v1, [J

    .line 10
    .line 11
    fill-array-data v4, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const v5, 0x7f130259

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v3, v4}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v5, Ljava/io/File;

    .line 47
    .line 48
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v7, v1, [J

    .line 51
    .line 52
    fill-array-data v7, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object v5, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->filled:Ljava/io/File;

    .line 66
    .line 67
    new-instance v4, Lconfig/ConfigUtil;

    .line 68
    .line 69
    iget-object v5, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-direct {v4, v5}, Lconfig/ConfigUtil;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lconfig/ConfigUtil;->getUDPConfig()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    new-instance v6, Lorg/json/JSONObject;

    .line 79
    .line 80
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v7, v2, [J

    .line 86
    .line 87
    fill-array-data v7, :array_2

    .line 88
    .line 89
    .line 90
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_1

    .line 102
    .line 103
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v7, v2, [J

    .line 106
    .line 107
    fill-array-data v7, :array_3

    .line 108
    .line 109
    .line 110
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v8, v2, [J

    .line 124
    .line 125
    fill-array-data v8, :array_4

    .line 126
    .line 127
    .line 128
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_0

    .line 140
    .line 141
    new-instance v5, Ljava/lang/String;

    .line 142
    .line 143
    new-array v7, v1, [B

    .line 144
    .line 145
    fill-array-data v7, :array_5

    .line 146
    .line 147
    .line 148
    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :catch_1
    move-exception v0

    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :catch_2
    move-exception v0

    .line 159
    goto/16 :goto_3

    .line 160
    .line 161
    :cond_0
    :goto_0
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v8, v2, [J

    .line 164
    .line 165
    fill-array-data v8, :array_6

    .line 166
    .line 167
    .line 168
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    :cond_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v7, v2, [J

    .line 181
    .line 182
    fill-array-data v7, :array_7

    .line 183
    .line 184
    .line 185
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 197
    .line 198
    new-array v8, v2, [J

    .line 199
    .line 200
    fill-array-data v8, :array_8

    .line 201
    .line 202
    .line 203
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v4}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 219
    .line 220
    new-array v8, v2, [J

    .line 221
    .line 222
    fill-array-data v8, :array_9

    .line 223
    .line 224
    .line 225
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    const/4 v7, 0x0

    .line 237
    aget-object v5, v5, v7

    .line 238
    .line 239
    new-array v7, v7, [Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .line 241
    :try_start_1
    invoke-static {v5}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 242
    .line 243
    .line 244
    move-result-object v7
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    goto :goto_1

    .line 246
    :catch_3
    move-exception v8

    .line 247
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 248
    .line 249
    .line 250
    :goto_1
    if-nez v7, :cond_2

    .line 251
    .line 252
    return-void

    .line 253
    :cond_2
    :try_start_3
    invoke-direct {p0, v7}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->getIPv4Addresses([Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    if-nez v7, :cond_3

    .line 258
    .line 259
    return-void

    .line 260
    :cond_3
    invoke-virtual {v7}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 264
    :catch_4
    :try_start_4
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 265
    .line 266
    new-array v8, v2, [J

    .line 267
    .line 268
    fill-array-data v8, :array_a

    .line 269
    .line 270
    .line 271
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    new-instance v8, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 287
    .line 288
    new-array v10, v2, [J

    .line 289
    .line 290
    fill-array-data v10, :array_b

    .line 291
    .line 292
    .line 293
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 304
    .line 305
    new-array v10, v2, [J

    .line 306
    .line 307
    fill-array-data v10, :array_c

    .line 308
    .line 309
    .line 310
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 322
    .line 323
    new-array v11, v2, [J

    .line 324
    .line 325
    fill-array-data v11, :array_d

    .line 326
    .line 327
    .line 328
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    const/4 v10, 0x1

    .line 340
    aget-object v9, v9, v10

    .line 341
    .line 342
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-virtual {v4, v5}, Lconfig/ConfigUtil;->setSSHHost(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget-object v4, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 360
    .line 361
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-direct {p0, v4, v6}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->makeConfig(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    iget-object v5, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->filled:Ljava/io/File;

    .line 370
    .line 371
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 379
    .line 380
    new-array v6, v2, [J

    .line 381
    .line 382
    fill-array-data v6, :array_e

    .line 383
    .line 384
    .line 385
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 403
    .line 404
    new-array v2, v2, [J

    .line 405
    .line 406
    fill-array-data v2, :array_f

    .line 407
    .line 408
    .line 409
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    iput-object v2, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 432
    .line 433
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 434
    .line 435
    new-array v3, v0, [J

    .line 436
    .line 437
    fill-array-data v3, :array_10

    .line 438
    .line 439
    .line 440
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 448
    .line 449
    const v4, 0x7f13025b

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-static {v2, v3}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .line 463
    .line 464
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 465
    .line 466
    new-array v5, v0, [J

    .line 467
    .line 468
    fill-array-data v5, :array_11

    .line 469
    .line 470
    .line 471
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 482
    .line 483
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {p0, v2}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->logs(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .line 501
    .line 502
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 503
    .line 504
    new-array v0, v0, [J

    .line 505
    .line 506
    fill-array-data v0, :array_12

    .line 507
    .line 508
    .line 509
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->mContext:Landroid/content/Context;

    .line 520
    .line 521
    const v3, 0x7f130268

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->logs(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    new-instance v0, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;

    .line 539
    .line 540
    const/16 v2, 0x1a

    .line 541
    .line 542
    invoke-direct {v0, p0, v2}, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;-><init>(Ljava/lang/Object;I)V

    .line 543
    .line 544
    .line 545
    new-instance v2, Lcom/tknetwork/tunnel/thread/StreamGobbler;

    .line 546
    .line 547
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 548
    .line 549
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    invoke-direct {v2, v3, v0}, Lcom/tknetwork/tunnel/thread/StreamGobbler;-><init>(Ljava/io/InputStream;Lcom/tknetwork/tunnel/thread/StreamGobbler$OnLineListener;)V

    .line 554
    .line 555
    .line 556
    new-instance v3, Lcom/tknetwork/tunnel/thread/StreamGobbler;

    .line 557
    .line 558
    iget-object v4, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 559
    .line 560
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 561
    .line 562
    .line 563
    move-result-object v4

    .line 564
    invoke-direct {v3, v4, v0}, Lcom/tknetwork/tunnel/thread/StreamGobbler;-><init>(Ljava/io/InputStream;Lcom/tknetwork/tunnel/thread/StreamGobbler$OnLineListener;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 571
    .line 572
    .line 573
    invoke-direct {p0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->updateByteCount()V

    .line 574
    .line 575
    .line 576
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 577
    .line 578
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 579
    .line 580
    .line 581
    goto :goto_4

    .line 582
    :goto_2
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->interrupt()V

    .line 583
    .line 584
    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .line 589
    .line 590
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 591
    .line 592
    new-array v1, v1, [J

    .line 593
    .line 594
    fill-array-data v1, :array_13

    .line 595
    .line 596
    .line 597
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->logs(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 622
    .line 623
    const/16 v1, 0x8

    .line 624
    .line 625
    new-array v1, v1, [J

    .line 626
    .line 627
    fill-array-data v1, :array_14

    .line 628
    .line 629
    .line 630
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    goto :goto_4

    .line 641
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .line 645
    .line 646
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 647
    .line 648
    new-array v1, v1, [J

    .line 649
    .line 650
    fill-array-data v1, :array_15

    .line 651
    .line 652
    .line 653
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->logs(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    :goto_4
    return-void

    .line 674
    nop

    .line 675
    :array_0
    .array-data 8
        -0x3b2f2c6956c8d89cL    # -3.1784393197794445E23
        0x1d6592fdac06579L
        -0x78de7e2e56beca1cL
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
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
    :array_1
    .array-data 8
        0x2126051edb228dc5L    # 5.381576405093153E-149
        -0x65214bf7323713a0L
        0x6df3985c489b6c39L    # 4.426960008003956E221
    .end array-data

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
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    :array_2
    .array-data 8
        0x16592945ca58fbfcL    # 5.136113594003048E-201
        -0x1995d13fd54b806L    # -7.579722547208893E300
    .end array-data

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
    :array_3
    .array-data 8
        0x1b3520df746c603fL
        -0x4b24ff018fe41375L    # -4.405213864339525E-54
    .end array-data

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :array_4
    .array-data 8
        0x18ae8dddb5429df8L    # 8.572019564320406E-190
        -0x2c4321336fa636ceL    # -2.4088517783945825E95
    .end array-data

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
    :array_5
    .array-data 1
        0x62t
        0x6ft
        0x79t
    .end array-data

    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    :array_6
    .array-data 8
        0x8dc0ff7f7e33af1L
        0x45fa63c567d816a2L    # 1.3067561813247033E29
    .end array-data

    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    :array_7
    .array-data 8
        0x30d7070926395a2eL    # 2.036420891385958E-73
        0x13b0d38c0e42d721L    # 7.809678506063922E-214
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    :array_8
    .array-data 8
        -0x2efed66604fc3ba1L    # -1.627981745247923E82
        0x4a5bcd627d01d03L
    .end array-data

    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :array_9
    .array-data 8
        -0x6291a6dadacecaffL    # -6.433179693029752E-167
        0x444718f595f5c4d1L    # 8.521472444086513E20
    .end array-data

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    :array_a
    .array-data 8
        -0xfae163e99b15850L    # -1.1124169265474997E233
        0x7aa7b398f89cd95eL    # 6.883712876178987E282
    .end array-data

    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    :array_b
    .array-data 8
        -0x776f7a8a373de460L
        -0x52ed96fc0f352bfcL    # -1.4121480143660235E-91
    .end array-data

    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_c
    .array-data 8
        0x729b25618576abdL
        -0x34b5c387d03ae217L    # -5.025859143942741E54
    .end array-data

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    :array_d
    .array-data 8
        0x4e57fea04c13da90L    # 2.587576151449946E69
        0x39b186b3ef209a25L    # 8.641075404170729E-31
    .end array-data

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    :array_e
    .array-data 8
        -0x6b8a8623627a0a64L    # -4.082788539054885E-210
        -0x440f842bf61091b2L    # -5.584896221930909E-20
    .end array-data

    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :array_f
    .array-data 8
        0x76edd5e94ab1938bL    # 7.515897540316121E264
        -0x3d60d62582549f82L    # -8.566154947288123E12
    .end array-data

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    :array_10
    .array-data 8
        0x26f326ec94ab8b02L
        -0x2b257a9f73e778ddL    # -5.8008086192355506E100
        -0x2c784b75e6c8dda4L    # -2.4723666355730863E94
        -0x242a7343e849c061L    # -2.4473733144432862E134
    .end array-data

    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    :array_11
    .array-data 8
        0x6f20d0b9bcc4ca16L    # 1.991738163831804E227
        0x648de31252ff0b8L
        -0x5daecd02c23422a0L    # -2.203787573504747E-143
        0x42b46f3e23cb59bdL    # 2.246801645858574E13
    .end array-data

    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    :array_12
    .array-data 8
        -0x66367ffbee5dcbe5L    # -1.8753999689603602E-184
        -0x1f5fc1d697a00e3aL    # -2.7875917035327365E157
        -0x24f253554669efe9L    # -4.1138765769947496E130
        0x2816f3136315bc2cL    # 1.456113329517002E-115
    .end array-data

    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    :array_13
    .array-data 8
        -0x3d2025c99faf8d4cL    # -1.4008830245319481E14
        -0x360699ad1dc2291eL    # -2.3201066475888973E48
        -0x4e9f68ec8af80643L    # -7.511749476595917E-71
    .end array-data

    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    :array_14
    .array-data 8
        -0x10330926e3dda711L    # -3.5130877088828547E230
        0x64382d737c4c0117L    # 5.9798415205571455E174
        -0x247719b29b14d81bL    # -8.836917433501751E132
        -0x1068909bf78ac713L    # -3.553071093923785E229
        0x4af9b640949d622aL    # 1.5391955946466652E53
        0x3a623a0e02c652fdL    # 1.8404340789956387E-27
        -0x4161b8be82fe7a16L    # -4.5118247005677647E-7
        -0x58e9048e1c370fa2L
    .end array-data

    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    :array_15
    .array-data 8
        0x7930c998952f369eL    # 5.812214983074802E275
        -0x7817078705ff0280L
        -0x27ed9dc6bf5ddad7L    # -1.8108852843994245E116
    .end array-data
.end method
