.class final Lcom/google/android/play/core/review/zzf;
.super Lcom/google/android/play/core/review/internal/zzj;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzb:Lcom/google/android/play/core/review/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/review/zzf;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/play/core/review/zzf;->zzb:Lcom/google/android/play/core/review/zzi;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/play/core/review/internal/zzj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/core/review/zzf;->zzb:Lcom/google/android/play/core/review/zzi;

    .line 4
    .line 5
    iget-object v2, v2, Lcom/google/android/play/core/review/zzi;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/play/core/review/internal/zzt;->zze()Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/google/android/play/core/review/internal/zzf;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/android/play/core/review/zzf;->zzb:Lcom/google/android/play/core/review/zzi;

    .line 14
    .line 15
    invoke-static {v3}, Lcom/google/android/play/core/review/zzi;->zzc(Lcom/google/android/play/core/review/zzi;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/play/core/review/zzj;->zza()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v7, v0, [J

    .line 31
    .line 32
    fill-array-data v7, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v8, v1, [J

    .line 45
    .line 46
    fill-array-data v8, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v7, v1, [J

    .line 72
    .line 73
    fill-array-data v7, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_0

    .line 88
    .line 89
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v7, v0, [J

    .line 92
    .line 93
    fill-array-data v7, :array_3

    .line 94
    .line 95
    .line 96
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v8, v1, [J

    .line 106
    .line 107
    fill-array-data v8, :array_4

    .line 108
    .line 109
    .line 110
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    goto :goto_1

    .line 133
    :cond_0
    :goto_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v7, v1, [J

    .line 136
    .line 137
    fill-array-data v7, :array_5

    .line 138
    .line 139
    .line 140
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_1

    .line 152
    .line 153
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 154
    .line 155
    new-array v0, v0, [J

    .line 156
    .line 157
    fill-array-data v0, :array_6

    .line 158
    .line 159
    .line 160
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array v1, v1, [J

    .line 170
    .line 171
    fill-array-data v1, :array_7

    .line 172
    .line 173
    .line 174
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Ljava/lang/Integer;

    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    :cond_1
    new-instance v0, Lcom/google/android/play/core/review/zzh;

    .line 195
    .line 196
    iget-object v1, p0, Lcom/google/android/play/core/review/zzf;->zzb:Lcom/google/android/play/core/review/zzi;

    .line 197
    .line 198
    iget-object v5, p0, Lcom/google/android/play/core/review/zzf;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 199
    .line 200
    invoke-static {v1}, Lcom/google/android/play/core/review/zzi;->zzc(Lcom/google/android/play/core/review/zzi;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/play/core/review/zzh;-><init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/play/core/review/internal/zzf;->zzc(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/review/internal/zzh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :goto_1
    iget-object v1, p0, Lcom/google/android/play/core/review/zzf;->zzb:Lcom/google/android/play/core/review/zzi;

    .line 212
    .line 213
    invoke-static {}, Lcom/google/android/play/core/review/zzi;->zzb()Lcom/google/android/play/core/review/internal/zzi;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-static {v1}, Lcom/google/android/play/core/review/zzi;->zzc(Lcom/google/android/play/core/review/zzi;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    const/4 v3, 0x1

    .line 222
    new-array v3, v3, [Ljava/lang/Object;

    .line 223
    .line 224
    const/4 v4, 0x0

    .line 225
    aput-object v1, v3, v4

    .line 226
    .line 227
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 228
    .line 229
    const/4 v4, 0x6

    .line 230
    new-array v4, v4, [J

    .line 231
    .line 232
    fill-array-data v4, :array_8

    .line 233
    .line 234
    .line 235
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/play/core/review/internal/zzi;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 243
    .line 244
    .line 245
    iget-object v1, p0, Lcom/google/android/play/core/review/zzf;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 246
    .line 247
    new-instance v2, Ljava/lang/RuntimeException;

    .line 248
    .line 249
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    nop

    .line 257
    :array_0
    .array-data 8
        0xbdf44181875ba0dL
        -0x38fa50569231b940L    # -1.4075134906571779E34
        0x3d9ccc46ca377be4L    # 6.547896911863741E-12
        0x4f7b43bbaa76fc6aL    # 7.707575554610509E74
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
        -0x669fc04600255103L    # -1.867228685134027E-186
        0x44b8ae0e3e60a92dL    # 1.1654755542174175E23
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
        -0x3c86117ada04ef86L    # -1.16786080848611232E17
        0x7e745af607ae9450L    # 1.363181060020014E301
    .end array-data

    .line 290
    :array_3
    .array-data 8
        0x57f01afbc37b3909L    # 3.9661577027817535E115
        0x4005dbefa349d7c2L    # 2.732390666666988
        0x355263f7f8b0c9afL    # 7.680232197946514E-52
        -0x5d25af3d4caee6d8L    # -8.632034822888168E-141
    .end array-data

    :array_4
    .array-data 8
        -0x3f8e4f5f8ee852c3L    # -283.0391703534004
        -0x4dcf1be1e0cd8fa2L    # -6.265251497600529E-67
    .end array-data

    :array_5
    .array-data 8
        0x657ec1662f4658ffL    # 7.97626767326368E180
        -0x49ce6804d463eceeL    # -1.2038081830359182E-47
    .end array-data

    :array_6
    .array-data 8
        -0x2420918d536c532eL    # -3.5696227783485947E134
        -0x251237f2c07f4561L    # -1.0321766227666958E130
        -0x10f52d760d09666aL    # -7.942636174847814E226
        0x31064b9df764014L
    .end array-data

    :array_7
    .array-data 8
        0x2053c1720361da0fL    # 5.893773555461287E-153
        -0x86f203f052b15beL    # -8.705529490895977E267
    .end array-data

    :array_8
    .array-data 8
        0x73bc69571d53355bL    # 3.178413295997078E249
        0x475b1a44ff7bfa3eL    # 5.628992976549735E35
        0x23e6dfb452717f5bL    # 9.834474141858846E-136
        -0x29d322cead9058f6L    # -1.323992433473149E107
        -0x758c38d36a982fddL
        -0x776db86dca731f04L    # -2.214470742084564E-267
    .end array-data
.end method
