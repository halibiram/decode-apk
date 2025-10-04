.class public Lcom/jcraft/jzlib/GZIPInputStream;
.super Lcom/jcraft/jzlib/InflaterInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/16 v0, 0x200

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/jcraft/jzlib/GZIPInputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 2

    .line 2
    new-instance v0, Lcom/jcraft/jzlib/Inflater;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Lcom/jcraft/jzlib/Inflater;-><init>(I)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/jcraft/jzlib/GZIPInputStream;-><init>(Ljava/io/InputStream;Lcom/jcraft/jzlib/Inflater;IZ)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->myinflater:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/jcraft/jzlib/Inflater;IZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jcraft/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lcom/jcraft/jzlib/Inflater;IZ)V

    return-void
.end method

.method private fill([B)I
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    const/4 v2, -0x1

    .line 4
    :try_start_0
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 5
    .line 6
    array-length v4, p1

    .line 7
    sub-int/2addr v4, v1

    .line 8
    invoke-virtual {v3, p1, v1, v4}, Ljava/io/InputStream;->read([BII)I

    .line 9
    .line 10
    .line 11
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    nop

    .line 14
    const/4 v3, -0x1

    .line 15
    :goto_0
    if-ne v3, v2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    add-int/2addr v1, v3

    .line 19
    if-lt v1, v0, :cond_0

    .line 20
    .line 21
    :goto_1
    return v1
.end method


# virtual methods
.method public getCRC()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 4
    .line 5
    iget v1, v0, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 6
    .line 7
    const/16 v2, 0xc

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/jcraft/jzlib/GZIPHeader;->getCRC()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_0
    new-instance v0, Lcom/jcraft/jzlib/GZIPException;

    .line 21
    .line 22
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Lcom/jcraft/jzlib/GZIPException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :array_0
    .array-data 8
        0x4b0f9376c105037bL    # 3.7804786239799087E53
        -0x62ec722487dbb9d4L
        -0x465ab87fa21b6ec8L    # -5.245753065656034E-31
        -0x18288014d5028304L    # -1.6752485037701336E192
        -0x3bd39361db75f6a3L    # -2.6216778372078256E20
    .end array-data
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/jcraft/jzlib/GZIPHeader;->getComment()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getModifiedtime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/jcraft/jzlib/GZIPHeader;->getModifiedTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/jcraft/jzlib/GZIPHeader;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getOS()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/jcraft/jzlib/GZIPHeader;->getOS()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public readHeader()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    const-wide v4, -0x1c3c1fabe791b361L    # -3.8406321111580634E172

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    aput-wide v4, v3, v6

    .line 14
    .line 15
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v3, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 27
    .line 28
    invoke-virtual {v3, v1, v6, v6}, Lcom/jcraft/jzlib/ZStream;->setOutput([BII)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 32
    .line 33
    invoke-virtual {v3, v1, v6, v6, v6}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    new-array v3, v1, [B

    .line 39
    .line 40
    invoke-direct {p0, v3}, Lcom/jcraft/jzlib/GZIPInputStream;->fill([B)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eq v4, v1, :cond_1

    .line 45
    .line 46
    if-lez v4, :cond_0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 49
    .line 50
    invoke-virtual {v1, v3, v6, v4, v6}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 54
    .line 55
    iput v6, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 56
    .line 57
    iput v4, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 58
    .line 59
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 60
    .line 61
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v0, v0, [J

    .line 64
    .line 65
    fill-array-data v0, :array_0

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 80
    .line 81
    invoke-virtual {v1, v3, v6, v4, v6}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    .line 82
    .line 83
    .line 84
    new-array v1, v2, [B

    .line 85
    .line 86
    :cond_2
    iget-object v3, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 87
    .line 88
    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 89
    .line 90
    if-gtz v3, :cond_4

    .line 91
    .line 92
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 93
    .line 94
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-lez v3, :cond_3

    .line 99
    .line 100
    iget-object v3, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 101
    .line 102
    invoke-virtual {v3, v1, v6, v2, v2}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    new-instance v1, Ljava/io/IOException;

    .line 107
    .line 108
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v0, v0, [J

    .line 111
    .line 112
    fill-array-data v0, :array_1

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v1

    .line 126
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 127
    .line 128
    invoke-virtual {v3, v6}, Lcom/jcraft/jzlib/Inflater;->inflate(I)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 137
    .line 138
    array-length v0, v0

    .line 139
    rsub-int v0, v0, 0x800

    .line 140
    .line 141
    if-lez v0, :cond_5

    .line 142
    .line 143
    new-array v0, v0, [B

    .line 144
    .line 145
    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/GZIPInputStream;->fill([B)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-lez v1, :cond_5

    .line 150
    .line 151
    iget-object v3, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 152
    .line 153
    iget v4, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 154
    .line 155
    iget v5, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 156
    .line 157
    add-int/2addr v4, v5

    .line 158
    iput v4, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 159
    .line 160
    iput v6, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 161
    .line 162
    invoke-virtual {v3, v0, v6, v1, v2}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    .line 163
    .line 164
    .line 165
    :cond_5
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 166
    .line 167
    iget v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 168
    .line 169
    iget v2, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 170
    .line 171
    add-int/2addr v1, v2

    .line 172
    iput v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 173
    .line 174
    iput v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 175
    .line 176
    new-instance v0, Ljava/io/IOException;

    .line 177
    .line 178
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 179
    .line 180
    iget-object v1, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 181
    .line 182
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    :cond_6
    iget-object v3, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 187
    .line 188
    iget-object v3, v3, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/jcraft/jzlib/Inflate;->inParsingHeader()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-nez v3, :cond_2

    .line 195
    .line 196
    return-void

    .line 197
    :array_0
    .array-data 8
        0x717701c04c472a2L
        0x5ff779a34d39912dL    # 1.9671892249250126E154
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
    :array_1
    .array-data 8
        -0x676d3b786beb05f2L
        -0x59155f88820d6bdL
    .end array-data
.end method
