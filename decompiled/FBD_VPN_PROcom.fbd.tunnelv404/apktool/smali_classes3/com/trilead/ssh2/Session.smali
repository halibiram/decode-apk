.class public Lcom/trilead/ssh2/Session;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field cn:Lcom/trilead/ssh2/channel/Channel;

.field flag_closed:Z

.field flag_execution_started:Z

.field flag_pty_requested:Z

.field flag_x11_requested:Z

.field final rnd:Ljava/security/SecureRandom;

.field x11FakeCookie:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/security/SecureRandom;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/ChannelManager;->openSessionChannel()Lcom/trilead/ssh2/channel/Channel;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/trilead/ssh2/Session;->rnd:Ljava/security/SecureRandom;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 12
    .line 13
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 18
    .line 19
    invoke-virtual {v2, v1, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->unRegisterX11Cookie(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 25
    .line 26
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v4, 0x5

    .line 29
    new-array v4, v4, [J

    .line 30
    .line 31
    fill-array-data v4, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v2, v3, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :try_start_2
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw v0

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x23b7e245bf185666L
        0x7ffe3b1951097cc9L
        0x1a4eccea1ff54449L
        0xb1a0dd30a9c9504L
        -0x38180d0db055aea0L    # -2.5466955518142595E38
    .end array-data
.end method

.method public execCommand(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 14
    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestExecCommand(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 27
    .line 28
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    fill-array-data v1, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 48
    .line 49
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    new-array v1, v1, [J

    .line 53
    .line 54
    fill-array-data v1, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p1

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 v1, 0x5

    .line 75
    new-array v1, v1, [J

    .line 76
    .line 77
    fill-array-data v1, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :array_0
    .array-data 8
        0x3df89ee40deaa384L    # 3.5827786390142456E-10
        -0x7b386dd5e24db466L
        -0xa9c9fc2ff7a84f4L
        0x4275985b930ea6e1L    # 1.48400722353043E12
        -0x5989ef745b59a212L    # -2.086115985946286E-123
        -0x3a0004c81072a3f0L    # -1.5836383734879031E29
    .end array-data

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
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 8
        -0x7bdc1e8f0ca0e2c6L    # -1.0200097050332577E-288
        0x17ed3c85c659af25L
        0x3acd1442b3f88382L    # 1.8791955593556872E-25
        -0x5d3152a831e38a1L
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
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
    :array_2
    .array-data 8
        -0x2e9b83afe55364fcL    # -1.2436478937450006E84
        0x3f7f588d89f11f84L    # 0.007652809988094481
        0x36618c24edeca2ceL    # 9.60515571086162E-47
        -0x12be96e5e0c7263eL    # -1.920611324046567E218
        -0x53baee21e5f97f6eL
    .end array-data
.end method

.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getExitSignal()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStderr()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStderrStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStdin()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStdout()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public ping()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestChannelTrileadPing(Lcom/trilead/ssh2/channel/Channel;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    new-array v2, v2, [J

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x5a5b481dc8677a68L
        -0x4fda18e7d99d371aL    # -9.457775739767703E-77
        -0x35a1de6dd830a040L    # -1.7614682076843254E50
        0x96487c9a3c4f8ccL
    .end array-data
.end method

.method public pipeStderr(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel;->pipeStderrStream(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pipeStdout(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel;->pipeStdoutStream(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public requestDumbPTY()V
    .locals 9

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    move-result-object v3

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v2, p0

    .line 22
    invoke-virtual/range {v2 .. v8}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        0x7f9ed0a75c51b416L    # 5.409766652697205E306
        0x271d761a5b0c7649L
    .end array-data
.end method

.method public requestPTY(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    return-void
.end method

.method public requestPTY(Ljava/lang/String;IIII[B)V
    .locals 11

    move-object v1, p0

    move-object/from16 v0, p6

    const/4 v2, 0x4

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2
    array-length v4, v0

    if-lez v4, :cond_1

    .line 3
    array-length v4, v0

    sub-int/2addr v4, v3

    aget-byte v4, v0, v4

    if-nez v4, :cond_0

    :goto_0
    move-object v10, v0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0x9

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-array v0, v3, [B

    const/4 v4, 0x0

    aput-byte v4, v0, v4

    goto :goto_0

    .line 6
    :goto_1
    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, v1, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_4

    .line 8
    iget-boolean v0, v1, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    if-nez v0, :cond_3

    .line 9
    iget-boolean v0, v1, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_2

    .line 10
    iput-boolean v3, v1, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v3, v1, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v4, v1, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v10}, Lcom/trilead/ssh2/channel/ChannelManager;->requestPTY(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;IIII[B)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 13
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0xc

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 17
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_4

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        0x2a65db26e895dbfL
        0x5118a2c04e9d91b7L    # 4.673740145273713E82
        0x30883e52f703b425L    # 6.699857609574884E-75
        0xe1e3c6cf6b663e3L    # 1.133622233379327E-240
        0x7a8854755101b7dcL    # 1.7665524973382262E282
        -0x4e0e9cd87c5e3d00L    # -4.0308225344689245E-68
        0x618137cda5f695c6L    # 4.841388459815269E161
        -0x189f5eb5866e0a16L    # -9.261911870525946E189
        0x2e49358d6fcaa055L    # 1.0137949549487373E-85
    .end array-data

    :array_1
    .array-data 8
        0x2b72f9728df8c1c5L    # 2.168750477383959E-99
        0x3192ce7b958f0ebdL    # 6.812251675331541E-70
        -0x3cad9ff6799dd529L    # -2.0688574425377628E16
        0x4acc4ed44fdf959dL    # 2.1182505902757917E52
        -0x5a10d361bb5f1e8cL    # -5.756631056060548E-126
        0x76d2e41f9fcae0e5L    # 2.379433823606739E264
        -0x48a440837002e266L    # -4.9770524124134326E-42
        0x5dc27e369e1951ccL    # 4.510200092141778E143
        0x68640da7229e3faL
        0x377d26a9002271abL    # 2.0914828439216046E-41
        0x50a9cdf546c7ccc4L    # 3.8245884555931945E80
        0x4b54278e06be4958L    # 7.721674520637797E54
    .end array-data

    :array_2
    .array-data 8
        0x13e9a5772cf8d9e6L
        -0x3063be7e732fe6aaL    # -3.1951247352821756E75
        0x20e072c13d2cb3e6L
        0x6eed662a53363849L    # 2.1764091856599483E226
        -0x1c5f3f5dfaf90a4fL    # -8.092569688863886E171
    .end array-data

    :array_3
    .array-data 8
        -0x2f6af3424b0e92f3L    # -1.559933959094436E80
        0x37b0056bfa746de9L    # 1.839141138053644E-40
        0x5024228770b96380L    # 1.1657298619727798E78
        0x40e370fa3f972013L    # 39815.82026249184
    .end array-data

    :array_4
    .array-data 8
        -0x6bbf614211a423dcL    # -3.949538075036661E-211
        0x6f72068d4cd6a3afL    # 6.832290073393484E228
        -0x1568a0c9bfab328eL    # -2.931105701468897E205
        0x715b270cac08c403L    # 1.1050629231903624E238
    .end array-data
.end method

.method public requestWindowChange(IIII)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/channel/Channel;->requestWindowChange(IIII)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 21
    .line 22
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array p3, v0, [J

    .line 25
    .line 26
    fill-array-data p3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 41
    .line 42
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array p3, v0, [J

    .line 45
    .line 46
    fill-array-data p3, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p1

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x9518847e29399b9L    # -4.796950376135749E263
        -0x3d569c354fe9bf1bL    # -1.3958196497184447E13
        0x567d398d3f88c67L
        -0x3bcf13c8256a7475L    # -3.12169218831849E20
    .end array-data

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
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_1
    .array-data 8
        -0x1794703093075b50L    # -1.0059911032681224E195
        0x1323234ec5fdb7adL
        -0x592313ac12a39266L
        -0x3c69530184e3f95dL    # -4.0849014238331923E17
    .end array-data
.end method

.method public requestX11Forwarding(Ljava/lang/String;I[BZ)V
    .locals 11

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-boolean v4, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 9
    .line 10
    if-nez v4, :cond_6

    .line 11
    .line 12
    iget-boolean v4, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    .line 13
    .line 14
    if-nez v4, :cond_5

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 17
    .line 18
    if-nez v0, :cond_4

    .line 19
    .line 20
    iput-boolean v3, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    .line 21
    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    new-instance v0, Lcom/trilead/ssh2/channel/X11ServerData;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/trilead/ssh2/channel/X11ServerData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, v0, Lcom/trilead/ssh2/channel/X11ServerData;->hostname:Ljava/lang/String;

    .line 29
    .line 30
    iput p2, v0, Lcom/trilead/ssh2/channel/X11ServerData;->port:I

    .line 31
    .line 32
    iput-object p3, v0, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    .line 33
    .line 34
    const/16 p1, 0x10

    .line 35
    .line 36
    new-array p2, p1, [B

    .line 37
    .line 38
    :cond_0
    iget-object p3, p0, Lcom/trilead/ssh2/Session;->rnd:Ljava/security/SecureRandom;

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 41
    .line 42
    .line 43
    new-instance p3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const/16 v4, 0x20

    .line 46
    .line 47
    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    :goto_0
    if-ge v4, p1, :cond_2

    .line 52
    .line 53
    aget-byte v5, p2, v4

    .line 54
    .line 55
    and-int/lit16 v5, v5, 0xff

    .line 56
    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-ne v6, v2, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v8, v2, [J

    .line 76
    .line 77
    fill-array-data v8, :array_0

    .line 78
    .line 79
    .line 80
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-static {v7, v6, v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    :goto_1
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    add-int/2addr v4, v3

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    iget-object v4, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 97
    .line 98
    invoke-virtual {v4, p3}, Lcom/trilead/ssh2/channel/ChannelManager;->checkX11Cookie(Ljava/lang/String;)Lcom/trilead/ssh2/channel/X11ServerData;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-nez v4, :cond_0

    .line 103
    .line 104
    iget-object v5, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 105
    .line 106
    iget-object v6, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 107
    .line 108
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array p2, v1, [J

    .line 111
    .line 112
    fill-array-data p2, :array_1

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    const/4 v10, 0x0

    .line 123
    move v7, p4

    .line 124
    move-object v9, p3

    .line 125
    invoke-virtual/range {v5 .. v10}, Lcom/trilead/ssh2/channel/ChannelManager;->requestX11(Lcom/trilead/ssh2/channel/Channel;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    monitor-enter p0

    .line 129
    :try_start_1
    iget-boolean p1, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 130
    .line 131
    if-nez p1, :cond_3

    .line 132
    .line 133
    iput-object p3, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    .line 134
    .line 135
    iget-object p1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 136
    .line 137
    invoke-virtual {p1, p3, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->registerX11Cookie(Ljava/lang/String;Lcom/trilead/ssh2/channel/X11ServerData;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catchall_0
    move-exception p1

    .line 142
    goto :goto_3

    .line 143
    :cond_3
    :goto_2
    monitor-exit p0

    .line 144
    return-void

    .line 145
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    throw p1

    .line 147
    :catchall_1
    move-exception p1

    .line 148
    goto :goto_4

    .line 149
    :cond_4
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    .line 150
    .line 151
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    const/16 p3, 0xd

    .line 154
    .line 155
    new-array p3, p3, [J

    .line 156
    .line 157
    fill-array-data p3, :array_2

    .line 158
    .line 159
    .line 160
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 172
    .line 173
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    new-array p3, v0, [J

    .line 176
    .line 177
    fill-array-data p3, :array_3

    .line 178
    .line 179
    .line 180
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 192
    .line 193
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    new-array p3, v1, [J

    .line 196
    .line 197
    fill-array-data p3, :array_4

    .line 198
    .line 199
    .line 200
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p1

    .line 211
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 212
    throw p1

    .line 213
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    new-array p3, v0, [J

    .line 218
    .line 219
    fill-array-data p3, :array_5

    .line 220
    .line 221
    .line 222
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw p1

    .line 233
    :array_0
    .array-data 8
        0x432a10cd39f16f30L    # 3.668411510470552E15
        0x5938b945f76db8L
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
    :array_1
    .array-data 8
        -0x791258d549d27237L
        0x666f9572d8d58e7aL    # 2.6840555947804402E185
        0x6d8e88afee52c6fdL    # 5.389266076453827E219
        -0x7bb543fe5627be58L
    .end array-data

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
    :array_2
    .array-data 8
        -0x69a4a85a462e7a2fL
        -0x4a119d9d7029767eL    # -6.4968102965644645E-49
        0x48e4701a77d9ee4eL    # 1.424314020769384E43
        0x4d973a9963b18df8L    # 6.115722529413604E65
        0x3b71739e005e86d0L    # 2.309703954043254E-22
        -0x1715cf5a55ce4853L    # -2.4471643507646446E197
        0x4382c4f6345179aaL    # 1.69059561585456448E17
        -0x23fcda32d2e2d8aaL    # -1.7396577768254526E135
        0x178911ae8f54d9eaL    # 2.6829405082000627E-195
        -0x7e8d2e47ca835accL
        0x14b1f76a96ab6d31L    # 5.464944784247747E-209
        0x5774289aa66ecf7dL    # 1.9391837578454667E113
        0x798fa94f50d34754L    # 3.507806908242929E277
    .end array-data

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
    :array_3
    .array-data 8
        -0x789e9386e1d0d2a3L    # -4.026010492094967E-273
        -0x347d7cb016f3f2ccL    # -5.674199012725158E55
        -0x33457ebd21afa8f3L    # -4.259177488332419E61
        -0x3c8db6f4029b668cL    # -8.2349846807811904E16
        -0x66d68c020c586062L
        0x49c237446bbe3f52L    # 2.0798867031857403E47
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
    :array_4
    .array-data 8
        0x3aebb0c2a8c52c6dL    # 7.157818798539221E-25
        -0x1a539f98b2f7fa9fL    # -5.887452246360725E181
        0x599aba2770aeff2L
        0x26d4e8470aa650b0L    # 1.26508707255479E-121
    .end array-data

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
    :array_5
    .array-data 8
        -0x68c475af5559f9c3L    # -9.21067390332292E-197
        0x54949246bbd7fecfL    # 2.8121744781064204E99
        -0x19be2696ff2d2d65L    # -3.792167727221033E184
        -0xc1f8109088552ecL
        -0x34262b84c10100a9L    # -2.533399576381057E57
        -0xc84bc398cf56a51L
    .end array-data
.end method

.method public declared-synchronized setWindowSize(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel;->setWindowSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public signal(I)V
    .locals 4

    .line 7
    invoke-static {p1}, Lcom/trilead/ssh2/packets/PacketSignal;->strsignal(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/Session;->signal(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 8
        -0x6753d9bb2f4792ccL    # -7.89738367441645E-190
        -0x6d8f23a1e1c00607L    # -7.463140841254686E-220
        0x37cf241e8fb8630dL    # 7.149643932995054E-40
        -0x36661a79de5ffd7bL    # -3.6960831102345507E46
        -0x58804da7ba2fd530L
    .end array-data
.end method

.method public signal(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel;->signal(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :array_0
    .array-data 8
        0x5860b703c0640d26L    # 5.268805060224125E117
        -0x6b5e7a0ab68bfc0dL    # -2.66506787800873E-209
        0x188726104cd9f162L
        0x45535ddd7fbac716L    # 9.365142635965123E25
    .end array-data
.end method

.method public startShell()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 12
    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestShell(Lcom/trilead/ssh2/channel/Channel;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x6

    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 46
    .line 47
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    new-array v2, v2, [J

    .line 51
    .line 52
    fill-array-data v2, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw v0

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0xa3b48afafbf7bb4L
        -0x46cf236804230aaaL
        -0xca3eb06dde58093L    # -4.908664514492732E247
        -0x452145ecd7402c11L    # -3.9713529083142254E-25
        0x1e3f6bfac1e615e7L    # 5.456489825847836E-163
        -0x5707e9469f1fbc84L
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
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
    :array_1
    .array-data 8
        -0x74e3db61de535038L
        0x4e7c1984b0d10218L
        0x949dfb67b63f4caL
        -0x7629322deeca899cL
    .end array-data
.end method

.method public startSubSystem(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 14
    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestSubSystem(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 27
    .line 28
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    fill-array-data v1, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 48
    .line 49
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    new-array v1, v1, [J

    .line 53
    .line 54
    fill-array-data v1, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p1

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 v1, 0x5

    .line 75
    new-array v1, v1, [J

    .line 76
    .line 77
    fill-array-data v1, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :array_0
    .array-data 8
        0x2872d79cd4cc4c30L    # 7.651280175300054E-114
        0x2d9933d90266695aL    # 4.948863023152043E-89
        0x3a96a514a629a704L    # 1.829236118974092E-26
        0x1affcfcec5fd47baL
        0x7fc568a6e10a4d7dL    # 3.006753614404647E307
        0x2a933d5114e201f4L
    .end array-data

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
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 8
        0x1223d53b2ea3a6b1L
        -0x53d4940c1fd1a814L    # -6.418973883460439E-96
        -0x47334848c9ddad66L    # -4.320950119333397E-35
        -0x55ae77b56e393716L    # -7.644385619905346E-105
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
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
    :array_2
    .array-data 8
        0x55ed55de0515f741L    # 8.410092860734062E105
        0x55e80a28d19389efL    # 6.891873132957566E105
        0x4e60943106c4894bL    # 3.575724273179924E69
        -0x5b40123a1bf5e5f0L
        -0x764dbde81b31b164L    # -5.798306867712475E-262
    .end array-data
.end method

.method public waitForCondition(IJ)I
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 p3, 0x5

    .line 21
    new-array p3, p3, [J

    .line 22
    .line 23
    fill-array-data p3, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :array_0
    .array-data 8
        -0x610fa0b2433033d9L
        0x44f2fc41a39f7175L    # 1.4344944959611477E24
        0x23e58e4eae60dae9L    # 9.267826272343E-136
        0x58622bd0d07ea422L    # 5.727839696940089E117
        0x66a9f394125dbc6dL    # 3.5286568992828106E186
    .end array-data
.end method

.method public waitUntilDataAvailable(J)I
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, p1, v2

    .line 6
    .line 7
    if-ltz v4, :cond_3

    .line 8
    .line 9
    iget-object v2, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 12
    .line 13
    const/16 v4, 0x1c

    .line 14
    .line 15
    invoke-virtual {v2, v3, p1, p2, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    and-int/lit8 p2, p1, 0x1

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    return p1

    .line 25
    :cond_0
    and-int/lit8 p2, p1, 0xc

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    and-int/lit8 p2, p1, 0x10

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v0, v0, [J

    .line 46
    .line 47
    fill-array-data v0, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v0, 0x2

    .line 66
    new-array v0, v0, [J

    .line 67
    .line 68
    fill-array-data v0, :array_1

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p2

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v0, v0, [J

    .line 87
    .line 88
    fill-array-data v0, :array_2

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        -0x71fb6102a58f733bL    # -3.865666003693295E-241
        -0x7b719bc42b99a22bL    # -9.97945487007081E-287
        -0x441b9a8eb1422107L    # -3.4552608757531115E-20
        -0x4bbe14878da86f8dL    # -5.709579795077434E-57
        -0x56c65cd2b2b1d6c1L
    .end array-data

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
    :array_1
    .array-data 8
        -0xa3dc3757eaa79d7L
        0x7ac0051b627ffe50L    # 1.861088687272335E283
    .end array-data

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
    :array_2
    .array-data 8
        -0x51cf2d703af34104L    # -3.38261014573973E-86
        -0x6bc65b527511678dL
        0x718b3e456fe15b19L    # 8.870037322334736E238
        0x3eeb3ff8b4c8329dL    # 1.299375949150835E-5
        -0x7c23e9906e8699f7L    # -4.503388735035246E-290
    .end array-data
.end method
