.class public Lcom/jcraft/jzlib/GZIPHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final OS_AMIGA:B = 0x1t

.field public static final OS_ATARI:B = 0x5t

.field public static final OS_CPM:B = 0x9t

.field public static final OS_MACOS:B = 0x7t

.field public static final OS_MSDOS:B = 0x0t

.field public static final OS_OS2:B = 0x6t

.field public static final OS_QDOS:B = 0xct

.field public static final OS_RISCOS:B = 0xdt

.field public static final OS_TOPS20:B = 0xat

.field public static final OS_UNIX:B = 0x3t

.field public static final OS_UNKNOWN:B = -0x1t

.field public static final OS_VMCMS:B = 0x4t

.field public static final OS_VMS:B = 0x2t

.field public static final OS_WIN32:B = 0xbt

.field public static final OS_ZSYSTEM:B = 0x8t


# instance fields
.field comment:[B

.field crc:J

.field done:Z

.field extra:[B

.field private fhcrc:Z

.field hcrc:I

.field mtime:J

.field name:[B

.field os:I

.field text:Z

.field time:J

.field xflags:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->text:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->fhcrc:Z

    .line 8
    .line 9
    const/16 v1, 0xff

    .line 10
    .line 11
    iput v1, p0, Lcom/jcraft/jzlib/GZIPHeader;->os:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->done:Z

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->mtime:J

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/jcraft/jzlib/GZIPHeader;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/jcraft/jzlib/GZIPHeader;->extra:[B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    array-length v3, v1

    .line 13
    new-array v4, v3, [B

    .line 14
    .line 15
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    iput-object v4, v0, Lcom/jcraft/jzlib/GZIPHeader;->extra:[B

    .line 19
    .line 20
    :cond_0
    iget-object v1, v0, Lcom/jcraft/jzlib/GZIPHeader;->name:[B

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    array-length v3, v1

    .line 25
    new-array v4, v3, [B

    .line 26
    .line 27
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iput-object v4, v0, Lcom/jcraft/jzlib/GZIPHeader;->name:[B

    .line 31
    .line 32
    :cond_1
    iget-object v1, v0, Lcom/jcraft/jzlib/GZIPHeader;->comment:[B

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    array-length v3, v1

    .line 37
    new-array v4, v3, [B

    .line 38
    .line 39
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iput-object v4, v0, Lcom/jcraft/jzlib/GZIPHeader;->comment:[B

    .line 43
    .line 44
    :cond_2
    return-object v0
.end method

.method public getCRC()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->crc:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->comment:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    const-wide v2, 0x56b9a7bf18a5c3e0L    # 6.025246975501889E109

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    aput-wide v2, v1, v4

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 27
    .line 28
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    new-array v3, v3, [J

    .line 32
    .line 33
    fill-array-data v3, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/InternalError;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        -0x4a48d52e2bc81623L    # -6.192064627967491E-50
        0x3f33bda5559c6bedL    # 3.0122076496902247E-4
        -0x1d78b9ecd22a37b2L
    .end array-data
.end method

.method public getModifiedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->mtime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->name:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    const-wide v2, -0x586165522f9470efL    # -7.585128600425717E-118

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    aput-wide v2, v1, v4

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 27
    .line 28
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    new-array v3, v3, [J

    .line 32
    .line 33
    fill-array-data v3, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/InternalError;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x604c575ad5df5a3cL
        0x4f2820daf8d49768L    # 2.1315544455527668E73
        0x1b940439e9795b2fL    # 7.903343717070053E-176
    .end array-data
.end method

.method public getOS()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->os:I

    .line 2
    .line 3
    return v0
.end method

.method public put(Lcom/jcraft/jzlib/Deflate;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->text:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/jcraft/jzlib/GZIPHeader;->fhcrc:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jzlib/GZIPHeader;->extra:[B

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x4

    .line 14
    .line 15
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jzlib/GZIPHeader;->name:[B

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    or-int/lit8 v0, v0, 0x8

    .line 20
    .line 21
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jzlib/GZIPHeader;->comment:[B

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    or-int/lit8 v0, v0, 0x10

    .line 26
    .line 27
    :cond_3
    iget v1, p1, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-ne v1, v2, :cond_4

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_4
    const/16 v2, 0x9

    .line 36
    .line 37
    if-ne v1, v2, :cond_5

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    goto :goto_0

    .line 41
    :cond_5
    const/4 v1, 0x0

    .line 42
    :goto_0
    const/16 v2, -0x74e1

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 45
    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 50
    .line 51
    .line 52
    int-to-byte v0, v0

    .line 53
    invoke-virtual {p1, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 54
    .line 55
    .line 56
    iget-wide v4, p0, Lcom/jcraft/jzlib/GZIPHeader;->mtime:J

    .line 57
    .line 58
    long-to-int v0, v4

    .line 59
    int-to-byte v0, v0

    .line 60
    invoke-virtual {p1, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 61
    .line 62
    .line 63
    iget-wide v4, p0, Lcom/jcraft/jzlib/GZIPHeader;->mtime:J

    .line 64
    .line 65
    shr-long/2addr v4, v2

    .line 66
    long-to-int v0, v4

    .line 67
    int-to-byte v0, v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 69
    .line 70
    .line 71
    iget-wide v4, p0, Lcom/jcraft/jzlib/GZIPHeader;->mtime:J

    .line 72
    .line 73
    const/16 v0, 0x10

    .line 74
    .line 75
    shr-long/2addr v4, v0

    .line 76
    long-to-int v0, v4

    .line 77
    int-to-byte v0, v0

    .line 78
    invoke-virtual {p1, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 79
    .line 80
    .line 81
    iget-wide v4, p0, Lcom/jcraft/jzlib/GZIPHeader;->mtime:J

    .line 82
    .line 83
    const/16 v0, 0x18

    .line 84
    .line 85
    shr-long/2addr v4, v0

    .line 86
    long-to-int v0, v4

    .line 87
    int-to-byte v0, v0

    .line 88
    invoke-virtual {p1, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 89
    .line 90
    .line 91
    int-to-byte v0, v1

    .line 92
    invoke-virtual {p1, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 93
    .line 94
    .line 95
    iget v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->os:I

    .line 96
    .line 97
    int-to-byte v0, v0

    .line 98
    invoke-virtual {p1, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->extra:[B

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    array-length v0, v0

    .line 106
    int-to-byte v0, v0

    .line 107
    invoke-virtual {p1, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->extra:[B

    .line 111
    .line 112
    array-length v0, v0

    .line 113
    shr-int/2addr v0, v2

    .line 114
    int-to-byte v0, v0

    .line 115
    invoke-virtual {p1, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->extra:[B

    .line 119
    .line 120
    array-length v1, v0

    .line 121
    invoke-virtual {p1, v0, v3, v1}, Lcom/jcraft/jzlib/Deflate;->put_byte([BII)V

    .line 122
    .line 123
    .line 124
    :cond_6
    iget-object v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->name:[B

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    array-length v1, v0

    .line 129
    invoke-virtual {p1, v0, v3, v1}, Lcom/jcraft/jzlib/Deflate;->put_byte([BII)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v3}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 133
    .line 134
    .line 135
    :cond_7
    iget-object v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->comment:[B

    .line 136
    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    array-length v1, v0

    .line 140
    invoke-virtual {p1, v0, v3, v1}, Lcom/jcraft/jzlib/Deflate;->put_byte([BII)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v3}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 144
    .line 145
    .line 146
    :cond_8
    return-void
.end method

.method public setCRC(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/jcraft/jzlib/GZIPHeader;->crc:J

    .line 2
    .line 3
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/jcraft/jzlib/GZIPHeader;->comment:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    new-array v2, v2, [J

    .line 34
    .line 35
    fill-array-data v2, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/jcraft/jzlib/GZIPHeader;->name:[B

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :array_0
    .array-data 8
        0x4cef2f38a66b7b6dL    # 4.008919376756125E62
        0x2695dcf2d9247ca6L    # 8.268241117944361E-123
        -0x72647d9bffae0adcL    # -4.028873744906257E-243
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x5f6eb09ce2e18dfeL    # -8.26269884350987E-152
        0x2925199d2e294d7aL
        -0x76d4ca147dd4129cL
        0x56f59990a7521dbcL    # 8.116511869657648E110
        0x505bd2a32e1ca323L    # 1.2886641687735891E79
    .end array-data
.end method

.method public setModifiedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/jcraft/jzlib/GZIPHeader;->mtime:J

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/jcraft/jzlib/GZIPHeader;->name:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v3, 0x5

    .line 33
    new-array v3, v3, [J

    .line 34
    .line 35
    fill-array-data v3, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :array_0
    .array-data 8
        0x55c2430359137535L    # 1.3088544951166346E105
        0x7324936a08e02b8bL    # 4.495768818658062E246
        -0x35961dc053ad405aL    # -3.0263354244717878E50
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        -0x3971781169826758L    # -7.7405241176662255E31
        -0x42c3c3aca97b8a40L    # -1.0031316803467539E-13
        -0x2f41fa32ed117fdfL    # -8.899549633720517E80
        -0x6de8f1cf990ec57eL
        -0x77a247c550936444L
    .end array-data
.end method

.method public setOS(I)V
    .locals 4

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0xd

    .line 4
    .line 5
    if-le p1, v0, :cond_1

    .line 6
    .line 7
    :cond_0
    const/16 v0, 0xff

    .line 8
    .line 9
    if-ne p1, v0, :cond_2

    .line 10
    .line 11
    :cond_1
    iput p1, p0, Lcom/jcraft/jzlib/GZIPHeader;->os:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    new-array v3, v3, [J

    .line 25
    .line 26
    fill-array-data v3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x1c8e212b0488887eL    # -1.0790777452969108E171
        0x347992acff69a93fL    # 6.518410136025358E-56
    .end array-data
.end method
