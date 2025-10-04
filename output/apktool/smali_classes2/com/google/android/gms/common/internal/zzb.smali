.class final Lcom/google/android/gms/common/internal/zzb;
.super Lcom/google/android/gms/internal/common/zzi;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final zza(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/gms/common/internal/zzc;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzc;->zzc()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzc;->zzg()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final zzb(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget p0, p0, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x7

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 4
    .line 5
    iget-object v2, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 12
    .line 13
    if-eq v2, v3, :cond_1

    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzb(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zza(Landroid/os/Message;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x5

    .line 30
    if-eq v2, v4, :cond_3

    .line 31
    .line 32
    const/4 v6, 0x7

    .line 33
    if-eq v2, v6, :cond_3

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->enableLocalFallback()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    .line 46
    .line 47
    if-ne v2, v5, :cond_4

    .line 48
    .line 49
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_12

    .line 56
    .line 57
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    .line 58
    .line 59
    const/16 v6, 0x8

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    if-ne v2, v3, :cond_8

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 65
    .line 66
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    .line 67
    .line 68
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 69
    .line 70
    invoke-direct {v2, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    invoke-static {p1, v1, v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    goto :goto_1

    .line 110
    :cond_7
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 111
    .line 112
    invoke-direct {p1, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 113
    .line 114
    .line 115
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 118
    .line 119
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_8
    if-ne v2, v5, :cond_a

    .line 129
    .line 130
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_9

    .line 137
    .line 138
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    goto :goto_2

    .line 143
    :cond_9
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 144
    .line 145
    invoke-direct {p1, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 146
    .line 147
    .line 148
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 151
    .line 152
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_a
    if-ne v2, v1, :cond_c

    .line 162
    .line 163
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    .line 165
    instance-of v1, v0, Landroid/app/PendingIntent;

    .line 166
    .line 167
    if-eqz v1, :cond_b

    .line 168
    .line 169
    move-object v7, v0

    .line 170
    check-cast v7, Landroid/app/PendingIntent;

    .line 171
    .line 172
    :cond_b
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 173
    .line 174
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 175
    .line 176
    invoke-direct {v0, p1, v7}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 180
    .line 181
    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 182
    .line 183
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_c
    if-ne v2, v0, :cond_e

    .line 193
    .line 194
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 195
    .line 196
    invoke-static {v0, v5, v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    if-eqz v1, :cond_d

    .line 206
    .line 207
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 212
    .line 213
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;->onConnectionSuspended(I)V

    .line 214
    .line 215
    .line 216
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 217
    .line 218
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 219
    .line 220
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionSuspended(I)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 224
    .line 225
    invoke-static {p1, v5, v4, v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_e
    const/4 v3, 0x2

    .line 230
    if-ne v2, v3, :cond_10

    .line 231
    .line 232
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 233
    .line 234
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_f

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zza(Landroid/os/Message;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_10
    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzb(Landroid/os/Message;)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eqz v2, :cond_11

    .line 250
    .line 251
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast p1, Lcom/google/android/gms/common/internal/zzc;

    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzc;->zze()V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_11
    iget p1, p1, Landroid/os/Message;->what:I

    .line 260
    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 267
    .line 268
    new-array v0, v0, [J

    .line 269
    .line 270
    fill-array-data v0, :array_0

    .line 271
    .line 272
    .line 273
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 274
    .line 275
    .line 276
    invoke-static {v3, v2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    new-instance v0, Ljava/lang/Exception;

    .line 281
    .line 282
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 283
    .line 284
    .line 285
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 286
    .line 287
    new-array v1, v1, [J

    .line 288
    .line 289
    fill-array-data v1, :array_1

    .line 290
    .line 291
    .line 292
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zza(Landroid/os/Message;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :array_0
    .array-data 8
        -0x76f2a81e0bc6fdf2L
        -0x4859120c903c5150L    # -1.3160885145053203E-40
        0x78a6142d1e3286d2L
        0x4addaf57741d28c5L    # 4.442580085480466E52
        -0x561f981480c0b08bL    # -5.588465721778255E-107
        0x7671bf315a3763f0L
    .end array-data

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
    .line 332
    .line 333
    .line 334
    .line 335
    :array_1
    .array-data 8
        -0x77a7a93521d6ce25L    # -1.842838158092758E-268
        0xb0aabdbcbf1147L
        -0x3458db8c946666b8L    # -2.837248289356837E56
    .end array-data
.end method
