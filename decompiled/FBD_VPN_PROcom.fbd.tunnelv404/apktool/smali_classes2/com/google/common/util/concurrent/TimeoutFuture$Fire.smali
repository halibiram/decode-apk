.class final Lcom/google/common/util/concurrent/TimeoutFuture$Fire;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/TimeoutFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fire"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/TimeoutFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/TimeoutFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/TimeoutFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;->timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;->timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/TimeoutFuture;->access$000(Lcom/google/common/util/concurrent/TimeoutFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const/4 v3, 0x0

    .line 15
    iput-object v3, p0, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;->timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_2
    const/4 v4, 0x1

    .line 29
    :try_start_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/TimeoutFuture;->access$100(Lcom/google/common/util/concurrent/TimeoutFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v1, v3}, Lcom/google/common/util/concurrent/TimeoutFuture;->access$102(Lcom/google/common/util/concurrent/TimeoutFuture;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 34
    .line 35
    .line 36
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v7, 0x3

    .line 39
    new-array v7, v7, [J

    .line 40
    .line 41
    fill-array-data v7, :array_0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    invoke-interface {v5, v7}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v7

    .line 63
    const-wide/16 v9, 0xa

    .line 64
    .line 65
    cmp-long v5, v7, v9

    .line 66
    .line 67
    if-lez v5, :cond_3

    .line 68
    .line 69
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    add-int/lit8 v9, v9, 0x42

    .line 78
    .line 79
    new-instance v10, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    const/4 v9, 0x4

    .line 90
    new-array v9, v9, [J

    .line 91
    .line 92
    fill-array-data v9, :array_1

    .line 93
    .line 94
    .line 95
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    const/4 v7, 0x5

    .line 111
    new-array v7, v7, [J

    .line 112
    .line 113
    fill-array-data v7, :array_2

    .line 114
    .line 115
    .line 116
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto :goto_2

    .line 133
    :cond_3
    :goto_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    add-int/2addr v8, v0

    .line 146
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    add-int/2addr v8, v9

    .line 151
    new-instance v9, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v0, v0, [J

    .line 162
    .line 163
    fill-array-data v0, :array_3

    .line 164
    .line 165
    .line 166
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :try_start_2
    new-instance v5, Lcom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;

    .line 184
    .line 185
    invoke-direct {v5, v0, v3}, Lcom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;-><init>(Ljava/lang/String;Lcom/google/common/util/concurrent/TimeoutFuture$1;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v5}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    .line 190
    .line 191
    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 192
    .line 193
    .line 194
    :goto_1
    return-void

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    goto :goto_3

    .line 197
    :goto_2
    :try_start_3
    new-instance v5, Lcom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;

    .line 198
    .line 199
    invoke-direct {v5, v6, v3}, Lcom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;-><init>(Ljava/lang/String;Lcom/google/common/util/concurrent/TimeoutFuture$1;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v5}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    .line 203
    .line 204
    .line 205
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    :goto_3
    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    nop

    .line 211
    :array_0
    .array-data 8
        0x6e6558f7a4801e96L    # 6.173257636437905E223
        -0x7812e6e16e587013L
        -0x7f10a537a85e8202L
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
    :array_1
    .array-data 8
        0x2918e361fa42b53L
        0x2b90c8e19f106a6eL    # 7.673876852945064E-99
        -0x2cec1ac5fdacb9e8L    # -1.6211071587048703E92
        0x5e7ae46278d9e7adL    # 1.3432073638362663E147
    .end array-data

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
    :array_2
    .array-data 8
        0x3b4553dea8fea50dL    # 3.52835813877148E-23
        -0x7a2293537d95ee93L
        -0x7e36d61b0dbd99f7L    # -4.696863753576092E-300
        0x66280699ff486c13L    # 1.2761008448086566E184
        0x41c4da33d5d63187L    # 6.996888756733865E8
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
    .line 268
    .line 269
    .line 270
    .line 271
    :array_3
    .array-data 8
        0x54834f5149e22484L    # 1.319857770781807E99
        -0x5c15aecd9171d7feL
    .end array-data
.end method
