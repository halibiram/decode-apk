.class public Lcom/trilead/ssh2/SCPClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/SCPClient$LenNamePair;
    }
.end annotation


# instance fields
.field conn:Lcom/trilead/ssh2/Connection;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/Connection;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x248698f013399a95L    # 9.948798818741979E-133
        0x2abcc2a20467f5dcL    # 8.025547550366988E-103
        -0x16759616ddc4866fL    # -2.527298841210851E200
        0x78860e0ef29eb920L    # 3.728477212114706E272
        -0x4a5f62066bf1ec0dL    # -2.220678521771784E-50
    .end array-data
.end method

.method private get([Ljava/lang/String;[Ljava/io/OutputStream;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x5

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 3
    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_5

    .line 4
    array-length v2, p1

    if-nez v2, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_1

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v1, [J

    fill-array-data v0, :array_2

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v1, [J

    fill-array-data v0, :array_3

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object p1

    .line 13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/SCPClient;->receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->close()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 16
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->close()V

    .line 18
    :cond_4
    throw p2

    .line 19
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_5

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_6

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x6aee18cdfc488b5cL    # 1.2078380421646971E207
        0x490c7652730ff31L
    .end array-data

    :array_1
    .array-data 8
        -0x41d564fffc1a12aL    # -5.683601681160829E288
        0x6abca8141fd5f5d2L    # 1.437543722879933E206
    .end array-data

    :array_2
    .array-data 8
        0x487e562fc216eeadL    # 1.6516852143715771E41
        0x5aedff3d6efce251L    # 1.0396482398428192E130
        0x4dbd773d346a89fdL    # 3.1031085712107834E66
        0x2f86eaf653d50f7fL    # 9.664168283388028E-80
        -0x2755029eb2b4e95L    # -5.45410167462992E296
    .end array-data

    :array_3
    .array-data 8
        -0x73fbe664e384d3c8L    # -8.773041348374806E-251
        -0x1aa5fd545b56688cL    # -1.6864170428590112E180
        -0x6f3b1750adbe6117L    # -6.895487885683508E-228
        -0x5176d2d51a3e22d6L    # -1.6199644156097623E-84
        0x5e1969e3a2f5c77eL    # 1.9833740425034014E145
    .end array-data

    :array_4
    .array-data 8
        0x19a7766ca83ea202L    # 4.313886636948835E-185
        0x1666f927d68c4efdL    # 9.378979932368688E-201
        -0x5f6a5e6d4fb82dbaL
        -0x77eee6811dd600e8L    # -8.091884039141467E-270
        -0x393ea17effc3d2cdL    # -7.04576668777724E32
    .end array-data

    :array_5
    .array-data 8
        0x701fcffc1b45330eL    # 1.2347347394163138E232
        -0xfa4c7c20e157100L
        0x7ee6fcf8a20a6c59L    # 1.970561661875177E303
        0x493d621d30dce869L    # 6.552685479173042E44
        0x1a7afa66c9f2e176L
        0x42cfc9eb71550b87L    # 6.9904197921303055E13
    .end array-data

    :array_6
    .array-data 8
        0x19074b9c08e2b183L
        -0x7b7de45ca439ca0fL    # -5.945983517939169E-287
        -0x78e61c8460352eccL    # -1.869358573411246E-274
    .end array-data
.end method

.method private parseCLine(Ljava/lang/String;)Lcom/trilead/ssh2/SCPClient$LenNamePair;
    .locals 6

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    if-lt v2, v3, :cond_5

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    if-ne v2, v3, :cond_4

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eq v4, v3, :cond_4

    .line 27
    .line 28
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, -0x1

    .line 33
    if-eq v3, v4, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-lez v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-lez v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    add-int/lit8 v4, v4, 0x6

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    add-int/2addr v5, v4

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-ne v5, p1, :cond_1

    .line 73
    .line 74
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const-wide/16 v4, 0x0

    .line 79
    .line 80
    cmp-long p1, v1, v4

    .line 81
    .line 82
    if-ltz p1, :cond_0

    .line 83
    .line 84
    new-instance p1, Lcom/trilead/ssh2/SCPClient$LenNamePair;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Lcom/trilead/ssh2/SCPClient$LenNamePair;-><init>(Lcom/trilead/ssh2/SCPClient;)V

    .line 87
    .line 88
    .line 89
    iput-wide v1, p1, Lcom/trilead/ssh2/SCPClient$LenNamePair;->length:J

    .line 90
    .line 91
    iput-object v3, p1, Lcom/trilead/ssh2/SCPClient$LenNamePair;->filename:Ljava/lang/String;

    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 95
    .line 96
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v0, v0, [J

    .line 99
    .line 100
    fill-array-data v0, :array_0

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 115
    .line 116
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    const/16 v1, 0xa

    .line 119
    .line 120
    new-array v1, v1, [J

    .line 121
    .line 122
    fill-array-data v1, :array_1

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 137
    .line 138
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v1, v1, [J

    .line 141
    .line 142
    fill-array-data v1, :array_2

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 157
    .line 158
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v1, v1, [J

    .line 161
    .line 162
    fill-array-data v1, :array_3

    .line 163
    .line 164
    .line 165
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 177
    .line 178
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v1, v1, [J

    .line 181
    .line 182
    fill-array-data v1, :array_4

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 197
    .line 198
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    new-array v1, v1, [J

    .line 201
    .line 202
    fill-array-data v1, :array_5

    .line 203
    .line 204
    .line 205
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p1

    .line 216
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 217
    .line 218
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 219
    .line 220
    new-array v0, v0, [J

    .line 221
    .line 222
    fill-array-data v0, :array_6

    .line 223
    .line 224
    .line 225
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    nop

    .line 237
    :array_0
    .array-data 8
        0x438bcbfc9dd5962dL    # 2.50371526764971424E17
        -0x5f80b8dd5f07e3aeL
        -0x5debeec8db3999a7L
        0x2ee1f9b871887de0L    # 7.402381623024679E-83
        0x3f3f8760a3c4e6daL    # 4.810915886711405E-4
        -0x62caadd12b343a5aL
        0x7169adbf726ed867L    # 2.0901606309076105E238
        0x33845215deb80e05L    # 1.5806961477336803E-60
        0x7c5a2f697417df57L    # 1.0207320966113593E291
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
        0x205656b13eb3ea40L
        -0x773aa173679b1832L
        0x27d106f9e48f8231L    # 6.752214308612277E-117
        -0x57bba9b2bcaa5e7fL
        -0x357bb5b5e7c06334L    # -9.489328137966331E50
        0x69f679581d24f867L    # 2.7524376812426473E202
        0x15cc922733b04ea2L
        -0x300329219d6090a4L    # -2.0871039805997214E77
        -0x421bf982befbf541L    # -1.4570358852416262E-10
        0xd033cf8cd458567L
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
    :array_2
    .array-data 8
        0x82928907c43468aL
        0x46bec425b0b58c52L    # 6.2401267253599035E32
        0x43bfccdcf2cc56bcL    # 2.29144924579317248E18
        -0x22a52c6a232e4fcfL    # -5.111426059901778E141
        0x2e965cfc793c7eb1L    # 2.87790002848467E-84
        -0x37e81325f75264daL    # -2.0353310857289376E39
        -0x17bb794334d59c4aL    # -1.873002163371785E194
    .end array-data

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
    :array_3
    .array-data 8
        -0x66e174731f33627cL
        -0xea16664f2f50106L    # -1.2453698075813673E238
        -0x2fc86aadb8c9e370L    # -2.7307580398393267E78
        0x6856be8d88920766L    # 4.150789326595268E194
        0x543ba38a5854614dL    # 5.903618198649013E97
        -0xde1dfcd7a29af4L
        0x3794a40901ee9ccdL    # 5.923608312962747E-41
    .end array-data

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
    .line 384
    .line 385
    :array_4
    .array-data 8
        0x3616c6c175b951a2L    # 3.896059518752278E-48
        0x564c99198fb2cc69L    # 5.2471663659404713E107
        -0x35498f2b0fb2aba5L    # -8.39608106978732E51
        0x4d611c3f465d9696L    # 5.631028653298147E64
        0x5ea4e107fd26cb9cL    # 8.342921710198773E147
        0x16ea7efd70d667c7L
        -0x110155a5e012f167L    # -4.540314371889432E226
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
    :array_5
    .array-data 8
        0x1379c566e3b92ca5L    # 7.47577258044456E-215
        0x7e59e079fc76a004L    # 4.332387449340189E300
        0x32f99c6a9e6f0f73L    # 3.8910560534584756E-63
        -0x66967b30627050f6L
        0x1ea7e66445508ea4L
        0x40c77081c1e1452L
        -0x36667afb7875915dL    # -3.6422790738317936E46
    .end array-data

    .line 418
    .line 419
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
    :array_6
    .array-data 8
        0x7d666d8e8c3b99eL
        0x1613a20c93d81f36L    # 2.504780576085632E-202
        0xbea66acd897342dL
        -0xfaa54ccb9821282L    # -1.3456451279104637E233
        -0x5b609162e234f5b3L
        0x95eec9144e79054L
        0x94c1be68bb7f563L    # 6.97395273737056E-264
        0x252c8e87d1f3350cL
        -0x3c64aeb69be2876aL    # -4.9210880161940416E17
    .end array-data
.end method

.method private readResponse(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Ljava/io/IOException;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v0, v0, [J

    .line 26
    .line 27
    fill-array-data v0, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v0, v0, [J

    .line 72
    .line 73
    fill-array-data v0, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :array_0
    .array-data 8
        0x270248706535ff04L    # 8.850307813046176E-121
        -0x1cc0199bd9daec3bL    # -1.2038927172569115E170
        0x7b20ad3fc362dacaL    # 1.2399307736691119E285
        0x1e031bf35d88f478L    # 4.14795917526337E-164
        -0x437d8640899ba208L    # -3.2050018429880585E-17
        -0x74c8cee07eb9bed7L
    .end array-data

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
    :array_1
    .array-data 8
        0x4ccaffea7b7eba4eL    # 8.677359917007261E61
        -0x5cb2b7a394f18c3aL    # -1.229483020338086E-138
    .end array-data

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
    :array_2
    .array-data 8
        0x1956aa439b1bdb2dL
        -0x30ce78c781047c58L    # -3.0969658987878345E73
        -0x4b5b361bb64e9077L    # -4.2391313489996784E-55
        -0x4dce05dd5436187L
        0x1f7a9b765e241ab0L
        0x17da240e0230241eL    # 8.95245855793211E-194
    .end array-data
.end method

.method private receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/io/OutputStream;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/16 v4, 0x2000

    .line 1
    new-array v5, v4, [B

    .line 2
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v7

    const/16 v8, 0x200

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 3
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v8

    const v9, 0x9c40

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v8, 0x0

    .line 4
    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write(I)V

    .line 5
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 6
    array-length v9, v1

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_7

    aget-object v11, v1, v10

    .line 7
    :goto_1
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v12

    if-ltz v12, :cond_6

    .line 8
    invoke-direct {v0, v7}, Lcom/trilead/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x54

    if-ne v12, v14, :cond_0

    goto :goto_1

    :cond_0
    if-eq v12, v3, :cond_5

    const/4 v14, 0x2

    if-eq v12, v14, :cond_5

    const/16 v14, 0x43

    if-ne v12, v14, :cond_4

    .line 9
    invoke-direct {v0, v13}, Lcom/trilead/ssh2/SCPClient;->parseCLine(Ljava/lang/String;)Lcom/trilead/ssh2/SCPClient$LenNamePair;

    move-result-object v12

    .line 10
    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write(I)V

    .line 11
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 12
    iget-wide v12, v12, Lcom/trilead/ssh2/SCPClient$LenNamePair;->length:J

    :goto_2
    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_3

    int-to-long v14, v4

    cmp-long v16, v12, v14

    if-lez v16, :cond_1

    const/16 v14, 0x2000

    goto :goto_3

    :cond_1
    long-to-int v14, v12

    .line 13
    :goto_3
    invoke-virtual {v7, v5, v8, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    if-ltz v14, :cond_2

    .line 14
    invoke-virtual {v11, v5, v8, v14}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v14, v14

    sub-long/2addr v12, v14

    goto :goto_2

    .line 15
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x7

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_3
    invoke-direct {v0, v7}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 17
    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write(I)V

    .line 18
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v10, v3

    goto :goto_0

    .line 19
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, v12

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    invoke-static {v4, v3, v13}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_6
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x6

    new-array v3, v3, [J

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    return-void

    nop

    :array_0
    .array-data 8
        -0x5da52551c86244e5L    # -3.440920421544991E-143
        -0x6915268818495f3fL
        0x220183fa53a38021L    # 7.013512679755267E-145
        -0x523a9715bce9ebdcL    # -3.363290554161818E-88
        0x2d1f296ab31aff3cL    # 2.3902517492928145E-91
        -0x45014503f1ce265bL    # -1.5887248860889267E-24
        -0x3933932827120cdfL    # -1.1530618239651235E33
    .end array-data

    :array_1
    .array-data 8
        -0x42bc7c5bc48d5923L    # -1.3865690629284264E-13
        -0x178ae34c7e16831L
        0x74323fe5ad230bcbL    # 5.226484931940443E251
        -0x1a44daea05859973L    # -1.1263804663094575E182
    .end array-data

    :array_2
    .array-data 8
        -0x27f061ed07a33af2L    # -1.5572400289517714E116
        0x65bd5779b8fc51bcL    # 1.2175384548824492E182
        0x640070bef9972cdfL    # 5.082767758185757E173
        -0xbf93b85c2e389cfL    # -8.150449559072255E250
    .end array-data

    :array_3
    .array-data 8
        0x5f99b73e517f8fbbL    # 3.367113627616046E152
        -0x46ea22aa152ef8acL    # -1.05274182307612E-33
        -0x2734597112b0d402L    # -5.578187966702124E119
        0x6b3d1373d0d08b4L
        0xa68ca019fbef320L
        0x42c7f439c64e2c17L    # 5.267541751304818E13
    .end array-data
.end method

.method private receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v0, 0x4

    const/4 v2, 0x1

    const/16 v3, 0x2000

    .line 28
    new-array v4, v3, [B

    .line 29
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v6

    const/16 v7, 0x200

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 30
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v7

    const v8, 0x9c40

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v7, 0x0

    .line 31
    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write(I)V

    .line 32
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    move-object/from16 v8, p2

    const/4 v9, 0x0

    .line 33
    :goto_0
    array-length v10, v8

    if-ge v9, v10, :cond_7

    .line 34
    :goto_1
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v10

    if-ltz v10, :cond_6

    .line 35
    invoke-direct {v1, v6}, Lcom/trilead/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x54

    if-ne v10, v12, :cond_0

    goto :goto_1

    :cond_0
    if-eq v10, v2, :cond_5

    const/4 v12, 0x2

    if-eq v10, v12, :cond_5

    const/16 v12, 0x43

    if-ne v10, v12, :cond_4

    .line 36
    invoke-direct {v1, v11}, Lcom/trilead/ssh2/SCPClient;->parseCLine(Ljava/lang/String;)Lcom/trilead/ssh2/SCPClient$LenNamePair;

    move-result-object v10

    .line 37
    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write(I)V

    .line 38
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 39
    new-instance v11, Ljava/io/File;

    .line 40
    invoke-static/range {p3 .. p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 41
    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/trilead/ssh2/SCPClient$LenNamePair;->filename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 43
    :try_start_0
    iget-wide v10, v10, Lcom/trilead/ssh2/SCPClient$LenNamePair;->length:J

    :goto_2
    const-wide/16 v13, 0x0

    cmp-long v15, v10, v13

    if-lez v15, :cond_3

    int-to-long v13, v3

    cmp-long v15, v10, v13

    if-lez v15, :cond_1

    const/16 v13, 0x2000

    goto :goto_3

    :cond_1
    long-to-int v13, v10

    .line 44
    :goto_3
    invoke-virtual {v6, v4, v7, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    if-ltz v13, :cond_2

    .line 45
    invoke-virtual {v12, v4, v7, v13}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v13, v13

    sub-long/2addr v10, v13

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    .line 46
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x7

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 48
    invoke-direct {v1, v6}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 49
    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write(I)V

    .line 50
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v9, v2

    goto/16 :goto_0

    .line 51
    :goto_4
    :try_start_1
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2

    .line 52
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    invoke-static {v4, v3, v11}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x6

    new-array v3, v3, [J

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void

    :array_0
    .array-data 8
        -0x1b2fcc34c7ac3a68L    # -4.103502051060486E177
        0x6cb4f0ffd8db0a89L    # 4.5119336682150904E215
        0x1a7a6beeb02eb589L
        -0x509ed1e717afeb33L    # -1.8111567287303795E-80
        0x5f2c1ce4b1f17992L
        0x19bec594daa7559aL
        -0x60640cc96945edcdL
    .end array-data

    :array_1
    .array-data 8
        -0x5b2a7d24405c46d5L    # -3.030580627510831E-131
        -0x469adc602456131aL    # -3.257002989833993E-32
        -0x49f4c097be96e7d2L    # -2.330452791400499E-48
        0x314bdd21220d3382L    # 3.154068891997235E-71
    .end array-data

    :array_2
    .array-data 8
        -0x4e09cf1bdc728277L    # -5.1444327294540616E-68
        0x735e67b9e0e3739fL    # 5.314764584435027E247
        -0x78262d1e4d14e8f6L    # -7.637712863619467E-271
        0x29e389da94b2234L
    .end array-data

    :array_3
    .array-data 8
        -0x73b62fe630204ffaL
        -0x6f1d7da96641dd12L
        0x436f5897018f4cc0L    # 7.0585038940038656E16
        0x5098aeaf4e8c2a54L    # 1.8291342833283062E80
        0x1038fe2036472939L
        -0x2b82a1ef655615a8L    # -1.0036555672582831E99
    .end array-data
.end method

.method private receiveLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x2000

    .line 13
    .line 14
    if-gt v1, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    int-to-char v1, v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 37
    .line 38
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v1, 0x6

    .line 41
    new-array v1, v1, [J

    .line 42
    .line 43
    fill-array-data v1, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 58
    .line 59
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    new-array v1, v1, [J

    .line 63
    .line 64
    fill-array-data v1, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        0x2f02b8b60f6c775cL    # 3.083844596489553E-82
        -0x25f297d13f0ff759L    # -6.2206875783657565E125
        0x58edce22bf59bef8L    # 2.4051412432203856E120
        -0x31c38047177e9ab5L    # -7.683292345536175E68
        0xa30b6de32e1f315L
        0x1745512034b0a6dL
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
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 8
        -0x2b9ddb340d5d29b2L    # -3.100382960600458E98
        0xd38b3b93c7b1213L
        -0x3032ad5591947c4bL    # -2.6526260684044474E76
        -0x4db2d4e23d521649L    # -2.163833869465064E-66
        0x603048fa4fd5bcdL
    .end array-data
.end method

.method private sendBytes(Lcom/trilead/ssh2/Session;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/16 v2, 0x200

    .line 12
    .line 13
    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    new-array v4, v3, [J

    .line 28
    .line 29
    fill-array-data v4, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v2, v3, [J

    .line 48
    .line 49
    fill-array-data v2, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    array-length p4, p2

    .line 63
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v2, v3, [J

    .line 69
    .line 70
    fill-array-data v2, :array_2

    .line 71
    .line 72
    .line 73
    invoke-direct {p4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array p4, v3, [J

    .line 89
    .line 90
    fill-array-data p4, :array_3

    .line 91
    .line 92
    .line 93
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-static {p3, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget-object p3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 101
    .line 102
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 113
    .line 114
    .line 115
    array-length p1, p2

    .line 116
    const/4 p4, 0x0

    .line 117
    invoke-virtual {v0, p2, p4, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p4}, Ljava/io/OutputStream;->write(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    new-array p2, v3, [J

    .line 132
    .line 133
    fill-array-data p2, :array_4

    .line 134
    .line 135
    .line 136
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :array_0
    .array-data 8
        -0x1fafe0ade32be6eaL    # -8.646613111450949E155
        -0x57a3e8cf05c83e16L
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
    :array_1
    .array-data 8
        0x63e52d74dabcee70L
        0x6c605e19241de812L    # 1.102024300574491E214
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
    :array_2
    .array-data 8
        0x7800c3f5d4866a67L    # 1.1071382522811568E270
        -0x2d941199a03770c7L    # -1.1112687560670015E89
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
    :array_3
    .array-data 8
        0x7d4865bcdf2cc224L    # 3.116373806215464E295
        0x795e20b490e4bccdL    # 4.1723699703977365E276
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
    :array_4
    .array-data 8
        -0x5965c5035144e6d3L    # -9.919893083189532E-123
        0x13dcb3ca976bda7bL
    .end array-data
.end method

.method private sendFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/16 v4, 0x2000

    .line 9
    .line 10
    new-array v5, v4, [B

    .line 11
    .line 12
    new-instance v6, Ljava/io/BufferedOutputStream;

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    const v8, 0x9c40

    .line 19
    .line 20
    .line 21
    invoke-direct {v6, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 22
    .line 23
    .line 24
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const/16 v9, 0x200

    .line 31
    .line 32
    invoke-direct {v7, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v7}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 36
    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    :goto_0
    array-length v10, v0

    .line 40
    if-ge v9, v10, :cond_4

    .line 41
    .line 42
    new-instance v10, Ljava/io/File;

    .line 43
    .line 44
    aget-object v11, v0, v9

    .line 45
    .line 46
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10}, Ljava/io/File;->length()J

    .line 50
    .line 51
    .line 52
    move-result-wide v11

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    array-length v13, v2

    .line 56
    if-le v13, v9, :cond_0

    .line 57
    .line 58
    aget-object v13, v2, v9

    .line 59
    .line 60
    if-eqz v13, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v8, v3, [J

    .line 75
    .line 76
    fill-array-data v8, :array_0

    .line 77
    .line 78
    .line 79
    invoke-direct {v15, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-object/from16 v8, p4

    .line 90
    .line 91
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v4, v3, [J

    .line 97
    .line 98
    fill-array-data v4, :array_1

    .line 99
    .line 100
    .line 101
    invoke-direct {v15, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v15, v3, [J

    .line 117
    .line 118
    fill-array-data v15, :array_2

    .line 119
    .line 120
    .line 121
    invoke-direct {v4, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array v13, v3, [J

    .line 137
    .line 138
    fill-array-data v13, :array_3

    .line 139
    .line 140
    .line 141
    invoke-direct {v4, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-static {v4, v14}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    sget-object v13, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 149
    .line 150
    invoke-virtual {v4, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write([B)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 158
    .line 159
    .line 160
    invoke-direct {v1, v7}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 161
    .line 162
    .line 163
    new-instance v4, Ljava/io/FileInputStream;

    .line 164
    .line 165
    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 166
    .line 167
    .line 168
    :goto_2
    const-wide/16 v13, 0x0

    .line 169
    .line 170
    cmp-long v10, v11, v13

    .line 171
    .line 172
    if-lez v10, :cond_3

    .line 173
    .line 174
    const/16 v10, 0x2000

    .line 175
    .line 176
    int-to-long v13, v10

    .line 177
    cmp-long v15, v11, v13

    .line 178
    .line 179
    if-lez v15, :cond_1

    .line 180
    .line 181
    const/16 v13, 0x2000

    .line 182
    .line 183
    :goto_3
    const/4 v14, 0x0

    .line 184
    goto :goto_4

    .line 185
    :cond_1
    long-to-int v13, v11

    .line 186
    goto :goto_3

    .line 187
    :goto_4
    :try_start_0
    invoke-virtual {v4, v5, v14, v13}, Ljava/io/FileInputStream;->read([BII)I

    .line 188
    .line 189
    .line 190
    move-result v15

    .line 191
    if-ne v15, v13, :cond_2

    .line 192
    .line 193
    invoke-virtual {v6, v5, v14, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 194
    .line 195
    .line 196
    int-to-long v13, v13

    .line 197
    sub-long/2addr v11, v13

    .line 198
    goto :goto_2

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    move-object v2, v0

    .line 201
    goto :goto_5

    .line 202
    :cond_2
    new-instance v2, Ljava/io/IOException;

    .line 203
    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 210
    .line 211
    const/4 v6, 0x6

    .line 212
    new-array v6, v6, [J

    .line 213
    .line 214
    fill-array-data v6, :array_4

    .line 215
    .line 216
    .line 217
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    aget-object v0, v0, v9

    .line 228
    .line 229
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :goto_5
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    .line 242
    .line 243
    goto :goto_6

    .line 244
    :catchall_1
    move-exception v0

    .line 245
    move-object v3, v0

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 247
    .line 248
    .line 249
    :goto_6
    throw v2

    .line 250
    :cond_3
    const/16 v10, 0x2000

    .line 251
    .line 252
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 253
    .line 254
    .line 255
    const/4 v4, 0x0

    .line 256
    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 260
    .line 261
    .line 262
    invoke-direct {v1, v7}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 263
    .line 264
    .line 265
    add-int/lit8 v9, v9, 0x1

    .line 266
    .line 267
    const/16 v4, 0x2000

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v2, v3, [J

    .line 274
    .line 275
    fill-array-data v2, :array_5

    .line 276
    .line 277
    .line 278
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 286
    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    nop

    .line 299
    :array_0
    .array-data 8
        -0x4ef54f043d51ce3dL    # -1.8883454949213063E-72
        -0x1b5c315bd1f3fefaL    # -6.270618776431593E176
    .end array-data

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
    :array_1
    .array-data 8
        0x1062d301bcf60efaL    # 9.699981141659327E-230
        0x1a764f9fce6342cdL    # 3.360487481726904E-181
    .end array-data

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
    :array_2
    .array-data 8
        0x3007ac6d4e3eee0aL    # 2.5556088317163782E-77
        0x298e6dee1357c167L
    .end array-data

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
        -0x38243b347966d145L    # -1.476438962543863E38
        -0x33bdca21cd86c161L    # -2.286173394313284E59
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
        -0x60da8ba8ab7a487fL    # -1.22081493095515E-158
        0x451dc86fe8727e50L    # 9.001346600894801E24
        -0x3225d32e4d781c24L    # -1.1026228416881576E67
        -0x6e77194c0c15410eL    # -3.363668787410637E-224
        -0x37b2f8898e5361c0L    # -1.9756216466591044E40
        -0x4f41b598e113f18eL    # -6.696832975948005E-74
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
    :array_5
    .array-data 8
        0x7851d627f02bbdbbL    # 3.769180074351776E271
        -0x50d0bb5451d18073L    # -2.0602251517446708E-81
    .end array-data
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2

    .line 2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/OutputStream;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/SCPClient;->get([Ljava/lang/String;[Ljava/io/OutputStream;)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/SCPClient;->get([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public get([Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 21
    array-length v2, p1

    if-nez v2, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    if-eqz v5, :cond_2

    .line 24
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 26
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_1

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v1, [J

    fill-array-data v0, :array_2

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v1, [J

    fill-array-data v0, :array_3

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x0

    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v3}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, v0, p1, p2}, Lcom/trilead/ssh2/SCPClient;->receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 33
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 35
    :cond_4
    throw p1

    .line 36
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_5

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x34619fe3ac60fbf2L    # 2.246204508088798E-56
        -0x3101410a37f26ce3L    # -3.3952106252636134E72
    .end array-data

    :array_1
    .array-data 8
        -0x36c60e6350a1c629L    # -5.785660080262078E44
        0x807a9a25443e128L
    .end array-data

    :array_2
    .array-data 8
        0xbeda01cb0017144L
        0x2547ecab46ebbfabL    # 4.314341612863943E-129
        0x4aaff6eaf5b565d3L    # 5.9796738899831834E51
        -0x60ef0310caa2b644L    # -4.833316003188493E-159
        -0x2ae7147c5f3aec9cL    # -8.720998122661294E101
    .end array-data

    :array_3
    .array-data 8
        -0x281d8e0e509e0e72L    # -2.2711678465918765E115
        -0x3d8f705c7096a5a8L    # -1.1380694032856465E12
        -0x2cbf6bc5dc86699L
        -0x28e5b096cde61168L    # -3.954599839956586E111
        -0x713a1ff5504f68f2L
    .end array-data

    :array_4
    .array-data 8
        0x2ceea4215e936e48L    # 2.9378943663791708E-92
        0x1033c2cbc81927ebL
        -0x1ef3d9f8a9ee7f94L
        0x231edc46881410f0L
        -0x2e3f6335b35c637fL    # -6.454502569306531E85
    .end array-data

    :array_5
    .array-data 8
        0x652490941c38a1ebL    # 1.6666756195182084E179
        -0x2fd4ef3b1d958fcL
        -0x607585e94a6a2dfbL    # -9.64227582790077E-157
    .end array-data
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x1e0ef1b74e876d1bL    # 6.716943223308044E-164
        0x762b01ddb37571ccL    # 1.660990895809564E261
    .end array-data
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/trilead/ssh2/SCPClient;->put([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x7fe1b598af95e3ebL    # 9.94874899542131E307
        0x71f55704ec771578L    # 8.893430442844791E240
    .end array-data
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 6
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    .line 12
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    invoke-static {v2, v1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v1}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p3}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/trilead/ssh2/SCPClient;->sendBytes(Lcom/trilead/ssh2/Session;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p4, 0x5

    new-array p4, p4, [J

    fill-array-data p4, :array_3

    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 20
    :cond_3
    throw p1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_4

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_5

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x1024ea0463d4f32dL    # 6.735550970167524E-231
        -0x70849c6446ddc8b6L
        0x3ca3219790b6540dL    # 1.327494985649887E-16
    .end array-data

    :array_1
    .array-data 8
        -0x495fbb01cb4570fdL    # -1.424901924736532E-45
        -0x45f70114b2fc0d2dL    # -3.943638397111381E-29
    .end array-data

    :array_2
    .array-data 8
        -0x31e93aaee71f4b42L    # -1.534746773950803E68
        0x3d75ce06898dd6ebL    # 1.2394586549132382E-12
        0x3622cdabbfa75ef2L    # 6.432904844611055E-48
    .end array-data

    :array_3
    .array-data 8
        -0x697db59cb97d383cL    # -2.986897407105249E-200
        -0x33db16057ed57b1L    # -9.134523840753241E292
        0x3526d2ab1a21a0ecL    # 1.191412187605314E-52
        0x313ae4e4345f008dL    # 1.5221525202488603E-71
        0x76c7f81beffb0850L
    .end array-data

    :array_4
    .array-data 8
        -0x431979b1f6976947L    # -2.5007360900208993E-15
        0x2d9bf55d9230eb21L    # 5.490027541165002E-89
        -0x305df84a4996494dL    # -4.0776266689421275E75
    .end array-data

    :array_5
    .array-data 8
        0x468cf4b6d93afd0cL    # 7.3411966180372845E31
        0x103b6f0e72cbd53eL
        0x1568541abef355a4L
    .end array-data
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x28f3ab18bc4e18a2L
        -0x7c9926d8339e4954L    # -2.861985427355932E-292
    .end array-data
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    .line 28
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 29
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 30
    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v1, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    array-length v3, p1

    if-nez v3, :cond_2

    return-void

    .line 33
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {p3, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    .line 35
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    invoke-static {v4, v3, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 37
    array-length v1, p1

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 38
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_3

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v1, 0x0

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v2}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v1

    .line 40
    invoke-virtual {v1, p3}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, v1, p1, p2, p4}, Lcom/trilead/ssh2/SCPClient;->sendFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v1}, Lcom/trilead/ssh2/Session;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 43
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array p4, v0, [J

    fill-array-data p4, :array_4

    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v1, :cond_6

    .line 44
    invoke-virtual {v1}, Lcom/trilead/ssh2/Session;->close()V

    .line 45
    :cond_6
    throw p1

    .line 46
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v1, [J

    fill-array-data p3, :array_5

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v1, [J

    fill-array-data p3, :array_6

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x76ef8c6a1e762d6eL    # 7.947395790296127E264
        -0x2bf54383074f4d10L    # -7.138543944344908E96
        -0x4728d59a634c6875L    # -6.971148080327634E-35
    .end array-data

    :array_1
    .array-data 8
        0x271d7a5bd0428258L
        0x53f045243ae24151L    # 2.172043041250615E96
    .end array-data

    :array_2
    .array-data 8
        0x383b35a48e587e58L    # 7.996165779048935E-38
        -0x6d6b6f52977f889fL    # -3.641119750114273E-219
        0x3665bb987e53803eL    # 1.189614575061539E-46
    .end array-data

    :array_3
    .array-data 8
        0x6e52aca2d0184008L
        -0x5280ad541a29305bL    # -1.5376721774335836E-89
        -0x22099814e9635484L    # -4.371605146674486E144
        -0x387779652292826L    # -3.825287183951849E291
        -0x74e74c7443337f89L    # -3.290215864744187E-255
    .end array-data

    :array_4
    .array-data 8
        0x75f271a896715ad7L    # 1.4179172396309038E260
        -0xa2135a26ece9e46L    # -5.917699161739837E259
        0x26f772b70f2fdc4dL
        0x582ca5d98f7acbdcL    # 5.6439140050549785E116
        0x29ff3b9517e487bL    # 4.8856567840177E-296
    .end array-data

    :array_5
    .array-data 8
        0x244f9ad90d39e9e0L    # 8.696530162506099E-134
        -0x7064af3fca0753bbL
        0x2d7eee75cea2a381L    # 1.518455513505638E-89
    .end array-data

    :array_6
    .array-data 8
        0x4d60914b84ac4451L    # 5.452398625170401E64
        -0x366988499d2aaf38L    # -3.206686842600154E46
        0x6146cfa74e159e6L
    .end array-data
.end method
