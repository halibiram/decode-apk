.class final Lcom/google/android/gms/common/api/internal/zacz;
.super Lcom/google/android/gms/internal/base/zaq;
.source "SourceFile"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zada;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zada;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacz;->zaa:Lcom/google/android/gms/common/api/internal/zada;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/zaq;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/16 v1, 0x9

    .line 12
    .line 13
    new-array v1, v1, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v0, v0, [J

    .line 27
    .line 28
    fill-array-data v0, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/16 v3, 0x8

    .line 53
    .line 54
    new-array v3, v3, [J

    .line 55
    .line 56
    fill-array-data v3, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v0, v0, [J

    .line 84
    .line 85
    fill-array-data v0, :array_3

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Lcom/google/android/gms/common/api/PendingResult;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacz;->zaa:Lcom/google/android/gms/common/api/internal/zada;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zada;->zad(Lcom/google/android/gms/common/api/internal/zada;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacz;->zaa:Lcom/google/android/gms/common/api/internal/zada;

    .line 107
    .line 108
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zada;->zac(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/internal/zada;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Lcom/google/android/gms/common/api/internal/zada;

    .line 117
    .line 118
    if-nez p1, :cond_3

    .line 119
    .line 120
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 121
    .line 122
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v0, v0, [J

    .line 125
    .line 126
    fill-array-data v0, :array_4

    .line 127
    .line 128
    .line 129
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const/16 v3, 0xd

    .line 137
    .line 138
    invoke-direct {p1, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v2, p1}, Lcom/google/android/gms/common/api/internal/zada;->zag(Lcom/google/android/gms/common/api/internal/zada;Lcom/google/android/gms/common/api/Status;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catchall_0
    move-exception p1

    .line 146
    goto :goto_2

    .line 147
    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/zacp;

    .line 148
    .line 149
    if-eqz v0, :cond_4

    .line 150
    .line 151
    check-cast p1, Lcom/google/android/gms/common/api/internal/zacp;

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zacp;->zaa()Lcom/google/android/gms/common/api/Status;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v2, p1}, Lcom/google/android/gms/common/api/internal/zada;->zag(Lcom/google/android/gms/common/api/internal/zada;Lcom/google/android/gms/common/api/Status;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/api/internal/zada;->zai(Lcom/google/android/gms/common/api/PendingResult;)V

    .line 162
    .line 163
    .line 164
    :goto_1
    monitor-exit v1

    .line 165
    return-void

    .line 166
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    throw p1

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        0x7213f0d12b738685L    # 3.324120497564683E241
        0x1ab72db8b4787101L    # 5.585856767930293E-180
        0x2c9f7b51ad9f095dL    # 9.43278086426345E-94
        -0x6827dd4bfe484141L    # -8.265710041242446E-194
        -0x4ba99dde4cb89e4eL    # -1.4263478700500274E-56
        0x42c167ae2f95e021L    # 3.827400331564826E13
        -0x2925f44fd31b6e72L    # -2.4467733798679774E110
        -0x1cc3285bd208940fL    # -1.0884994111002586E170
        0x32aaafe9257fed3fL    # 1.2670482647457475E-64
    .end array-data

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
    :array_1
    .array-data 8
        -0x3386291a8e68268dL    # -2.595148551348288E60
        0x4f2cc3a543fd5325L    # 2.5411006951377157E73
        0x446d2c954136c7e5L    # 4.3053449900025074E21
        -0x681411cc8d94e89L
    .end array-data

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
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_2
    .array-data 8
        0x6c6edb51b490536aL    # 2.077574615942536E214
        0x33d63b59e99b9a54L    # 5.533963374820641E-59
        0x2ee522288739530bL    # 8.702844214414203E-83
        0x22b805d7fc265ea4L    # 1.969999694763805E-141
        0x6d3de616475e8200L    # 1.6491125949114688E218
        -0x6808cbac11d55874L
        -0x2beb5ffe6c2ff0d8L    # -1.1013696006796275E97
        -0x26eec2922ce63647L    # -1.1129469241573118E121
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_3
    .array-data 8
        -0x2685f3d18aeaf2ceL    # -1.0761819248989581E123
        0x3a184600d49982d5L    # 7.659350350185311E-29
        -0x2fae14712718a19cL    # -8.300045702998162E78
        0x208171441ec70e54L    # 4.162934498651721E-152
    .end array-data

    :array_4
    .array-data 8
        0x37fb84388c7b69feL    # 5.05398063132036E-39
        -0x4bf9b286ee541eb9L    # -4.4412671557968166E-58
        -0x6ff6cab4421eff3L    # -7.17353138136434E274
        -0x7137d5f999b2b0fdL
    .end array-data
.end method
