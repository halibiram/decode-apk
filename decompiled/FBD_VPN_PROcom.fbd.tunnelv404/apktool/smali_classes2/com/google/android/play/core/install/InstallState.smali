.class public abstract Lcom/google/android/play/core/install/InstallState;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(IJJILjava/lang/String;)Lcom/google/android/play/core/install/InstallState;
    .locals 9
    .param p0    # I
        .annotation build Lcom/google/android/play/core/install/model/InstallStatus;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Lcom/google/android/play/core/install/model/InstallErrorCode;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v8, Lcom/google/android/play/core/install/zza;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move v1, p0

    .line 5
    move-wide v2, p1

    .line 6
    move-wide v4, p3

    .line 7
    move v6, p5

    .line 8
    move-object v7, p6

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/google/android/play/core/install/zza;-><init>(IJJILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v8
.end method

.method public static zzb(Landroid/content/Intent;Lcom/google/android/play/core/appupdate/internal/zzm;)Lcom/google/android/play/core/install/InstallState;
    .locals 13
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/play/core/appupdate/internal/zzm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    new-array v3, v2, [J

    .line 27
    .line 28
    fill-array-data v3, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v4, v2, [J

    .line 41
    .line 42
    fill-array-data v4, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/4 v4, 0x2

    .line 61
    new-array v5, v4, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v0, v5, v1

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    aput-object v3, v5, v0

    .line 67
    .line 68
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v6, 0x4

    .line 71
    new-array v7, v6, [J

    .line 72
    .line 73
    fill-array-data v7, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {p1, v3, v5}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v5, v2, [J

    .line 89
    .line 90
    fill-array-data v5, :array_4

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v7, v2, [J

    .line 103
    .line 104
    fill-array-data v7, :array_5

    .line 105
    .line 106
    .line 107
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {p0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    new-array v4, v4, [Ljava/lang/Object;

    .line 123
    .line 124
    aput-object v3, v4, v1

    .line 125
    .line 126
    aput-object v5, v4, v0

    .line 127
    .line 128
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v3, v6, [J

    .line 131
    .line 132
    fill-array-data v3, :array_6

    .line 133
    .line 134
    .line 135
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p1, v0, v4}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    .line 144
    .line 145
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v0, v6, [J

    .line 148
    .line 149
    fill-array-data v0, :array_7

    .line 150
    .line 151
    .line 152
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v3, v2, [J

    .line 162
    .line 163
    fill-array-data v3, :array_8

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    new-array v4, v2, [J

    .line 176
    .line 177
    fill-array-data v4, :array_9

    .line 178
    .line 179
    .line 180
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 188
    .line 189
    new-array v5, v2, [J

    .line 190
    .line 191
    fill-array-data v5, :array_a

    .line 192
    .line 193
    .line 194
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array v2, v2, [J

    .line 204
    .line 205
    fill-array-data v2, :array_b

    .line 206
    .line 207
    .line 208
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    const-wide/16 v7, 0x0

    .line 220
    .line 221
    invoke-virtual {p0, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 222
    .line 223
    .line 224
    move-result-wide v9

    .line 225
    invoke-virtual {p0, p1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 226
    .line 227
    .line 228
    move-result-wide v11

    .line 229
    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    new-instance v0, Lcom/google/android/play/core/install/zza;

    .line 238
    .line 239
    move-object v5, v0

    .line 240
    move-wide v7, v9

    .line 241
    move-wide v9, v11

    .line 242
    move v11, p1

    .line 243
    move-object v12, p0

    .line 244
    invoke-direct/range {v5 .. v12}, Lcom/google/android/play/core/install/zza;-><init>(IJJILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-object v0

    .line 248
    nop

    .line 249
    :array_0
    .array-data 8
        0x6c22b0cee9a1f42bL    # 7.865231772107093E212
        0x261f39e2b8303e8dL    # 4.612960939382318E-125
        -0x1762581b96b7e029L    # -8.659389370369335E195
        -0x2aa6a148b2431dd2L
        0x4c926edb15520664L    # 7.405184473504783E60
        0x2728fc8eba79cd00L
        -0x16aa546369a19014L
        0x3460551b07b461d0L    # 2.0815267153581756E-56
        0x71572bfb57b31b1bL    # 9.430537296356657E237
    .end array-data

    .line 250
    .line 251
    .line 252
    :array_1
    .array-data 8
        -0x706c565604b77bb8L
        0x3d112b263be82c26L    # 1.5248737521314196E-14
        -0x72f67f970ce88efcL    # -7.29459197501925E-246
    .end array-data

    :array_2
    .array-data 8
        0x3bb0beca5c783806L    # 3.545949969734868E-21
        0x518d41b88d7ef664L    # 7.1045155378307E84
        -0x7f18dd8c1a36de1aL
    .end array-data

    :array_3
    .array-data 8
        -0x68b87fe0346b5daaL
        0x5ee564c5f7444207L    # 1.3677687298334908E149
        -0x4a66556b8ee920e9L    # -1.715001362260123E-50
        0x12cc54e3df429a92L
    .end array-data

    :array_4
    .array-data 8
        -0x480d211920d2f2dfL    # -3.466002090881541E-39
        0x54ebe5755665fe0dL    # 1.2203249961826294E101
        0x4feb5786806b2862L    # 9.893672722042066E76
    .end array-data

    :array_5
    .array-data 8
        0x1d8ee76355ed5925L
        0x6212a98aa996763bL    # 2.686718504263192E164
        0x139f93ccf3ecc85aL
    .end array-data

    :array_6
    .array-data 8
        0x11cafe83ee83221L
        0x42e573f9d25fd7b8L    # 1.8870285388972575E14
        -0x4a24bb308f36631L    # -1.766831818089956E286
        -0x14a1f07ea4bd69fL
    .end array-data

    :array_7
    .array-data 8
        0x11cfb54273ba4e80L    # 6.853030909796598E-223
        -0x52df3bb5cdd99cbaL    # -2.57217430962661E-91
        0x3f3a15f113b3785L
        0xe9b18e79456de15L
    .end array-data

    :array_8
    .array-data 8
        -0x4b8854b277a3d481L    # -6.033141485285529E-56
        0x46b8446fca78e016L    # 4.921999431485334E32
        0x784e2d64510200c3L    # 3.188501774288461E271
    .end array-data

    :array_9
    .array-data 8
        -0x48918f35148b7daaL    # -1.0920028380617432E-41
        -0x6775d4cda9c80b37L
        0x6b2d5f1841bd5657L    # 1.8859605912189672E208
    .end array-data

    :array_a
    .array-data 8
        -0x40acd66aba807b1aL    # -0.0011695821503894754
        -0x56ffdbe1151f5801L    # -3.355866298462993E-111
        -0x58f25c9c8ab49d99L
    .end array-data

    :array_b
    .array-data 8
        -0x15fccfa7a8105261L    # -4.700196364533474E202
        0x69e047db00a9e456L    # 9.9696472884273E201
        0x229328495d2a25b0L
    .end array-data
.end method


# virtual methods
.method public abstract bytesDownloaded()J
.end method

.method public abstract installErrorCode()I
    .annotation build Lcom/google/android/play/core/install/model/InstallErrorCode;
    .end annotation
.end method

.method public abstract installStatus()I
    .annotation build Lcom/google/android/play/core/install/model/InstallStatus;
    .end annotation
.end method

.method public abstract packageName()Ljava/lang/String;
.end method

.method public abstract totalBytesToDownload()J
.end method
