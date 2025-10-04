.class public final Lcom/google/zxing/integration/android/IntentResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final barcodeImagePath:Ljava/lang/String;

.field private final contents:Ljava/lang/String;

.field private final errorCorrectionLevel:Ljava/lang/String;

.field private final formatName:Ljava/lang/String;

.field private final orientation:Ljava/lang/Integer;

.field private final originalIntent:Landroid/content/Intent;

.field private final rawBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v7, p1

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    .line 7
    iput-object p4, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    .line 8
    iput-object p5, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/google/zxing/integration/android/IntentResult;->barcodeImagePath:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/google/zxing/integration/android/IntentResult;->originalIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getBarcodeImagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->barcodeImagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getErrorCorrectionLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrientation()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginalIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->originalIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    array-length v2, v2

    .line 10
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    new-array v5, v5, [J

    .line 19
    .line 20
    fill-array-data v5, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v4, 0xa

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v6, v1, [J

    .line 46
    .line 47
    fill-array-data v6, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v5, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v6, v1, [J

    .line 71
    .line 72
    fill-array-data v6, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v5, v0, [J

    .line 91
    .line 92
    fill-array-data v5, :array_3

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v5, v1, [J

    .line 116
    .line 117
    fill-array-data v5, :array_4

    .line 118
    .line 119
    .line 120
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v1, v1, [J

    .line 141
    .line 142
    fill-array-data v1, :array_5

    .line 143
    .line 144
    .line 145
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentResult;->barcodeImagePath:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v0, v0, [J

    .line 166
    .line 167
    fill-array-data v0, :array_6

    .line 168
    .line 169
    .line 170
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->originalIntent:Landroid/content/Intent;

    .line 181
    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    return-object v0

    .line 193
    :array_0
    .array-data 8
        0x512e69f9cfedc393L    # 1.15398964222737E83
        0x21abfba7a7401f24L
    .end array-data

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
    :array_1
    .array-data 8
        0x5ef46d1c52d1d1beL
        -0x515cb726f75b5825L    # -4.963419589816501E-84
        0x4afa4f91eb1f08eaL    # 1.5750474519142458E53
    .end array-data

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
    :array_2
    .array-data 8
        -0x3fe5cf3ba373ee8eL    # -6.5476240597239315
        -0x2258d57ef63dd198L    # -1.412471194215213E143
        -0x4010b5ba4bad3fb2L    # -0.977816440767137
    .end array-data

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
    .line 234
    .line 235
    .line 236
    .line 237
    :array_3
    .array-data 8
        0x5927c29f5ac8e464L    # 3.0677443661885714E121
        -0x3673c7e9065fdbb9L    # -2.013782309095624E46
        0x233578c5e6836d39L    # 4.507646524895394E-139
        0x7649e7a8834c963bL    # 6.372772600419817E261
    .end array-data

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
    :array_4
    .array-data 8
        -0x1d2997abe4e3a8eaL    # -1.3213310767453988E168
        -0x1e4047cee92c8850L    # -7.135164589623251E162
        0x137c4d2c4ce2b8fbL    # 8.209787236599446E-215
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
    :array_5
    .array-data 8
        0x1d620b52e7fb5711L    # 3.8249949028041E-167
        -0x901254a78e234eaL
        -0x5e409553dc04bc13L
    .end array-data

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
    :array_6
    .array-data 8
        -0x12382d93b969609L
        -0x76eea64f666b43e2L    # -5.380864900690051E-265
        -0x11ff352885e99dbbL    # -7.587493116171791E221
        -0xc23ab02ece69938L
    .end array-data
.end method
