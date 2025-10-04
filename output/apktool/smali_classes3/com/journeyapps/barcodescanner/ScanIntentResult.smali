.class public final Lcom/journeyapps/barcodescanner/ScanIntentResult;
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
    invoke-direct/range {v0 .. v7}, Lcom/journeyapps/barcodescanner/ScanIntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

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
    invoke-direct/range {v0 .. v7}, Lcom/journeyapps/barcodescanner/ScanIntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->contents:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->formatName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->rawBytes:[B

    .line 7
    iput-object p4, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->orientation:Ljava/lang/Integer;

    .line 8
    iput-object p5, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->errorCorrectionLevel:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->barcodeImagePath:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->originalIntent:Landroid/content/Intent;

    return-void
.end method

.method public static parseActivityResult(ILandroid/content/Intent;)Lcom/journeyapps/barcodescanner/ScanIntentResult;
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, -0x1

    .line 3
    if-ne p0, v1, :cond_1

    .line 4
    .line 5
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

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
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v1, v0, [J

    .line 27
    .line 28
    fill-array-data v1, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v1, v0, [J

    .line 45
    .line 46
    fill-array-data v1, :array_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v1, v0, [J

    .line 63
    .line 64
    fill-array-data v1, :array_3

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/high16 v1, -0x80000000

    .line 75
    .line 76
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-ne p0, v1, :cond_0

    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    :goto_0
    move-object v5, p0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_0

    .line 90
    :goto_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 v1, 0x6

    .line 93
    new-array v1, v1, [J

    .line 94
    .line 95
    fill-array-data v1, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v0, v0, [J

    .line 112
    .line 113
    fill-array-data v0, :array_5

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    new-instance p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;

    .line 128
    .line 129
    move-object v1, p0

    .line 130
    move-object v8, p1

    .line 131
    invoke-direct/range {v1 .. v8}, Lcom/journeyapps/barcodescanner/ScanIntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 132
    .line 133
    .line 134
    return-object p0

    .line 135
    :cond_1
    new-instance p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;

    .line 136
    .line 137
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/ScanIntentResult;-><init>(Landroid/content/Intent;)V

    .line 138
    .line 139
    .line 140
    return-object p0

    .line 141
    :array_0
    .array-data 8
        -0xcf1db23432b9f4L
        -0x4d1c8174a89a5b31L    # -1.4808766097163897E-63
        0x6c1ce4a9626cb165L    # 6.0792883655195586E212
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
    :array_1
    .array-data 8
        -0x6f954f4d450a6cd6L
        -0xb2980072afd3b80L    # -6.598371387573052E254
        -0x351c276427370685L    # -5.940254436543023E52
        -0xdae853dbedbb056L    # -4.662149422703475E242
    .end array-data

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
    .line 174
    .line 175
    .line 176
    .line 177
    :array_2
    .array-data 8
        -0x150daeff426f238L
        0x164d999a450c70cL
        -0x11cac7f45ea4618eL    # -7.670086060565442E222
        -0x11248f41d5b85b34L    # -1.0157041569643153E226
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
    :array_3
    .array-data 8
        -0x67fbe26eed91527fL    # -5.511166215339812E-193
        0x1aed9b1f6c42b645L
        -0x2e024c757df99083L    # -9.231976663654902E86
        -0x67149f82368e1e48L
    .end array-data

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
    :array_4
    .array-data 8
        -0x871d5602b6d824dL    # -7.781639487141537E267
        0x5f793ec656eb1c21L    # 8.263744614324722E151
        0x103df9911b0d5279L
        0x53b78f9bc543ddbL
        -0x2b13e7b3ab151c7bL    # -1.2290124520940503E101
        0x924268c05c1c904L
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
    :array_5
    .array-data 8
        0x4af514454303f4b8L    # 1.2618653199832444E53
        -0x5af1b1b2a8cf3975L
        0x54b84b5bf529a46bL    # 1.3284470643516516E100
        0x214237a4d00d7ab2L
    .end array-data
.end method


# virtual methods
.method public getBarcodeImagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->barcodeImagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->contents:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getErrorCorrectionLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->errorCorrectionLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->formatName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrientation()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->orientation:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginalIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->originalIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->rawBytes:[B

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
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->rawBytes:[B

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
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->formatName:Ljava/lang/String;

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
    iget-object v5, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->contents:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->orientation:Ljava/lang/Integer;

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
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->errorCorrectionLevel:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->barcodeImagePath:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanIntentResult;->originalIntent:Landroid/content/Intent;

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
        0x7a81ed2f5d4fc9c5L    # 1.30161203713687E282
        -0x26afc3b525056041L    # -1.6769664926791395E122
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
        0x64cb5f4fa776dd75L    # 3.4662421594843233E177
        0xfafcf848081ecfcL
        0x3516a87ab4d332aL
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
        0x7be836e1c792555fL    # 7.374273820396319E288
        0x4b47476adee737b7L    # 4.459365570961351E54
        -0x2b9db9f6d612f1cbL    # -3.1225699418151595E98
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
        -0x26c7f6bec20d54c4L
        -0xa24fe9246bc40e0L    # -5.190268162053099E259
        -0x1b056586df0235d5L    # -2.6950992972801426E178
        -0x3853a574d04301fdL    # -1.8844256818197294E37
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
        -0x7f582398a54e1a8dL    # -1.698956181448704E-305
        0x7a83a66bf88680f6L    # 1.4267582350353967E282
        -0x2d999a5fec24e288L    # -8.910828412617812E88
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
        -0xd5ccda9bd5fe29cL
        0x6bb994f4f95549adL    # 8.410254751629103E210
        0x1500002d0394d7fcL    # 1.557441067137597E-207
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
        -0x239e73342329311aL    # -1.020480737245619E137
        0x3d55733d46efc1f2L    # 3.048250187629387E-13
        -0x434b337e49bb554fL    # -2.88642085896936E-16
        -0x6f6d03dcebc206d1L    # -7.826216408881496E-229
    .end array-data
.end method
