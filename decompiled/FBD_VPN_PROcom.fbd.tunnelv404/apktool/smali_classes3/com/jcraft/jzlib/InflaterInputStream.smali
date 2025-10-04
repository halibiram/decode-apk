.class public Lcom/jcraft/jzlib/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field protected static final DEFAULT_BUFSIZE:I = 0x200


# instance fields
.field private b:[B

.field protected buf:[B

.field private byte1:[B

.field private close_in:Z

.field private closed:Z

.field private eof:Z

.field protected final inflater:Lcom/jcraft/jzlib/Inflater;

.field protected myinflater:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/jcraft/jzlib/Inflater;)V
    .locals 1

    const/16 v0, 0x200

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lcom/jcraft/jzlib/Inflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/jcraft/jzlib/Inflater;I)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lcom/jcraft/jzlib/Inflater;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/jcraft/jzlib/Inflater;IZ)V
    .locals 2

    .line 6
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->closed:Z

    .line 8
    iput-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->eof:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->close_in:Z

    .line 10
    iput-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->myinflater:Z

    .line 11
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->byte1:[B

    const/16 v0, 0x200

    .line 12
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->b:[B

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-lez p3, :cond_0

    .line 13
    iput-object p2, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 14
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->buf:[B

    .line 15
    iput-boolean p4, p0, Lcom/jcraft/jzlib/InflaterInputStream;->close_in:Z

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x6

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 17
    throw p1

    nop

    :array_0
    .array-data 8
        0x4fc05274e53c732fL    # 1.476538763882845E76
        -0x49293f5aabeb29d3L    # -1.594153756780627E-44
        -0x298655330f5baccdL    # -3.7675304900677295E108
        -0x5566e51bf719f3a7L
        0x3fc9935ae79172c8L    # 0.19980942065276097
        -0x2d4d8c532f1e92b7L    # -2.3491933697136388E90
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    .line 2
    new-instance v0, Lcom/jcraft/jzlib/Inflater;

    invoke-direct {v0, p2}, Lcom/jcraft/jzlib/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lcom/jcraft/jzlib/Inflater;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->myinflater:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->eof:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 14
    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    new-array v2, v2, [J

    .line 19
    .line 20
    fill-array-data v2, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    nop

    :array_0
    .array-data 8
        0x4f56e6d5f69671aeL    # 1.6185522208895694E74
        -0x7eb2f0d00dce7630L    # -2.118750869251391E-302
        0x496fb3ae72dc33d2L    # 5.655804497147412E45
    .end array-data
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->myinflater:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflater;->end()I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->close_in:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->closed:Z

    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public fill()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->buf:[B

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 22
    .line 23
    iget v1, v1, Lcom/jcraft/jzlib/Inflate;->wrap:I

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflater;->finished()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->buf:[B

    .line 34
    .line 35
    aput-byte v3, v0, v3

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 42
    .line 43
    iget-wide v0, v0, Lcom/jcraft/jzlib/Inflate;->was:J

    .line 44
    .line 45
    const-wide/16 v2, -0x1

    .line 46
    .line 47
    cmp-long v4, v0, v2

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    new-instance v0, Ljava/io/IOException;

    .line 52
    .line 53
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/4 v2, 0x4

    .line 56
    new-array v2, v2, [J

    .line 57
    .line 58
    fill-array-data v2, :array_0

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 73
    .line 74
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v2, 0x6

    .line 77
    new-array v2, v2, [J

    .line 78
    .line 79
    fill-array-data v2, :array_1

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/jcraft/jzlib/InflaterInputStream;->buf:[B

    .line 96
    .line 97
    invoke-virtual {v1, v4, v3, v0, v2}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 102
    .line 103
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    const/4 v2, 0x3

    .line 106
    new-array v2, v2, [J

    .line 107
    .line 108
    fill-array-data v2, :array_2

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    nop

    .line 123
    :array_0
    .array-data 8
        -0x49d07904d2d87de2L    # -1.078591680712714E-47
        -0x36ae5047d90f9b40L    # -1.5776799285098025E45
        0x51931ff5b1b8f722L    # 9.288309268038945E84
        -0x7f5ae2aab6140b05L
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        0x2e1f851d0234874L    # 8.79270072225301E-295
        0x1c677492c5dccfdcL    # 7.586730765657385E-172
        -0x63348bf93e0097edL
        0x40fa8d440e36787dL    # 108756.25346991602
        -0x65939b9db27a5490L
        0x2e5904f817d2ad8dL    # 2.0123258893160586E-85
    .end array-data

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
    :array_2
    .array-data 8
        0x3337c9252864fc87L    # 5.781989026299808E-62
        0x70c896b85cefd69dL    # 1.9545333893903465E235
        0x5bd6a623b5e9d46fL    # 2.572212105402115E134
    .end array-data
.end method

.method public getAvailIn()[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 2
    .line 3
    iget v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 4
    .line 5
    if-gtz v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-array v2, v1, [B

    .line 10
    .line 11
    iget-object v3, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 12
    .line 13
    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    return-object v2
.end method

.method public getInflater()Lcom/jcraft/jzlib/Inflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTotalIn()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->getTotalIn()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTotalOut()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->getTotalOut()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->closed:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->byte1:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jzlib/InflaterInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->byte1:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1

    .line 3
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 8
        0x756b5892121684f2L    # 4.106007930031439E257
        0x431f6aa8cdd04209L    # 2.2107493795144982E15
        -0x214cd9703bf47c2L    # -3.557339834173541E298
    .end array-data
.end method

.method public read([BII)I
    .locals 5

    .line 4
    iget-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->closed:Z

    if-nez v0, :cond_9

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    .line 6
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->eof:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    return v2

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    invoke-virtual {v1, p1, p2, p3}, Lcom/jcraft/jzlib/ZStream;->setOutput([BII)V

    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-boolean p3, p0, Lcom/jcraft/jzlib/InflaterInputStream;->eof:Z

    if-nez p3, :cond_7

    .line 10
    iget-object p3, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    iget p3, p3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez p3, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/jcraft/jzlib/InflaterInputStream;->fill()V

    .line 12
    :cond_2
    iget-object p3, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    invoke-virtual {p3, v0}, Lcom/jcraft/jzlib/Inflater;->inflate(I)I

    move-result p3

    .line 13
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    iget v3, v1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    sub-int p2, v3, p2

    add-int/2addr p1, p2

    const/4 p2, -0x3

    if-eq p3, p2, :cond_6

    const/4 p2, 0x2

    const/4 v4, 0x1

    if-eq p3, v4, :cond_3

    if-eq p3, p2, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iput-boolean v4, p0, Lcom/jcraft/jzlib/InflaterInputStream;->eof:Z

    if-ne p3, p2, :cond_4

    return v2

    .line 15
    :cond_4
    :goto_1
    iget p2, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move p2, v3

    goto :goto_0

    .line 16
    :cond_6
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    iget-object p2, p2, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return p1

    .line 17
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 18
    :cond_9
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x3

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0xc7671e5dfe0eee4L
        -0x2d804ac5b36067e5L    # -2.5230537288716428E89
        -0x6737883c772f69a5L    # -2.74579521415999E-189
    .end array-data
.end method

.method public readHeader()V
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    const-wide v3, -0x7e761d24bd7a7c18L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    aput-wide v3, v2, v5

    .line 13
    .line 14
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 26
    .line 27
    invoke-virtual {v2, v0, v5, v5, v5}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 31
    .line 32
    invoke-virtual {v2, v0, v5, v5}, Lcom/jcraft/jzlib/ZStream;->setOutput([BII)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 36
    .line 37
    invoke-virtual {v0, v5}, Lcom/jcraft/jzlib/Inflater;->inflate(I)I

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->inParsingHeader()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    new-array v0, v1, [B

    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-lez v1, :cond_3

    .line 60
    .line 61
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/jcraft/jzlib/ZStream;->setInput([B)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 67
    .line 68
    invoke-virtual {v1, v5}, Lcom/jcraft/jzlib/Inflater;->inflate(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/jcraft/jzlib/Inflate;->inParsingHeader()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 96
    .line 97
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    const/4 v2, 0x2

    .line 100
    new-array v2, v2, [J

    .line 101
    .line 102
    fill-array-data v2, :array_0

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    nop

    .line 117
    :array_0
    .array-data 8
        0x13b727b1c1845794L
        -0x7f2ae0954e3ecee4L
    .end array-data
.end method

.method public declared-synchronized reset()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    .line 3
    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        0x5a14adcdd67de1efL    # 8.748751918978316E125
        -0x9071786b9066428L
        -0x19d53a3c8fb0041eL    # -1.4219899034296702E184
        -0x5b7b23c31e21fbfbL    # -9.184014353796351E-133
    .end array-data
.end method

.method public skip(J)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_4

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/jcraft/jzlib/InflaterInputStream;->closed:Z

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    const-wide/32 v0, 0x7fffffff

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    long-to-int p2, p1

    .line 19
    const/4 p1, 0x0

    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-ge v0, p2, :cond_2

    .line 22
    .line 23
    sub-int v1, p2, v0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/jcraft/jzlib/InflaterInputStream;->b:[B

    .line 26
    .line 27
    array-length v3, v2

    .line 28
    if-le v1, v3, :cond_0

    .line 29
    .line 30
    array-length v1, v2

    .line 31
    :cond_0
    invoke-virtual {p0, v2, p1, v1}, Lcom/jcraft/jzlib/InflaterInputStream;->read([BII)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, -0x1

    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/jcraft/jzlib/InflaterInputStream;->eof:Z

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/2addr v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    int-to-long p1, v0

    .line 45
    return-wide p1

    .line 46
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 47
    .line 48
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v0, 0x3

    .line 51
    new-array v0, v0, [J

    .line 52
    .line 53
    fill-array-data v0, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v0, 0x4

    .line 72
    new-array v0, v0, [J

    .line 73
    .line 74
    fill-array-data v0, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    nop

    .line 89
    :array_0
    .array-data 8
        0x3394a22eb8515e03L    # 3.210068593529856E-60
        -0x7d1b097f102e29dfL
        -0x641c5c6b35071226L
    .end array-data

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
    :array_1
    .array-data 8
        -0x50569725c2ed0826L    # -4.2859651617286203E-79
        -0x32dbcb415400ce26L    # -4.15614021579391E63
        0x4247f8d5edfe8f8aL    # 2.059180349411214E11
        -0x3cc22d816458d7d6L    # -8.394215543744554E15
    .end array-data
.end method
