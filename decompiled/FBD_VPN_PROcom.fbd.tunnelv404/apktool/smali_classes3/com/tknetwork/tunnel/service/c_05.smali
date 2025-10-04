.class public Lcom/tknetwork/tunnel/service/c_05;
.super Landroid/net/VpnService;
.source "SourceFile"

# interfaces
.implements Lcom/tknetwork/tunnel/utils/VPNUtil$VPNProtectListener;
.implements Landroid/os/Handler$Callback;
.implements Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/service/c_05$LocalBinder;,
        Lcom/tknetwork/tunnel/service/c_05$LogMsg;,
        Lcom/tknetwork/tunnel/service/c_05$EventReceiver;,
        Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;,
        Lcom/tknetwork/tunnel/service/c_05$ProfileList;,
        Lcom/tknetwork/tunnel/service/c_05$Profile;,
        Lcom/tknetwork/tunnel/service/c_05$ProfileFN;,
        Lcom/tknetwork/tunnel/service/c_05$ProxyContext;,
        Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;,
        Lcom/tknetwork/tunnel/service/c_05$EventMsg;,
        Lcom/tknetwork/tunnel/service/c_05$MergedProfile;,
        Lcom/tknetwork/tunnel/service/c_05$EventInfo;,
        Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;,
        Lcom/tknetwork/tunnel/service/c_05$Challenge;,
        Lcom/tknetwork/tunnel/service/c_05$TunBuilder;,
        Lcom/tknetwork/tunnel/service/c_05$InternalError;,
        Lcom/tknetwork/tunnel/service/c_05$ServerList;,
        Lcom/tknetwork/tunnel/service/c_05$ServerEntry;
    }
.end annotation


# static fields
.field public static final ACTION_BASE:Ljava/lang/String;

.field public static final ACTION_BIND:Ljava/lang/String;

.field public static final ACTION_CONNECT:Ljava/lang/String;

.field public static final ACTION_DELETE_PROFILE:Ljava/lang/String;

.field public static final ACTION_DISCONNECT:Ljava/lang/String;

.field public static final ACTION_IMPORT_PROFILE:Ljava/lang/String;

.field public static final ACTION_IMPORT_PROFILE_VIA_PATH:Ljava/lang/String;

.field public static final ACTION_RENAME_PROFILE:Ljava/lang/String;

.field public static final ACTION_SUBMIT_PROXY_CREDS:Ljava/lang/String;

.field public static final EV_PRIO_HIGH:I = 0x3

.field public static final EV_PRIO_INVISIBLE:I = 0x0

.field public static final EV_PRIO_LOW:I = 0x1

.field public static final EV_PRIO_MED:I = 0x2

.field private static final GCI_REQ_ESTABLISH:I = 0x0

.field private static final GCI_REQ_NOTIFICATION:I = 0x1

.field public static final INTENT_PREFIX:Ljava/lang/String;

.field private static final MSG_EVENT:I = 0x1

.field private static final MSG_LOG:I = 0x2

.field private static final NOTIFICATION_ID:I = 0x66a

.field private static final TAG:Ljava/lang/String;

.field private static final clients:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/tknetwork/tunnel/service/c_05$EventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static dnsTunnelThread:Lcom/tknetwork/tunnel/thread/UDPTunnelThread; = null

.field public static i:Z = false

.field private static final isStopping:Z = true

.field private static lastStateMsg:Ljava/lang/String; = null

.field private static final log_deque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/tknetwork/tunnel/service/c_05$LogMsg;",
            ">;"
        }
    .end annotation
.end field

.field public static final log_deque_max:I = 0xfa

.field private static mConfigUtil:Lconfig/ConfigUtil;

.field private static mHandler:Landroid/os/Handler;

.field private static mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

.field private static util:Lconfig/ConfigUtil;


# instance fields
.field private active:Z

.field private bundle:Landroid/os/Bundle;

.field private connMgr:Landroid/net/ConnectivityManager;

.field private cpu_usage:Lnet/openvpn/openvpn/CPUUsage;

.field private current_profile:Lcom/tknetwork/tunnel/service/c_05$Profile;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private enable_notifications:Z

.field private event_info:Ljava/util/HashMap;

.field private jellyBeanHack:Lnet/openvpn/openvpn/JellyBeanHack;

.field private last_event:Lcom/tknetwork/tunnel/service/c_05$EventMsg;

.field private last_event_prof_manage:Lcom/tknetwork/tunnel/service/c_05$EventMsg;

.field private final mBinder:Landroid/os/IBinder;

.field private mConnectedTime:J

.field private mConnectivityReceiver:Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mNotifyBuilder:Landroid/app/Notification$Builder;

.field private final m_Handler:Landroid/os/Handler;

.field public paused:Z

.field private prefs:Lnet/openvpn/openvpn/PrefUtil;

.field private profile_list:Lcom/tknetwork/tunnel/service/c_05$ProfileList;

.field public proxy_list:Lnet/openvpn/openvpn/ProxyList;

.field private pwds:Lnet/openvpn/openvpn/PasswordUtil;

.field public screen_on:Z

.field private shutdown_pending:Z

