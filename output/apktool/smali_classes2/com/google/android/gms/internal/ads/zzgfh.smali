.class final Lcom/google/android/gms/internal/ads/zzgfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzgfk;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgfk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfh;->zza:Lcom/google/android/gms/internal/ads/zzgfk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfh;->zza:Lcom/google/android/gms/internal/ads/zzgfk;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgfk;->zze(Lcom/google/android/gms/internal/ads/zzgfk;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgfh;->zza:Lcom/google/android/gms/internal/ads/zzgfk;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzs(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v3, 0x1

    .line 27
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgfk;->zzv(Lcom/google/android/gms/internal/ads/zzgfk;)Ljava/util/concurrent/ScheduledFuture;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzgfk;->zzw(Lcom/google/android/gms/internal/ads/zzgfk;Ljava/util/concurrent/ScheduledFuture;)V

    .line 32
    .line 33
    .line 34
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v6, 0x3

    .line 37
    new-array v6, v6, [J

    .line 38
    .line 39
    fill-array-data v6, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    :try_start_1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    .line 53
    invoke-interface {v4, v6}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    const-wide/16 v8, 0xa

    .line 62
    .line 63
    cmp-long v4, v6, v8

    .line 64
    .line 65
    if-lez v4, :cond_2

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    const/4 v9, 0x4

    .line 78
    new-array v9, v9, [J

    .line 79
    .line 80
    fill-array-data v9, :array_1

    .line 81
    .line 82
    .line 83
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    const/4 v7, 0x5

    .line 99
    new-array v7, v7, [J

    .line 100
    .line 101
    fill-array-data v7, :array_2

    .line 102
    .line 103
    .line 104
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v4

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    const/4 v8, 0x2

    .line 136
    new-array v8, v8, [J

    .line 137
    .line 138
    fill-array-data v8, :array_3

    .line 139
    .line 140
    .line 141
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    new-instance v5, Lcom/google/android/gms/internal/ads/zzgfj;

    .line 159
    .line 160
    invoke-direct {v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzgfj;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgfi;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgdb;->zzd(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    .line 165
    .line 166
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    goto :goto_2

    .line 172
    :goto_1
    :try_start_3
    new-instance v6, Lcom/google/android/gms/internal/ads/zzgfj;

    .line 173
    .line 174
    invoke-direct {v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzgfj;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgfi;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzgdb;->zzd(Ljava/lang/Throwable;)Z

    .line 178
    .line 179
    .line 180
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_3
    :goto_3
    return-void

    .line 186
    nop

    .line 187
    :array_0
    .array-data 8
        0x5acc7ab7a3cd3f1bL    # 2.467620974828872E129
        -0x512a20afc232b66L    # -1.364664222451332E284
        0x2997545778bb8c8bL    # 2.483397563449631E-108
    .end array-data

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
    .line 200
    .line 201
    .line 202
    .line 203
    :array_1
    .array-data 8
        0x1cf5d04b75feb0ddL
        -0x26254062638c6fcaL    # -7.0729018900775595E124
        -0x64fe3b178e6b8bedL    # -1.370312964122216E-178
        0x128ea81e854b749fL
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
        0x1271af8cb15f4d79L    # 7.828281309545207E-220
        0x32356fc3b455cc2dL    # 7.951269424727372E-67
        -0xc17ca8f1c1ce113L    # -2.166600545517763E250
        0x3a6b6e4b21d2051bL    # 2.7698063975767063E-27
        0x305496ea77ab67c0L    # 7.112580945768579E-76
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
        0x4aad74e63ffef99cL
        0x555a8d9606e42806L    # 1.486802499856528E103
    .end array-data
.end method
