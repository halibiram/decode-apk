.class final Lcom/google/android/gms/common/images/zaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/images/ImageManager;

.field private final zab:Landroid/net/Uri;

.field private final zac:Landroid/os/ParcelFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/common/images/zaa;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zaa;->zab:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/common/images/zaa;->zac:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/16 v2, 0x9

    .line 5
    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotMainThread(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/common/images/zaa;->zac:Landroid/os/ParcelFileDescriptor;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/common/images/zaa;->zab:Landroid/net/Uri;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v5, v0, [J

    .line 46
    .line 47
    fill-array-data v5, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    const/4 v5, 0x6

    .line 59
    new-array v5, v5, [J

    .line 60
    .line 61
    fill-array-data v5, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/images/zaa;->zac:Landroid/os/ParcelFileDescriptor;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v5, v0, [J

    .line 84
    .line 85
    fill-array-data v5, :array_3

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v5, v0, [J

    .line 97
    .line 98
    fill-array-data v5, :array_4

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    :goto_1
    move-object v9, v2

    .line 108
    move v10, v4

    .line 109
    goto :goto_2

    .line 110
    :cond_0
    move-object v9, v2

    .line 111
    const/4 v10, 0x0

    .line 112
    :goto_2
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 113
    .line 114
    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 115
    .line 116
    .line 117
    iget-object v7, p0, Lcom/google/android/gms/common/images/zaa;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    .line 118
    .line 119
    invoke-static {v7}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-instance v3, Lcom/google/android/gms/common/images/zac;

    .line 124
    .line 125
    iget-object v8, p0, Lcom/google/android/gms/common/images/zaa;->zab:Landroid/net/Uri;

    .line 126
    .line 127
    move-object v6, v3

    .line 128
    move-object v11, v1

    .line 129
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/common/images/zac;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    .line 134
    .line 135
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :catch_2
    iget-object v1, p0, Lcom/google/android/gms/common/images/zaa;->zab:Landroid/net/Uri;

    .line 140
    .line 141
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v0, v0, [J

    .line 148
    .line 149
    fill-array-data v0, :array_5

    .line 150
    .line 151
    .line 152
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    const/4 v2, 0x5

    .line 161
    new-array v2, v2, [J

    .line 162
    .line 163
    fill-array-data v2, :array_6

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :array_0
    .array-data 8
        0x3c0514c0c3db5ccdL    # 1.4285086217142345E-19
        -0x4a0fdb580bc2a9e1L    # -6.903510815197231E-49
        0x551e7cb8401df658L
        0x4f4334e27ed4a588L    # 6.787018269119136E73
        -0x4b90837596e06441L    # -4.0128694172643487E-56
        -0x2fb653b82ffdccf4L    # -5.945453845306724E78
        -0x132073157f51b7a6L    # -2.7190832615822516E216
        0xebfa13097505ff5L
        0x4a4537f6ffaec93cL    # 6.202207426554528E49
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
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :array_1
    .array-data 8
        0x67ba0a537d5e4a39L    # 4.640917528330975E191
        0x1ba0a230edbb0ff8L    # 1.313523121603281E-175
        -0x20ac6326403fd39cL    # -1.6050005018754386E151
    .end array-data

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
    :array_2
    .array-data 8
        -0xf2ab585c1af3311L    # -3.384785980468458E235
        -0x58af3daeb79cc375L    # -2.596038891320608E-119
        0x596488967ae7d004L    # 4.241819762183346E122
        -0x3ca71d5dafc80aa3L    # -2.801834479791858E16
        0x48d8188f499c982dL    # 8.396208403942115E42
        -0x12a7c14f32c12944L    # -5.3490542546322444E218
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
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_3
    .array-data 8
        0x6fbe49880b50d61bL    # 1.8367763996748832E230
        -0x7ca2a7e8f7b52e35L
        0x6ac58a120340cee6L    # 2.1610229816699356E206
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
    :array_4
    .array-data 8
        -0x29f5c7a01d97d0b0L    # -3.00680112048211E106
        -0x7637e008e51a62fdL
        0x5ec4adc14864d9deL    # 3.305154406197275E148
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
    .line 290
    :array_5
    .array-data 8
        -0x45662ae26b9f1ea8L    # -2.0867313261665826E-26
        -0x482f946ef9ca0573L    # -7.53977764168542E-40
        -0x3bd55819bb0ba548L    # -2.4585688959085524E20
    .end array-data

    :array_6
    .array-data 8
        -0x4998d2b3dddd4040L    # -1.2686646315330675E-46
        -0x1397667f6c030783L    # -1.6562858859010056E214
        0x15f638eb6c9ac00fL    # 7.087821371587512E-203
        0x20eb7437adde8f96L    # 4.19350726592114E-150
        -0x215397b8cff9fd69L    # -1.1351111771451315E148
    .end array-data
.end method