.field private thread_started:J

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->ACTION_BASE:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v2, v1, [J

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->ACTION_BIND:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v2, 0x5

    .line 37
    new-array v3, v2, [J

    .line 38
    .line 39
    fill-array-data v3, :array_2

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->ACTION_CONNECT:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v3, 0x6

    .line 54
    new-array v4, v3, [J

    .line 55
    .line 56
    fill-array-data v4, :array_3

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->ACTION_DELETE_PROFILE:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v2, v2, [J

    .line 71
    .line 72
    fill-array-data v2, :array_4

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->ACTION_DISCONNECT:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v2, v3, [J

    .line 87
    .line 88
    fill-array-data v2, :array_5

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->ACTION_IMPORT_PROFILE:Ljava/lang/String;

    .line 99
    .line 100
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    const/16 v2, 0x8

    .line 103
    .line 104
    new-array v2, v2, [J

    .line 105
    .line 106
    fill-array-data v2, :array_6

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->ACTION_IMPORT_PROFILE_VIA_PATH:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v2, v3, [J

    .line 121
    .line 122
    fill-array-data v2, :array_7

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->ACTION_RENAME_PROFILE:Ljava/lang/String;

    .line 133
    .line 134
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    const/4 v2, 0x7

    .line 137
    new-array v2, v2, [J

    .line 138
    .line 139
    fill-array-data v2, :array_8

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->ACTION_SUBMIT_PROXY_CREDS:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    new-array v1, v1, [J

    .line 154
    .line 155
    fill-array-data v1, :array_9

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->INTENT_PREFIX:Ljava/lang/String;

    .line 166
    .line 167
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    const/4 v1, 0x2

    .line 170
    new-array v2, v1, [J

    .line 171
    .line 172
    fill-array-data v2, :array_a

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->TAG:Ljava/lang/String;

    .line 183
    .line 184
    new-instance v0, Ljava/util/ArrayDeque;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->clients:Ljava/util/ArrayDeque;

    .line 190
    .line 191
    new-instance v0, Ljava/util/ArrayDeque;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 194
    .line 195
    .line 196
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->log_deque:Ljava/util/ArrayDeque;

    .line 197
    .line 198
    const/4 v0, 0x1

    .line 199
    sput-boolean v0, Lcom/tknetwork/tunnel/service/c_05;->i:Z

    .line 200
    .line 201
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array v2, v1, [J

    .line 204
    .line 205
    fill-array-data v2, :array_b

    .line 206
    .line 207
    .line 208
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->init_process()V

    .line 219
    .line 220
    .line 221
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 222
    .line 223
    new-array v1, v1, [J

    .line 224
    .line 225
    fill-array-data v1, :array_c

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->crypto_self_test()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    nop

    .line 239
    :array_0
    .array-data 8
        -0x3d013364354333d1L    # -5.4182617466797094E14
        0x5901ac9fbd9c2e1bL    # 5.704936395870547E120
        0x191b0186f32d0e68L    # 9.698005400170297E-188
        -0x4a3064565650364eL    # -1.6896180181282476E-49
    .end array-data

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
    :array_1
    .array-data 8
        -0x177104b8bd28b7b4L    # -4.5232483195048996E195
        0x6c0138293ae918bbL    # 1.811525486407796E212
        -0x43298ba68cb18dL    # -2.0250530631920999E307
        0x509920d55f556403L    # 1.8621780726274548E80
    .end array-data

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
    .line 278
    .line 279
    :array_2
    .array-data 8
        -0xb514159658caff8L
        0x40e9009403dd05c1L    # 51204.62547160267
        0x321aa1bfb014e31dL    # 2.4695737998659653E-67
        -0x2b2839789e109901L    # -5.200298676794966E100
        -0x268b36bf580dbaaL    # -9.523476616728047E296
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
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_3
    .array-data 8
        -0x356bcc3174982100L    # -1.88965103189723E51
        0x1dd18835db402208L    # 4.757027094099548E-165
        -0x45e29167aeb7d987L    # -9.28710535076891E-29
        0xea8c3b428e43328L    # 4.75381675667375E-238
        0x9931ba211dc86adL
        -0x1f54d45347d02982L
    .end array-data

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
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :array_4
    .array-data 8
        -0xd34f6a821a4b426L    # -9.230323319369985E244
        -0x6a81a56a0444467dL
        -0x2cded4c121ac1a6cL    # -2.797897928495928E92
        0x7941d2fca691a0e7L    # 1.234227729256468E276
        0xdf5e80c09e97bd0L
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
    :array_5
    .array-data 8
        -0x714c9e8113106f81L    # -7.440739447695747E-238
        -0xbcb53b435c6b268L
        -0x5f91b24aa9673862L
        -0x766417399bdc6e65L    # -2.215809290758573E-262
        -0x702fe30ce31b052L    # -6.276823153328722E274
        -0xc3eca5a6a51d5L
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
    :array_6
    .array-data 8
        0x31802d6071274be4L    # 2.929920201599953E-70
        -0x55b0107dafd2904fL    # -6.962197829306847E-105
        -0x290af3153134b7b5L    # -7.910063475840589E110
        -0x7af36222f2f2b841L
        -0x138a565e65652bc2L    # -2.9170774115522237E214
        0x619c1d46eecd17f0L    # 1.5810512277482225E162
        -0x4aac75fcf1b23a6dL    # -8.159912710386053E-52
        0x64050e0c8bcfd309L    # 6.509389576157884E173
    .end array-data

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
    :array_7
    .array-data 8
        0x20ffd6fc52ac1791L    # 9.726852507515699E-150
        0x7d83dd31ac61f7aaL    # 4.059694096021567E296
        -0x72d038c5654116b9L
        0x201364ed3dd12f3cL
        -0x1dfdbff9a8309604L    # -1.3136897949619487E164
        0x42e2a4104c257d0L
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
    :array_8
    .array-data 8
        -0x4977fc2143ddfb95L    # -5.258179242795447E-46
        -0x399c0d3f9fd2b08eL    # -1.2643704224705315E31
        -0x1174584b7707e3e4L    # -3.1989098161045822E224
        0x612444122bbf4fbfL    # 8.903764381077055E159
        -0x54b9770af8f85536L    # -3.219651010827413E-100
        0x1fbc37553ee2dabdL    # 8.220532022160174E-156
        -0x2cfcbb6fb9cae1cdL    # -7.84985113301324E91
    .end array-data

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
    .line 478
    .line 479
    :array_9
    .array-data 8
        -0x52a7d91d4fe5de00L    # -2.964097929960213E-90
        -0xfaa01979b429d62L    # -1.3658296807199675E233
        0x48fbac0328e5a2beL    # 3.8569031796821685E43
        -0x1cea8f30176a482dL    # -2.0229073030764553E169
    .end array-data

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
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    :array_a
    .array-data 8
        0x52e80e632a01166cL    # 2.4501673062265205E91
        0x73632ddbfa1756e6L    # 6.704949775300945E247
    .end array-data

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
    :array_b
    .array-data 8
        0x684d467aa1ad1b72L    # 2.6713371509399342E194
        0xce6df75236d67aeL
    .end array-data

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
    :array_c
    .array-data 8
        0x3f78fdbee646ea60L    # 0.0061013657581790726
        0x2d174936062f4026L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

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
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 25
    .line 26
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$LocalBinder;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/service/c_05$LocalBinder;-><init>(Lcom/tknetwork/tunnel/service/c_05;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mBinder:Landroid/os/IBinder;

    .line 32
    .line 33
    new-instance v0, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->m_Handler:Landroid/os/Handler;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->paused:Z

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_05;->screen_on:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->shutdown_pending:Z

    .line 49
    .line 50
    const-wide/16 v0, 0x0

    .line 51
    .line 52
    iput-wide v0, p0, Lcom/tknetwork/tunnel/service/c_05;->thread_started:J

    .line 53
    .line 54
    iput-wide v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mConnectedTime:J

    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 8
        0x357fe1c500569f8cL    # 5.3258031222730953E-51
        -0x5eb41dc0c90aa87cL
        0x6368733fd4bea823L    # 7.381928692707314E170
    .end array-data
.end method

.method public static addLogInfo(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 8
    .line 9
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getPort()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v4, v3, [J

    .line 21
    .line 22
    fill-array-data v4, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v2, v3, [J

    .line 39
    .line 40
    fill-array-data v2, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v1, v3, [J

    .line 57
    .line 58
    fill-array-data v1, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    .line 74
    invoke-static {p0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        -0x1909d349997bdfdfL    # -9.648376588764514E187
        0x3c3c76fe5149314cL    # 1.5430808799482323E-18
    .end array-data

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
    :array_1
    .array-data 8
        -0x4dfdee87ea303e94L    # -8.377352720606526E-68
        -0x5af303843564cacL
    .end array-data

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
    :array_2
    .array-data 8
        -0x79a19a5267f91feeL
        -0x15c86d264f8423b2L    # -4.619379321548482E203
    .end array-data
.end method

.method private cert_format_pem(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    aput-object p1, v1, v0

    .line 14
    .line 15
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/16 v0, 0x9

    .line 18
    .line 19
    new-array v0, v0, [J

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0xb1827969033d92cL
        0x51cb28e9c87f6a9L
        0x4bd29278da15330bL    # 1.8215518145538403E57
        0x558ba2a1858082fbL    # 1.2379193326694656E104
        0x3c54dc0fb21a1e6eL    # 4.5232078710894614E-18
        0x3f873cd69b537292L    # 0.0113465086127971
        -0x35a3946e573b148bL    # -1.661446246706783E50
        0x4065b396c5bbc814L    # 173.61215483356557
        0x78851c05364d2e82L    # 3.568643002801669E272
    .end array-data
.end method

.method private connect_action(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->paused:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->stop_thread()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, L듨두듼딄뒼땦뎨듨뒷둣돵듸돛땜뎻돝땔둔뒝뎽땹뒋뎰딨땔듔둥뒹땠돸뒼드땦딟뎨땱딀될뎻뎰돼뎹땵딽땠득땀뎠돝뒵듼땭됐듟듨됴땨뒨딠뎹딜딐땸땵땻딌땍땳딝둬땋듟듌딀뒹둘돤둣땄땝든땲땟딄돸딝땯됫딅땭돨딌뒋땀듰됫듔딹뎠돷돷딎뒹뒘뒹듼딽땵뒈딐땄듔땠땅땩뎨듔땻뒤디될뎡뎸땡땬돸듟딝듽득;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1, p2, p3}, L듨두듼딄뒼땦뎨듨뒷둣돵듸돛땜뎻돝땔둔뒝뎽땹뒋뎰딨땔듔둥뒹땠돸뒼드땦딟뎨땱딀될뎻뎰돼뎹땵딽땠득땀뎠돝뒵듼땭됐듟듨됴땨뒨딠뎹딜딐땸땵땻딌땍땳딝둬땋듟듌딀뒹둘돤둣땄땝든땲땟딄돸딝땯됫딅땭돨딌뒋땀듰됫듔딹뎠돷돷딎뒹뒘뒹듼딽땵뒈딐땄듔땠땅땩뎨듔땻뒤디될뎡뎸땡땬돸듟딝듽득;-><init>(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 19
    .line 20
    .line 21
    const-wide/16 p1, 0x7d0

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tknetwork/tunnel/service/c_05;->do_connect_action(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    const v0, 0x7f130056

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f130051

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p2, v0}, L딤뎸땨땹땨땤뒈득땥땻딤뒀듼뒼뒷듬돛딟든뒬뎬된딝두뒤듟땵땯딐뒤뒉땟도뎬돰땝따땨땐뎬뎬듬딸득땋듔뎡딌둡뎽땟둘땹딟땋드땐뎹둬땤뒘된땁딀딟됩땥듻땡딅뎽디돵둘딽딁될돝딤됴땯딤뒈딃땬땣돶듰뒀돵둣됨땻땐딹딀땍땹딹땍됴돶땵땝땳듸돴땠땮딎돛뎸땡돵돝둔뒨땦돷땟땁뎹딀되딄둘딽돰땔뒬;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroid/app/NotificationChannel;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v1}, L뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private crypto_self_test()V
    .locals 3

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->crypto_self_test()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    aput-object v0, v1, v2

    .line 30
    .line 31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    new-array v2, v2, [J

    .line 35
    .line 36
    fill-array-data v2, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        0x6330720ebeee0d6bL    # 6.206484059365629E169
        0x68b85ded3cf333adL    # 2.8460170197263763E196
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_1
    .array-data 8
        0x55cb15a27e14d523L    # 1.9411964931149214E105
        0x6b25796e5632468L
        0x2b28b1415e4622cbL    # 8.819720649575783E-101
        -0x7c1948a44d36ef1fL    # -7.284348062589514E-290
        -0x35dd5bc61c02f731L    # -1.3622297480719866E49
    .end array-data
.end method

.method private delete_profile_action(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->get_profile_list()Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_05;->profile_list:Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->get_profile_by_name(Ljava/lang/String;)Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p2}, Lcom/tknetwork/tunnel/service/c_05$Profile;->is_deleteable()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v3, 0x1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05;->current_profile:Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 56
    .line 57
    if-ne p2, v1, :cond_1

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->stop_thread()V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p2}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_filename()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05;->pwds:Lnet/openvpn/openvpn/PasswordUtil;

    .line 73
    .line 74
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v4, v2, [J

    .line 77
    .line 78
    fill-array-data v4, :array_1

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v1, v3, p1}, Lnet/openvpn/openvpn/PasswordUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05;->pwds:Lnet/openvpn/openvpn/PasswordUtil;

    .line 92
    .line 93
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v2, v2, [J

    .line 96
    .line 97
    fill-array-data v2, :array_2

    .line 98
    .line 99
    .line 100
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2, p1}, Lnet/openvpn/openvpn/PasswordUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->refresh_profile_list()V

    .line 111
    .line 112
    .line 113
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v0, v0, [J

    .line 116
    .line 117
    fill-array-data v0, :array_3

    .line 118
    .line 119
    .line 120
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p2}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, v0, p1, p2}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v0, v0, [J

    .line 139
    .line 140
    fill-array-data v0, :array_4

    .line 141
    .line 142
    .line 143
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p2}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-direct {p0, v3, p1, p2}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v0, v0, [J

    .line 161
    .line 162
    fill-array-data v0, :array_5

    .line 163
    .line 164
    .line 165
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-direct {p0, v3, p2, p1}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    nop

    .line 177
    :array_0
    .array-data 8
        0xe9924c72ee2c5bcL
        0x489665988263a9eeL    # 4.877603823082782E41
    .end array-data

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
        -0x111d93fa8be2e99aL    # -1.36377446289885E226
        -0x54b8052f029e6e78L
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
    :array_2
    .array-data 8
        -0x398f2120b5a4afd4L    # -2.138601942409428E31
        0x3d5bc1e225e0a676L    # 3.9445576751980754E-13
    .end array-data

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
    :array_3
    .array-data 8
        -0x5dd22fac59b86a0eL
        -0x331250c38355410cL    # -3.816094337891735E62
        0x7afa9415ffa59a27L    # 2.470163776314982E284
        0x5305b0b61d3b8abaL    # 8.836775667579098E91
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
    :array_4
    .array-data 8
        -0x15d534afcb274fd8L    # -2.6252324593092816E203
        -0x1ed2a8d3283c214dL    # -1.2890674428352768E160
        -0x5cbf7a66af5eea6L
        0x384a76b1bb6e8605L    # 1.555393523145117E-37
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
    .line 250
    .line 251
    .line 252
    .line 253
    :array_5
    .array-data 8
        0x73f61d731c6b9dddL    # 3.958440249869851E250
        0x25aa7f47b31a98c4L    # 3.058099604796885E-127
        -0x250be70132100d52L    # -1.3931027956522145E130
        -0x57eee852a763a8b2L
    .end array-data
.end method

.method private delete_profiles()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->get_profile_list()Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge v2, v3, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_05;->pwds:Lnet/openvpn/openvpn/PasswordUtil;

    .line 31
    .line 32
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v6, v0, [J

    .line 35
    .line 36
    fill-array-data v6, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v4, v5, v6}, Lnet/openvpn/openvpn/PasswordUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_05;->pwds:Lnet/openvpn/openvpn/PasswordUtil;

    .line 54
    .line 55
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v6, v0, [J

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
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v4, v5, v3}, Lnet/openvpn/openvpn/PasswordUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->refresh_profile_list()V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void

    .line 83
    :array_0
    .array-data 8
        -0x7a41f2a09877517dL
        0x7e88a8a06e234f08L    # 3.3027508897392033E301
    .end array-data

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
    :array_1
    .array-data 8
        0x11d0929d60d2685cL
        0xde3c78dfce4b8b4L    # 9.26977143645138E-242
    .end array-data
.end method

.method private disconnect_action(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x2

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
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/service/c_05;->paused:Z

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->stop_thread()V

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x3f7a964269ed1fdfL    # -685.2175713991784
        0x482b038f97b46e33L    # 4.596178583121244E39
    .end array-data
.end method

.method private do_connect_action(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 28

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v13, 0x2

    .line 12
    new-array v3, v13, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v9, 0x3

    .line 31
    new-array v4, v9, [J

    .line 32
    .line 33
    fill-array-data v4, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v4, v9, [J

    .line 50
    .line 51
    fill-array-data v4, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v5, v9, [J

    .line 68
    .line 69
    fill-array-data v5, :array_3

    .line 70
    .line 71
    .line 72
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v6, v9, [J

    .line 86
    .line 87
    fill-array-data v6, :array_4

    .line 88
    .line 89
    .line 90
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-static {v5, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    const/4 v11, 0x5

    .line 104
    new-array v7, v11, [J

    .line 105
    .line 106
    fill-array-data v7, :array_5

    .line 107
    .line 108
    .line 109
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const/4 v12, 0x0

    .line 124
    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v8, v13, [J

    .line 135
    .line 136
    fill-array-data v8, :array_6

    .line 137
    .line 138
    .line 139
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v16

    .line 146
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v8, v13, [J

    .line 153
    .line 154
    fill-array-data v8, :array_7

    .line 155
    .line 156
    .line 157
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v17

    .line 164
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v8, v13, [J

    .line 171
    .line 172
    fill-array-data v8, :array_8

    .line 173
    .line 174
    .line 175
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v18

    .line 182
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v8, v9, [J

    .line 189
    .line 190
    fill-array-data v8, :array_9

    .line 191
    .line 192
    .line 193
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v19

    .line 200
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 205
    .line 206
    new-array v8, v9, [J

    .line 207
    .line 208
    fill-array-data v8, :array_a

    .line 209
    .line 210
    .line 211
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 212
    .line 213
    .line 214
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 223
    .line 224
    new-array v11, v9, [J

    .line 225
    .line 226
    fill-array-data v11, :array_b

    .line 227
    .line 228
    .line 229
    invoke-direct {v7, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 241
    .line 242
    new-array v13, v9, [J

    .line 243
    .line 244
    fill-array-data v13, :array_c

    .line 245
    .line 246
    .line 247
    invoke-direct {v11, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    invoke-virtual {v1, v7, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 262
    .line 263
    .line 264
    move-result v11

    .line 265
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    new-array v12, v9, [J

    .line 272
    .line 273
    fill-array-data v12, :array_d

    .line 274
    .line 275
    .line 276
    invoke-direct {v13, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-static {v13, v7, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v14, v9, [J

    .line 290
    .line 291
    fill-array-data v14, :array_e

    .line 292
    .line 293
    .line 294
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-static {v13, v7, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 306
    .line 307
    move-object/from16 v21, v13

    .line 308
    .line 309
    new-array v13, v9, [J

    .line 310
    .line 311
    fill-array-data v13, :array_f

    .line 312
    .line 313
    .line 314
    invoke-direct {v14, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 315
    .line 316
    .line 317
    invoke-static {v14, v7, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 326
    .line 327
    const/4 v9, 0x4

    .line 328
    move-object/from16 v22, v14

    .line 329
    .line 330
    new-array v14, v9, [J

    .line 331
    .line 332
    fill-array-data v14, :array_10

    .line 333
    .line 334
    .line 335
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 336
    .line 337
    .line 338
    invoke-static {v13, v7, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v23

    .line 342
    invoke-static {v8, v0}, Lnet/openvpn/openvpn/OpenVPNDebug;->pw_repl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v13

    .line 346
    invoke-direct {v15, v2}, Lcom/tknetwork/tunnel/service/c_05;->locate_profile(Ljava/lang/String;)Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 347
    .line 348
    .line 349
    move-result-object v14

    .line 350
    if-nez v14, :cond_0

    .line 351
    .line 352
    return-void

    .line 353
    :cond_0
    if-eqz v3, :cond_1

    .line 354
    .line 355
    const/4 v0, 0x1

    .line 356
    invoke-virtual {v14, v0}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_proxy_context(Z)Lcom/tknetwork/tunnel/service/c_05$ProxyContext;

    .line 357
    .line 358
    .line 359
    move-result-object v24

    .line 360
    iget-object v7, v15, Lcom/tknetwork/tunnel/service/c_05;->proxy_list:Lnet/openvpn/openvpn/ProxyList;

    .line 361
    .line 362
    move-object/from16 v0, v24

    .line 363
    .line 364
    move-object/from16 v1, p2

    .line 365
    .line 366
    move-object/from16 v25, v8

    .line 367
    .line 368
    move/from16 v8, p3

    .line 369
    .line 370
    invoke-virtual/range {v0 .. v8}, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->new_connection(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ProxyList;Z)V

    .line 371
    .line 372
    .line 373
    move-object/from16 v4, v24

    .line 374
    .line 375
    goto :goto_0

    .line 376
    :cond_1
    move-object/from16 v25, v8

    .line 377
    .line 378
    invoke-virtual {v14}, Lcom/tknetwork/tunnel/service/c_05$Profile;->reset_proxy_context()V

    .line 379
    .line 380
    .line 381
    const/4 v0, 0x0

    .line 382
    move-object v4, v0

    .line 383
    :goto_0
    invoke-virtual {v14}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_location()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    invoke-virtual {v14}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_filename()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    :try_start_0
    invoke-virtual {v15, v8, v7}, Lcom/tknetwork/tunnel/service/c_05;->read_file(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 396
    .line 397
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getSSLPort()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 406
    .line 407
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 408
    .line 409
    .line 410
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 411
    const/4 v3, 0x7

    .line 412
    const/4 v5, 0x2

    .line 413
    if-eq v2, v5, :cond_3

    .line 414
    .line 415
    :try_start_1
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 416
    .line 417
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    const/4 v5, 0x3

    .line 422
    if-eq v2, v5, :cond_3

    .line 423
    .line 424
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 425
    .line 426
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-eq v2, v9, :cond_3

    .line 431
    .line 432
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 433
    .line 434
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    const/4 v5, 0x5

    .line 439
    if-ne v2, v5, :cond_2

    .line 440
    .line 441
    goto :goto_1

    .line 442
    :cond_2
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 443
    .line 444
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-ne v2, v3, :cond_4

    .line 449
    .line 450
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 451
    .line 452
    const/4 v5, 0x3

    .line 453
    new-array v6, v5, [J

    .line 454
    .line 455
    fill-array-data v6, :array_11

    .line 456
    .line 457
    .line 458
    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 466
    .line 467
    const/4 v6, 0x2

    .line 468
    new-array v9, v6, [J

    .line 469
    .line 470
    fill-array-data v9, :array_12

    .line 471
    .line 472
    .line 473
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 484
    goto :goto_2

    .line 485
    :catch_0
    move-object/from16 v17, v7

    .line 486
    .line 487
    move-object/from16 v18, v8

    .line 488
    .line 489
    const/4 v0, 0x2

    .line 490
    const/16 v19, 0x0

    .line 491
    .line 492
    goto/16 :goto_7

    .line 493
    .line 494
    :cond_3
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 503
    .line 504
    const/16 v5, 0xc

    .line 505
    .line 506
    new-array v5, v5, [J

    .line 507
    .line 508
    fill-array-data v5, :array_13

    .line 509
    .line 510
    .line 511
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 519
    .line 520
    const/4 v6, 0x3

    .line 521
    new-array v9, v6, [J

    .line 522
    .line 523
    fill-array-data v9, :array_14

    .line 524
    .line 525
    .line 526
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    const/4 v6, 0x1

    .line 534
    new-array v9, v6, [Ljava/lang/Object;

    .line 535
    .line 536
    const/4 v6, 0x0

    .line 537
    aput-object v5, v9, v6

    .line 538
    .line 539
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    :cond_4
    :goto_2
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 551
    .line 552
    invoke-virtual {v2}, Lconfig/ConfigUtil;->isQueryMode()Z

    .line 553
    .line 554
    .line 555
    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 556
    if-eqz v2, :cond_5

    .line 557
    .line 558
    :try_start_3
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getIpOrHost(Ljava/lang/String;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    sget-object v5, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 563
    .line 564
    invoke-virtual {v5}, Lconfig/ConfigUtil;->getFrontQueryString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getPort(Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 577
    .line 578
    const/4 v6, 0x2

    .line 579
    new-array v9, v6, [J

    .line 580
    .line 581
    fill-array-data v9, :array_15

    .line 582
    .line 583
    .line 584
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 595
    :cond_5
    :try_start_4
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 596
    .line 597
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getCustomSSLPortEnabled()Z

    .line 598
    .line 599
    .line 600
    move-result v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 601
    if-eqz v2, :cond_6

    .line 602
    .line 603
    :try_start_5
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getIpOrHost(Ljava/lang/String;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    sget-object v5, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 608
    .line 609
    invoke-virtual {v5}, Lconfig/ConfigUtil;->getProxy()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getPort(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    new-instance v5, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .line 625
    .line 626
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 627
    .line 628
    const/4 v9, 0x1

    .line 629
    new-array v3, v9, [J

    .line 630
    .line 631
    const-wide v26, 0x4d845ae1e3a23cadL    # 2.679540844813704E65

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    const/4 v9, 0x0

    .line 637
    aput-wide v26, v3, v9

    .line 638
    .line 639
    invoke-direct {v6, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    sget-object v3, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 650
    .line 651
    invoke-virtual {v3}, Lconfig/ConfigUtil;->getSSLPort()I

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 666
    :cond_6
    :try_start_6
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 667
    .line 668
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 669
    .line 670
    .line 671
    move-result v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 672
    const/4 v3, 0x7

    .line 673
    if-ne v2, v3, :cond_7

    .line 674
    .line 675
    :try_start_7
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getPort(Ljava/lang/String;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 680
    .line 681
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getUdpPort()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 689
    :goto_3
    move-object v2, v0

    .line 690
    const/4 v9, 0x4

    .line 691
    goto :goto_5

    .line 692
    :cond_7
    :try_start_8
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 693
    .line 694
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 695
    .line 696
    .line 697
    move-result v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 698
    const/4 v3, 0x3

    .line 699
    if-ne v2, v3, :cond_8

    .line 700
    .line 701
    :try_start_9
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getPort(Ljava/lang/String;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 709
    goto :goto_3

    .line 710
    :cond_8
    :try_start_a
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 711
    .line 712
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 713
    .line 714
    .line 715
    move-result v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 716
    const/4 v9, 0x4

    .line 717
    if-ne v2, v9, :cond_9

    .line 718
    .line 719
    :try_start_b
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getPort(Ljava/lang/String;)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 727
    :goto_4
    move-object v2, v0

    .line 728
    goto :goto_5

    .line 729
    :cond_9
    :try_start_c
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 730
    .line 731
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 732
    .line 733
    .line 734
    move-result v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 735
    const/4 v3, 0x5

    .line 736
    if-ne v2, v3, :cond_a

    .line 737
    .line 738
    :try_start_d
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getPort(Ljava/lang/String;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 746
    goto :goto_4

    .line 747
    :cond_a
    :try_start_e
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getPort(Ljava/lang/String;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 752
    .line 753
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getSSHPortString()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    goto :goto_4

    .line 762
    :goto_5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 763
    .line 764
    const/4 v6, 0x2

    .line 765
    new-array v1, v6, [J

    .line 766
    .line 767
    fill-array-data v1, :array_16

    .line 768
    .line 769
    .line 770
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 777
    .line 778
    .line 779
    move-result v0

    .line 780
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    const/4 v5, 0x1

    .line 785
    new-array v1, v5, [Ljava/lang/Object;

    .line 786
    .line 787
    const/16 v20, 0x0

    .line 788
    .line 789
    aput-object v0, v1, v20

    .line 790
    .line 791
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 792
    .line 793
    const/4 v3, 0x5

    .line 794
    new-array v3, v3, [J

    .line 795
    .line 796
    fill-array-data v3, :array_17

    .line 797
    .line 798
    .line 799
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 807
    .line 808
    .line 809
    move-object/from16 v0, p0

    .line 810
    .line 811
    move-object v1, v14

    .line 812
    move-object v3, v10

    .line 813
    const/4 v14, 0x1

    .line 814
    move-object/from16 v5, v16

    .line 815
    .line 816
    const/16 v16, 0x2

    .line 817
    .line 818
    move-object/from16 v6, v17

    .line 819
    .line 820
    move-object/from16 v17, v7

    .line 821
    .line 822
    move-object/from16 v7, v18

    .line 823
    .line 824
    move-object/from16 v18, v8

    .line 825
    .line 826
    move-object/from16 v8, v19

    .line 827
    .line 828
    const/4 v10, 0x4

    .line 829
    move-object/from16 v9, v25

    .line 830
    .line 831
    move-object v10, v13

    .line 832
    const/16 v19, 0x0

    .line 833
    .line 834
    move-object/from16 v13, v21

    .line 835
    .line 836
    move-object/from16 v14, v22

    .line 837
    .line 838
    move-object/from16 v15, v23

    .line 839
    .line 840
    :try_start_f
    invoke-direct/range {v0 .. v15}, Lcom/tknetwork/tunnel/service/c_05;->start_connection(Lcom/tknetwork/tunnel/service/c_05$Profile;Ljava/lang/String;Ljava/lang/String;Lcom/tknetwork/tunnel/service/c_05$ProxyContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    .line 841
    .line 842
    .line 843
    move-object/from16 v1, p0

    .line 844
    .line 845
    goto :goto_8

    .line 846
    :catch_1
    :goto_6
    const/4 v0, 0x2

    .line 847
    goto :goto_7

    .line 848
    :catch_2
    move-object/from16 v17, v7

    .line 849
    .line 850
    move-object/from16 v18, v8

    .line 851
    .line 852
    const/16 v19, 0x0

    .line 853
    .line 854
    goto :goto_6

    .line 855
    :goto_7
    new-array v1, v0, [Ljava/lang/Object;

    .line 856
    .line 857
    aput-object v18, v1, v19

    .line 858
    .line 859
    const/4 v2, 0x1

    .line 860
    aput-object v17, v1, v2

    .line 861
    .line 862
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 863
    .line 864
    const/4 v4, 0x4

    .line 865
    new-array v4, v4, [J

    .line 866
    .line 867
    fill-array-data v4, :array_18

    .line 868
    .line 869
    .line 870
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v3

    .line 877
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 878
    .line 879
    new-array v0, v0, [J

    .line 880
    .line 881
    fill-array-data v0, :array_19

    .line 882
    .line 883
    .line 884
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    move-object/from16 v1, p0

    .line 896
    .line 897
    invoke-direct {v1, v2, v3, v0}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    :goto_8
    return-void

    .line 901
    :array_0
    .array-data 8
        -0x48042bc7e1887d9aL    # -5.111376612011257E-39
        0x58c32b693145b5dcL
    .end array-data

    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    :array_1
    .array-data 8
        -0x593917905cfa312aL    # -6.930715256808744E-122
        -0x1fdb64e2e3e6ae58L
        -0x707c5aa11ff52eL
    .end array-data

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
    :array_2
    .array-data 8
        -0x28ff5b6a0ee32072L    # -1.2507708710361477E111
        0xfd22dd65e3ea136L
        0x5e34ff56fe6c0d76L    # 6.554866909968582E145
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
    :array_3
    .array-data 8
        0x39090cc75874f075L    # 6.030548101820169E-34
        -0x3335861e38714dbbL    # -8.509090911692998E61
        -0x7804310eb32b729eL
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
    :array_4
    .array-data 8
        -0x6265877c393d66faL    # -4.488991932603571E-166
        -0x4ae5f44e3534fb8cL    # -6.798240111903928E-53
        0x7521ada6c4d9a0c6L
    .end array-data

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
    :array_5
    .array-data 8
        0x647c938e548dd43L
        0x193d278af6ae37L    # 3.5098988999007096E-308
        0x415ac1d87d2ea5c6L    # 7014241.955972141
        -0x1e14725991a6f466L    # -4.958400598825358E163
        0x3c330526c0181569L    # 1.0310829085980117E-18
    .end array-data

    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    :array_6
    .array-data 8
        -0x5b6bd7399d25e709L    # -1.775075671312903E-132
        0x62bc8b49bc83fd40L    # 4.207981943209881E167
    .end array-data

    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    :array_7
    .array-data 8
        -0x41959c8d8b1d86ebL    # -4.915234673548819E-8
        0x6dd9d14b52c44349L    # 1.4581827474564546E221
    .end array-data

    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    :array_8
    .array-data 8
        -0x3d8f1015af97b1feL    # -1.1639133978928755E12
        0x19916614d67025e5L
    .end array-data

    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    :array_9
    .array-data 8
        -0x6abe2ada8da2161cL
        0x6f24e4edb89739e6L    # 2.474876768182179E227
        -0x1c4b4216df534065L    # -2.003940329047989E172
    .end array-data

    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    :array_a
    .array-data 8
        -0x6045891755eb12b1L    # -7.71020181131487E-156
        0x6d6c28a6c81c0637L    # 1.242512965932862E219
        0x643279887569fc72L
    .end array-data

    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    :array_b
    .array-data 8
        -0x6ea523a45b9ea72eL
        0x469569e5cb1654aL
        0xc0df7063a55c28fL
    .end array-data

    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    :array_c
    .array-data 8
        -0x7b6be6b5d4241427L    # -1.319939441078383E-286
        -0x1212207e2d6bd1bL
        -0x6ba8ea70a8349dcdL
    .end array-data

    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    :array_d
    .array-data 8
        -0x7369b98185dfbc25L    # -4.977926239101572E-248
        -0x15332163b7dde908L    # -2.896459065184257E206
        0x2ca65ef99f8e2375L    # 1.3405921933417649E-93
    .end array-data

    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    :array_e
    .array-data 8
        -0x68dd329cd6379c36L
        0x47f95dc401ebb82fL    # 5.394809441108601E38
        0x5eee8af9c97a043bL    # 1.9527100921413722E149
    .end array-data

    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    :array_f
    .array-data 8
        -0x3ccf1b1c291ccc1aL    # -4.755266841293798E15
        0x3aef51f50a30140dL    # 8.09606779433767E-25
        -0x18b9e29456be9343L    # -3.0791634413099094E189
    .end array-data

    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    :array_10
    .array-data 8
        -0x4578929c178c2601L    # -9.462213427918663E-27
        0x4824d9d2a4b6f194L    # 3.547591768326927E39
        0x44d9681ae677b154L    # 4.799182472948002E23
        -0x48de6cb24ae20cdeL    # -3.9405419674786836E-43
    .end array-data

    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    :array_11
    .array-data 8
        0x2f37d0ed24fc8127L    # 3.1384279482807577E-81
        0x6c69f66322eaefc5L    # 1.7480450098741418E214
        -0x6454a41f9ebfc07aL
    .end array-data

    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    :array_12
    .array-data 8
        0x27e0281bab4c381cL    # 1.281396697552828E-116
        -0x43f1547bc8be61b4L    # -2.0782791045087996E-19
    .end array-data

    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    :array_13
    .array-data 8
        -0x6ef8a187daa3fedcL
        0x72acfc0cc0b9a746L    # 2.4738499632065273E244
        -0x70be78c9ce61e56aL    # -3.445482025816789E-235
        -0x7c5697d0701cdab7L    # -5.091985690049442E-291
        0x6bc5044ce67e3feeL    # 1.3818901979159604E211
        0x6759181df764d60L
        0x6a8b6c717541728fL    # 1.7196166001753238E205
        0x5d0cf86911d53afdL    # 1.7249709742723346E140
        -0x1bf97c7a16a24346L    # -6.960422266978831E173
        -0x1b5b3108a68dd2c4L    # -6.587603455018272E176
        -0x563b6443a5ece80fL
        -0x1f7e1b86666a09ddL    # -7.676766128124503E156
    .end array-data

    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    :array_14
    .array-data 8
        -0x4364f0fbb638d15bL    # -9.387858262526971E-17
        0x3fd11257cc5007caL    # 0.26674456550983605
        -0xfc8fd0bbe27e842L    # -3.5725831512793094E232
    .end array-data

    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    :array_15
    .array-data 8
        -0x3b195540fb0d767aL    # -8.563341880695715E23
        0x3a3a2e262be45f10L    # 3.3044146322896757E-28
    .end array-data

    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    :array_16
    .array-data 8
        0x1d48f6f488f69db5L    # 1.322995090994485E-167
        -0x44db105628539e7eL    # -8.659003307233357E-24
    .end array-data

    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    :array_17
    .array-data 8
        0x436a966c2d43bfb9L    # 5.9869926036209096E16
        -0x3f332c0931089ab1L    # -14759.928191112964
        0xb48c633d259d740L
        0x4069586d2ce0616fL    # 202.7633270628389
        0x2a9a0599f77f3ec0L
    .end array-data

    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    :array_18
    .array-data 8
        -0x2ed65806bb38eafeL    # -9.734648287236697E82
        0x289f81f6b9298f07L    # 5.117736723004191E-113
        0x6af63e5e7b843f54L
        -0x3d76af4ff64baa28L    # -3.4792926880107305E12
    .end array-data

    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    :array_19
    .array-data 8
        0x1870e2aa7a419a56L    # 5.921537245995082E-191
        0x18dabad16ae8b75L
    .end array-data
.end method

.method private do_connect_action1(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 30

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v13, 0x2

    .line 12
    new-array v3, v13, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v9, 0x3

    .line 31
    new-array v4, v9, [J

    .line 32
    .line 33
    fill-array-data v4, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v4, v9, [J

    .line 50
    .line 51
    fill-array-data v4, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v5, v9, [J

    .line 68
    .line 69
    fill-array-data v5, :array_3

    .line 70
    .line 71
    .line 72
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v6, v9, [J

    .line 86
    .line 87
    fill-array-data v6, :array_4

    .line 88
    .line 89
    .line 90
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-static {v5, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    const/4 v11, 0x5

    .line 104
    new-array v7, v11, [J

    .line 105
    .line 106
    fill-array-data v7, :array_5

    .line 107
    .line 108
    .line 109
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const/4 v12, 0x0

    .line 124
    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v8, v13, [J

    .line 135
    .line 136
    fill-array-data v8, :array_6

    .line 137
    .line 138
    .line 139
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v16

    .line 146
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v8, v13, [J

    .line 153
    .line 154
    fill-array-data v8, :array_7

    .line 155
    .line 156
    .line 157
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v17

    .line 164
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v8, v13, [J

    .line 171
    .line 172
    fill-array-data v8, :array_8

    .line 173
    .line 174
    .line 175
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v18

    .line 182
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v8, v9, [J

    .line 189
    .line 190
    fill-array-data v8, :array_9

    .line 191
    .line 192
    .line 193
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v19

    .line 200
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 205
    .line 206
    new-array v8, v9, [J

    .line 207
    .line 208
    fill-array-data v8, :array_a

    .line 209
    .line 210
    .line 211
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 212
    .line 213
    .line 214
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 223
    .line 224
    new-array v13, v9, [J

    .line 225
    .line 226
    fill-array-data v13, :array_b

    .line 227
    .line 228
    .line 229
    invoke-direct {v7, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    invoke-static {v7, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 241
    .line 242
    new-array v11, v9, [J

    .line 243
    .line 244
    fill-array-data v11, :array_c

    .line 245
    .line 246
    .line 247
    invoke-direct {v13, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    invoke-virtual {v1, v7, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 262
    .line 263
    .line 264
    move-result v11

    .line 265
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    new-array v12, v9, [J

    .line 272
    .line 273
    fill-array-data v12, :array_d

    .line 274
    .line 275
    .line 276
    invoke-direct {v13, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-static {v13, v7, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v14, v9, [J

    .line 290
    .line 291
    fill-array-data v14, :array_e

    .line 292
    .line 293
    .line 294
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-static {v13, v7, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 306
    .line 307
    move-object/from16 v23, v13

    .line 308
    .line 309
    new-array v13, v9, [J

    .line 310
    .line 311
    fill-array-data v13, :array_f

    .line 312
    .line 313
    .line 314
    invoke-direct {v14, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 315
    .line 316
    .line 317
    invoke-static {v14, v7, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    invoke-static/range {p1 .. p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 326
    .line 327
    const/4 v9, 0x4

    .line 328
    move-object/from16 v24, v14

    .line 329
    .line 330
    new-array v14, v9, [J

    .line 331
    .line 332
    fill-array-data v14, :array_10

    .line 333
    .line 334
    .line 335
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 336
    .line 337
    .line 338
    invoke-static {v13, v7, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v25

    .line 342
    invoke-static {v8, v0}, Lnet/openvpn/openvpn/OpenVPNDebug;->pw_repl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v13

    .line 346
    invoke-direct {v15, v2}, Lcom/tknetwork/tunnel/service/c_05;->locate_profile(Ljava/lang/String;)Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 347
    .line 348
    .line 349
    move-result-object v14

    .line 350
    if-nez v14, :cond_0

    .line 351
    .line 352
    return-void

    .line 353
    :cond_0
    if-eqz v3, :cond_1

    .line 354
    .line 355
    const/4 v0, 0x1

    .line 356
    invoke-virtual {v14, v0}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_proxy_context(Z)Lcom/tknetwork/tunnel/service/c_05$ProxyContext;

    .line 357
    .line 358
    .line 359
    move-result-object v26

    .line 360
    iget-object v7, v15, Lcom/tknetwork/tunnel/service/c_05;->proxy_list:Lnet/openvpn/openvpn/ProxyList;

    .line 361
    .line 362
    move-object/from16 v0, v26

    .line 363
    .line 364
    move-object/from16 v1, p2

    .line 365
    .line 366
    move-object/from16 v27, v8

    .line 367
    .line 368
    move/from16 v8, p3

    .line 369
    .line 370
    invoke-virtual/range {v0 .. v8}, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->new_connection(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ProxyList;Z)V

    .line 371
    .line 372
    .line 373
    move-object/from16 v4, v26

    .line 374
    .line 375
    goto :goto_0

    .line 376
    :cond_1
    move-object/from16 v27, v8

    .line 377
    .line 378
    invoke-virtual {v14}, Lcom/tknetwork/tunnel/service/c_05$Profile;->reset_proxy_context()V

    .line 379
    .line 380
    .line 381
    const/4 v0, 0x0

    .line 382
    move-object v4, v0

    .line 383
    :goto_0
    invoke-virtual {v14}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_location()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    invoke-virtual {v14}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_filename()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 392
    .line 393
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getSSHPortString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    :try_start_0
    invoke-virtual {v15, v8, v7}, Lcom/tknetwork/tunnel/service/c_05;->read_file(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 402
    .line 403
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    const/4 v3, 0x3

    .line 408
    if-eq v2, v3, :cond_2

    .line 409
    .line 410
    if-eq v2, v9, :cond_2

    .line 411
    .line 412
    const/4 v3, 0x5

    .line 413
    if-eq v2, v3, :cond_2

    .line 414
    .line 415
    goto :goto_1

    .line 416
    :cond_2
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 417
    .line 418
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getSSLPort()I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    :goto_1
    invoke-direct {v15, v1}, Lcom/tknetwork/tunnel/service/c_05;->getPort(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getIpOrHost(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 439
    .line 440
    const/4 v3, 0x1

    .line 441
    new-array v5, v3, [J

    .line 442
    .line 443
    const-wide v28, 0x6c3890a043de0085L    # 2.0674392238199993E213

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    const/4 v3, 0x0

    .line 449
    aput-wide v28, v5, v3

    .line 450
    .line 451
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 458
    .line 459
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 468
    .line 469
    invoke-virtual {v2}, Lconfig/ConfigUtil;->isQueryMode()Z

    .line 470
    .line 471
    .line 472
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 473
    if-eqz v2, :cond_3

    .line 474
    .line 475
    :try_start_1
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 476
    .line 477
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getFrontQueryString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getPort(Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 490
    .line 491
    const/4 v5, 0x2

    .line 492
    new-array v6, v5, [J

    .line 493
    .line 494
    fill-array-data v6, :array_11

    .line 495
    .line 496
    .line 497
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 508
    goto :goto_3

    .line 509
    :catch_0
    :goto_2
    move-object/from16 v17, v7

    .line 510
    .line 511
    move-object/from16 v18, v8

    .line 512
    .line 513
    const/4 v0, 0x2

    .line 514
    const/16 v19, 0x0

    .line 515
    .line 516
    goto/16 :goto_9

    .line 517
    .line 518
    :cond_3
    :goto_3
    :try_start_2
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 519
    .line 520
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getCustomSSLPortEnabled()Z

    .line 521
    .line 522
    .line 523
    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 524
    if-eqz v2, :cond_4

    .line 525
    .line 526
    :try_start_3
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 527
    .line 528
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getProxy()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getPort(Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 541
    .line 542
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getSSLPort()I

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 554
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    const/4 v2, 0x1

    .line 563
    new-array v3, v2, [Ljava/lang/Object;

    .line 564
    .line 565
    const/4 v2, 0x0

    .line 566
    aput-object v1, v3, v2

    .line 567
    .line 568
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 569
    .line 570
    const/4 v6, 0x2

    .line 571
    new-array v2, v6, [J

    .line 572
    .line 573
    fill-array-data v2, :array_12

    .line 574
    .line 575
    .line 576
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 583
    .line 584
    const/4 v2, 0x5

    .line 585
    new-array v2, v2, [J

    .line 586
    .line 587
    fill-array-data v2, :array_13

    .line 588
    .line 589
    .line 590
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 601
    .line 602
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 603
    .line 604
    .line 605
    move-result v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 606
    const/4 v2, 0x7

    .line 607
    if-ne v1, v2, :cond_6

    .line 608
    .line 609
    :try_start_5
    invoke-direct {v15, v0}, Lcom/tknetwork/tunnel/service/c_05;->getPort(Ljava/lang/String;)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 614
    .line 615
    const/4 v3, 0x1

    .line 616
    :try_start_6
    new-array v5, v3, [J

    .line 617
    .line 618
    const-wide v20, -0x1eb836836ff93cc0L    # -4.180309317545295E160

    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    const/4 v3, 0x0

    .line 624
    aput-wide v20, v5, v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 625
    .line 626
    :try_start_7
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 638
    .line 639
    const/4 v2, 0x3

    .line 640
    :try_start_8
    new-array v3, v2, [J

    .line 641
    .line 642
    fill-array-data v3, :array_14
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 643
    .line 644
    .line 645
    :try_start_9
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-eqz v1, :cond_5

    .line 657
    .line 658
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 659
    .line 660
    const/4 v2, 0x3

    .line 661
    :try_start_a
    new-array v3, v2, [J

    .line 662
    .line 663
    fill-array-data v3, :array_15
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 664
    .line 665
    .line 666
    :try_start_b
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 674
    .line 675
    const/4 v5, 0x1

    .line 676
    new-array v3, v5, [J
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 677
    .line 678
    const-wide v20, 0x56956edcadb2513eL    # 1.2584110461381202E109

    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    const/16 v22, 0x0

    .line 684
    .line 685
    :try_start_c
    aput-wide v20, v3, v22

    .line 686
    .line 687
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    goto :goto_5

    .line 699
    :catch_1
    :goto_4
    const/16 v22, 0x0

    .line 700
    .line 701
    goto/16 :goto_2

    .line 702
    .line 703
    :catch_2
    const/4 v5, 0x1

    .line 704
    goto :goto_4

    .line 705
    :cond_5
    const/4 v5, 0x1

    .line 706
    const/16 v22, 0x0

    .line 707
    .line 708
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 709
    .line 710
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 717
    .line 718
    const/4 v2, 0x3

    .line 719
    new-array v2, v2, [J

    .line 720
    .line 721
    fill-array-data v2, :array_16

    .line 722
    .line 723
    .line 724
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 738
    :goto_6
    move-object v2, v0

    .line 739
    goto :goto_7

    .line 740
    :cond_6
    const/4 v5, 0x1

    .line 741
    const/16 v22, 0x0

    .line 742
    .line 743
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 744
    .line 745
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 752
    .line 753
    const/4 v2, 0x3

    .line 754
    new-array v2, v2, [J

    .line 755
    .line 756
    fill-array-data v2, :array_17

    .line 757
    .line 758
    .line 759
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 773
    goto :goto_6

    .line 774
    :goto_7
    move-object/from16 v0, p0

    .line 775
    .line 776
    move-object v1, v14

    .line 777
    move-object v3, v10

    .line 778
    const/4 v14, 0x1

    .line 779
    move-object/from16 v5, v16

    .line 780
    .line 781
    const/16 v16, 0x2

    .line 782
    .line 783
    move-object/from16 v6, v17

    .line 784
    .line 785
    move-object/from16 v17, v7

    .line 786
    .line 787
    move-object/from16 v7, v18

    .line 788
    .line 789
    move-object/from16 v18, v8

    .line 790
    .line 791
    move-object/from16 v8, v19

    .line 792
    .line 793
    const/4 v10, 0x4

    .line 794
    move-object/from16 v9, v27

    .line 795
    .line 796
    move-object v10, v13

    .line 797
    const/16 v19, 0x0

    .line 798
    .line 799
    move-object/from16 v13, v23

    .line 800
    .line 801
    move-object/from16 v14, v24

    .line 802
    .line 803
    move-object/from16 v15, v25

    .line 804
    .line 805
    :try_start_e
    invoke-direct/range {v0 .. v15}, Lcom/tknetwork/tunnel/service/c_05;->start_connection(Lcom/tknetwork/tunnel/service/c_05$Profile;Ljava/lang/String;Ljava/lang/String;Lcom/tknetwork/tunnel/service/c_05$ProxyContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 806
    .line 807
    .line 808
    move-object/from16 v1, p0

    .line 809
    .line 810
    goto :goto_a

    .line 811
    :catch_3
    :goto_8
    const/4 v0, 0x2

    .line 812
    goto :goto_9

    .line 813
    :catch_4
    move-object/from16 v17, v7

    .line 814
    .line 815
    move-object/from16 v18, v8

    .line 816
    .line 817
    const/16 v19, 0x0

    .line 818
    .line 819
    goto :goto_8

    .line 820
    :goto_9
    new-array v1, v0, [Ljava/lang/Object;

    .line 821
    .line 822
    aput-object v18, v1, v19

    .line 823
    .line 824
    const/4 v2, 0x1

    .line 825
    aput-object v17, v1, v2

    .line 826
    .line 827
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 828
    .line 829
    const/4 v4, 0x4

    .line 830
    new-array v4, v4, [J

    .line 831
    .line 832
    fill-array-data v4, :array_18

    .line 833
    .line 834
    .line 835
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v3

    .line 842
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 843
    .line 844
    new-array v0, v0, [J

    .line 845
    .line 846
    fill-array-data v0, :array_19

    .line 847
    .line 848
    .line 849
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    move-object/from16 v1, p0

    .line 861
    .line 862
    invoke-direct {v1, v2, v3, v0}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    :goto_a
    return-void

    .line 866
    nop

    .line 867
    :array_0
    .array-data 8
        0x26af9a5d33e49112L    # 2.390341071896786E-122
        -0x770865b3e4a39321L    # -1.829978373467471E-265
    .end array-data

    .line 868
    .line 869
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
    :array_1
    .array-data 8
        0x4a4f91639343fc04L    # 9.227315004288408E49
        -0x610065b35431bbb7L
        0x1d25de6e05d6b96dL
    .end array-data

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
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    :array_2
    .array-data 8
        -0x50b16d8f13408684L    # -8.057411269421403E-81
        -0x1ad956882e30b8c2L    # -1.8366456585608204E179
        -0x74274d1fbf23a3fcL
    .end array-data

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
    .line 910
    .line 911
    :array_3
    .array-data 8
        -0x1bdafa003435b0adL    # -2.599867233770899E174
        -0x25b9200d77487d35L    # -7.742217961576697E126
        -0x104af61dc245a661L    # -1.2758914141425048E230
    .end array-data

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
    :array_4
    .array-data 8
        -0x12e852ebb557e70cL    # -3.264727105494002E217
        -0x56b2278eefe98c1eL    # -9.928190220027842E-110
        0x775fb0b20f439b61L    # 1.0218364451908067E267
    .end array-data

    .line 928
    .line 929
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
    :array_5
    .array-data 8
        0x69cfe82aa3805759L    # 4.884630716111436E201
        -0x606a24cc1ed1e800L
        -0x4698357bb7040d1eL    # -3.665596426174366E-32
        -0x135338bb6681a737L    # -3.100226458416367E215
        0x430746302724da76L    # 8.188871366807828E14
    .end array-data

    .line 944
    .line 945
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
    :array_6
    .array-data 8
        0x202af648471d8b86L
        0x481d679a20fc9b1L
    .end array-data

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
    :array_7
    .array-data 8
        0x21093604f0304b3cL
        0x2ec73038b1d0df8L
    .end array-data

    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    :array_8
    .array-data 8
        0x71213d22544de2e4L    # 8.769882281294617E236
        0x156eacd80ec488e8L    # 1.910908857977056E-205
    .end array-data

    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    :array_9
    .array-data 8
        0x54e8921e381940beL    # 1.0748488476258078E101
        0x33f591b31bcd91bdL    # 2.1476013273805225E-58
        -0x1fbf015fd28d0ef4L    # -4.5572151307402495E155
    .end array-data

    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    :array_a
    .array-data 8
        0x283a60f79982ff8fL    # 6.694780448342582E-115
        -0x7a0f9cd47a8a60c9L    # -4.513917743651467E-280
        -0x51c202351ec4713eL    # -6.030560157778374E-86
    .end array-data

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    :array_b
    .array-data 8
        -0x22dd5de5a7307dd6L    # -4.437882264854521E140
        -0x5584431fcad2eeeL    # -6.893023970284733E282
        -0x7dc8661fef094434L    # -5.63866236661671E-298
    .end array-data

    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    :array_c
    .array-data 8
        0x6243ae8b790dacf8L    # 2.2667978776580385E165
        0x44879e01f29fbb71L    # 1.394114437747672E22
        0x3d263ccc8d7a1a45L    # 3.9501728511575773E-14
    .end array-data

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    :array_d
    .array-data 8
        -0x4194968ccc49266dL    # -5.1058668816745525E-8
        0x40da2642b8af5bdcL    # 26777.042522277552
        -0x18f3bbf7d2337683L    # -2.4597321505684563E188
    .end array-data

    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    :array_e
    .array-data 8
        -0x22afb686ff2780e3L    # -3.1032670165334396E141
        -0x423bc1d0fe78a26fL    # -3.682162924489206E-11
        -0x8189ca83cd9d6caL    # -3.861182212679109E269
    .end array-data

    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    :array_f
    .array-data 8
        -0x238b9a6a6e61f65bL    # -2.3720310233710605E137
        0x32deccf5b36e779eL    # 1.1698776509472902E-63
        0x4ac885f6bb4bce88L    # 1.8350508732197506E52
    .end array-data

    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    :array_10
    .array-data 8
        0x7838bdafce7c47b5L    # 1.3070515894644592E271
        0x3474d04c17e0d5fcL    # 5.305292020077059E-56
        -0x647224906b8c423L
        0x6747099d73057604L    # 3.207626150712952E189
    .end array-data

    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    :array_11
    .array-data 8
        0x5b98f680589eecb7L    # 1.7718749429610809E133
        -0x58e3eba781548e8L
    .end array-data

    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    :array_12
    .array-data 8
        -0x30e0557042b1a41dL    # -1.3987357773928958E73
        -0x5f617a805a391a0aL
    .end array-data

    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    :array_13
    .array-data 8
        -0x38d616be2b984aadL    # -6.726921923389134E34
        -0x13c7f4865bb49d80L    # -2.0236647435598195E213
        0x73ea5a92685d9dfeL    # 2.3585745186304692E250
        0x20d7fdfe813fc18bL    # 1.832363408478582E-150
        0x12def559f52b35eL
    .end array-data

    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    :array_14
    .array-data 8
        0x7d8b81239a42bb85L    # 5.621195674438895E296
        -0x2c2634ae87976d83L    # -8.608765968174142E95
        -0xccfa973ac5d2589L    # -7.139658608211268E246
    .end array-data

    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    :array_15
    .array-data 8
        -0x1d9cb2af486f8cd7L    # -8.892220628285425E165
        -0x4a51f607050ff445L    # -4.0143529942854553E-50
        0x264054535a359a7bL
    .end array-data

    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    :array_16
    .array-data 8
        -0xf209cfe49a8362bL    # -4.989797302312433E235
        -0x76088da28076905fL
        0x6bc0665f24a390f8L    # 1.078320579053659E211
    .end array-data

    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    :array_17
    .array-data 8
        -0xf7cb475a5749ee3L    # -9.585907383892834E233
        -0x5af809242c7fa62L    # -1.497342548801841E281
        0x1e092f9189730b57L    # 5.466991159132093E-164
    .end array-data

    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    :array_18
    .array-data 8
        -0x428ad5c116d8d781L    # -1.203092235864536E-12
        0x3d023dc8820509c2L    # 8.100782603643596E-15
        0x6b5d6899a867dd90L    # 1.510675824613703E209
        0x7760e04c69e24b77L    # 1.0883283927392546E267
    .end array-data

    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    :array_19
    .array-data 8
        0x9ad3c9ea4f3b62L
        -0x68b491b8be028f7dL
    .end array-data
.end method

.method private gen_event(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tknetwork/tunnel/service/c_05$EventReceiver;)V

    return-void
.end method

.method private gen_event(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tknetwork/tunnel/service/c_05$EventReceiver;)V

    return-void
.end method

.method private gen_event(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tknetwork/tunnel/service/c_05$EventReceiver;)V
    .locals 5

    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    .line 4
    new-instance v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    invoke-direct {v2}, Lcom/tknetwork/tunnel/service/c_05$EventMsg;-><init>()V

    or-int/lit8 p1, p1, 0x2

    .line 5
    iput p1, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    if-eqz v1, :cond_0

    .line 6
    iget v3, v1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->progress:I

    iput v3, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->progress:I

    .line 7
    iget v3, v1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->priority:I

    iput v3, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->priority:I

    .line 8
    iget v3, v1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->res_id:I

    iput v3, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 9
    iget v3, v1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->icon_res_id:I

    iput v3, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->icon_res_id:I

    .line 10
    iput-object p5, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->sender:Lcom/tknetwork/tunnel/service/c_05$EventReceiver;

    .line 11
    iget p5, v1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->flags:I

    or-int/2addr p1, p5

    iput p1, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    goto :goto_0

    :cond_0
    const p1, 0x7f130320

    .line 12
    iput p1, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 13
    :goto_0
    iput-object p2, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->name:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 14
    iput-object p3, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->info:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v0, [J

    const-wide v3, 0x78ad96d4d4d78dceL    # 2.000870994239121E273

    const/4 p3, 0x0

    aput-wide v3, p2, p3

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->info:Ljava/lang/String;

    .line 16
    :goto_1
    iget p1, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/32 v3, 0xea60

    add-long/2addr p1, v3

    iput-wide p1, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->expires:J

    .line 18
    :cond_2
    iput-object p4, v2, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->profile_override:Ljava/lang/String;

    .line 19
    sget-object p1, Lcom/tknetwork/tunnel/service/c_05;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private getIpOrHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    array-length v1, p1

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v1, :cond_1

    .line 24
    .line 25
    aget-object v4, p1, v3

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v7, v2, [J

    .line 34
    .line 35
    fill-array-data v7, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v1, v2, [J

    .line 54
    .line 55
    fill-array-data v1, :array_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    aget-object p1, p1, v0

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_0
    add-int/2addr v3, v0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v0, v2, [J

    .line 77
    .line 78
    fill-array-data v0, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :array_0
    .array-data 8
        0x65508f47d49a52f8L    # 1.0736670410143845E180
        0x7175ca2423dbfdc1L    # 3.547203621356171E238
    .end array-data

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
    :array_1
    .array-data 8
        -0x5f640d0f5709f177L
        -0x42087a698b702d5eL    # -3.4228763275291597E-10
    .end array-data

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
    :array_2
    .array-data 8
        0x23506e3fba4f229fL
        0x9c567c3c64643ebL
    .end array-data

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
    :array_3
    .array-data 8
        0x66577412c4888f27L    # 9.965598272880153E184
        -0x5a22506ea1204789L
    .end array-data
.end method

.method private getPort(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    array-length v0, p1

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v0, :cond_1

    .line 23
    .line 24
    aget-object v3, p1, v2

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v6, v1, [J

    .line 33
    .line 34
    fill-array-data v6, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v0, v1, [J

    .line 53
    .line 54
    fill-array-data v0, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    aget-object p1, p1, v1

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v0, v1, [J

    .line 77
    .line 78
    fill-array-data v0, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :array_0
    .array-data 8
        0x2e2cc1945e54032L    # 9.19747925321287E-295
        0x267f7028f383bb48L
    .end array-data

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
    :array_1
    .array-data 8
        -0x21dc0693ad680182L    # -3.1177385272877737E145
        -0x413e89061aecfe37L    # -2.0819605102974918E-6
    .end array-data

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
    :array_2
    .array-data 8
        0x40092233c0b3011bL    # 3.1417002730014594
        -0x1f3b326ee6e77312L    # -1.4280835325489489E158
    .end array-data

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
    :array_3
    .array-data 8
        -0xdeb07dff9041e08L    # -3.4955796570397993E241
        -0x4071a05df5f277bL
    .end array-data
.end method

.method public static get_app_expire()Ljava/util/Date;
    .locals 6

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->app_expire()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/util/Date;

    .line 8
    .line 9
    int-to-long v2, v0

    .line 10
    const-wide/16 v4, 0x3e8

    .line 11
    .line 12
    mul-long v2, v2, v4

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method private get_configure_intent(I)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->clients:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/tknetwork/tunnel/service/c_05$EventReceiver;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lcom/tknetwork/tunnel/service/c_05$EventReceiver;->get_configure_intent(I)Landroid/app/PendingIntent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public static get_openvpn_core_platform()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->platform()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private import_profile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {p2}, Lcom/tknetwork/tunnel/service/c_05$ProfileFN;->has_ovpn_ext(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    invoke-static {p2}, Lapp/tunnel/vpncommons/utils/FileUtils;->dirname(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_3

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    invoke-static {p1}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->merge_config_string_static(Ljava/lang/String;)Lnet/openvpn/openvpn/ClientAPI_MergeConfig;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v5, v1, [J

    .line 31
    .line 32
    fill-array-data v5, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->getStatus()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v5, v0, [J

    .line 59
    .line 60
    fill-array-data v5, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->getProfileContent()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->getErrorText()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p0, v4, p3, p1}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return v3

    .line 89
    :cond_1
    :goto_0
    new-instance p3, Lnet/openvpn/openvpn/ClientAPI_Config;

    .line 90
    .line 91
    invoke-direct {p3}, Lnet/openvpn/openvpn/ClientAPI_Config;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p1}, Lnet/openvpn/openvpn/ClientAPI_Config;->setContent(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p3}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->eval_config_static(Lnet/openvpn/openvpn/ClientAPI_Config;)Lnet/openvpn/openvpn/ClientAPI_EvalConfig;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    invoke-virtual {v10}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getError()Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    if-eqz p3, :cond_2

    .line 106
    .line 107
    invoke-virtual {v10}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-array p3, v1, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object p2, p3, v3

    .line 114
    .line 115
    aput-object p1, p3, v4

    .line 116
    .line 117
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array p2, v0, [J

    .line 120
    .line 121
    fill-array-data p2, :array_2

    .line 122
    .line 123
    .line 124
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v0, v1, [J

    .line 134
    .line 135
    fill-array-data v0, :array_3

    .line 136
    .line 137
    .line 138
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-direct {p0, v4, p1, p2}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return v3

    .line 153
    :cond_2
    new-instance p3, Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 154
    .line 155
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v5, v1, [J

    .line 158
    .line 159
    fill-array-data v5, :array_4

    .line 160
    .line 161
    .line 162
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    const/4 v9, 0x0

    .line 170
    move-object v5, p3

    .line 171
    move-object v6, p0

    .line 172
    move-object v8, p2

    .line 173
    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$Profile;-><init>(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ClientAPI_EvalConfig;)V

    .line 174
    .line 175
    .line 176
    :try_start_0
    invoke-virtual {p3}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_filename()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-static {p0, v2, p1}, Lapp/tunnel/vpncommons/utils/FileUtils;->writeFileAppPrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iget-object p3, p0, Lcom/tknetwork/tunnel/service/c_05;->pwds:Lnet/openvpn/openvpn/PasswordUtil;

    .line 188
    .line 189
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v5, v1, [J

    .line 192
    .line 193
    fill-array-data v5, :array_5

    .line 194
    .line 195
    .line 196
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {p3, v2, p1}, Lnet/openvpn/openvpn/PasswordUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object p3, p0, Lcom/tknetwork/tunnel/service/c_05;->pwds:Lnet/openvpn/openvpn/PasswordUtil;

    .line 207
    .line 208
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    new-array v1, v1, [J

    .line 211
    .line 212
    fill-array-data v1, :array_6

    .line 213
    .line 214
    .line 215
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {p3, v1, p1}, Lnet/openvpn/openvpn/PasswordUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->refresh_profile_list()V

    .line 226
    .line 227
    .line 228
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v1, v0, [J

    .line 231
    .line 232
    fill-array-data v1, :array_7

    .line 233
    .line 234
    .line 235
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p3

    .line 242
    invoke-direct {p0, v3, p3, p1, p1}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    return v4

    .line 246
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 247
    .line 248
    new-array p3, v0, [J

    .line 249
    .line 250
    fill-array-data p3, :array_8

    .line 251
    .line 252
    .line 253
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-direct {p0, v4, p1, p2}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return v3

    .line 264
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 265
    .line 266
    new-array p3, v0, [J

    .line 267
    .line 268
    fill-array-data p3, :array_9

    .line 269
    .line 270
    .line 271
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-direct {p0, v4, p1, p2}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    return v3

    .line 282
    nop

    .line 283
    :array_0
    .array-data 8
        0x592e62ecde313f5bL    # 3.9232673473030456E121
        -0x405172d52d36a848L    # -0.059670770865224154
    .end array-data

    .line 284
    .line 285
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
    :array_1
    .array-data 8
        0x6582627058a9f83cL    # 9.535860006891254E180
        -0x72f9c6e35bbf01baL    # -6.356792868900555E-246
        -0x56168a3697805b36L    # -8.672648197039165E-107
        0x691da0faa7cd6ec1L    # 2.2147850774029147E198
    .end array-data

    .line 296
    .line 297
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
    .line 314
    .line 315
    :array_2
    .array-data 8
        -0x3e62c5a24754deb1L    # -1.2259108616711925E8
        -0x10b7ab79561f478bL    # -1.1527418314654913E228
        0x83c259d6e7aa816L
        0x50f2ef327fb19980L    # 8.980273564656407E81
    .end array-data

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
    :array_3
    .array-data 8
        0x417850ba2d41186dL    # 2.5496482828392435E7
        0x53201e692c77e152L    # 2.6267647886211325E92
    .end array-data

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
    :array_4
    .array-data 8
        0x3912fb1124c0b1bbL    # 9.138889232058672E-34
        -0x1776629e884bc69bL    # -3.7397075250607014E195
    .end array-data

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
    :array_5
    .array-data 8
        0x79a22c5cb3fbd3f6L    # 8.053776271157284E277
        -0x800de11427dda75L
    .end array-data

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
    :array_6
    .array-data 8
        -0x214e8fff6d1afbf6L    # -1.3935492525802703E148
        -0x73f8b56ed7d5ed3dL    # -1.016592564292003E-250
    .end array-data

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
    :array_7
    .array-data 8
        0x18b6628da6a2e0ceL    # 1.256028035035307E-189
        0x1c4a873bd87543c0L
        0x38a4edb9725d0324L    # 7.87246845873259E-36
        0xe82f99bcd68064eL    # 9.106175181342837E-239
    .end array-data

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
    :array_8
    .array-data 8
        -0x46e69baad8363163L    # -1.222576687179413E-33
        0x758618930da50055L    # 1.3270883657408338E258
        0x7d90e7093b8130faL    # 6.908858398222927E296
        0x8eee0aa95cd0fe3L
    .end array-data

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
    :array_9
    .array-data 8
        0xac2b0a72663b39L
        0x660d5721e2d28717L    # 3.8959450872467558E183
        -0x339f38919953137L
        -0x19561c56c4cb970L
    .end array-data
.end method

.method private import_profile_action(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v3, v2, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    new-array v4, v4, [J

    .line 28
    .line 29
    fill-array-data v4, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v1, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v2, v2, [J

    .line 46
    .line 47
    fill-array-data v2, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-direct {p0, v0, v1, p1}, Lcom/tknetwork/tunnel/service/c_05;->import_profile(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :array_0
    .array-data 8
        0x5176f6778a3824e5L    # 2.7880651570311717E84
        0x7c2ccfe8d0490125L    # 1.4039170604932682E290
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    :array_1
    .array-data 8
        0x5741407a4b9f39acL    # 2.074457196567308E112
        -0xa87d0f25be5ba04L
        0x6499f115733f8ceeL    # 4.106354799868565E176
    .end array-data

    :array_2
    .array-data 8
        0x1bea69f05eac3937L    # 3.337365706584856E-174
        -0x76fe6df9c6297393L    # -2.724555522689811E-265
    .end array-data
.end method

.method private import_profile_via_path_action(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-static {p1, p2}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->merge_config_static(Ljava/lang/String;Z)Lnet/openvpn/openvpn/ClientAPI_MergeConfig;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v1, v1, [J

    .line 44
    .line 45
    fill-array-data v1, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->getStatus()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v2, 0x4

    .line 72
    new-array v2, v2, [J

    .line 73
    .line 74
    fill-array-data v2, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->getProfileContent()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->getBasename()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p2, p1, v0}, Lcom/tknetwork/tunnel/service/c_05;->import_profile(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->getErrorText()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p2, v0, p1}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :array_0
    .array-data 8
        -0x5b02b3742ebeb91aL
        0x62923505d73eeae4L    # 6.710252749428027E166
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
    :array_1
    .array-data 8
        -0x97ea98892b0a049L    # -6.824317343865183E262
        0x4cd2baefa3ecf307L    # 1.2039320673337444E62
    .end array-data

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
    :array_2
    .array-data 8
        -0x6464429e19bd3741L    # -1.095280804035395E-175
        -0x456556672abf759dL    # -2.153778652489921E-26
        0x64abfec4e130c180L    # 8.862799345776007E176
        0x7c3cf9de63abe803L    # 2.823807025717577E290
    .end array-data
.end method

.method private jbNotificationExtras(Landroid/app/Notification$Builder;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    new-array v4, v4, [J

    .line 11
    .line 12
    fill-array-data v4, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-array v4, v1, [Ljava/lang/Class;

    .line 23
    .line 24
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    aput-object v5, v4, v0

    .line 27
    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-array v4, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v3, v4, v0

    .line 40
    .line 41
    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v4, 0x4

    .line 51
    new-array v4, v4, [J

    .line 52
    .line 53
    fill-array-data v4, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-array v4, v1, [Ljava/lang/Class;

    .line 64
    .line 65
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    aput-object v5, v4, v0

    .line 68
    .line 69
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    aput-object v3, v1, v0

    .line 78
    .line 79
    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    :catch_0
    return-void

    .line 83
    :array_0
    .array-data 8
        0x23e627e28e445366L    # 9.52575515357947E-136
        0x73dd33eda04285e1L    # 1.3067772838355903E250
        -0x5642485fb5452e9eL
    .end array-data

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
    :array_1
    .array-data 8
        -0x339dae720b77519cL    # -9.199003365269953E59
        -0x3cabc13915a8a3f4L    # -2.279409436101432E16
        -0x514e1b25766a8624L    # -9.211018763034458E-84
        -0x44f930a738e41c1cL    # -2.3584933853227094E-24
    .end array-data
.end method

.method private synthetic lambda$connect_action$0(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tknetwork/tunnel/service/c_05;->do_connect_action(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private locate_profile(Ljava/lang/String;)Lcom/tknetwork/tunnel/service/c_05$Profile;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->get_profile_list()Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->profile_list:Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->get_profile_by_name(Ljava/lang/String;)Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0, v1, v0, p1}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x7a5d16d7bd9bbb0cL
        0x6444b707018cf9a2L
        0x41aca3267a8ed134L    # 2.4022713327893984E8
        -0x5e6fe40090bfeebbL    # -5.039420326246809E-147
    .end array-data
.end method

.method public static log_history()Ljava/util/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "Lcom/tknetwork/tunnel/service/c_05$LogMsg;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->log_deque:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    return-object v0
.end method

.method private static log_message(Lcom/tknetwork/tunnel/service/c_05$LogMsg;)V
    .locals 18

    move-object/from16 v0, p0

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v5, v4, [J

    fill-array-data v5, :array_0

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_1

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_2

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_3

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v4, [J

    fill-array-data v9, :array_4

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    .line 9
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x2

    new-array v11, v10, [J

    fill-array-data v11, :array_5

    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v4, [J

    fill-array-data v12, :array_6

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    .line 11
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v4, [J

    fill-array-data v13, :array_7

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 12
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v4, [J

    fill-array-data v14, :array_8

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    .line 13
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v10, [J

    fill-array-data v15, :array_9

    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 14
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v10, [J

    fill-array-data v2, :array_a

    invoke-direct {v15, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_b

    invoke-direct {v15, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16
    iget-object v15, v0, Lcom/tknetwork/tunnel/service/c_05$LogMsg;->line:Ljava/lang/String;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v16, v4

    new-array v4, v10, [J

    fill-array-data v4, :array_c

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 17
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/c_05$LogMsg;->line:Ljava/lang/String;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v10, [J

    fill-array-data v15, :array_d

    invoke-direct {v4, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 18
    array-length v4, v1

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v4, :cond_c

    aget-object v10, v1, v15

    .line 19
    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 20
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    :goto_1
    move-object/from16 v17, v1

    move-object/from16 v1, v16

    :cond_0
    :goto_2
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 21
    :cond_1
    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 22
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 24
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 26
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 28
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_5
    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 30
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_6
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 32
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_7
    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 34
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_8
    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 36
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_9
    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 38
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_a
    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 40
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object/from16 v17, v1

    move-object/from16 v1, v16

    .line 41
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 42
    invoke-static {v10}, Lcom/tknetwork/tunnel/service/c_05;->addLogInfo(Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    add-int/2addr v15, v10

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    const/4 v10, 0x2

    goto/16 :goto_0

    .line 43
    :cond_c
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_e

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 44
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v4, v3, [J

    fill-array-data v4, :array_f

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    iget-object v4, v0, Lcom/tknetwork/tunnel/service/c_05$LogMsg;->line:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 46
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/tknetwork/tunnel/service/c_05$LogMsg;->line:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v1, 0x1

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 47
    iput-object v1, v0, Lcom/tknetwork/tunnel/service/c_05$LogMsg;->line:Ljava/lang/String;

    .line 48
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05;->log_deque:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 49
    :goto_4
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05;->log_deque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/16 v3, 0xfa

    if-le v2, v3, :cond_d

    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_4

    .line 51
    :cond_d
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05;->clients:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tknetwork/tunnel/service/c_05$EventReceiver;

    .line 52
    invoke-interface {v2, v0}, Lcom/tknetwork/tunnel/service/c_05$EventReceiver;->log(Lcom/tknetwork/tunnel/service/c_05$LogMsg;)V

    goto :goto_5

    :cond_e
    return-void

    :array_0
    .array-data 8
        -0x61e7a2dd29c35eeeL    # -1.057712463140204E-163
        -0x4ed96664ba57fc91L    # -6.395580569668199E-72
        -0x79ab6bbc6228346cL
    .end array-data

    :array_1
    .array-data 8
        -0x51304369fea59774L    # -3.2673261023552963E-83
        0x33ac43c5dee20555L    # 8.794594825009196E-60
        0x44b2f78efd6533deL    # 8.956924598065581E22
    .end array-data

    :array_2
    .array-data 8
        -0x1ac60b21700179b4L    # -4.207304224380602E179
        -0x52a5d34eff665b44L    # -3.21233598050345E-90
        0x3712d62efd6feb3cL    # 2.111662003067422E-43
    .end array-data

    :array_3
    .array-data 8
        0x2c4aa35daba165aL
        -0x247694007ccf2b74L    # -9.022264544480198E132
        -0x56ac0d2a4ae324baL    # -1.327191007437785E-109
    .end array-data

    :array_4
    .array-data 8
        0x212a6e7a7fa6fc7L
        0xac6419b9e3028ceL
        0x50aa35285e3dedfcL    # 3.884336928590722E80
    .end array-data

    :array_5
    .array-data 8
        0x7e0e5710ea030289L    # 1.5873867316013514E299
        0x6fafcb9c4f1fa071L    # 9.64118400066281E229
    .end array-data

    :array_6
    .array-data 8
        -0x756eab4da4965ee4L    # -9.017444880300916E-258
        0x704317684577ae70L    # 5.927959588439245E232
        0x77cf8ac301acf2a0L    # 1.30183486015207E269
    .end array-data

    :array_7
    .array-data 8
        -0x28a37d05add187d7L    # -6.856784085099799E112
        -0x2dc92b2b47d98921L    # -1.1354571237567973E88
        -0x3811c244115b4f89L    # -3.215790535982843E38
    .end array-data

    :array_8
    .array-data 8
        -0x6e9f16fe51894f30L
        -0x59b4fb76e87baf32L
        -0x72b4f7c811357d3cL
    .end array-data

    :array_9
    .array-data 8
        0x498449950c263193L    # 1.4477594210091229E46
        -0x6ec3fa1985001d8dL
    .end array-data

    :array_a
    .array-data 8
        0x3a2e9719e489d1b8L    # 1.9305154802855994E-28
        0x665efb9db79d5ab4L    # 1.3164945769097314E185
    .end array-data

    :array_b
    .array-data 8
        -0xb5ec1f0209f8b5aL    # -6.320694878572976E253
        -0x657eae207c29ea3eL    # -5.217421326209656E-181
    .end array-data

    :array_c
    .array-data 8
        -0x1a5823c53f0ca873L    # -4.950428405530458E181
        0x36c887cd3e45602aL    # 8.593629416520734E-45
    .end array-data

    :array_d
    .array-data 8
        0x673f41861be34313L    # 2.1759556219324956E189
        -0x407335805b0654bbL    # -0.01405811044897621
    .end array-data

    :array_e
    .array-data 8
        0x79a3d6142c1961ccL    # 8.790741016924437E277
        -0x5e8475425d6f751aL
        -0x3e51bef81b6344cdL    # -2.5378917030611572E8
    .end array-data

    :array_f
    .array-data 8
        -0x6563837bcd78e0L
        0x5817d52f99710f4bL    # 2.3476461525343684E116
    .end array-data
.end method

.method public static log_message(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$LogMsg;

    invoke-direct {v0}, Lcom/tknetwork/tunnel/service/c_05$LogMsg;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/tknetwork/tunnel/service/c_05$LogMsg;->line:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/tknetwork/tunnel/service/c_05;->log_message(Lcom/tknetwork/tunnel/service/c_05$LogMsg;)V

    return-void
.end method

.method private log_stats()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    .line 5
    .line 6
    if-eqz v3, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lcom/tknetwork/tunnel/service/c_05;->stat_names()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->stat_values_full()Lnet/openvpn/openvpn/ClientAPI_LLVector;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    array-length v6, v3

    .line 20
    if-ge v5, v6, :cond_1

    .line 21
    .line 22
    aget-object v6, v3, v5

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Lnet/openvpn/openvpn/ClientAPI_LLVector;->get(I)J

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    const-wide/16 v9, 0x0

    .line 29
    .line 30
    cmp-long v11, v7, v9

    .line 31
    .line 32
    if-lez v11, :cond_0

    .line 33
    .line 34
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v10, v1, [J

    .line 37
    .line 38
    fill-array-data v10, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    new-array v8, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v6, v8, v2

    .line 54
    .line 55
    aput-object v7, v8, v0

    .line 56
    .line 57
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v7, 0x3

    .line 60
    new-array v7, v7, [J

    .line 61
    .line 62
    fill-array-data v7, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    :cond_0
    add-int/2addr v5, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        -0x1907cea05fd1a205L    # -1.0526515167024894E188
        -0x4a7610458a325d3dL    # -8.6652498268068E-51
    .end array-data

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
    :array_1
    .array-data 8
        -0x3b13f8cc3ad010fbL    # -1.058872953355488E24
        -0x557b328268f69727L    # -7.256232013776829E-104
        0x5a7b6e771d7ad133L    # 7.427588156704569E127
    .end array-data
.end method

.method public static max_profile_size()J
    .locals 2

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->max_profile_size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    return-wide v0
.end method

.method private populate_event_info_map()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const v4, 0x7f1301d3

    const v5, 0x7f0800be

    const/16 v6, 0x14

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v4, v3, [J

    fill-array-data v4, :array_1

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v5, 0x7f1301d6

    const v6, 0x7f0800be

    const/16 v7, 0x1e

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_2

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v5, 0x7f13033a

    const/16 v7, 0x28

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_3

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v5, 0x7f130339

    const/16 v7, 0x32

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_4

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v5, 0x7f13007f

    const/16 v7, 0x3c

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_5

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v5, 0x7f1300c9

    const/16 v7, 0x46

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_6

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v5, 0x7f130031

    const/16 v7, 0x50

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_7

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v5, 0x7f13001e

    const/16 v7, 0x5a

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_8

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v8, 0x3

    const v5, 0x7f13007e

    const v6, 0x7f0800bd

    const/16 v7, 0x64

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_9

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v8, 0x2

    const v5, 0x7f13009e

    const v6, 0x7f0800cd

    const/4 v7, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_a

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v8, 0x3

    const v5, 0x7f130032

    const v6, 0x7f0800d3

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x4

    new-array v5, v4, [J

    fill-array-data v5, :array_b

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const v6, 0x7f1301ab

    const v7, 0x7f0800d3

    const/4 v8, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_c

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f13004f

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_d

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1302f5

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_e

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x2

    const v6, 0x7f1300a1

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_f

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x3

    const v6, 0x7f130315

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_10

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f130310

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_11

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f130293

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_12

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1301bd

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_13

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f13007b

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_14

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f130182

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_15

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f130092

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_16

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f130089

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_17

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1300d4

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_18

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x0

    const v6, 0x7f1300d5

    const v7, 0x7f0801fa

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_19

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f13033b

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_1a

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x3

    const v6, 0x7f1301ca

    const v7, 0x7f0800d3

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_1b

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1301c8

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_1c

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1301c7

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_1d

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1300a6

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_1e

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x0

    const v6, 0x7f1300a7

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_1f

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x3

    const v6, 0x7f1301a7

    const v7, 0x7f0801ee

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_20

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x2

    const v6, 0x7f1301d8

    const v7, 0x7f0800be

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_21

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x1

    const v6, 0x7f13008d

    const/16 v8, 0xa

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_22

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x0

    const v6, 0x7f13008f

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_23

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x3

    const v6, 0x7f13008e

    const v7, 0x7f0800d3

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_24

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f13008c

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_25

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f130064

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_26

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x2

    const v6, 0x7f130065

    const v7, 0x7f0800be

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_27

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/16 v10, 0x2c

    const v6, 0x7f1301b7

    const v7, 0x7f0801fa

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_28

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/16 v10, 0xc

    const v6, 0x7f1301b5

    const v7, 0x7f0800c6

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_29

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v10, 0x4

    const v6, 0x7f1301b4

    const v7, 0x7f0800d3

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_2a

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x3

    const v6, 0x7f1301be

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_2b

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1301b3

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_2c

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1301c4

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_2d

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1301b6

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_2e

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v9, 0x2

    const/16 v10, 0xc

    const v6, 0x7f1301c0

    const v7, 0x7f0801fa

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_2f

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v10, 0x4

    const v6, 0x7f1301bf

    const v7, 0x7f0800d3

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v4, [J

    fill-array-data v2, :array_30

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1301b8

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x5

    new-array v5, v2, [J

    fill-array-data v5, :array_31

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1301ba

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_32

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v6, 0x7f1301bb

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_33

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v8, 0x2

    const/4 v9, 0x4

    const v5, 0x7f1301bc

    const v6, 0x7f0800d3

    const/4 v7, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_34

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const v5, 0x7f1301b9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_35

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const v3, 0x7f13031e

    const v4, 0x7f0801fa

    const/4 v5, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/tknetwork/tunnel/service/c_05$EventInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 8
        0xf2a440ac50c56ffL
        -0x302cae541a8e1252L    # -3.495298047912105E76
        0x7281c10e6307af1aL    # 3.7883125412961176E243
    .end array-data

    :array_1
    .array-data 8
        -0x4075d59605a4b7d7L    # -0.012776210739875964
        -0x3d6aeec64f5f437fL    # -5.790931626031126E12
    .end array-data

    :array_2
    .array-data 8
        0x7eec6250c30f336bL    # 2.433099867331606E303
        -0x1057af4db9fa699bL    # -7.373011589432481E229
        -0x718b5a47f158c45dL    # -4.954359939901231E-239
    .end array-data

    :array_3
    .array-data 8
        -0x4d96d92c748ef6b9L    # -7.463416964842047E-66
        -0x5700c029a393aba5L
    .end array-data

    :array_4
    .array-data 8
        0x6ff1af7ae54c9d5dL    # 1.7160631610704204E231
        -0x25d87efa2d218f6dL    # -1.9887944012383708E126
        0x3cfb9af659b4342dL    # 6.129612708267669E-15
    .end array-data

    :array_5
    .array-data 8
        -0x72be76ff33073126L    # -8.025340662078689E-245
        -0x6f6fb961beb20212L    # -6.709451897264802E-229
        0x1c963de0c0a575e2L    # 5.755335682185519E-171
    .end array-data

    :array_6
    .array-data 8
        -0x42e81bec06c24a9cL    # -2.1219408250875542E-14
        -0x69fceebecd4a211aL
        0x1ea1a239ac4e3b57L
    .end array-data

    :array_7
    .array-data 8
        0x651c61b71f83e51eL
        -0x70d0b1ccb535dc47L
        -0x39b1e01285e02796L    # -4.7734520057355895E30
    .end array-data

    :array_8
    .array-data 8
        -0x1325381b17f7c493L    # -2.3080278423884154E216
        -0x6f7c0545594a5813L    # -4.118091386222511E-229
        0x1f04ff51b79d02beL
    .end array-data

    :array_9
    .array-data 8
        -0x591c20a020cb333L    # -5.489552866139991E281
        0xe5b3d082fa5fd91L
        0x3f8a32944d9068f3L    # 0.012791784874981426
    .end array-data

    :array_a
    .array-data 8
        0x565085772c66d0fbL    # 6.062670824624448E107
        -0x2d39618b777ecfffL    # -5.7594558485529765E90
        -0x749d7e52f7154e50L    # -7.888220608330414E-254
    .end array-data

    :array_b
    .array-data 8
        -0x2547b059a8e6a900L    # -1.053230291410279E129
        -0x20bd2f2ff788556fL    # -7.698881455287378E150
        -0x4589dbbe87a44302L    # -4.471465356267881E-27
        -0x209869b23fd51488L    # -3.860493488941657E151
    .end array-data

    :array_c
    .array-data 8
        -0x1688baf888267b9dL    # -1.1132351224637113E200
        -0x5516231a4a07149cL
        -0x757be12c36d65aeL
    .end array-data

    :array_d
    .array-data 8
        -0x282f4569b70477e9L    # -1.0299226167299586E115
        -0x4dd4231b5af1f072L    # -5.16745529691569E-67
        -0x4264708ae4a660fdL    # -6.266505046940499E-12
    .end array-data

    :array_e
    .array-data 8
        -0x60e9b4667c54217L
        0x5918dc6190377a68L
        0x511cca5a1bd182e5L    # 5.461942111912048E82
        0x33e92bc6955da27bL    # 1.2531160853676651E-58
    .end array-data

    :array_f
    .array-data 8
        0xbff2c8eb7c1f4d9L
        -0xb8826410ca9a74fL
        -0x688b61308796ac0dL    # -1.10341511292364E-195
    .end array-data

    :array_10
    .array-data 8
        -0x64f223182a470e2bL
        -0x4ba5740b8c2f6d34L
        0x6663f5e2b915b82L
    .end array-data

    :array_11
    .array-data 8
        -0x17c81dee2a132dcL    # -2.610823512801917E301
        0x20fbd445cd091c06L    # 8.501640473455351E-150
        -0xc161df30aa65a9aL    # -2.316440759634237E250
        0x17c6ca97e1370a85L    # 3.902684356485481E-194
    .end array-data

    :array_12
    .array-data 8
        0x5aa98eded0c59955L    # 5.53626049684808E128
        0x77ef6bde34e5457bL    # 5.187416346113731E269
        -0x6d86dd85c51900eeL
        0x61bfef71d4e198feL    # 7.183714986899255E162
    .end array-data

    :array_13
    .array-data 8
        0x5b33bd12627dbbd2L    # 2.1891404819769735E131
        -0x292e4a871c19bdabL    # -1.6636019646929635E110
        0x3d49de00bdef9d40L
        -0x32ba0ac81bc1d3d1L    # -1.806589916774783E64
    .end array-data

    :array_14
    .array-data 8
        -0x482724add5ff41a8L    # -1.1413647206430989E-39
        -0x5b4a5a1d909126c2L
        -0x6480abaf109a94f6L
    .end array-data

    :array_15
    .array-data 8
        -0x3fd97f63e48dbbc6L    # -11.251191003511952
        -0x7e07643585364c8aL    # -3.674603553020882E-299
        -0x79cebd97ff679d3L    # -8.063343565347544E271
    .end array-data

    :array_16
    .array-data 8
        0x69c7f64866c440c3L    # 3.6683515283707454E201
        -0x4f5dc7cc12323c22L    # -2.0140420982422503E-74
        -0x443513c2424afd8bL    # -1.1402256555571282E-20
        0x3f97589d7da4ab1eL    # 0.022798977655081314
    .end array-data

    :array_17
    .array-data 8
        -0x3ea1260d2355c1afL    # -8087499.447890834
        0x3960b4ead183c067L    # 2.5740759436318543E-32
        -0x17b95cf0688a58a8L    # -2.0655954104559206E194
    .end array-data

    :array_18
    .array-data 8
        -0x462abf61ec370b85L    # -4.1912992555129736E-30
        0x3c0280e37a6f2ea7L    # 1.2538439689433986E-19
    .end array-data

    :array_19
    .array-data 8
        0x2d4d482be66d6c3aL    # 1.796846018103094E-90
        0x63886ba5c9719c00L    # 2.949185394329991E171
    .end array-data

    :array_1a
    .array-data 8
        -0x16b614356d08d5c7L    # -1.550100673539398E199
        -0x52a8367e6a673ca1L    # -2.9193315467668473E-90
        -0x77f5d10001b8475bL    # -6.195311541273014E-270
    .end array-data

    :array_1b
    .array-data 8
        0x7be5ff1e9d440febL    # 6.698856031845651E288
        -0x2a87ace64eed1a7cL    # -5.448091908692041E103
        0x414d8ac1ebe942ffL    # 3872131.8430560823
    .end array-data

    :array_1c
    .array-data 8
        -0x5cd12741b39d0c1bL
        -0x3a647791b9e45de4L    # -2.130257482555073E27
        -0x4c175a251aef7f21L    # -1.227072638295159E-58
        -0x76a8204dea67bfc2L    # -1.18463772925382E-263
    .end array-data

    :array_1d
    .array-data 8
        0x5b1b8f726654ec1bL    # 7.641571767931044E130
        -0x115542290405c3e9L    # -1.237295814687764E225
        0x28b45d0c1488f868L
    .end array-data

    :array_1e
    .array-data 8
        -0x12e286beea155027L    # -4.064160022289834E217
        0x28a2688be75f1c66L    # 5.980084460306685E-113
        -0x6ff6cb96d80228c8L    # -2.029342659638767E-231
        -0x235575796b771851L    # -2.4692621974303458E138
    .end array-data

    :array_1f
    .array-data 8
        -0x364884494e263fecL    # -1.340656943438259E47
        0x3e097ffb5719848bL    # 7.421456072945176E-10
    .end array-data

    :array_20
    .array-data 8
        -0x6aac811e817c386aL    # -6.072397738916803E-206
        0x5f4e6076b568b664L    # 1.2429396121336866E151
    .end array-data

    :array_21
    .array-data 8
        -0x2edda1aee876ff0cL    # -6.969485856225836E82
        -0x72463b3b79f287e8L
        0x178af7a02cfa2422L
        0x5fb2e3b861532ac2L    # 9.89325074991105E152
    .end array-data

    :array_22
    .array-data 8
        -0x27a06a23a1c00c63L    # -4.978111529100722E117
        0x26ef8c8bfb41ecdeL
        0x69425ff14106ed68L    # 1.0988266425241318E199
        0x69b12bdca8270a2cL    # 1.3143807798923413E201
    .end array-data

    :array_23
    .array-data 8
        -0x3cf875a3545009fcL    # -8.282568858006405E14
        -0x763bf6b8a4fbf610L
        0x6c91ec262973801eL    # 9.653715057893993E214
        -0x6303dde90e4783e6L    # -4.65908894852782E-169
    .end array-data

    :array_24
    .array-data 8
        0x59fa6de7df41139L
        0x6467ed19472b0dd7L    # 4.734134784276003E175
        0x2a052dd987f75be0L
        0x28be6995a07bbfb8L
    .end array-data

    :array_25
    .array-data 8
        -0x6f8c6d0815cb4500L
        0x1069dec4be552d31L
        -0x157d87ef793d4935L    # -1.158111827324411E205
    .end array-data

    :array_26
    .array-data 8
        0x42769d07345001d3L    # 1.553980409088114E12
        0x64a945855a6ff7b5L    # 8.000546021547014E176
        -0x2346eb1b118ae64eL    # -4.666954595371306E138
    .end array-data

    :array_27
    .array-data 8
        -0x546159707d193f2eL    # -1.4013312219707641E-98
        -0xf01a83033520d5L
        -0x51fb18374d097411L    # -5.254481553526575E-87
        0x675982be8de3ef50L    # 7.103951763509751E189
    .end array-data

    :array_28
    .array-data 8
        0x3f3af791361498d6L    # 4.114846725137405E-4
        -0x50e2c1ba5da87483L    # -9.634004073404959E-82
        -0x6f3cf5fef36462ccL    # -6.27883710058142E-228
        -0x6500607d09e9cab1L
    .end array-data

    :array_29
    .array-data 8
        0xa8ab7a5a782dc58L
        0x58c8175cdbfc9ad9L    # 4.860129291421725E119
        0x88abf8b95d44a88L
        -0x22d7089f6692c70bL    # -5.946240707968677E140
    .end array-data

    :array_2a
    .array-data 8
        0x11eff8a4acaecf07L
        0x321a7d51045244ffL    # 2.456377028164124E-67
        0x4c24fba8e516baefL    # 6.585635685766117E58
        -0x7f60f4659c11e2aeL
    .end array-data

    :array_2b
    .array-data 8
        0x143add54e3773c46L    # 3.192001244016032E-211
        0x31e3e74b177da990L    # 2.3070670591769916E-68
        0x1b73279fc68923bL
    .end array-data

    :array_2c
    .array-data 8
        -0x69cb7c4b2440aa9aL
        0x458943ea77f8baf0L    # 9.774038152862806E26
        0x4ba415b8a4e092ffL    # 2.4623952850797816E56
        -0x30d468668136146eL    # -2.4375586335817864E73
    .end array-data

    :array_2d
    .array-data 8
        -0x5e2b2d2e7f62d89aL
        0x5387a64a1380b0d0L    # 2.4665610475274883E94
        0x5cd19ab8368d739fL    # 1.3102633248135402E139
        0x7171ae0c75e1a941L    # 2.878165996583956E238
    .end array-data

    :array_2e
    .array-data 8
        -0x6de06dd755c0ed50L    # -2.1834870299986371E-221
        0x11ac1b1dbf3afddL
        -0x92455f7f2061420L
        -0x7902bb6b47c91af9L
    .end array-data

    :array_2f
    .array-data 8
        0x3c6139ad799293a1L    # 7.470284489433347E-18
        0x2c4722f5f2f88676L    # 2.1663582218825157E-95
        -0x18b726d9ae4295dL    # -1.376420783759704E301
        -0x59e54828b0d1f3d3L
    .end array-data

    :array_30
    .array-data 8
        0x1bcd5b9cfb0550cfL    # 9.273357087650152E-175
        -0x69f94446fa6a0b44L
        -0x9a76e093291de5bL
        -0x66ec4f5e82ad10adL    # -7.07078512190726E-188
    .end array-data

    :array_31
    .array-data 8
        0x5b9b414f22b79f64L    # 1.934577355322334E133
        -0x20a4b04ae4d5f264L    # -2.2350185044976077E151
        0x56677ba5e4a6103L
        -0x3e364ea78e36b54aL    # -8.621058275725925E8
        -0x7f87745e14bd0762L
    .end array-data

    :array_32
    .array-data 8
        0x520217f35cde5946L    # 1.1247933013145503E87
        0x2e10c149030cb0c5L    # 8.422600783911672E-87
        0x34082c7f5fa48335L    # 4.8138893525250866E-58
        0x5906a0be26e3a1ecL    # 7.303861982310963E120
        -0x3840f61adc3156a2L    # -4.1257446049802794E37
    .end array-data

    :array_33
    .array-data 8
        -0x5d8203b88e05e6cfL
        -0x99ed4b1bfad10baL    # -1.689488961423446E262
        0x56baffef91e90193L    # 6.341006094942107E109
        -0xab7c89eab9cf42fL    # -9.090224830820689E256
    .end array-data

    :array_34
    .array-data 8
        -0x3a7a98ba6cfbde70L    # -8.28004140115616E26
        0xb125f4cc97bd107L
        0x3af664a63accb9a1L    # 1.1576993135349254E-24
        -0x79fff0857725dedfL    # -8.847735091121496E-280
        -0x5db62601caca57daL
    .end array-data

    :array_35
    .array-data 8
        0x1935d8a2f6c580acL    # 3.138046243103361E-187
        0x809309b3118aed9L
    .end array-data
.end method

.method public static reconnect()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x3

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
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/tknetwork/tunnel/service/c_05;->log_message(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->reconnect(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x2845475c40ca4772L    # -4.112776570739366E114
        -0x3546d980e170ff88L    # -9.40987326444382E51
        -0x6476c47de3fce7e6L    # -4.981407112385384E-176
    .end array-data
.end method

.method private register_connectivity_receiver()V
    .locals 4

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;-><init>(Lcom/tknetwork/tunnel/service/c_05;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mConnectivityReceiver:Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    new-array v2, v2, [J

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    new-array v3, v2, [J

    .line 35
    .line 36
    fill-array-data v3, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v2, v2, [J

    .line 52
    .line 53
    fill-array-data v2, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mConnectivityReceiver:Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->register()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :array_0
    .array-data 8
        -0x28a5fdd331e7912cL    # -6.254803022993394E112
        0x2370aef71d30150L
        -0x693e685192e4b1cL
        0x34055e234493731cL    # 4.255093860556081E-58
        0x4c56e8c5ce9ea881L    # 5.752152311327106E59
        -0x32143a319368b8bcL    # -2.3398437482980427E67
    .end array-data

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
    :array_1
    .array-data 8
        0x595af819d08ed39aL    # 2.7856427419924974E122
        0x7a63276f089c5750L    # 3.4768528265389656E281
        -0x706ac2562946054L    # -5.480615344242074E274
        0x102667a4be7e80f2L    # 7.21565103068798E-231
        0x3d4fddd447301129L    # 2.264252455319316E-13
    .end array-data

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
    .line 124
    .line 125
    :array_2
    .array-data 8
        -0x3fa5f3e7d0faef96L    # -104.18897605413954
        -0x14df828cb70e8effL    # -1.0588360999473039E208
        -0x82bcdca39707159L
        0x11f4ceae44ac7215L
        0x4458f5ca1f28eec6L    # 1.841731442057129E21
    .end array-data
.end method

.method private rename_profile_action(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 9

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    new-array v7, v6, [J

    .line 13
    .line 14
    fill-array-data v7, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-static {v5, v4, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v7, 0x3

    .line 31
    new-array v7, v7, [J

    .line 32
    .line 33
    fill-array-data v7, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->get_profile_list()Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_05;->profile_list:Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 58
    .line 59
    invoke-virtual {p2, v4}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->get_profile_by_name(Ljava/lang/String;)Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-nez p2, :cond_0

    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-virtual {p2}, Lcom/tknetwork/tunnel/service/c_05$Profile;->is_renameable()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_4

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_1

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    iget-object p2, p2, Lcom/tknetwork/tunnel/service/c_05$Profile;->orig_filename:Ljava/lang/String;

    .line 91
    .line 92
    new-array v8, v6, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v7, v8, v2

    .line 95
    .line 96
    aput-object p2, v8, v3

    .line 97
    .line 98
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v7, v6, [J

    .line 101
    .line 102
    fill-array-data v7, :array_2

    .line 103
    .line 104
    .line 105
    invoke-direct {p2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_05$ProfileFN;->encode_profile_fn(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    new-array v8, v6, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object v5, v8, v2

    .line 127
    .line 128
    aput-object v7, v8, v3

    .line 129
    .line 130
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v7, v6, [J

    .line 133
    .line 134
    fill-array-data v7, :array_3

    .line 135
    .line 136
    .line 137
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {p2, v5}, Lapp/tunnel/vpncommons/utils/FileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_3

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->refresh_profile_list()V

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_05;->profile_list:Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 158
    .line 159
    invoke-virtual {p2, p1}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->get_profile_by_name(Ljava/lang/String;)Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-nez p1, :cond_2

    .line 164
    .line 165
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array p2, v6, [J

    .line 168
    .line 169
    fill-array-data p2, :array_4

    .line 170
    .line 171
    .line 172
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array p2, v0, [J

    .line 181
    .line 182
    fill-array-data p2, :array_5

    .line 183
    .line 184
    .line 185
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array p2, v1, [J

    .line 194
    .line 195
    fill-array-data p2, :array_6

    .line 196
    .line 197
    .line 198
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-direct {p0, v3, p1, v4}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_2
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_05;->pwds:Lnet/openvpn/openvpn/PasswordUtil;

    .line 210
    .line 211
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 212
    .line 213
    new-array v3, v6, [J

    .line 214
    .line 215
    fill-array-data v3, :array_7

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {p2, v0, v4}, Lnet/openvpn/openvpn/PasswordUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_05;->pwds:Lnet/openvpn/openvpn/PasswordUtil;

    .line 229
    .line 230
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v3, v6, [J

    .line 233
    .line 234
    fill-array-data v3, :array_8

    .line 235
    .line 236
    .line 237
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p2, v0, v4}, Lnet/openvpn/openvpn/PasswordUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 248
    .line 249
    new-array v0, v1, [J

    .line 250
    .line 251
    fill-array-data v0, :array_9

    .line 252
    .line 253
    .line 254
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-direct {p0, v2, p2, v0, p1}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 274
    .line 275
    new-array v0, v6, [J

    .line 276
    .line 277
    fill-array-data v0, :array_a

    .line 278
    .line 279
    .line 280
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    new-array p1, v6, [Ljava/lang/Object;

    .line 287
    .line 288
    aput-object p2, p1, v2

    .line 289
    .line 290
    aput-object v5, p1, v3

    .line 291
    .line 292
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 293
    .line 294
    const/16 v0, 0x9

    .line 295
    .line 296
    new-array v0, v0, [J

    .line 297
    .line 298
    fill-array-data v0, :array_b

    .line 299
    .line 300
    .line 301
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 312
    .line 313
    new-array p2, v1, [J

    .line 314
    .line 315
    fill-array-data p2, :array_c

    .line 316
    .line 317
    .line 318
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-direct {p0, v3, p1, v4}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_4
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 330
    .line 331
    new-array p2, v6, [J

    .line 332
    .line 333
    fill-array-data p2, :array_d

    .line 334
    .line 335
    .line 336
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 343
    .line 344
    new-array p2, v0, [J

    .line 345
    .line 346
    fill-array-data p2, :array_e

    .line 347
    .line 348
    .line 349
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 356
    .line 357
    new-array p2, v1, [J

    .line 358
    .line 359
    fill-array-data p2, :array_f

    .line 360
    .line 361
    .line 362
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-direct {p0, v3, p1, v4}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    return-void

    .line 373
    :array_0
    .array-data 8
        -0x7872ae17eadd4e0cL
        0x4acbd1dc5285f8b5L    # 2.0817221955469224E52
    .end array-data

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
    :array_1
    .array-data 8
        -0x19242bf292a497dL    # -9.958088886955233E300
        0x3620aedbf94dac37L    # 5.707500973079159E-48
        0x7f0fe616748186c5L    # 1.0937541592397003E304
    .end array-data

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
    :array_2
    .array-data 8
        0x6388a2bcb2d55c9eL    # 2.9751736066125465E171
        0x5c4504fd2c2e436cL    # 3.0555555842089787E136
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
    :array_3
    .array-data 8
        -0xe756cf90d1f6b5L
        -0x1f98c26e3ae80c64L    # -2.4928338738813135E156
    .end array-data

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
    :array_4
    .array-data 8
        -0x44bfc67d8cb4dd02L    # -2.684142649840724E-23
        -0x3136a37224ffce58L
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
    :array_5
    .array-data 8
        0x4f55235128dc0ffbL    # 1.493901501647355E74
        0x10b762b10d43d5cdL    # 3.856117128906205E-228
        -0xc040f276c5669d8L
        -0x1f6303d08809139dL    # -2.4872105243271758E157
        0x4928321a28983dc4L    # 2.697912001812323E44
        -0x3f46fe130d50c1f4L    # -6401.925578072212
        -0x1098ee33b391d54bL    # -4.372052339787736E228
    .end array-data

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
    :array_6
    .array-data 8
        -0x71991ed8e0ad5024L
        0x7ae0ad2ce110c22bL    # 7.749433435150826E283
        0x7120cb61bf93a57eL    # 8.543831137248337E236
        -0x1b72a2c9c2e1a6b8L    # -2.3240437872362475E176
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    :array_7
    .array-data 8
        0x4ac973b856ada85L
        0x64e0e8c02ae526fcL    # 8.565053098090363E177
    .end array-data

    :array_8
    .array-data 8
        0x4723a6c16157405cL    # 5.101792073362979E34
        -0x7fe7129e8136c78eL
    .end array-data

    :array_9
    .array-data 8
        0xb8cddb2e74366dcL
        -0x470aed353ba46340L    # -2.5366190355372044E-34
        -0x49f49567a6f37438L    # -2.344881665146619E-48
        -0x765af6808c2e7f23L    # -3.340409251063561E-262
    .end array-data

    :array_a
    .array-data 8
        0x1011c4ffff92e278L    # 2.861404854590384E-231
        -0x2b498c525928287bL    # -1.2276966393273996E100
    .end array-data

    :array_b
    .array-data 8
        0x5fef4e62ffddd3a2L    # 1.3117109103268149E154
        0x38839566d4d8547L
        0x28d5232c4fae26c7L    # 5.493297030464127E-112
        0x62834453e084ec27L    # 3.550418700749537E166
        -0x5bb80b262dfde5d4L    # -6.591957162961584E-134
        -0x6a0b03e36dfce175L    # -6.69311045573082E-203
        -0x6756c76c3ba160d8L    # -7.075793151339162E-190
        0x7d25b89f7503fc40L    # 6.936322055349894E294
        -0xc58f5a5d432dc70L
    .end array-data

    :array_c
    .array-data 8
        -0x5250677bcf517a43L    # -1.2408525889137371E-88
        -0x768ec807a85d3ee2L    # -3.417609763709336E-263
        0x68e65684d44c85a5L    # 2.0872322191750728E197
        -0x602e0711f28c13daL
    .end array-data

    :array_d
    .array-data 8
        -0x66ae1f1ca5c5bc91L
        -0x507ebe83d80f1bf6L    # -7.276562674582948E-80
    .end array-data

    :array_e
    .array-data 8
        -0x52ef4c16561e9973L    # -1.281180134976392E-91
        0x567cad41aede9190L    # 4.209290448336983E108
        -0x560bfaf614451e51L
        -0x61282ed075075ac3L
        0x5fc1192dae44aea6L
        -0x7f61576bcf0452L
        -0x6e5cd3805aeea2a9L    # -1.036005205553261E-223
    .end array-data

    :array_f
    .array-data 8
        0x4550dc903e40dd63L    # 8.15375782281626E25
        0x6ba8b7020c132030L    # 4.0626125382158695E210
        0x1118ea9b513db4d4L    # 2.629475504095336E-226
        0x6b3580da9e046530L    # 2.7614860553341873E208
    .end array-data
.end method

.method public static render_bandwidth(JZ)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const-wide/16 v3, 0x8

    .line 7
    .line 8
    mul-long p0, p0, v3

    .line 9
    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/16 v3, 0x3e8

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/16 v3, 0x400

    .line 16
    .line 17
    :goto_0
    int-to-long v4, v3

    .line 18
    cmp-long v6, p0, v4

    .line 19
    .line 20
    if-gez v6, :cond_3

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array p1, v2, [J

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    fill-array-data p1, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    fill-array-data p1, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_3
    long-to-double p0, p0

    .line 63
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    int-to-double v6, v3

    .line 68
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 69
    .line 70
    .line 71
    move-result-wide v8

    .line 72
    div-double/2addr v4, v8

    .line 73
    double-to-int v3, v4

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v8, v2, [J

    .line 82
    .line 83
    if-eqz p2, :cond_4

    .line 84
    .line 85
    fill-array-data v8, :array_2

    .line 86
    .line 87
    .line 88
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    :goto_3
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    fill-array-data v8, :array_3

    .line 97
    .line 98
    .line 99
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_4
    add-int/lit8 v8, v3, -0x1

    .line 104
    .line 105
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v8, v1, [J

    .line 115
    .line 116
    const-wide v9, 0xd412076f5f4bed5L

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    aput-wide v9, v8, v0

    .line 122
    .line 123
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-static {v5, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    if-eqz p2, :cond_5

    .line 131
    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    const/4 v8, 0x3

    .line 139
    new-array v8, v8, [J

    .line 140
    .line 141
    fill-array-data v8, :array_4

    .line 142
    .line 143
    .line 144
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    int-to-double v8, v3

    .line 152
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 153
    .line 154
    .line 155
    move-result-wide v6

    .line 156
    div-double/2addr p0, v6

    .line 157
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    new-array p1, v2, [Ljava/lang/Object;

    .line 162
    .line 163
    aput-object p0, p1, v0

    .line 164
    .line 165
    aput-object v4, p1, v1

    .line 166
    .line 167
    invoke-static {p2, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v8, v2, [J

    .line 179
    .line 180
    fill-array-data v8, :array_5

    .line 181
    .line 182
    .line 183
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    int-to-double v8, v3

    .line 191
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 192
    .line 193
    .line 194
    move-result-wide v6

    .line 195
    div-double/2addr p0, v6

    .line 196
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    new-array p1, v2, [Ljava/lang/Object;

    .line 201
    .line 202
    aput-object p0, p1, v0

    .line 203
    .line 204
    aput-object v4, p1, v1

    .line 205
    .line 206
    invoke-static {p2, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0

    .line 211
    :array_0
    .array-data 8
        -0x1e5bdd544833ed0L    # -2.747672926822815E299
        0x2b45b17a386c6697L
    .end array-data

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
    .line 222
    .line 223
    :array_1
    .array-data 8
        0x1278f7000d30b53bL    # 1.1050248379270005E-219
        0x69e28ef625e28f2dL    # 1.1364456092893634E202
    .end array-data

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
    .line 234
    .line 235
    :array_2
    .array-data 8
        0x5d1dcff3d84930ceL    # 3.550207124993635E140
        -0x4813b11a4d5e5322L    # -2.5996968953050202E-39
    .end array-data

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
    :array_3
    .array-data 8
        -0x133122f1da43967cL    # -1.3299399824201811E216
        0x3c825e3461c6d473L    # 3.1863377882328726E-17
    .end array-data

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
    :array_4
    .array-data 8
        0x449cf1599ba452b7L    # 3.416959594432E22
        0x7cd5b247eb4bc1f5L    # 2.1651284724060333E293
        -0x5e43024f4142ffbcL    # -3.627646706155998E-146
    .end array-data

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
    :array_5
    .array-data 8
        -0x2ad373f40b54694L    # -4.798751457049344E295
        -0x45015ac2da98a45bL    # -1.5843333689478601E-24
    .end array-data
.end method

.method private resString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private start_connection(Lcom/tknetwork/tunnel/service/c_05$Profile;Ljava/lang/String;Ljava/lang/String;Lcom/tknetwork/tunnel/service/c_05$ProxyContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    const/4 v15, 0x4

    .line 1
    iget-boolean v14, v0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    if-eqz v14, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v14, v0, Lcom/tknetwork/tunnel/service/c_05;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v15, [J

    fill-array-data v8, :array_0

    invoke-direct {v13, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-virtual {v14, v8, v13}, Lnet/openvpn/openvpn/PrefUtil;->get_boolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v0, Lcom/tknetwork/tunnel/service/c_05;->enable_notifications:Z

    .line 3
    new-instance v8, Lnet/openvpn/openvpn/OpenVPNClientThread;

    invoke-direct {v8}, Lnet/openvpn/openvpn/OpenVPNClientThread;-><init>()V

    .line 4
    new-instance v13, Lnet/openvpn/openvpn/ClientAPI_Config;

    invoke-direct {v13}, Lnet/openvpn/openvpn/ClientAPI_Config;-><init>()V

    .line 5
    invoke-static/range {p0 .. p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    move-result-object v14

    .line 6
    invoke-virtual {v14}, Lconfig/ConfigUtil;->getTunnelType()I

    move-result v14

    const/4 v15, 0x7

    if-eq v14, v15, :cond_1

    .line 7
    invoke-static/range {p2 .. p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 8
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v7, 0xc

    new-array v7, v7, [J

    fill-array-data v7, :array_1

    invoke-direct {v15, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v18, v8

    const/4 v10, 0x3

    new-array v8, v10, [J

    fill-array-data v8, :array_2

    invoke-direct {v15, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    new-array v15, v10, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v8, v15, v17

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object/from16 v18, v8

    const/4 v10, 0x1

    move-object/from16 v7, p2

    .line 9
    :goto_0
    invoke-virtual {v13, v7}, Lnet/openvpn/openvpn/ClientAPI_Config;->setContent(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v13, v10}, Lnet/openvpn/openvpn/ClientAPI_Config;->setInfo(Z)V

    .line 11
    invoke-virtual {v13}, Lnet/openvpn/openvpn/ClientAPI_Config;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tknetwork/tunnel/service/c_05;->log_message(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v13, v4}, Lnet/openvpn/openvpn/ClientAPI_Config;->setServerOverride(Ljava/lang/String;)V

    :cond_2
    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v13, v5}, Lnet/openvpn/openvpn/ClientAPI_Config;->setProtoOverride(Ljava/lang/String;)V

    :cond_3
    if-eqz v6, :cond_4

    .line 14
    invoke-virtual {v13, v6}, Lnet/openvpn/openvpn/ClientAPI_Config;->setIpv6(Ljava/lang/String;)V

    :cond_4
    if-eqz p8, :cond_5

    .line 15
    :try_start_0
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v7, 0x0

    .line 16
    :goto_1
    invoke-virtual {v13, v7}, Lnet/openvpn/openvpn/ClientAPI_Config;->setConnTimeout(I)V

    :cond_5
    if-eqz v12, :cond_6

    .line 17
    invoke-virtual {v13, v12}, Lnet/openvpn/openvpn/ClientAPI_Config;->setCompressionMode(Ljava/lang/String;)V

    :cond_6
    if-eqz v9, :cond_7

    .line 18
    invoke-virtual {v13, v9}, Lnet/openvpn/openvpn/ClientAPI_Config;->setPrivateKeyPassword(Ljava/lang/String;)V

    .line 19
    :cond_7
    iget-object v7, v0, Lcom/tknetwork/tunnel/service/c_05;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x3

    new-array v10, v9, [J

    fill-array-data v10, :array_3

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lnet/openvpn/openvpn/PrefUtil;->get_boolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 20
    invoke-virtual {v13, v7}, Lnet/openvpn/openvpn/ClientAPI_Config;->setTunPersist(Z)V

    .line 21
    iget-object v7, v0, Lcom/tknetwork/tunnel/service/c_05;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x4

    new-array v14, v10, [J

    fill-array-data v14, :array_4

    invoke-direct {v8, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lnet/openvpn/openvpn/PrefUtil;->get_boolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v13, v7}, Lnet/openvpn/openvpn/ClientAPI_Config;->setGoogleDnsFallback(Z)V

    .line 22
    iget-object v7, v0, Lcom/tknetwork/tunnel/service/c_05;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x5

    new-array v14, v10, [J

    fill-array-data v14, :array_5

    invoke-direct {v8, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lnet/openvpn/openvpn/PrefUtil;->get_boolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v13, v7}, Lnet/openvpn/openvpn/ClientAPI_Config;->setForceAesCbcCiphersuites(Z)V

    .line 23
    iget-object v7, v0, Lcom/tknetwork/tunnel/service/c_05;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x3

    new-array v14, v10, [J

    fill-array-data v14, :array_6

    invoke-direct {v8, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lnet/openvpn/openvpn/PrefUtil;->get_boolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v13, v7}, Lnet/openvpn/openvpn/ClientAPI_Config;->setAltProxy(Z)V

    .line 24
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v10, [J

    fill-array-data v8, :array_7

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    iget-object v7, v0, Lcom/tknetwork/tunnel/service/c_05;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x4

    new-array v10, v9, [J

    fill-array-data v10, :array_8

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lnet/openvpn/openvpn/PrefUtil;->get_boolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 26
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v8, 0x3

    new-array v9, v8, [J

    fill-array-data v9, :array_9

    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    :cond_8
    iget-object v7, v0, Lcom/tknetwork/tunnel/service/c_05;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x4

    new-array v10, v9, [J

    fill-array-data v10, :array_a

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 28
    invoke-virtual {v13, v7}, Lnet/openvpn/openvpn/ClientAPI_Config;->setTlsVersionMinOverride(Ljava/lang/String;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 29
    invoke-virtual {v13, v2}, Lnet/openvpn/openvpn/ClientAPI_Config;->setGuiVersion(Ljava/lang/String;)V

    .line 30
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/service/c_05$Profile;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v11, :cond_b

    .line 31
    invoke-static {v1, v11}, Lcom/tknetwork/tunnel/service/c_05$Profile;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Lcom/tknetwork/tunnel/service/c_05$Profile;Ljava/lang/String;)V

    move-object v2, v11

    goto :goto_2

    .line 32
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/service/c_05$Profile;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_e

    .line 33
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v8, 0x4

    new-array v9, v8, [J

    fill-array-data v9, :array_b

    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    .line 34
    invoke-virtual {v13, v7}, Lnet/openvpn/openvpn/ClientAPI_Config;->setDisableClientCert(Z)V

    goto :goto_3

    .line 35
    :cond_c
    invoke-virtual {v13, v2}, Lnet/openvpn/openvpn/ClientAPI_Config;->setExternalPkiAlias(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    move-object v2, v11

    :cond_e
    :goto_3
    if-eqz v3, :cond_f

    .line 36
    invoke-virtual {v3, v13}, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->client_api_config(Lnet/openvpn/openvpn/ClientAPI_Config;)V

    :cond_f
    move-object/from16 v7, v18

    .line 37
    invoke-virtual {v7, v13}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->eval_config(Lnet/openvpn/openvpn/ClientAPI_Config;)Lnet/openvpn/openvpn/ClientAPI_EvalConfig;

    move-result-object v8

    .line 38
    invoke-virtual {v8}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getError()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 39
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_c

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_10
    new-instance v9, Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;

    invoke-direct {v9}, Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;-><init>()V

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->is_dynamic_challenge()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_13

    move-object/from16 v10, p13

    if-eqz v10, :cond_11

    .line 42
    invoke-virtual {v9, v10}, Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;->setResponse(Ljava/lang/String;)V

    .line 43
    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_05$Profile;)Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    move-result-object v8

    iget-object v8, v8, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->cookie:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;->setDynamicChallengeCookie(Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->reset_dynamic_challenge()V

    move-object/from16 v8, p9

    :cond_12
    :goto_4
    move/from16 v13, p11

    goto :goto_6

    :cond_13
    move-object/from16 v10, p13

    .line 45
    invoke-virtual {v8}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getAutologin()Z

    move-result v8

    if-nez v8, :cond_15

    move-object/from16 v8, p9

    if-eqz v8, :cond_16

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_14

    goto :goto_5

    .line 46
    :cond_14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_d

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v11}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    move-object/from16 v8, p9

    :cond_16
    :goto_5
    if-eqz v8, :cond_17

    .line 47
    invoke-virtual {v9, v8}, Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;->setUsername(Ljava/lang/String;)V

    :cond_17
    move-object/from16 v13, p10

    if-eqz v13, :cond_18

    .line 48
    invoke-virtual {v9, v13}, Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;->setPassword(Ljava/lang/String;)V

    :cond_18
    if-eqz v10, :cond_12

    .line 49
    invoke-virtual {v9, v10}, Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;->setResponse(Ljava/lang/String;)V

    goto :goto_4

    .line 50
    :goto_6
    invoke-virtual {v9, v13}, Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;->setCachePassword(Z)V

    const/4 v13, 0x1

    .line 51
    invoke-virtual {v9, v13}, Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;->setReplacePasswordWithSessionID(Z)V

    .line 52
    invoke-virtual {v7, v9}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->provide_creds(Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;)Lnet/openvpn/openvpn/ClientAPI_Status;

    move-result-object v9

    .line 53
    invoke-virtual {v9}, Lnet/openvpn/openvpn/ClientAPI_Status;->getError()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 54
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_e

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lnet/openvpn/openvpn/ClientAPI_Status;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v13, v1, v2}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_19
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v13, 0xe

    new-array v13, v13, [J

    fill-array-data v13, :array_f

    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$Profile;)Ljava/lang/String;

    move-result-object v13

    if-eqz v3, :cond_1a

    .line 57
    invoke-virtual/range {p4 .. p4}, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x2

    goto :goto_7

    :cond_1a
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x2

    new-array v15, v14, [J

    fill-array-data v15, :array_10

    invoke-direct {v3, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    const/16 v15, 0xa

    .line 58
    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/4 v13, 0x1

    aput-object v8, v15, v13

    aput-object v3, v15, v14

    const/4 v3, 0x3

    aput-object v4, v15, v3

    const/4 v3, 0x4

    aput-object v5, v15, v3

    const/4 v3, 0x5

    aput-object v6, v15, v3

    const/4 v3, 0x6

    aput-object p8, v15, v3

    const/4 v3, 0x7

    aput-object v10, v15, v3

    const/16 v3, 0x8

    aput-object v2, v15, v3

    const/16 v2, 0x9

    aput-object v12, v15, v2

    .line 59
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_11

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    iput-object v1, v0, Lcom/tknetwork/tunnel/service/c_05;->current_profile:Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tknetwork/tunnel/service/c_05;->set_autostart_profile_name(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, v0, Lcom/tknetwork/tunnel/service/c_05;->paused:Z

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/service/c_05;->start_notification_dnstt()V

    .line 64
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_12

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v11}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v7, v0}, Lnet/openvpn/openvpn/OpenVPNClientThread;->connect(Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;)V

    .line 66
    sput-object v7, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tknetwork/tunnel/service/c_05;->thread_started:J

    .line 68
    new-instance v1, Lnet/openvpn/openvpn/CPUUsage;

    invoke-direct {v1}, Lnet/openvpn/openvpn/CPUUsage;-><init>()V

    iput-object v1, v0, Lcom/tknetwork/tunnel/service/c_05;->cpu_usage:Lnet/openvpn/openvpn/CPUUsage;

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    return-void

    :array_0
    .array-data 8
        0x33a390b44685ce1fL    # 6.087742727670773E-60
        -0x376a1ea028b5143aL    # -4.765122329117947E41
        0x27f03b7a4f71fe35L    # 2.574795141246352E-116
        -0x37f0af0ce167df03L    # -1.332044245359211E39
    .end array-data

    :array_1
    .array-data 8
        -0x236529007bb96a66L    # -1.2485268756122178E138
        0x32e7bb13d7a1fa5cL
        -0x75cc0dc653e5e31fL    # -1.6216000631684247E-259
        0x5b9b90e49c909a2bL    # 1.9566433394543128E133
        0x1dd9bf4758049b3fL    # 6.986056504905115E-165
        0x3fb4f28960e75e6bL    # 0.08182581535162974
        0x451c6bb23e2b8eeL    # 7.29634489425814E-288
        -0x66cd360c93ff3f1dL
        -0x5daa8c3376bf5398L
        0x4c35372e9a5c102cL    # 1.331721961965533E59
        -0x4156cad613dbb0bbL    # -7.512471358627596E-7
        0xf8601f53fc77dedL    # 6.921608289392219E-234
    .end array-data

    :array_2
    .array-data 8
        0x63eafba889b67ad5L    # 2.0855394449141562E173
        0x3e618a3258d82546L    # 3.267048063685593E-8
        0x6f9657b41f4278a0L    # 3.387429551955565E229
    .end array-data

    :array_3
    .array-data 8
        -0x67beb151b951ae97L    # -7.58688087922058E-192
        0x65791f499a66145L
        0x38a729c00b20d1a4L    # 8.712984782988422E-36
    .end array-data

    :array_4
    .array-data 8
        -0x31aa7940f240c14L    # -4.260200384893937E293
        0xb3ebedde9491c9bL    # 1.63812212737632E-254
        -0x6003d25ff2311306L
        -0x5300339a2dc9b053L    # -6.097713217869416E-92
    .end array-data

    :array_5
    .array-data 8
        0x2553144f3ac3b4ddL    # 6.881214155233758E-129
        -0x7534263561495649L    # -1.15928594552882E-256
        0x5d65092b2626fabL
        -0xe2997aa40bc3120L    # -2.3345925437358818E240
        -0x3d8d5d21276ddae6L    # -1.2806707960663188E12
    .end array-data

    :array_6
    .array-data 8
        0x2eec352eab6a20b3L    # 1.1616078677857703E-82
        -0x4db17439fd4224e5L    # -2.2660274911349664E-66
        -0x13bcb87a66e25a2bL    # -3.245189471087786E213
    .end array-data

    :array_7
    .array-data 8
        0x2a84833c54114e6eL    # 7.155056173184859E-104
        -0x682a092a22710175L    # -7.52208448723237E-194
        -0x2e831ef6568c8ce1L    # -3.5064024512146404E84
    .end array-data

    :array_8
    .array-data 8
        -0x4404a05cb2d952a2L    # -9.274531531757253E-20
        -0x16eab61586f8b2abL    # -1.5913547332468308E198
        0x452723baa0c69eb9L    # 1.3987009678778114E25
        -0x1d572578c1f6125fL    # -1.8319658428026895E167
    .end array-data

    :array_9
    .array-data 8
        -0x4f16456430b6f0ccL    # -4.550644987966142E-73
        0x4841aa3549430fd1L    # 1.202209134920395E40
        0x4ebd2dc9e96cf80L
    .end array-data

    :array_a
    .array-data 8
        -0x672b8dc872ab4050L
        -0x2f5b597fdd97a6a7L    # -3.0606747027303135E80
        0x50743f78739bf63eL    # 3.751280502016635E79
        0x4b87d586f1084b34L    # 7.305127419347936E55
    .end array-data

    :array_b
    .array-data 8
        0x9ab028e2fb2f9eeL
        -0x30ad4f9b6b449899L    # -1.3208266472410175E74
        0x5a41aa564260f479L    # 5.979035667831073E126
        -0x5cb8b7d9513f1065L    # -9.77528239727715E-139
    .end array-data

    :array_c
    .array-data 8
        -0x450d2d471fbe60b5L    # -9.731331928365894E-25
        0x13c36af573007913L
        -0x7697819dd1b5ca71L    # -2.430792803959767E-263
        -0x6ec16a790b05e8bbL
    .end array-data

    :array_d
    .array-data 8
        -0x761d7f0ecf5a48dbL    # -4.701017668761068E-261
        -0x76770e3ea410f2ddL    # -9.902072500972115E-263
        0x42ab177d1d3cbf68L    # 1.4893848632927703E13
    .end array-data

    :array_e
    .array-data 8
        0x6b98d65969083c61L    # 2.0413684821408505E210
        -0x7d47f3cbcba38bb4L
        0x220cf0854f01eba3L
    .end array-data

    :array_f
    .array-data 8
        -0x67a7dcd76ee725eeL
        0x2f7a40516ba7a004L    # 5.5349158682267444E-80
        0x50f4da17b3d19a0dL    # 9.889742292104865E81
        0xe4088b609d774cbL    # 4.959205728376054E-240
        -0x36db12faa213699fL    # -2.3333117099745498E44
        0x61e051a8d1d16a1dL    # 2.936707771182422E163
        0x19da6f3ead093ef4L    # 3.888253627439031E-184
        -0x41a58d2d1c04a142L    # -2.4632113459039617E-8
        0x4f2b819324cbe160L    # 2.4299581507513225E73
        -0x3cf17d38aee57bdbL    # -1.0735052340143406E15
        0x378285c28d6dcb31L    # 2.6578483859621784E-41
        -0xa43cabfbaa8b5e0L    # -1.3553415960851E259
        -0x1adbfaa1b8991d3dL    # -1.6226040238713988E179
        -0x555358ada93a4a3eL
    .end array-data

    :array_10
    .array-data 8
        -0x59ba9bb82916b5d2L
        -0x4ec1956bb6de5dd7L    # -1.7215029962746852E-71
    .end array-data

    :array_11
    .array-data 8
        -0x76e3a6de15e10de5L    # -8.79162003883023E-265
        -0x60ccc5c406d9c419L
    .end array-data

    :array_12
    .array-data 8
        0x23a74c53b2a3791L
        0x9a8c6c1f35eca2eL
        0x2e36013c382cf870L    # 4.424652522678977E-86
        0x58b8bea50058e2f7L    # 2.4959770328102282E119
    .end array-data
.end method

.method private start_notification_dnstt()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ForegroundServiceType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->current_profile:Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Landroid/app/Notification$Builder;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 30
    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v3, 0x1a

    .line 34
    .line 35
    if-lt v2, v3, :cond_0

    .line 36
    .line 37
    invoke-static {v1, v0}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotificationManager:Landroid/app/NotificationManager;

    .line 41
    .line 42
    invoke-direct {p0, v1, v0}, Lcom/tknetwork/tunnel/service/c_05;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0, v1}, Lcom/tknetwork/tunnel/service/c_05;->get_configure_intent(I)Landroid/app/PendingIntent;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const v2, 0x7f08012e

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const v2, 0x7f130024

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const v2, 0x7f13018e

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/service/c_05;->resString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotificationManager:Landroid/app/NotificationManager;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const/16 v2, 0x66a

    .line 101
    .line 102
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    return-void

    .line 115
    :array_0
    .array-data 8
        0x2851a7c70df8ecbcL    # 1.792333212054233E-114
        -0x5a1998623e3c7da3L    # -4.13725172530387E-126
    .end array-data
.end method

.method public static stat_names()[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->stats_n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    invoke-static {v2}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->stats_name(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    aput-object v3, v1, v2

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v1
.end method

.method private stop_notification()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mConnectedTime:J

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->timer:Ljava/util/Timer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private stop_thread()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->stop()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 11
    .line 12
    invoke-virtual {v0}, Lnet/openvpn/openvpn/OpenVPNClientThread;->wait_thread_short()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    new-array v1, v1, [J

    .line 33
    .line 34
    fill-array-data v1, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x69e2f7e4780f4c67L
        0x1f683b38e08e58cbL    # 2.206122618833824E-157
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 8
        -0x4cb59b25155fd1ebL    # -1.2832035150976568E-61
        0x468c3f573ec5d1d3L    # 7.161573052800968E31
        0x3a6f6aaaca2d78dL
        -0x4b5e209567d4868fL    # -3.6445294160469415E-55
        0x32d20bb49833513fL    # 6.85417594393623E-64
    .end array-data
.end method

.method private submit_proxy_creds_action(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    new-array v4, v4, [J

    .line 11
    .line 12
    fill-array-data v4, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-static {v3, v2, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/service/c_05;->locate_profile(Ljava/lang/String;)Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v2, v4}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_proxy_context(Z)Lcom/tknetwork/tunnel/service/c_05$ProxyContext;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v7, v1, [J

    .line 43
    .line 44
    fill-array-data v7, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-static {v6, v2, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v8, v1, [J

    .line 61
    .line 62
    fill-array-data v8, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-static {v7, v2, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v1, v1, [J

    .line 79
    .line 80
    fill-array-data v1, :array_3

    .line 81
    .line 82
    .line 83
    invoke-direct {v8, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-static {v8, v2, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Landroid/content/Intent;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v9, v0, [J

    .line 97
    .line 98
    fill-array-data v9, :array_4

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/c_05;->proxy_list:Lnet/openvpn/openvpn/ProxyList;

    .line 120
    .line 121
    invoke-virtual/range {v5 .. v10}, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->submit_proxy_creds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ProxyList;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    if-eqz p2, :cond_0

    .line 126
    .line 127
    invoke-direct {p0, p1, p2, v3}, Lcom/tknetwork/tunnel/service/c_05;->connect_action(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array p2, v0, [J

    .line 134
    .line 135
    fill-array-data p2, :array_5

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const/4 p2, 0x0

    .line 146
    invoke-direct {p0, v3, p1, p2}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    nop

    .line 151
    :array_0
    .array-data 8
        -0x2ad046d54a6c5e15L    # -2.220378505233763E102
        0x17f30bbd20f9fe43L
    .end array-data

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
    :array_1
    .array-data 8
        -0x24fcf12e72ba12ebL    # -2.642061009709791E130
        0x4aed78befc427bd8L    # 8.821326948680105E52
        0x5826f24ae0ad30a1L    # 4.52068181878139E116
    .end array-data

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
    :array_2
    .array-data 8
        -0x1278c4e78d5ce4edL    # -4.100263843647184E219
        -0x55d989524e8ea7f3L
        0x32e31e9c7633f29dL    # 1.4524097511208434E-63
    .end array-data

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
    .line 194
    .line 195
    :array_3
    .array-data 8
        -0x34e4ebea26b5d8a7L    # -6.484002614083464E53
        0x30a31edc53536eb1L    # 2.1136420798230957E-74
        -0x505bf49764f894c8L    # -3.381020334548378E-79
    .end array-data

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
    :array_4
    .array-data 8
        -0x38fe3fdc8153c911L    # -1.1520760178498386E34
        -0x2a27cc62b329c07aL    # -3.4691487243022123E105
        0x5503259af1e2248fL    # 3.350324888432549E101
        -0x58f9db5d4e485636L
    .end array-data

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
    :array_5
    .array-data 8
        0x242a0358e99dc1aeL
        0x7d5859f391259014L    # 6.220985779343829E295
        -0x312b0ef61351313dL    # -5.781332770355743E71
        0x2e5547647b992253L    # 1.7114725746213393E-85
    .end array-data
.end method

.method private unregister_connectivity_receiver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mConnectivityReceiver:Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->unregister()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private update_notification_event(Lcom/tknetwork/tunnel/service/c_05$EventMsg;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ForegroundServiceType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v1, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->priority:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-lt v1, v2, :cond_3

    .line 9
    .line 10
    iget v1, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/tknetwork/tunnel/service/c_05;->resString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 20
    .line 21
    const v1, 0x7f0800fd

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 25
    .line 26
    .line 27
    iget v0, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/service/c_05;->resString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    new-array v2, v2, [J

    .line 37
    .line 38
    fill-array-data v2, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 55
    .line 56
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 57
    .line 58
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getServerType()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    iput-wide v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mConnectedTime:J

    .line 70
    .line 71
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 72
    .line 73
    invoke-virtual {v2, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 74
    .line 75
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    const/16 v1, 0x18

    .line 79
    .line 80
    if-lt v0, v1, :cond_0

    .line 81
    .line 82
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 83
    .line 84
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/service/c_05;->jbNotificationExtras(Landroid/app/Notification$Builder;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    new-instance v1, Ljava/util/Timer;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/c_05;->timer:Ljava/util/Timer;

    .line 93
    .line 94
    new-instance v2, Lcom/tknetwork/tunnel/service/c_05$1;

    .line 95
    .line 96
    invoke-direct {v2, p0, p1}, Lcom/tknetwork/tunnel/service/c_05$1;-><init>(Lcom/tknetwork/tunnel/service/c_05;Lcom/tknetwork/tunnel/service/c_05$EventMsg;)V

    .line 97
    .line 98
    .line 99
    const-wide/16 v3, 0x0

    .line 100
    .line 101
    const-wide/16 v5, 0x3e8

    .line 102
    .line 103
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->timer:Ljava/util/Timer;

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 112
    .line 113
    .line 114
    :cond_2
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 115
    .line 116
    const v1, 0x7f130024

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, v1}, Lcom/tknetwork/tunnel/service/c_05;->resString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 127
    .line 128
    iget p1, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 129
    .line 130
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_05;->resString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 135
    .line 136
    .line 137
    :goto_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotificationManager:Landroid/app/NotificationManager;

    .line 138
    .line 139
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/16 v1, 0x66a

    .line 146
    .line 147
    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 157
    .line 158
    .line 159
    :cond_3
    return-void

    .line 160
    nop

    .line 161
    :array_0
    .array-data 8
        -0x640f53ee9b7afee2L    # -4.213023422198214E-174
        0x7c90fe6edfb2bcabL    # 1.059908416337589E292
        -0x4babd81e82dea1f0L
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tknetwork/tunnel/service/c_05;->lambda$connect_action$0(Ljava/lang/String;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    return p0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05;)Lnet/openvpn/openvpn/PrefUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/service/c_05;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    return-object p0
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/service/c_05;)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/service/c_05;->get_configure_intent(I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/service/c_05;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_05;->resString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public Logtk(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public addProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    new-instance v3, Lnet/openvpn/openvpn/ClientAPI_Config;

    .line 5
    .line 6
    invoke-direct {v3}, Lnet/openvpn/openvpn/ClientAPI_Config;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v3, p2}, Lnet/openvpn/openvpn/ClientAPI_Config;->setContent(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v3}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->eval_config_static(Lnet/openvpn/openvpn/ClientAPI_Config;)Lnet/openvpn/openvpn/ClientAPI_EvalConfig;

    .line 13
    .line 14
    .line 15
    move-result-object v9

    .line 16
    invoke-virtual {v9}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getError()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v10, 0x1

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v9}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-array v4, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object p1, v4, v0

    .line 30
    .line 31
    aput-object v3, v4, v10

    .line 32
    .line 33
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v5, v1, [J

    .line 36
    .line 37
    fill-array-data v5, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v6, v2, [J

    .line 50
    .line 51
    fill-array-data v6, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-direct {p0, v10, v3, v4}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    new-instance v3, Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 69
    .line 70
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v5, v2, [J

    .line 73
    .line 74
    fill-array-data v5, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const/4 v8, 0x0

    .line 85
    move-object v4, v3

    .line 86
    move-object v5, p0

    .line 87
    move-object v7, p1

    .line 88
    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/service/c_05$Profile;-><init>(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ClientAPI_EvalConfig;)V

    .line 89
    .line 90
    .line 91
    :try_start_0
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_filename()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {p0, v4, p2}, Lapp/tunnel/vpncommons/utils/FileUtils;->writeFileAppPrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_05;->pwds:Lnet/openvpn/openvpn/PasswordUtil;

    .line 103
    .line 104
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v5, v2, [J

    .line 107
    .line 108
    fill-array-data v5, :array_3

    .line 109
    .line 110
    .line 111
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v3, v4, p2}, Lnet/openvpn/openvpn/PasswordUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_05;->pwds:Lnet/openvpn/openvpn/PasswordUtil;

    .line 122
    .line 123
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v2, v2, [J

    .line 126
    .line 127
    fill-array-data v2, :array_4

    .line 128
    .line 129
    .line 130
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v3, v2, p2}, Lnet/openvpn/openvpn/PasswordUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->refresh_profile_list()V

    .line 141
    .line 142
    .line 143
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    new-array v3, v1, [J

    .line 146
    .line 147
    fill-array-data v3, :array_5

    .line 148
    .line 149
    .line 150
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-direct {p0, v0, v2, p2, p2}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :catch_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v0, v1, [J

    .line 164
    .line 165
    fill-array-data v0, :array_6

    .line 166
    .line 167
    .line 168
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-direct {p0, v10, p2, p1}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_0
    return-void

    .line 179
    :array_0
    .array-data 8
        0x7e1fd91b03b15b0bL    # 3.3325663549194244E299
        0x63e8cb521bee9516L    # 1.9163639972939365E173
        -0x5bbef029d89e5961L    # -4.694813555706352E-134
        -0x55aabfbac5496496L    # -9.26578119902525E-105
    .end array-data

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
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_1
    .array-data 8
        0x4f80a6a24c602034L    # 9.414277915091035E74
        -0x6f0432f060c9a9d1L    # -7.334727816371409E-227
    .end array-data

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
    :array_2
    .array-data 8
        -0x48cffbe783c1f6c3L    # -7.181822165033586E-43
        0x7716a0e2fd52f562L    # 4.560277389635018E265
    .end array-data

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
    .line 222
    .line 223
    :array_3
    .array-data 8
        -0x54a7b5bbcfdbdc23L    # -6.940820356084075E-100
        -0xc7014a79362b4a2L    # -4.463546295262215E248
    .end array-data

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
    .line 234
    .line 235
    :array_4
    .array-data 8
        -0x41d6a11a0947def5L    # -2.9535377943316496E-9
        0x61bd9d45d682878dL    # 6.661619687492175E162
    .end array-data

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
    :array_5
    .array-data 8
        -0x74894d827a0c3653L
        0x45401a647e3d4185L    # 3.893489682658982E25
        0x1da26b386185c5c6L    # 6.247041845281451E-166
        -0x34db20601f6f40aL
    .end array-data

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
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_6
    .array-data 8
        0x3112a48377ba0c42L
        0x48dc99f3b07519c9L    # 9.966124507401993E42
        0x65f32da7efbb5ed2L    # 1.273293376074335E183
        0x67e27bc4537f54fL
    .end array-data
.end method

.method public client_attach(Lcom/tknetwork/tunnel/service/c_05$EventReceiver;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->clients:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x1

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aput-object p1, v0, v1

    .line 22
    .line 23
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    new-array v1, v1, [J

    .line 27
    .line 28
    fill-array-data v1, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v1, 0x5

    .line 40
    new-array v1, v1, [J

    .line 41
    .line 42
    fill-array-data v1, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0x1b026cbfd8004104L    # -2.996160724972793E178
        -0x4df52d85e89a086fL    # -1.2436122277086606E-67
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 8
        -0x2cd165cf70c89b63L    # -4.9870394482506237E92
        -0x634b389fa41e2f00L
        -0x2e4e0cfee99af0baL    # -3.486942114129118E85
        -0x7f4af10eda79b45cL    # -2.998811017455834E-305
        0x2969b79a5d904180L    # 3.421962540854875E-109
    .end array-data
.end method

.method public client_detach(Lcom/tknetwork/tunnel/service/c_05$EventReceiver;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->clients:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aput-object p1, v0, v1

    .line 19
    .line 20
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [J

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        -0x1bc6e52c571f6b89L    # -6.209178326394386E174
        -0xbb2d23962372de2L
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x202e2acd88f0d7e9L
        0x6d4f3c174ffe247eL    # 3.445598263672641E218
        -0x1bd9b4920b121a23L    # -2.7570719418133633E174
        0x65b10a850a9b72a4L    # 7.071227885188314E181
        0x31f7a8bcd793607bL    # 5.4847872553666135E-68
    .end array-data
.end method

.method public done(Lnet/openvpn/openvpn/ClientAPI_Status;)V
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_Status;->getError()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_Status;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    new-array v5, v4, [J

    .line 14
    .line 15
    fill-array-data v5, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    aput-object v3, v4, v5

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    aput-object v2, v4, v3

    .line 35
    .line 36
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v7, 0x6

    .line 39
    new-array v7, v7, [J

    .line 40
    .line 41
    fill-array-data v7, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->log_stats()V

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v6, v0, [J

    .line 65
    .line 66
    fill-array-data v6, :array_2

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v1, v0, [J

    .line 86
    .line 87
    fill-array-data v1, :array_3

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p0, v3, p1, v4}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_Status;->getStatus()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_2

    .line 110
    .line 111
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v1, v0, [J

    .line 114
    .line 115
    fill-array-data v1, :array_4

    .line 116
    .line 117
    .line 118
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :cond_2
    invoke-direct {p0, v3, p1, v2}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v0, v0, [J

    .line 131
    .line 132
    fill-array-data v0, :array_5

    .line 133
    .line 134
    .line 135
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p0, v5, p1, v4}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iput-boolean v5, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    .line 146
    .line 147
    return-void

    .line 148
    nop

    .line 149
    :array_0
    .array-data 8
        0x4811ea4b648e9882L    # 1.5240577626181432E39
        0x3685204df3d2da4aL    # 4.625640132347515E-46
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
    :array_1
    .array-data 8
        -0x3b77142665aea464L    # -1.4710932547587472E22
        -0x617e0a59f9aa7a77L    # -9.979944830409808E-162
        -0x4e145bc79ae48bd8L    # -3.203999003122157E-68
        -0x2a3ba65a825f820eL    # -1.45853478011027E105
        -0x5e37cc65c9739145L    # -6.056694735935153E-146
        -0x372d20f63caca1c3L    # -6.575668367343238E42
    .end array-data

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
    :array_2
    .array-data 8
        0x32cfc9f1f6c0f439L    # 6.0370632567524675E-64
        -0x5881db0ba84d06c5L
        0x1e6a76878fcfeaaaL
        0x278db6db8450c56aL    # 3.682281850546608E-118
    .end array-data

    :array_3
    .array-data 8
        0x2209d8076def8df3L
        0x2cc3d0935e5fd94aL    # 4.749631503828124E-93
        0x56441c08d83fcc53L    # 3.689690660877672E107
        0x3c80ffa5f1dd23b9L    # 2.948791534979547E-17
    .end array-data

    :array_4
    .array-data 8
        0x676586a5827ab443L    # 1.1988638650070468E190
        -0x1b838b9d7f2626f8L
        0x339a5f098939a562L    # 4.102715620022592E-60
        -0x7de769223d171ff6L
    .end array-data

    :array_5
    .array-data 8
        -0x1cbc93b911695f27L    # -1.466030223315423E170
        -0x3c016e243b68e02cL    # -3.5244533282502427E19
        0x7e6191a2d88d9e55L    # 5.882880628888435E300
        0x6a3cc9ea73c0789eL    # 5.6413058834889165E203
    .end array-data
.end method

.method public event(Lnet/openvpn/openvpn/ClientAPI_Event;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tknetwork/tunnel/service/c_05$EventMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_Event;->getError()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    .line 14
    .line 15
    or-int/2addr v1, v2

    .line 16
    iput v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_Event;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_Event;->getInfo()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->info:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->name:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget v1, p1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->progress:I

    .line 43
    .line 44
    iput v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->progress:I

    .line 45
    .line 46
    iget v1, p1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->priority:I

    .line 47
    .line 48
    iput v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->priority:I

    .line 49
    .line 50
    iget v1, p1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->res_id:I

    .line 51
    .line 52
    iput v1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 53
    .line 54
    iget v3, p1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->icon_res_id:I

    .line 55
    .line 56
    iput v3, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->icon_res_id:I

    .line 57
    .line 58
    iget v3, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    .line 59
    .line 60
    iget p1, p1, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->flags:I

    .line 61
    .line 62
    or-int/2addr p1, v3

    .line 63
    iput p1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    .line 64
    .line 65
    const p1, 0x7f13007e

    .line 66
    .line 67
    .line 68
    if-ne v1, p1, :cond_2

    .line 69
    .line 70
    sget-object p1, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->connection_info()Lnet/openvpn/openvpn/ClientAPI_ConnectionInfo;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->conn_info:Lnet/openvpn/openvpn/ClientAPI_ConnectionInfo;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const p1, 0x7f130320

    .line 82
    .line 83
    .line 84
    iput p1, v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 85
    .line 86
    :cond_2
    :goto_0
    sget-object p1, Lcom/tknetwork/tunnel/service/c_05;->mHandler:Landroid/os/Handler;

    .line 87
    .line 88
    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public external_pki_cert_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->getAlias()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {p0, v2}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setError(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setInvalidAlias(Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception v2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    array-length v3, v2

    .line 23
    if-lt v3, v1, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aget-object v3, v2, v3

    .line 27
    .line 28
    invoke-direct {p0, v3}, Lcom/tknetwork/tunnel/service/c_05;->cert_format_pem(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p1, v3}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->setCert(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    array-length v3, v2

    .line 36
    if-lt v3, v0, :cond_3

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    :goto_0
    array-length v5, v2

    .line 45
    if-ge v4, v5, :cond_1

    .line 46
    .line 47
    aget-object v5, v2, v4

    .line 48
    .line 49
    invoke-direct {p0, v5}, Lcom/tknetwork/tunnel/service/c_05;->cert_format_pem(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    add-int/2addr v4, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->setSupportingChain(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setError(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setInvalidAlias(Z)V

    .line 70
    .line 71
    .line 72
    const v2, 0x7f1300a8

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/service/c_05;->resString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setErrorText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v0, v0, [J

    .line 86
    .line 87
    fill-array-data v0, :array_0

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    const/4 v3, 0x6

    .line 99
    new-array v3, v3, [J

    .line 100
    .line 101
    fill-array-data v3, :array_1

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setError(Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setInvalidAlias(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setErrorText(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_2
    return-void

    .line 124
    nop

    .line 125
    :array_0
    .array-data 8
        -0x3d3285b5cf4ab34eL    # -6.482213584348139E13
        -0x48a10cba323217deL    # -5.551434913552249E-42
    .end array-data

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
    :array_1
    .array-data 8
        -0x568ffc35626b453eL
        0x4aec75f84b58918fL    # 8.518765550350475E52
        -0x597edea2b0b06dacL
        0x75fd3a747240f9a3L    # 2.2469862338038108E260
        0x706c7bb320d8a791L    # 3.537654918387006E233
        -0x77f1302d85478480L    # -7.290394750109225E-270
    .end array-data
.end method

.method public external_pki_sign_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x2

    .line 5
    :try_start_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v5, 0x7

    .line 8
    new-array v5, v5, [J

    .line 9
    .line 10
    fill-array-data v5, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;->getData()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {v5, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/c_05;->jellyBeanHack:Lnet/openvpn/openvpn/JellyBeanHack;

    .line 29
    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v4, v3, [J

    .line 35
    .line 36
    fill-array-data v4, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v4, v2, [J

    .line 48
    .line 49
    fill-array-data v4, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->getAlias()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p0, v0}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v2, v2, [J

    .line 71
    .line 72
    fill-array-data v2, :array_3

    .line 73
    .line 74
    .line 75
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :cond_0
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setError(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setInvalidAlias(Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v7, v3, [J

    .line 107
    .line 108
    fill-array-data v7, :array_4

    .line 109
    .line 110
    .line 111
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v2, v2, [J

    .line 120
    .line 121
    fill-array-data v2, :array_5

    .line 122
    .line 123
    .line 124
    invoke-direct {v6, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_05;->jellyBeanHack:Lnet/openvpn/openvpn/JellyBeanHack;

    .line 131
    .line 132
    invoke-virtual {v2}, Lnet/openvpn/openvpn/JellyBeanHack;->enabled()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->jellyBeanHack:Lnet/openvpn/openvpn/JellyBeanHack;

    .line 139
    .line 140
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->getAlias()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v0, p0, v2}, Lnet/openvpn/openvpn/JellyBeanHack;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_2

    .line 149
    .line 150
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_05;->jellyBeanHack:Lnet/openvpn/openvpn/JellyBeanHack;

    .line 151
    .line 152
    invoke-virtual {v2, v0, v5}, Lnet/openvpn/openvpn/JellyBeanHack;->rsaSign(Ljava/security/PrivateKey;[B)[B

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setError(Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setInvalidAlias(Z)V

    .line 161
    .line 162
    .line 163
    :goto_0
    const/4 v0, 0x0

    .line 164
    :goto_1
    if-eqz v0, :cond_4

    .line 165
    .line 166
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;->setSig(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    const/4 v5, 0x5

    .line 177
    new-array v5, v5, [J

    .line 178
    .line 179
    fill-array-data v5, :array_6

    .line 180
    .line 181
    .line 182
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v6, v3, [J

    .line 192
    .line 193
    fill-array-data v6, :array_7

    .line 194
    .line 195
    .line 196
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    new-array v5, v1, [Ljava/lang/Object;

    .line 203
    .line 204
    aput-object v2, v5, v0

    .line 205
    .line 206
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setError(Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setInvalidAlias(Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setErrorText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :goto_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v3, v3, [J

    .line 222
    .line 223
    fill-array-data v3, :array_8

    .line 224
    .line 225
    .line 226
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 233
    .line 234
    const/4 v3, 0x6

    .line 235
    new-array v3, v3, [J

    .line 236
    .line 237
    fill-array-data v3, :array_9

    .line 238
    .line 239
    .line 240
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setError(Z)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setInvalidAlias(Z)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->setErrorText(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_4
    :goto_3
    return-void

    .line 260
    nop

    .line 261
    :array_0
    .array-data 8
        -0x5558ae774ed6e53aL    # -3.25350858707556E-103
        0x4eecad1dea37424L
        0x506f2e07c0ab317dL    # 2.8882998840573976E79
        -0x79895b33f0b5801bL    # -1.596732412410435E-277
        -0x15119767a3a5c852L    # -1.2203463457779237E207
        0x3fe3c50227f6e255L    # 0.6177988796762955
        -0x500544fd36f7a3a5L    # -1.4428075044959523E-77
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
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_1
    .array-data 8
        0x62b19d8be6f159aL
        0x1300bf1213872517L    # 3.795192475281957E-217
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_2
    .array-data 8
        -0x10d049f3864f7fa6L    # -3.7561111242624422E227
        -0x7cfed1a0f907a0cL
        0x45366d2a4eb8903bL    # 2.7111886413848043E25
        0x5aa64fd8b17277c1L    # 4.8330882478447895E128
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
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
    .line 322
    .line 323
    .line 324
    .line 325
    :array_3
    .array-data 8
        -0x2d6f73ba6cf43d04L    # -5.266990973627427E89
        0x59bd0ab56c6e6a9bL    # 1.9198275597468507E124
        -0x515c74aabf87a234L    # -5.030262662877295E-84
        -0x611834c9a7fb22d6L
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
    :array_4
    .array-data 8
        -0x25c423bb4cdc81adL    # -4.714828569359808E126
        -0x34df9eac96cac91aL    # -7.844547273953705E53
    .end array-data

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
    :array_5
    .array-data 8
        -0x7b1790832418f25dL
        -0x533a3e101bafcd3eL    # -5.215328542602948E-93
        0x72953732b79d1314L    # 9.053826853363485E243
        -0x265325269de3324fL    # -9.537345162813999E123
    .end array-data

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
    :array_6
    .array-data 8
        0x7f05aabe35a31c02L    # 7.429228590890859E303
        -0x6be4baf1b6e2bcdeL    # -8.10035785594317E-212
        0x5cd6f9be1f761658L    # 1.710031334850034E139
        0x2c8a19e4650bae56L    # 3.9103070702586826E-94
        -0x1c16737492fae50dL    # -1.9747015744020934E173
    .end array-data

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
    :array_7
    .array-data 8
        -0x6ad2b5bf0a669c4cL    # -1.140389356912069E-206
        0x5c25a95663909c9fL    # 7.872199224307215E135
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
    :array_8
    .array-data 8
        0x4af768df3e05a549L    # 1.4013747678346674E53
        0x3a3a72d2acce329aL    # 3.3382734505485136E-28
    .end array-data

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
    :array_9
    .array-data 8
        0x194fff92d17eb1faL    # 9.192636109014742E-187
        -0x99257ec0e9c1c86L
        0x640968d4a7a37b9eL    # 7.855675704744082E173
        -0x2a327382f158e27bL    # -2.1178154194957696E105
        0x2859621278bbf5daL
        0x200b0f59072aa5fcL
    .end array-data
.end method

.method public gen_proxy_context_expired_event()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, v2, v0, v1}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x5bdad4831e873f45L    # 3.047058492459318E134
        -0x57913426e9be84bL
        -0xb3356cb007c80d6L
        -0x6b93189f5254cff1L
    .end array-data
.end method

.method public gen_ui_reset_event(ZLcom/tknetwork/tunnel/service/c_05$EventReceiver;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x10

    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [J

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v0, p0

    .line 28
    move-object v5, p2

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/tknetwork/tunnel/service/c_05;->gen_event(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tknetwork/tunnel/service/c_05$EventReceiver;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 8
        0x8bcba6b314c9d5bL
        -0x2ce43374f50df8bbL    # -2.265102249169893E92
    .end array-data
.end method

.method public get_connection_stats()Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;
    .locals 8

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 7
    .line 8
    invoke-virtual {v1}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->transport_stats()Lnet/openvpn/openvpn/ClientAPI_TransportStats;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, -0x1

    .line 13
    iput v2, v0, Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;->last_packet_received:I

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iget-wide v6, p0, Lcom/tknetwork/tunnel/service/c_05;->thread_started:J

    .line 25
    .line 26
    sub-long/2addr v4, v6

    .line 27
    long-to-int v2, v4

    .line 28
    div-int/lit16 v2, v2, 0x3e8

    .line 29
    .line 30
    iput v2, v0, Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;->duration:I

    .line 31
    .line 32
    if-gez v2, :cond_0

    .line 33
    .line 34
    iput v3, v0, Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;->duration:I

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v1}, Lnet/openvpn/openvpn/ClientAPI_TransportStats;->getBytesIn()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iput-wide v2, v0, Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;->bytes_in:J

    .line 41
    .line 42
    invoke-virtual {v1}, Lnet/openvpn/openvpn/ClientAPI_TransportStats;->getBytesOut()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iput-wide v2, v0, Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;->bytes_out:J

    .line 47
    .line 48
    invoke-virtual {v1}, Lnet/openvpn/openvpn/ClientAPI_TransportStats;->getLastPacketReceived()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ltz v2, :cond_1

    .line 53
    .line 54
    shr-int/lit8 v2, v2, 0xa

    .line 55
    .line 56
    iput v2, v0, Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;->last_packet_received:I

    .line 57
    .line 58
    :cond_1
    invoke-virtual {v1}, Lnet/openvpn/openvpn/ClientAPI_TransportStats;->getBytesIn()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {v1}, Lnet/openvpn/openvpn/ClientAPI_TransportStats;->getBytesOut()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-static {v2, v3, v4, v5}, Lde/blinkt/openvpn/core/TkLogStatus;->updateByteCount(JJ)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iput v3, v0, Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;->duration:I

    .line 71
    .line 72
    const-wide/16 v1, 0x0

    .line 73
    .line 74
    iput-wide v1, v0, Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;->bytes_in:J

    .line 75
    .line 76
    iput-wide v1, v0, Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;->bytes_out:J

    .line 77
    .line 78
    :goto_0
    return-object v0
.end method

.method public get_current_profile()Lcom/tknetwork/tunnel/service/c_05$Profile;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->current_profile:Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->get_profile_list()Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-lt v1, v2, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public get_last_event()Lcom/tknetwork/tunnel/service/c_05$EventMsg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->last_event:Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->is_expired()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->last_event:Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method

.method public get_last_event_prof_manage()Lcom/tknetwork/tunnel/service/c_05$EventMsg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->last_event_prof_manage:Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->is_expired()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->last_event_prof_manage:Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method

.method public get_profile_list()Lcom/tknetwork/tunnel/service/c_05$ProfileList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->profile_list:Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->refresh_profile_list()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->profile_list:Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 9
    .line 10
    return-object v0
.end method

.method public get_tunnel_bytes_per_cpu_second()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->cpu_usage:Lnet/openvpn/openvpn/CPUUsage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/openvpn/openvpn/CPUUsage;->usage()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmpl-double v4, v0, v2

    .line 12
    .line 13
    if-lez v4, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 16
    .line 17
    invoke-virtual {v2}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->tun_stats()Lnet/openvpn/openvpn/ClientAPI_InterfaceStats;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lnet/openvpn/openvpn/ClientAPI_InterfaceStats;->getBytesIn()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-virtual {v2}, Lnet/openvpn/openvpn/ClientAPI_InterfaceStats;->getBytesOut()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    add-long/2addr v5, v3

    .line 30
    long-to-double v2, v5

    .line 31
    div-double/2addr v2, v0

    .line 32
    double-to-long v0, v2

    .line 33
    return-wide v0

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x2

    .line 6
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->get_last_event()Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    iget v6, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    if-eq v6, v3, :cond_1

    .line 13
    .line 14
    if-eq v6, v4, :cond_0

    .line 15
    .line 16
    const/16 p1, 0x63

    .line 17
    .line 18
    if-eq v6, p1, :cond_12

    .line 19
    .line 20
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v0, v4, [J

    .line 23
    .line 24
    fill-array-data v0, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v0, v1, [J

    .line 36
    .line 37
    fill-array-data v0, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lcom/tknetwork/tunnel/service/c_05$LogMsg;

    .line 51
    .line 52
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v1, v4, [J

    .line 55
    .line 56
    fill-array-data v1, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    iget-object v0, p1, Lcom/tknetwork/tunnel/service/c_05$LogMsg;->line:Ljava/lang/String;

    .line 66
    .line 67
    new-array v1, v3, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v0, v1, v2

    .line 70
    .line 71
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v2, v4, [J

    .line 74
    .line 75
    fill-array-data v2, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_05;->log_message(Lcom/tknetwork/tunnel/service/c_05$LogMsg;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 96
    .line 97
    iget v6, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 98
    .line 99
    const/4 v7, 0x0

    .line 100
    sparse-switch v6, :sswitch_data_0

    .line 101
    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :sswitch_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v8, v3, [J

    .line 108
    .line 109
    const-wide v9, 0x4f45c866aa5aef47L    # 7.697381096952435E73

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    aput-wide v9, v8, v2

    .line 115
    .line 116
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    iput-object v6, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->info:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/c_05;->current_profile:Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 126
    .line 127
    if-eqz v6, :cond_4

    .line 128
    .line 129
    invoke-virtual {v6}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :sswitch_1
    iput-boolean v3, p0, Lcom/tknetwork/tunnel/service/c_05;->paused:Z

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :sswitch_2
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/c_05;->current_profile:Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 139
    .line 140
    if-eqz v6, :cond_4

    .line 141
    .line 142
    new-instance v6, Lnet/openvpn/openvpn/ClientAPI_DynamicChallenge;

    .line 143
    .line 144
    invoke-direct {v6}, Lnet/openvpn/openvpn/ClientAPI_DynamicChallenge;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v8, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->info:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v8, v6}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->parse_dynamic_challenge(Ljava/lang/String;Lnet/openvpn/openvpn/ClientAPI_DynamicChallenge;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_4

    .line 154
    .line 155
    new-instance v8, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;

    .line 156
    .line 157
    invoke-direct {v8, v2}, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;-><init>(I)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 161
    .line 162
    .line 163
    move-result-wide v9

    .line 164
    const-wide/32 v11, 0xea60

    .line 165
    .line 166
    .line 167
    add-long/2addr v9, v11

    .line 168
    iput-wide v9, v8, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->expires:J

    .line 169
    .line 170
    iget-object v9, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->info:Ljava/lang/String;

    .line 171
    .line 172
    iput-object v9, v8, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->cookie:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v9, v8, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

    .line 175
    .line 176
    invoke-virtual {v6}, Lnet/openvpn/openvpn/ClientAPI_DynamicChallenge;->getChallenge()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-static {v9, v10}, Lcom/tknetwork/tunnel/service/c_05$Challenge;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_05$Challenge;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v9, v8, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

    .line 184
    .line 185
    invoke-virtual {v6}, Lnet/openvpn/openvpn/ClientAPI_DynamicChallenge;->getEcho()Z

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    invoke-static {v9, v10}, Lcom/tknetwork/tunnel/service/c_05$Challenge;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$Challenge;Z)V

    .line 190
    .line 191
    .line 192
    iget-object v9, v8, Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;->challenge:Lcom/tknetwork/tunnel/service/c_05$Challenge;

    .line 193
    .line 194
    invoke-virtual {v6}, Lnet/openvpn/openvpn/ClientAPI_DynamicChallenge;->getResponseRequired()Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    invoke-static {v9, v6}, Lcom/tknetwork/tunnel/service/c_05$Challenge;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05$Challenge;Z)V

    .line 199
    .line 200
    .line 201
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/c_05;->current_profile:Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 202
    .line 203
    invoke-static {v6, v8}, Lcom/tknetwork/tunnel/service/c_05$Profile;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05$Profile;Lcom/tknetwork/tunnel/service/c_05$DynamicChallenge;)V

    .line 204
    .line 205
    .line 206
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    new-array v8, v3, [J

    .line 209
    .line 210
    const-wide v9, -0x2f56db670a9e26fL

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    aput-wide v9, v8, v2

    .line 216
    .line 217
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    iput-object v6, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->info:Ljava/lang/String;

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :sswitch_3
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 228
    .line 229
    new-array v8, v0, [J

    .line 230
    .line 231
    fill-array-data v8, :array_4

    .line 232
    .line 233
    .line 234
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 242
    .line 243
    new-array v9, v0, [J

    .line 244
    .line 245
    fill-array-data v9, :array_5

    .line 246
    .line 247
    .line 248
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-static {v6, v8}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    if-eqz v5, :cond_4

    .line 259
    .line 260
    iget v6, v5, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    .line 261
    .line 262
    and-int/2addr v6, v3

    .line 263
    if-eqz v6, :cond_2

    .line 264
    .line 265
    iput v2, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->priority:I

    .line 266
    .line 267
    :cond_2
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/c_05;->current_profile:Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 268
    .line 269
    if-eqz v6, :cond_4

    .line 270
    .line 271
    iget v8, v5, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 272
    .line 273
    const v9, 0x7f1301ca

    .line 274
    .line 275
    .line 276
    if-eq v8, v9, :cond_4

    .line 277
    .line 278
    const v9, 0x7f1300a1

    .line 279
    .line 280
    .line 281
    if-eq v8, v9, :cond_4

    .line 282
    .line 283
    invoke-virtual {v6}, Lcom/tknetwork/tunnel/service/c_05$Profile;->reset_proxy_context()V

    .line 284
    .line 285
    .line 286
    goto :goto_0

    .line 287
    :sswitch_4
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/c_05;->cpu_usage:Lnet/openvpn/openvpn/CPUUsage;

    .line 288
    .line 289
    if-eqz v6, :cond_3

    .line 290
    .line 291
    invoke-virtual {v6}, Lnet/openvpn/openvpn/CPUUsage;->stop()V

    .line 292
    .line 293
    .line 294
    :cond_3
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->stop_notification()V

    .line 295
    .line 296
    .line 297
    iget-boolean v6, p0, Lcom/tknetwork/tunnel/service/c_05;->shutdown_pending:Z

    .line 298
    .line 299
    if-nez v6, :cond_4

    .line 300
    .line 301
    invoke-virtual {p0, v7}, Lcom/tknetwork/tunnel/service/c_05;->set_autostart_profile_name(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_0

    .line 305
    :sswitch_5
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/c_05;->current_profile:Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 306
    .line 307
    if-eqz v6, :cond_4

    .line 308
    .line 309
    invoke-virtual {v6}, Lcom/tknetwork/tunnel/service/c_05$Profile;->reset_proxy_context()V

    .line 310
    .line 311
    .line 312
    goto :goto_0

    .line 313
    :sswitch_6
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/c_05;->current_profile:Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 314
    .line 315
    if-eqz v6, :cond_4

    .line 316
    .line 317
    invoke-virtual {v6}, Lcom/tknetwork/tunnel/service/c_05$Profile;->get_name()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    :cond_4
    :goto_0
    iget v6, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 321
    .line 322
    const v8, 0x7f1300a7

    .line 323
    .line 324
    .line 325
    if-ne v6, v8, :cond_5

    .line 326
    .line 327
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/c_05;->profile_list:Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 328
    .line 329
    if-eqz v6, :cond_5

    .line 330
    .line 331
    iget-object v8, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->info:Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {v6, v8}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_05$ProfileList;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    :cond_5
    iget v6, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 337
    .line 338
    const v8, 0x7f13007e

    .line 339
    .line 340
    .line 341
    if-ne v6, v8, :cond_6

    .line 342
    .line 343
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 344
    .line 345
    new-array v0, v0, [J

    .line 346
    .line 347
    fill-array-data v0, :array_6

    .line 348
    .line 349
    .line 350
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 358
    .line 359
    new-array v9, v1, [J

    .line 360
    .line 361
    fill-array-data v9, :array_7

    .line 362
    .line 363
    .line 364
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-static {v0, v6}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    :cond_6
    iget v0, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 375
    .line 376
    if-ne v0, v8, :cond_8

    .line 377
    .line 378
    if-eqz v5, :cond_7

    .line 379
    .line 380
    iget v6, v5, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 381
    .line 382
    if-eq v6, v8, :cond_8

    .line 383
    .line 384
    :cond_7
    sget-object v5, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->TO_CONNECTED:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 385
    .line 386
    iput-object v5, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->transition:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 387
    .line 388
    goto :goto_1

    .line 389
    :cond_8
    if-eq v0, v8, :cond_9

    .line 390
    .line 391
    if-eqz v5, :cond_9

    .line 392
    .line 393
    iget v5, v5, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 394
    .line 395
    if-ne v5, v8, :cond_9

    .line 396
    .line 397
    sget-object v5, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->TO_DISCONNECTED:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 398
    .line 399
    iput-object v5, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->transition:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 400
    .line 401
    :cond_9
    :goto_1
    iget v5, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    .line 402
    .line 403
    and-int/2addr v1, v5

    .line 404
    if-eqz v1, :cond_a

    .line 405
    .line 406
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05;->last_event_prof_manage:Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 407
    .line 408
    goto :goto_2

    .line 409
    :cond_a
    iget v1, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->priority:I

    .line 410
    .line 411
    if-lt v1, v4, :cond_b

    .line 412
    .line 413
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05;->last_event:Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 414
    .line 415
    :cond_b
    :goto_2
    const v1, 0x7f13031e

    .line 416
    .line 417
    .line 418
    if-eq v0, v1, :cond_c

    .line 419
    .line 420
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v7

    .line 424
    :cond_c
    if-eqz v7, :cond_d

    .line 425
    .line 426
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 427
    .line 428
    new-array v1, v4, [J

    .line 429
    .line 430
    fill-array-data v1, :array_8

    .line 431
    .line 432
    .line 433
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    :cond_d
    if-eqz v7, :cond_e

    .line 440
    .line 441
    invoke-static {v7}, Lcom/tknetwork/tunnel/service/c_05;->log_message(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    :cond_e
    iget v0, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 445
    .line 446
    const v1, 0x7f13008f

    .line 447
    .line 448
    .line 449
    if-ne v0, v1, :cond_f

    .line 450
    .line 451
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_05;->get_tunnel_bytes_per_cpu_second()J

    .line 452
    .line 453
    .line 454
    move-result-wide v0

    .line 455
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    new-array v1, v3, [Ljava/lang/Object;

    .line 460
    .line 461
    aput-object v0, v1, v2

    .line 462
    .line 463
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 464
    .line 465
    const/4 v2, 0x5

    .line 466
    new-array v2, v2, [J

    .line 467
    .line 468
    fill-array-data v2, :array_9

    .line 469
    .line 470
    .line 471
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-static {v0}, Lcom/tknetwork/tunnel/service/c_05;->log_message(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :cond_f
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_05;->update_notification_event(Lcom/tknetwork/tunnel/service/c_05$EventMsg;)V

    .line 486
    .line 487
    .line 488
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->clients:Ljava/util/ArrayDeque;

    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    :cond_10
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    if-eqz v1, :cond_12

    .line 499
    .line 500
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    check-cast v1, Lcom/tknetwork/tunnel/service/c_05$EventReceiver;

    .line 505
    .line 506
    iget v2, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->flags:I

    .line 507
    .line 508
    and-int/lit8 v2, v2, 0x10

    .line 509
    .line 510
    if-eqz v2, :cond_11

    .line 511
    .line 512
    iget-object v2, p1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->sender:Lcom/tknetwork/tunnel/service/c_05$EventReceiver;

    .line 513
    .line 514
    if-eq v1, v2, :cond_10

    .line 515
    .line 516
    :cond_11
    invoke-interface {v1, p1}, Lcom/tknetwork/tunnel/service/c_05$EventReceiver;->event(Lcom/tknetwork/tunnel/service/c_05$EventMsg;)V

    .line 517
    .line 518
    .line 519
    goto :goto_3

    .line 520
    :cond_12
    :goto_4
    return v3

    .line 521
    :sswitch_data_0
    .sparse-switch
        0x7f130032 -> :sswitch_6
        0x7f13007e -> :sswitch_5
        0x7f13008f -> :sswitch_4
        0x7f13009e -> :sswitch_3
        0x7f1300a1 -> :sswitch_2
        0x7f1301a7 -> :sswitch_1
        0x7f1301ab -> :sswitch_0
    .end sparse-switch

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
    :array_0
    .array-data 8
        -0x75bda39a149545L
        -0x6a7d2bf8dc387e9cL
    .end array-data

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
    .line 562
    .line 563
    :array_1
    .array-data 8
        0x7128d080ac240ceaL    # 1.2623840331876084E237
        0x215b888eadc5250cL    # 5.383223531297006E-148
        -0x5d90bea2c8b62cd0L    # -8.009697926417099E-143
        -0x6e18055fbb9293c4L
    .end array-data

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
    :array_2
    .array-data 8
        0x407273ae8b558650L    # 295.23011334808416
        -0x277d555ffc615545L    # -2.3535926754570285E118
    .end array-data

    .line 584
    .line 585
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
    :array_3
    .array-data 8
        0x690a679a8c65104cL
        -0x33ce46954806e273L    # -1.1125713791800616E59
    .end array-data

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
    .line 606
    .line 607
    :array_4
    .array-data 8
        0x410edbb26523cf70L    # 252790.29938470898
        0x53474cb0d659ebe4L    # 1.5187862109636084E93
        -0x3bfb429e75eed359L    # -4.782265270330857E19
    .end array-data

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
    :array_5
    .array-data 8
        0x33ffd55a81ee785L
        -0x28e5921b5c6f272bL    # -3.9724970261833304E111
        0x525e749abf423a03L    # 6.0584883959943104E88
    .end array-data

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
    .line 638
    .line 639
    :array_6
    .array-data 8
        0x643787d1f0bd9779L    # 5.819819682437643E174
        -0x65f7e62ff132a93dL
        0x2aad9d3e766b7bf7L    # 4.131920955602447E-103
    .end array-data

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
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :array_7
    .array-data 8
        0x6e359d0ae9d047d3L    # 7.81269481092364E222
        0x5a8cbe2c33b2b6deL    # 1.5565324668248259E128
        0x6b2d111ee69fd316L    # 1.8664029205449545E208
        0x4094eb5ff3a1c37eL    # 1338.8437028194016
    .end array-data

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
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_8
    .array-data 8
        -0x3c7259c4b397e132L    # -2.670575340730352E17
        0x3da96a440283e8edL    # 1.1557449510100104E-11
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
    :array_9
    .array-data 8
        0x4a2dac503edc8e94L    # 2.1683641715403567E49
        0x5ea1ca1d463fa8d6L    # 7.108399939974675E147
        -0x27da5a7f08559c3bL    # -4.264577465635393E116
        -0x16c60ffefc0d3e27L    # -7.755423692265738E198
        -0x6eadde2910df9e99L    # -3.061635004399476E-225
    .end array-data
.end method

.method public is_active()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    .line 2
    .line 3
    return v0
.end method

.method public jellyBeanHackPurge()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->jellyBeanHack:Lnet/openvpn/openvpn/JellyBeanHack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/openvpn/openvpn/JellyBeanHack;->resetPrivateKey()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public log(Lnet/openvpn/openvpn/ClientAPI_LogInfo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$LogMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tknetwork/tunnel/service/c_05$LogMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ClientAPI_LogInfo;->getText()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, v0, Lcom/tknetwork/tunnel/service/c_05$LogMsg;->line:Ljava/lang/String;

    .line 11
    .line 12
    sget-object p1, Lcom/tknetwork/tunnel/service/c_05;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public merge_parse_profile(Ljava/lang/String;Ljava/lang/String;)Lcom/tknetwork/tunnel/service/c_05$MergedProfile;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :cond_0
    invoke-static {p2}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->merge_config_string_static(Ljava/lang/String;)Lnet/openvpn/openvpn/ClientAPI_MergeConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v3, v0, [J

    .line 20
    .line 21
    fill-array-data v3, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->getStatus()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v3, 0x4

    .line 48
    new-array v3, v3, [J

    .line 49
    .line 50
    fill-array-data v3, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-virtual {p2}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->getProfileContent()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance v1, Lnet/openvpn/openvpn/ClientAPI_Config;

    .line 71
    .line 72
    invoke-direct {v1}, Lnet/openvpn/openvpn/ClientAPI_Config;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p2}, Lnet/openvpn/openvpn/ClientAPI_Config;->setContent(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/tknetwork/tunnel/service/c_05$MergedProfile;

    .line 79
    .line 80
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v0, v0, [J

    .line 83
    .line 84
    fill-array-data v0, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v1}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->eval_config_static(Lnet/openvpn/openvpn/ClientAPI_Config;)Lnet/openvpn/openvpn/ClientAPI_EvalConfig;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-direct {v2, p0, v0, p1, v1}, Lcom/tknetwork/tunnel/service/c_05$MergedProfile;-><init>(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Ljava/lang/String;Lnet/openvpn/openvpn/ClientAPI_EvalConfig;)V

    .line 99
    .line 100
    .line 101
    iput-object p2, v2, Lcom/tknetwork/tunnel/service/c_05$MergedProfile;->profile_content:Ljava/lang/String;

    .line 102
    .line 103
    return-object v2

    .line 104
    :cond_1
    new-instance v2, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;

    .line 105
    .line 106
    invoke-direct {v2}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_05;->event_info:Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lcom/tknetwork/tunnel/service/c_05$EventInfo;

    .line 116
    .line 117
    if-eqz v3, :cond_2

    .line 118
    .line 119
    iget v1, v3, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->res_id:I

    .line 120
    .line 121
    invoke-direct {p0, v1}, Lcom/tknetwork/tunnel/service/c_05;->resString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :cond_2
    const/4 v3, 0x1

    .line 126
    invoke-virtual {v2, v3}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->setError(Z)V

    .line 127
    .line 128
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v4, v0, [J

    .line 140
    .line 141
    fill-array-data v4, :array_3

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->getErrorText()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {v2, p2}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->setMessage(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance p2, Lcom/tknetwork/tunnel/service/c_05$MergedProfile;

    .line 169
    .line 170
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    new-array v0, v0, [J

    .line 173
    .line 174
    fill-array-data v0, :array_4

    .line 175
    .line 176
    .line 177
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p2, p0, v0, p1, v2}, Lcom/tknetwork/tunnel/service/c_05$MergedProfile;-><init>(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Ljava/lang/String;Lnet/openvpn/openvpn/ClientAPI_EvalConfig;)V

    .line 185
    .line 186
    .line 187
    return-object p2

    .line 188
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 189
    return-object p1

    .line 190
    nop

    .line 191
    :array_0
    .array-data 8
        -0x270e7bebac724bf3L    # -2.8269075888159364E120
        0x8c09eb8ff2c9000L
    .end array-data

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
    :array_1
    .array-data 8
        -0x3bc2e681259a7de1L    # -5.3679272396510036E20
        -0x9cb6060ddf80c9cL    # -2.536758279007306E261
        -0x4cfd70761bab4471L    # -5.639819631950688E-63
        0x57909df2563bdd50L    # 6.393967872938388E113
    .end array-data

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
    .line 222
    .line 223
    :array_2
    .array-data 8
        0x2c8ac84f505b0996L    # 4.012377945521652E-94
        0x63ee9f222d0eaa76L    # 2.3667676217787182E173
    .end array-data

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
    .line 234
    .line 235
    :array_3
    .array-data 8
        0x4f46fda44242c71fL    # 8.124241132039586E73
        0x4955d947fc996d88L    # 1.9489740441059374E45
    .end array-data

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
    :array_4
    .array-data 8
        -0x1f4cf9614888100aL    # -6.530433728553233E157
        0xa30f2f5be13e42dL
    .end array-data
.end method

.method public network_pause()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->paused:Z

    .line 7
    .line 8
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 9
    .line 10
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    const-wide v3, -0x7d81d47f7319d6c4L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    aput-wide v3, v0, v5

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->pause(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public network_reconnect(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->reconnect(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public network_resume()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->active:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->paused:Z

    .line 7
    .line 8
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->resume()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x4

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v6, v3, [J

    .line 14
    .line 15
    fill-array-data v6, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object p1, v2, v1

    .line 35
    .line 36
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v0, v0, [J

    .line 39
    .line 40
    fill-array-data v0, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v0, v3, [J

    .line 52
    .line 53
    fill-array-data v0, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05;->mBinder:Landroid/os/IBinder;

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object p1, v2, v1

    .line 72
    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v0, v0, [J

    .line 76
    .line 77
    fill-array-data v0, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    const/4 v1, 0x5

    .line 89
    new-array v1, v1, [J

    .line 90
    .line 91
    fill-array-data v1, :array_4

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    invoke-super {p0, p1}, Landroid/net/VpnService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :array_0
    .array-data 8
        0x2d783ff9160b54cfL    # 1.1904499863597465E-89
        -0x6b5651ecd80f7662L    # -3.905599441264427E-209
        -0x63c8d6a7c7b047c1L    # -9.364599839691544E-173
        0x83a262ed2bece08L    # 4.9497298239081E-269
    .end array-data

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
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_1
    .array-data 8
        0x6423cd54f902ef85L    # 2.4488279299122482E174
        -0x3d01d0dfa59bb8b0L    # -5.31004081456245E14
    .end array-data

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
    :array_2
    .array-data 8
        0x3f5271e0c50ce6f2L    # 0.0011257834450603657
        0x25d2b3b881cd8fe7L    # 1.726754809917733E-126
        0x8f79a7e29e81b71L
        0x4553250ffa806b62L    # 9.257845153700245E25
    .end array-data

    .line 142
    .line 143
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
    .line 160
    .line 161
    :array_3
    .array-data 8
        0x27bfa8d40c626dc7L    # 3.1386692599930897E-117
        -0x28a51b1b89bec946L    # -6.467785219327925E112
    .end array-data

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
    :array_4
    .array-data 8
        -0x70361f6dcdae8008L
        -0x58d32fd7872bcb7eL    # -5.579072303969722E-120
        -0x5a3c4c1bfb7aa64cL    # -9.095729478124558E-127
        -0x512bb7669f169ec6L    # -4.176437982258805E-83
        -0x304c8a1a9dd68a74L    # -8.80224837601548E75
    .end array-data
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/net/VpnService;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->crypto_self_test()V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    new-array v2, v1, [J

    .line 46
    .line 47
    fill-array-data v2, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/app/NotificationManager;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->mNotificationManager:Landroid/app/NotificationManager;

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->populate_event_info_map()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->register_connectivity_receiver()V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lnet/openvpn/openvpn/PrefUtil;

    .line 72
    .line 73
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-direct {v0, v2}, Lnet/openvpn/openvpn/PrefUtil;-><init>(Landroid/content/SharedPreferences;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 81
    .line 82
    new-instance v0, Lnet/openvpn/openvpn/PasswordUtil;

    .line 83
    .line 84
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v0, v2}, Lnet/openvpn/openvpn/PasswordUtil;-><init>(Landroid/content/SharedPreferences;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->pwds:Lnet/openvpn/openvpn/PasswordUtil;

    .line 92
    .line 93
    invoke-static {}, Lnet/openvpn/openvpn/JellyBeanHack;->newJellyBeanHack()Lnet/openvpn/openvpn/JellyBeanHack;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->jellyBeanHack:Lnet/openvpn/openvpn/JellyBeanHack;

    .line 98
    .line 99
    new-instance v0, Lnet/openvpn/openvpn/ProxyList;

    .line 100
    .line 101
    const v2, 0x7f1301cb

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/service/c_05;->resString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {v0, v2}, Lnet/openvpn/openvpn/ProxyList;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->proxy_list:Lnet/openvpn/openvpn/ProxyList;

    .line 112
    .line 113
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v1, v1, [J

    .line 116
    .line 117
    fill-array-data v1, :array_3

    .line 118
    .line 119
    .line 120
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, p0, v1}, Lnet/openvpn/openvpn/ProxyList;->set_backing_file(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05;->proxy_list:Lnet/openvpn/openvpn/ProxyList;

    .line 131
    .line 132
    invoke-virtual {v0}, Lnet/openvpn/openvpn/ProxyList;->load()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :array_0
    .array-data 8
        -0x7e8086ff1c0cfa25L
        -0x506e930f5254e1fcL    # -1.46962856480897E-79
    .end array-data

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
        -0x1476c22f36ae3dcaL
        0x1e9582fce20171eL
        0x5aea70ee176b207L
        0x288d63f0d428a449L
        0x3a237c2ee21fffd9L    # 1.2296820829896766E-28
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
    :array_2
    .array-data 8
        0x338a9da11c215fe9L    # 2.0703769263871272E-60
        -0x5cdbd56dfe0d75e0L
        -0x6654bb0d6ba76f7eL
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_3
    .array-data 8
        -0x6104edb54d06d024L
        -0x71d39f307fb854d2L
        0x6f69fc0b27fadb11L    # 4.924496653963042E228
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05;->shutdown_pending:Z

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->stop_thread()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->unregister_connectivity_receiver()V

    .line 36
    .line 37
    .line 38
    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x633559157ad2baaaL    # 8.056648948207532E169
        0x2d7b0f5ba1cd4762L    # 1.3284002962304278E-89
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_1
    .array-data 8
        0x18e02d1e4268a337L    # 7.261233270319581E-189
        0x325955ade61c7fb0L    # 3.758862737971297E-66
        -0x5357fafd8035357bL    # -1.4393836804825026E-93
        -0x10c5852714188d6cL    # -6.272961589822438E227
    .end array-data
.end method

.method public onRevoke()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->stop_thread()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 8
        0x5e608a50d727d6c8L    # 4.1307716116265064E146
        0x7bbaa75300b99528L    # 1.0146398501755977E288
    .end array-data

    .line 34
    :array_1
    .array-data 8
        0x3e280be7e03c031cL    # 2.799381839074955E-9
        -0x4f143084f6e4459fL    # -4.9188027642478596E-73
        0x457c747fecae7e66L    # 5.5040123603884276E26
        0x2a669d154a42e81cL
    .end array-data
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    .line 1
    const/4 p2, 0x3

    .line 2
    const/4 p3, 0x7

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x6

    .line 7
    const/4 v4, 0x5

    .line 8
    const/4 v5, 0x2

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    iput-object v6, p0, Lcom/tknetwork/tunnel/service/c_05;->bundle:Landroid/os/Bundle;

    .line 16
    .line 17
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v7, v2, [J

    .line 20
    .line 21
    fill-array-data v7, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    new-array v8, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object v7, v8, v0

    .line 38
    .line 39
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v10, v5, [J

    .line 42
    .line 43
    fill-array-data v10, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v10, v4, [J

    .line 55
    .line 56
    fill-array-data v10, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    if-eqz v7, :cond_1

    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    sparse-switch v8, :sswitch_data_0

    .line 76
    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :sswitch_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array p3, p3, [J

    .line 83
    .line 84
    fill-array-data p3, :array_3

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_0

    .line 99
    .line 100
    const/4 p2, 0x1

    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :sswitch_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array p2, p2, [J

    .line 106
    .line 107
    fill-array-data p2, :array_4

    .line 108
    .line 109
    .line 110
    invoke-direct {v1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_0

    .line 122
    .line 123
    const/4 p2, 0x7

    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :sswitch_2
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v1, v3, [J

    .line 129
    .line 130
    fill-array-data v1, :array_5

    .line 131
    .line 132
    .line 133
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    if-eqz p3, :cond_0

    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :sswitch_3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    const/16 p3, 0x8

    .line 151
    .line 152
    new-array p3, p3, [J

    .line 153
    .line 154
    fill-array-data p3, :array_6

    .line 155
    .line 156
    .line 157
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-eqz p2, :cond_0

    .line 169
    .line 170
    const/4 p2, 0x4

    .line 171
    goto :goto_1

    .line 172
    :sswitch_4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    new-array p3, v3, [J

    .line 175
    .line 176
    fill-array-data p3, :array_7

    .line 177
    .line 178
    .line 179
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    if-eqz p2, :cond_0

    .line 191
    .line 192
    const/4 p2, 0x6

    .line 193
    goto :goto_1

    .line 194
    :sswitch_5
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    new-array p3, v4, [J

    .line 197
    .line 198
    fill-array-data p3, :array_8

    .line 199
    .line 200
    .line 201
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_0

    .line 213
    .line 214
    const/4 p2, 0x2

    .line 215
    goto :goto_1

    .line 216
    :sswitch_6
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 217
    .line 218
    new-array p3, v3, [J

    .line 219
    .line 220
    fill-array-data p3, :array_9

    .line 221
    .line 222
    .line 223
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    if-eqz p2, :cond_0

    .line 235
    .line 236
    const/4 p2, 0x5

    .line 237
    goto :goto_1

    .line 238
    :sswitch_7
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 239
    .line 240
    new-array p3, v4, [J

    .line 241
    .line 242
    fill-array-data p3, :array_a

    .line 243
    .line 244
    .line 245
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    if-eqz p2, :cond_0

    .line 257
    .line 258
    const/4 p2, 0x0

    .line 259
    goto :goto_1

    .line 260
    :cond_0
    :goto_0
    const/4 p2, -0x1

    .line 261
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :pswitch_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05;->delete_profiles()V

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :pswitch_1
    invoke-direct {p0, v6, p1}, Lcom/tknetwork/tunnel/service/c_05;->rename_profile_action(Ljava/lang/String;Landroid/content/Intent;)V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :pswitch_2
    invoke-direct {p0, v6, p1}, Lcom/tknetwork/tunnel/service/c_05;->delete_profile_action(Ljava/lang/String;Landroid/content/Intent;)V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :pswitch_3
    invoke-direct {p0, v6, p1}, Lcom/tknetwork/tunnel/service/c_05;->import_profile_via_path_action(Ljava/lang/String;Landroid/content/Intent;)V

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :pswitch_4
    invoke-direct {p0, v6, p1}, Lcom/tknetwork/tunnel/service/c_05;->import_profile_action(Ljava/lang/String;Landroid/content/Intent;)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :pswitch_5
    invoke-direct {p0, v6, p1}, Lcom/tknetwork/tunnel/service/c_05;->disconnect_action(Ljava/lang/String;Landroid/content/Intent;)V

    .line 286
    .line 287
    .line 288
    goto :goto_2

    .line 289
    :pswitch_6
    invoke-direct {p0, v6, p1}, Lcom/tknetwork/tunnel/service/c_05;->submit_proxy_creds_action(Ljava/lang/String;Landroid/content/Intent;)V

    .line 290
    .line 291
    .line 292
    goto :goto_2

    .line 293
    :pswitch_7
    invoke-static {p0}, Lcom/tknetwork/tunnel/utils/VPNUtil;->setVPNProtectListener(Lcom/tknetwork/tunnel/utils/VPNUtil$VPNProtectListener;)V

    .line 294
    .line 295
    .line 296
    invoke-static {p0}, Lcom/tknetwork/tunnel/utils/VPNUtil;->setVPNService(Lcom/tknetwork/tunnel/service/c_05;)V

    .line 297
    .line 298
    .line 299
    invoke-static {p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    sput-object p2, Lcom/tknetwork/tunnel/service/c_05;->mConfigUtil:Lconfig/ConfigUtil;

    .line 304
    .line 305
    invoke-direct {p0, v6, p1, v0}, Lcom/tknetwork/tunnel/service/c_05;->connect_action(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 306
    .line 307
    .line 308
    :cond_1
    :goto_2
    return v5

    .line 309
    :sswitch_data_0
    .sparse-switch
        -0x7eb18f8f -> :sswitch_7
        -0x49d82a92 -> :sswitch_6
        -0x2b171c6b -> :sswitch_5
        0x1e174401 -> :sswitch_4
        0x380c0a96 -> :sswitch_3
        0x4aba2968 -> :sswitch_2
        0x4bfb03fe -> :sswitch_1
        0x6918a67d -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        -0x759b6eea01c9f75eL
        0x7e3c28f65c7dd183L    # 1.1786598519332053E300
        0x7b9e256bf24a55f7L    # 2.8689841267272117E287
        0x70d8a54a787bba5cL    # 3.918115309312484E235
    .end array-data

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
    .line 382
    .line 383
    :array_1
    .array-data 8
        -0x12b424789f7fee17L    # -3.0730494573907206E218
        -0x31925f8b4d793297L    # -6.389891412221121E69
    .end array-data

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
    :array_2
    .array-data 8
        0x57b6365783c27c1eL    # 3.418781692134434E114
        0x1b8187a4d34d2020L    # 3.460755859103212E-176
        0x1333908b36c29ba2L    # 3.547109807215821E-216
        0x75544957973b5b25L    # 1.5230118593403856E257
        -0x5b9621b3cca869c0L    # -2.847217613868117E-133
    .end array-data

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
    :array_3
    .array-data 8
        -0x67a6aac15f623397L    # -2.221003098259119E-191
        0x2ca1c5f15f6608d2L    # 1.0650679955917955E-93
        -0x8cd7933482f631aL
        0x2d922248a70d6770L    # 3.560844540907886E-89
        -0x2cd270140d21d96eL    # -4.817540224149604E92
        0x5307f830634922f2L    # 9.765342016485543E91
        -0x4e921a4f5fea6d34L    # -1.3536984353488966E-70
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
    :array_4
    .array-data 8
        -0x56ca0d8cecc89340L    # -3.650380307782604E-110
        -0x782f7826e1c88140L    # -4.88915738937781E-271
        0x28a25f38aac797d9L    # 5.968251124635873E-113
    .end array-data

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
    :array_5
    .array-data 8
        -0x36d639f8211e6d5dL    # -2.8738477040708928E44
        0x74fb1efdf78ba0ecL    # 3.18143491951884E255
        0x1a4a2125e47b381cL
        -0x6b43a36f55dd59e7L    # -8.626874419159673E-209
        0x563b6feece2d21faL    # 2.5170906613189063E107
        -0x417dc66a7bcfcd0cL    # -1.3578636712287095E-7
    .end array-data

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
    .line 494
    .line 495
    :array_6
    .array-data 8
        -0x87f619a56015427L    # -4.286908596999999E267
        0x2cb7aee55c03b056L    # 2.8384516541152626E-93
        0x529e04abdd3e5db7L    # 9.554414059679261E89
        -0x1640ccdd686988b4L    # -2.3881862162170704E201
        -0x7bd61dcf3506b28eL    # -1.3280001542166887E-288
        0xa61d3c5283baf4aL
        -0x4de92bc0361c3260L    # -2.116945799182555E-67
        0x6cfc2fda4ce9cf81L    # 9.716829705591699E216
    .end array-data

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
    :array_7
    .array-data 8
        0x73dab3b57d0156cfL    # 1.1948682343107456E250
        -0x776825ac4c24a4c1L    # -2.8896413852805E-267
        0x508bc683351a4487L    # 1.0291763766058374E80
        -0xfc196f73b78918eL    # -4.72125254704488E232
        0x3f8228235b06910L
        -0x7e0a6dd4cb3dd9c0L
    .end array-data

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
    :array_8
    .array-data 8
        -0x7efc64914316d581L    # -8.934886556926512E-304
        0x6916de07417d5429L    # 1.709354028096252E198
        0x3d5125379275fd8cL    # 2.436504930350958E-13
        -0xb5aca266ef32fc5L    # -7.775247435272347E253
        -0x2144ffc621a89c04L
    .end array-data

    .line 560
    .line 561
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
    :array_9
    .array-data 8
        0x5b3035a58ac2fd4fL    # 1.7977499224753292E131
        -0x6f0d4ccaa9616678L
        0x23193f6f80b4eec8L
        0x67757579dab00d3L
        0x58085bcea39e8e04L
        -0x47194bb5f54cbfacL    # -1.36646263004807E-34
    .end array-data

    .line 584
    .line 585
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
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    :array_a
    .array-data 8
        0x103766d305b6e6d9L
        0x77c38f8c81c486f1L    # 8.073305281197468E268
        -0x2ef1b112c27aba79L    # -2.874951472466211E82
        0x679f96b1f11caL
        0xabe042541ef14edL    # 6.24711251686718E-257
    .end array-data
.end method

.method public pause_on_connection_timeout()Z
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v3, 0x5

    .line 26
    new-array v3, v3, [J

    .line 27
    .line 28
    fill-array-data v3, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x73fa675ff82b365L    # -4.422394801037946E273
        0x3b9192667bb9fdb9L    # 9.302473841717909E-22
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_1
    .array-data 8
        0x669a13b0e05dffa2L
        0x7540440fd20c0e03L    # 6.105813287261824E256
        -0x24328ecc67696210L    # -1.6718536246418583E134
        0x25585de5bc1ba7eeL    # 8.788203938058387E-129
        0x449c8be2a4abd10eL    # 3.3701672578414704E22
    .end array-data
.end method

.method public protectSocket(Ljava/net/Socket;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/VpnService;->protect(Ljava/net/Socket;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public read_file(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p0, p2}, Lapp/tunnel/vpncommons/utils/FileUtils;->readAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v1, v1, [J

    .line 30
    .line 31
    fill-array-data v1, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-static {p0, p2}, Lapp/tunnel/vpncommons/utils/FileUtils;->readFileAppPrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_1
    new-instance p1, Lcom/tknetwork/tunnel/service/c_05$InternalError;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/tknetwork/tunnel/service/c_05$InternalError;-><init>()V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x3f7305da84cde80eL    # 0.0046442542924243334
        0x339155282e2aa20eL
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        0x24296c5d8df7b6bdL    # 1.748895709564133E-134
        0x39fdb88e23ba24e3L    # 2.344567096974395E-29
    .end array-data
.end method

.method public refresh_profile_list()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;-><init>(Lcom/tknetwork/tunnel/service/c_05;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v3, v0, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$ProfileList;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v3, v0, [J

    .line 27
    .line 28
    fill-array-data v3, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$ProfileList;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05$ProfileList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v3, v0, [J

    .line 47
    .line 48
    fill-array-data v3, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v3, 0x4

    .line 60
    new-array v3, v3, [J

    .line 61
    .line 62
    fill-array-data v3, :array_3

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_0

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/service/c_05$Profile;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v4, 0x1

    .line 92
    new-array v4, v4, [Ljava/lang/Object;

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    aput-object v3, v4, v5

    .line 96
    .line 97
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v5, v0, [J

    .line 100
    .line 101
    fill-array-data v5, :array_4

    .line 102
    .line 103
    .line 104
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v5, v0, [J

    .line 113
    .line 114
    fill-array-data v5, :array_5

    .line 115
    .line 116
    .line 117
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/c_05;->profile_list:Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 129
    .line 130
    return-void

    .line 131
    :array_0
    .array-data 8
        0x12e1911fa553bfb8L    # 9.952862490672515E-218
        0x588f44e63510366eL    # 3.942613621737316E118
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
        0x28054bf4f821fd23L    # 6.756225361421308E-116
        0x4db7efb1d6fafbf6L    # 2.5207873831644778E66
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
    :array_2
    .array-data 8
        -0x5008474e1f48ca02L    # -1.2803910200173736E-77
        -0x2b3b6d4d59ffd1a8L    # -2.2499196640072054E100
    .end array-data

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
    :array_3
    .array-data 8
        -0x6e84ab4ae1a261f2L    # -1.845937515316563E-224
        -0x5adc8d38a574f661L    # -8.767882826546235E-130
        0x30b01cb9a9aba358L    # 3.562182246113672E-74
        -0x3adcaf103108a55aL    # -1.1675901788314751E25
    .end array-data

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
    :array_4
    .array-data 8
        0x58a8c1e14f0e95baL    # 1.2486259573361937E119
        0x9cdcdb1dfc18056L    # 1.8929580008370755E-261
    .end array-data

    :array_5
    .array-data 8
        0x7c2dfc26b8e0d068L    # 1.4610645393213463E290
        -0x6c2e5192a75c1581L    # -3.282605151941136E-213
    .end array-data
.end method

.method public set_autostart_profile_name(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 5
    .line 6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    fill-array-data v0, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0, p1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v0, v0, [J

    .line 29
    .line 30
    fill-array-data v0, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/PrefUtil;->delete_key(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    nop

    :array_0
    .array-data 8
        -0x13930918779caccdL    # -1.950170248589257E214
        0x1cdddaba9ed5b815L    # 1.236035512109645E-169
        -0x76df93e19a24c54fL
        -0x17f71cd8872ecd8L
    .end array-data

    :array_1
    .array-data 8
        -0x3aed888abe9708daL    # -5.581197336717547E24
        -0x78e406649337e8bcL
        -0x4049dc49b6f54354L    # -0.08648242266893885
        -0x52b5d282cbc96b1eL    # -1.6063591914247668E-90
    .end array-data
.end method

.method public socket_protect(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/VpnService;->protect(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v3, v2, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object p1, v2, v3

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    aput-object v1, v2, p1

    .line 34
    .line 35
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v1, 0x7

    .line 38
    new-array v1, v1, [J

    .line 39
    .line 40
    fill-array-data v1, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    return v0

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        -0x2c0ca64113f33d13L    # -2.5832853479655896E96
        0x6132b039ee8cbceaL
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 8
        0x2eb97924f5cdca9cL    # 1.3112486805857035E-83
        -0x67fd3c1697086e47L    # -5.141239600986909E-193
        -0x5b774c280aebd1c0L
        0x36688dd58976c4d1L    # 1.3440444506324046E-46
        -0x481350cecfdd1731L    # -2.6342409907401568E-39
        0x65b596f6a1bf6bL
        0x2e7253ef94264c1aL    # 5.896486820378771E-85
    .end array-data
.end method

.method public stat_values_full()Lnet/openvpn/openvpn/ClientAPI_LLVector;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05;->mThread:Lnet/openvpn/openvpn/OpenVPNClientThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->stats_bundle()Lnet/openvpn/openvpn/ClientAPI_LLVector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public tun_builder_new()Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;
    .locals 2

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;-><init>(Lcom/tknetwork/tunnel/service/c_05;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public tun_builder_new1()Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;
    .locals 6

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;-><init>(Lcom/tknetwork/tunnel/service/c_05;I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_05;->bundle:Landroid/os/Bundle;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v4, 0x4

    .line 14
    new-array v4, v4, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_05;->bundle:Landroid/os/Bundle;

    .line 31
    .line 32
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    new-array v5, v5, [J

    .line 36
    .line 37
    fill-array-data v5, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    array-length v4, v3

    .line 52
    :goto_0
    if-ge v1, v4, :cond_1

    .line 53
    .line 54
    aget-object v5, v3, v1

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v0, v5}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-object v0

    .line 69
    :array_0
    .array-data 8
        0x7efd00940fab9bdfL    # 4.97218726367085E303
        -0x3bf30cd6e5230fb8L    # -6.675379992816943E19
        0x70262c66c1c2589eL    # 1.7212335670689232E232
        0x474f891d21f8d3edL    # 3.2748440172162514E35
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
    :array_1
    .array-data 8
        -0x30b5d9cb81ef1696L    # -9.240341047789715E73
        0x5125811942ac72a7L    # 8.159320023996645E82
        0x2418e3354596db3dL    # 8.560197324992477E-135
    .end array-data
.end method
