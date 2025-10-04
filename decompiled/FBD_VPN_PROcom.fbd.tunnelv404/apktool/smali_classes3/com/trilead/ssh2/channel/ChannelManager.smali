.class public Lcom/trilead/ssh2/channel/ChannelManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/transport/MessageHandler;


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field private channels:Ljava/util/Vector;

.field private globalFailedCounter:I

.field private globalSuccessCounter:I

.field private listenerThreads:Ljava/util/Vector;

.field private listenerThreadsAllowed:Z

.field private nextLocalChannel:I

.field private remoteForwardings:Ljava/util/HashMap;

.field private shutdown:Z

.field tm:Lcom/trilead/ssh2/transport/TransportManager;

.field private x11_magic_cookies:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/trilead/ssh2/channel/ChannelManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Vector;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 17
    .line 18
    const/16 v0, 0x64

    .line 19
    .line 20
    iput v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z

    .line 24
    .line 25
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 26
    .line 27
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 28
    .line 29
    new-instance v1, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 35
    .line 36
    new-instance v1, Ljava/util/Vector;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 45
    .line 46
    iput-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 47
    .line 48
    const/16 v1, 0x50

    .line 49
    .line 50
    invoke-virtual {p1, p0, v1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private addChannel(Lcom/trilead/ssh2/channel/Channel;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x1

    .line 12
    .line 13
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method private getChannel(I)Lcom/trilead/ssh2/channel/Channel;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/trilead/ssh2/channel/Channel;

    .line 20
    .line 21
    iget v3, v2, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v2

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method private ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosedCause()Ljava/lang/Throwable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/io/IOException;

    .line 15
    .line 16
    return-object p1
.end method

.method private removeChannel(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/trilead/ssh2/channel/Channel;

    .line 20
    .line 21
    iget v2, v2, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 22
    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

.method private waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x6

    .line 3
    monitor-enter p1

    .line 4
    :goto_0
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 5
    .line 6
    if-nez v2, :cond_1

    .line 7
    .line 8
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 9
    .line 10
    if-nez v3, :cond_1

    .line 11
    .line 12
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :catch_0
    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {p0, v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    throw v0

    .line 66
    :cond_1
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    if-ne v2, v4, :cond_2

    .line 72
    .line 73
    monitor-exit p1

    .line 74
    return v4

    .line 75
    :cond_2
    if-ne v3, v4, :cond_3

    .line 76
    .line 77
    if-nez v2, :cond_3

    .line 78
    .line 79
    monitor-exit p1

    .line 80
    const/4 p1, 0x0

    .line 81
    return p1

    .line 82
    :cond_3
    new-instance v2, Ljava/io/IOException;

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v5, v0, [J

    .line 92
    .line 93
    fill-array-data v5, :array_1

    .line 94
    .line 95
    .line 96
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v0, v0, [J

    .line 114
    .line 115
    fill-array-data v0, :array_2

    .line 116
    .line 117
    .line 118
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 129
    .line 130
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v1, v1, [J

    .line 136
    .line 137
    fill-array-data v1, :array_3

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v2

    .line 158
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    throw v0

    .line 160
    nop

    .line 161
    :array_0
    .array-data 8
        -0x58729332c070f5ecL    # -3.646433394674168E-118
        -0x6e3f0753bdc6396eL
        -0x6a05532440c3bc3aL
        -0xca7c759692e97cfL    # -4.233833330643503E247
        0x4e96e728dd84d9f8L    # 3.951761773219544E70
        -0x60d16d522ede0e3eL
    .end array-data

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
    :array_1
    .array-data 8
        -0x79150a47323251c5L
        0x49a42e17f8c83daeL    # 5.760386896718924E46
        0x5ce089f6ea4b0fe9L    # 2.461927492000544E139
        0x692769e58e25b815L    # 3.5003901136685145E198
        0x23eaf301cb9b6632L
    .end array-data

    :array_2
    .array-data 8
        -0x1da12bb7ae5a3986L    # -7.101339718195879E165
        0x7221717459d63a2cL    # 5.815569341283281E241
        0x7a239536e16c0c23L    # 2.2216840221501106E280
        0x9ac2ccba40fc859L
        0x26d61d62d4de7569L
    .end array-data

    :array_3
    .array-data 8
        -0x55d36a13bb1b61beL
        0x229ff3b7e7f060d9L    # 6.550590359071331E-142
        0x23fd536afd14175dL    # 2.521695175115519E-135
        -0x1ebc6039157791d3L    # -3.448721270574892E160
        -0x27d6e170380260feL    # -4.9487701132228245E116
        0x6ec04919624a44a1L    # 3.014040118243867E225
    .end array-data
.end method

.method private waitForGlobalRequestResult()Z
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 6
    .line 7
    if-nez v2, :cond_1

    .line 8
    .line 9
    iget v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 10
    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :catch_0
    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_0
    new-instance v2, Ljava/io/IOException;

    .line 32
    .line 33
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v0, v0, [J

    .line 36
    .line 37
    fill-array-data v0, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v2

    .line 51
    :cond_1
    iget v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    if-ne v2, v4, :cond_2

    .line 57
    .line 58
    monitor-exit v1

    .line 59
    return v4

    .line 60
    :cond_2
    if-ne v3, v4, :cond_3

    .line 61
    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    monitor-exit v1

    .line 65
    const/4 v0, 0x0

    .line 66
    return v0

    .line 67
    :cond_3
    new-instance v2, Ljava/io/IOException;

    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v5, v0, [J

    .line 77
    .line 78
    fill-array-data v5, :array_1

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v0, v0, [J

    .line 99
    .line 100
    fill-array-data v0, :array_2

    .line 101
    .line 102
    .line 103
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 114
    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    const/4 v4, 0x6

    .line 121
    new-array v4, v4, [J

    .line 122
    .line 123
    fill-array-data v4, :array_3

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v2

    .line 144
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    throw v0

    .line 146
    nop

    .line 147
    :array_0
    .array-data 8
        -0x5a1a1961ccc8c9bcL    # -4.044201861388277E-126
        0x5062580b460ff483L    # 1.6992648446537E79
        -0xe7fa320148e3b33L    # -5.327506421295937E238
        -0x4300619b9091843eL    # -7.020766195241667E-15
        -0x15d79fe3b4ac96acL    # -2.3882479144177167E203
    .end array-data

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
    :array_1
    .array-data 8
        0x14bd5f58e06cbce9L    # 8.934354685870189E-209
        0x322cb6ce4b5a9795L    # 5.3253230906748316E-67
        0x4986e9e6178b52e2L    # 1.6351739303354237E46
        -0x7be93812271eb868L    # -5.844083880574313E-289
        -0x477e5ca9a1fac400L
    .end array-data

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
        -0x4b61e6d8485d5113L    # -3.0687550842006656E-55
        -0x4761b3d6087ca8c2L
        0x4961487df9782680L    # 3.083420958876799E45
        -0xaaa5f888458b0f9L
        0x2b7863eeb0871019L    # 2.7877874935989334E-99
    .end array-data

    :array_3
    .array-data 8
        0x1047f9bbf790cf57L    # 3.088598389740928E-230
        -0x5f3936ff8a0603a9L    # -8.70090298228728E-151
        0x55cb63be09b80617L    # 1.9630641287635725E105
        -0x47b16f2467dfb83cL
        -0x363b029f8c442447L    # -2.3966061222666637E47
        -0x216055536ad577acL    # -6.326749569766007E147
    .end array-data
.end method

.method private waitUntilChannelOpen(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    monitor-enter p1

    .line 3
    :goto_0
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :catch_0
    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_0
    if-ne v1, v0, :cond_1

    .line 21
    .line 22
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :cond_1
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 25
    .line 26
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->removeChannel(I)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v3, 0x5

    .line 37
    new-array v3, v3, [J

    .line 38
    .line 39
    fill-array-data v3, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v0, v0, [J

    .line 60
    .line 61
    fill-array-data v0, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p0, v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    throw v0

    .line 83
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    throw v0

    .line 85
    :array_0
    .array-data 8
        0x21fd9a908d89c95dL    # 5.926920387086484E-145
        -0x163555220e6bbe3bL    # -4.082522540398319E201
        0x74064bd9a17d64bL    # 9.46991573349538E-274
        -0x5e8ae94663c5cbddL
        -0x4bc1dc56cfaaf569L    # -4.801467562054435E-57
    .end array-data

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
    .line 108
    .line 109
    :array_1
    .array-data 8
        -0x639087a6612771baL
        -0x338d4275ac21be09L    # -1.8821655504863267E60
    .end array-data
.end method


# virtual methods
.method public checkX11Cookie(Ljava/lang/String;)Lcom/trilead/ssh2/channel/X11ServerData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/trilead/ssh2/channel/X11ServerData;

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public closeAllChannels()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v4, v1, [J

    .line 14
    .line 15
    fill-array-data v4, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/16 v4, 0x32

    .line 26
    .line 27
    invoke-virtual {v2, v4, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 31
    .line 32
    monitor-enter v2

    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/util/Vector;

    .line 40
    .line 41
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ge v2, v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lcom/trilead/ssh2/channel/Channel;

    .line 54
    .line 55
    :try_start_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v6, v1, [J

    .line 58
    .line 59
    fill-array-data v6, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {p0, v4, v5, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    add-int/2addr v2, v0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw v0

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        0x3315feb77c0407f6L    # 1.336671305615806E-62
        0x5aa092d5c75778e1L    # 3.590081855455552E128
        0x110166dd21d4e8f9L    # 9.18222094971652E-227
        0x54ae11216b191624L    # 8.220485524080783E99
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
    :array_1
    .array-data 8
        0x53f746937f81bd7L
        0x53ac2335b2e38130L    # 1.1738557942388536E95
        0x68d005cf4251a628L    # 7.485705100313476E196
        0x1547bce1e77e4d0fL
    .end array-data
.end method

.method public closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x5

    .line 3
    new-array v1, v1, [B

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 v2, 0x4

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    :try_start_0
    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->eof()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p2

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    const/16 p3, 0x61

    .line 22
    .line 23
    aput-byte p3, v1, p2

    .line 24
    .line 25
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 26
    .line 27
    shr-int/lit8 p3, p2, 0x18

    .line 28
    .line 29
    int-to-byte p3, p3

    .line 30
    const/4 v3, 0x1

    .line 31
    aput-byte p3, v1, v3

    .line 32
    .line 33
    shr-int/lit8 p3, p2, 0x10

    .line 34
    .line 35
    int-to-byte p3, p3

    .line 36
    aput-byte p3, v1, v0

    .line 37
    .line 38
    shr-int/lit8 p3, p2, 0x8

    .line 39
    .line 40
    int-to-byte p3, p3

    .line 41
    const/4 v4, 0x3

    .line 42
    aput-byte p3, v1, v4

    .line 43
    .line 44
    int-to-byte p2, p2

    .line 45
    aput-byte p2, v1, v2

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 48
    .line 49
    .line 50
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter p2

    .line 54
    :try_start_1
    iget-boolean p3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 55
    .line 56
    if-eqz p3, :cond_1

    .line 57
    .line 58
    monitor-exit p2

    .line 59
    return-void

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object p3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 63
    .line 64
    invoke-virtual {p3, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 65
    .line 66
    .line 67
    iput-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 68
    .line 69
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    if-eqz p3, :cond_2

    .line 77
    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    const/4 v2, 0x6

    .line 86
    new-array v2, v2, [J

    .line 87
    .line 88
    fill-array-data v2, :array_0

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget p1, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 102
    .line 103
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v0, v0, [J

    .line 109
    .line 110
    fill-array-data v0, :array_1

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    const/16 v0, 0x32

    .line 117
    .line 118
    invoke-static {p1, p3, p2, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void

    .line 122
    :goto_1
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    throw p1

    .line 124
    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    throw p2

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        0x536c14a3d932ee29L    # 7.321759184011516E93
        -0x5d5dc77a31aafebeL
        0x74702a1ad0c42b1bL    # 7.406924017696816E252
        0x72a9b1b5ff76a968L    # 2.1930135705988662E244
        0x42b20cf49e7dd863L    # 1.9846852935128387E13
        0x7504b272502de61fL    # 4.855734440317793E255
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
    .line 140
    .line 141
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
    :array_1
    .array-data 8
        0xfbae28875e02e27L    # 6.764437756036744E-233
        0x6cea209aade95fd7L    # 4.5034197976038326E216
    .end array-data
.end method

.method public getAvailable(Lcom/trilead/ssh2/channel/Channel;Z)I
    .locals 0

    .line 1
    monitor-enter p1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p2

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p2}, Lcom/trilead/ssh2/channel/Channel$Output;->available()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    monitor-exit p1

    .line 16
    return p2

    .line 17
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p2
.end method

.method public getChannelData(Lcom/trilead/ssh2/channel/Channel;Z[BII)I
    .locals 0

    .line 1
    monitor-enter p1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p2

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p2, p3, p4, p5}, Lcom/trilead/ssh2/channel/Channel$Output;->read([BII)I

    .line 12
    .line 13
    .line 14
    move-result p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-gtz p2, :cond_1

    .line 16
    .line 17
    :try_start_1
    monitor-exit p1

    .line 18
    return p2

    .line 19
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/channel/Channel;->freeupWindow(I)V

    .line 21
    .line 22
    .line 23
    return p2

    .line 24
    :catch_0
    :try_start_2
    new-instance p2, Ljava/io/InterruptedIOException;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p2

    .line 30
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw p2
.end method

.method public handleEndMessage(Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v4, v0, [J

    .line 14
    .line 15
    fill-array-data v4, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/16 v4, 0x32

    .line 26
    .line 27
    invoke-virtual {v2, v4, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    .line 31
    .line 32
    monitor-enter v2

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-ge v4, v5, :cond_1

    .line 42
    .line 43
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    .line 44
    .line 45
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lcom/trilead/ssh2/channel/IChannelWorkerThread;

    .line 50
    .line 51
    invoke-interface {v5}, Lcom/trilead/ssh2/channel/IChannelWorkerThread;->stopWorking()V

    .line 52
    .line 53
    .line 54
    add-int/2addr v4, v1

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_3

    .line 58
    :cond_1
    iput-boolean v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 59
    .line 60
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 62
    .line 63
    monitor-enter v4

    .line 64
    :try_start_1
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    :goto_1
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-ge v2, v5, :cond_2

    .line 74
    .line 75
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 76
    .line 77
    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/trilead/ssh2/channel/Channel;

    .line 82
    .line 83
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 84
    :try_start_2
    invoke-virtual {v5}, Lcom/trilead/ssh2/channel/Channel;->eof()V

    .line 85
    .line 86
    .line 87
    const/4 v6, 0x4

    .line 88
    iput v6, v5, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 89
    .line 90
    new-instance v6, Ljava/io/IOException;

    .line 91
    .line 92
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v8, v0, [J

    .line 95
    .line 96
    fill-array-data v8, :array_1

    .line 97
    .line 98
    .line 99
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v5, v6}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    iput-boolean v1, v5, Lcom/trilead/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 119
    .line 120
    .line 121
    monitor-exit v5

    .line 122
    add-int/2addr v2, v1

    .line 123
    goto :goto_1

    .line 124
    :catchall_1
    move-exception p1

    .line 125
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    :try_start_3
    throw p1

    .line 127
    :catchall_2
    move-exception p1

    .line 128
    goto :goto_2

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 130
    .line 131
    invoke-virtual {p1, v3}, Ljava/util/Vector;->setSize(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/util/Vector;->trimToSize()V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 142
    .line 143
    .line 144
    monitor-exit v4

    .line 145
    return-void

    .line 146
    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 147
    throw p1

    .line 148
    :goto_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    throw p1

    .line 150
    nop

    .line 151
    :array_0
    .array-data 8
        0x57a5495cbefb9e5aL    # 1.6381516012892035E114
        -0x4aea1e20cb4c3798L    # -5.711549956979973E-53
        0x329eb070db56b617L    # 7.285289677905673E-65
        0x76aa568384952439L    # 4.1467523387398605E263
        -0x66ab362622e54cafL
    .end array-data

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
    .line 172
    .line 173
    .line 174
    .line 175
    :array_1
    .array-data 8
        -0x560b091d3553ccaaL
        -0x5afb0b0de5f54a93L    # -2.361985636939121E-130
        -0x3057bd24a20b72ceL    # -5.486817143876519E75
        0x40ebee04c951ca17L    # 57200.149575133044
        -0x67cd8cfb7cf40c62L
    .end array-data
.end method

.method public handleMessage([BI)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p1, v0

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    packed-switch v1, :pswitch_data_1

    .line 8
    .line 9
    .line 10
    new-instance p2, Ljava/io/IOException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x6

    .line 20
    new-array v3, v3, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    aget-byte p1, p1, v0

    .line 36
    .line 37
    and-int/lit16 p1, p1, 0xff

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p2

    .line 50
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelFailure([BI)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelSuccess([BI)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelRequest([BI)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelClose([BI)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelEOF([BI)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelExtendedData([BI)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelData([BI)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelWindowAdjust([BI)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpenFailure([BI)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpenConfirmation([BI)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_a
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpen([BI)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_b
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalFailure()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_c
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalSuccess()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :pswitch_d
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalRequest([BI)V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        -0x6993c02a94a43b5dL
        -0x25f729b6814bb65cL
        -0x1508a8e1fadea9dfL    # -1.8733697441635096E207
        -0x34220459b2314770L    # -2.9407247057939205E57
        0x1054a44b2cea07fbL    # 5.318268995032248E-230
        0x1c4748533a974778L    # 1.882705873043741E-172
    .end array-data
.end method

.method public msgChannelClose([BI)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x5

    .line 3
    if-ne p2, v1, :cond_2

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    aget-byte v2, p1, p2

    .line 7
    .line 8
    and-int/lit16 v2, v2, 0xff

    .line 9
    .line 10
    shl-int/lit8 v2, v2, 0x18

    .line 11
    .line 12
    aget-byte v3, p1, v0

    .line 13
    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 15
    .line 16
    shl-int/lit8 v3, v3, 0x10

    .line 17
    .line 18
    or-int/2addr v2, v3

    .line 19
    const/4 v3, 0x3

    .line 20
    aget-byte v3, p1, v3

    .line 21
    .line 22
    and-int/lit16 v3, v3, 0xff

    .line 23
    .line 24
    shl-int/lit8 v3, v3, 0x8

    .line 25
    .line 26
    or-int/2addr v2, v3

    .line 27
    const/4 v3, 0x4

    .line 28
    aget-byte p1, p1, v3

    .line 29
    .line 30
    and-int/lit16 p1, p1, 0xff

    .line 31
    .line 32
    or-int/2addr p1, v2

    .line 33
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    monitor-enter v2

    .line 40
    :try_start_0
    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/Channel;->eof()V

    .line 41
    .line 42
    .line 43
    iput v3, v2, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 44
    .line 45
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v1, v1, [J

    .line 48
    .line 49
    fill-array-data v1, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v2, v1}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-boolean p2, v2, Lcom/trilead/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 63
    .line 64
    iget p2, v2, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 65
    .line 66
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->removeChannel(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 70
    .line 71
    .line 72
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    const/4 v3, 0x6

    .line 89
    new-array v3, v3, [J

    .line 90
    .line 91
    fill-array-data v3, :array_1

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    fill-array-data v0, :array_2

    .line 112
    .line 113
    .line 114
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    const/16 v0, 0x32

    .line 118
    .line 119
    invoke-static {p1, v1, p2, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 120
    .line 121
    .line 122
    :cond_0
    return-void

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p1

    .line 126
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    const/16 v2, 0xa

    .line 136
    .line 137
    new-array v2, v2, [J

    .line 138
    .line 139
    fill-array-data v2, :array_3

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p2

    .line 153
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    const/4 v3, 0x7

    .line 163
    new-array v3, v3, [J

    .line 164
    .line 165
    fill-array-data v3, :array_4

    .line 166
    .line 167
    .line 168
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    new-array v0, v0, [J

    .line 184
    .line 185
    fill-array-data v0, :array_5

    .line 186
    .line 187
    .line 188
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 189
    .line 190
    .line 191
    invoke-static {p2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p1

    .line 199
    :array_0
    .array-data 8
        -0x5ba0e6d0280afb77L    # -1.711432550062339E-133
        -0x5aabdb94f0062b95L    # -7.264572006314761E-129
        0x2359a34da9ffd1aeL    # 2.152903268124736E-138
        0x44db2aa354f0a4feL    # 5.131617103395755E23
        0x15e44d663f95ebb5L
    .end array-data

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
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_1
    .array-data 8
        -0x1c22f38450e32df7L    # -1.1226003178412687E173
        0x164f05db678ec878L
        0x2afbe3659412f614L
        0x386e0934982227f2L    # 7.061419972282822E-37
        0x4ef1f835d904f3caL    # 1.9843428079509064E72
        0xecd521f11ab7421L
    .end array-data

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
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_2
    .array-data 8
        0x4847b6e759fac868L    # 1.6139230359984558E40
        0xe45346584bd9fdbL    # 6.360116422393734E-240
    .end array-data

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
    :array_3
    .array-data 8
        -0x6aaf94e1ba69fc8L
        -0x7b6638d9d507726cL
        0x779b9983b085342dL    # 1.4239016050890869E268
        0x3d524811e5a2c085L    # 2.597960685587193E-13
        0x684c9b8166a085fcL    # 2.610395221078867E194
        0xbb2737756fa2b26L
        0x6163d7153089587eL    # 1.394675021114506E161
        -0x5a21154817bb8fe5L
        0x74a92fddbb2543ddL    # 9.232990938642862E253
        0x10b3124c1481614aL    # 3.144760252456868E-228
    .end array-data

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
    :array_4
    .array-data 8
        0x2bcf1d0abb02d01aL    # 1.1379928101365978E-97
        -0x70f27fbd59bb650fL    # -3.624352250856865E-236
        0x438d865d01d00403L    # 2.65936267043176544E17
        -0x567cb2dadca72eL
        -0x3c912afeb721a8dbL    # -6.9427606364272936E16
        0x22f60efc067647caL    # 2.89426743126057E-140
        -0x6a9ae66d85981c50L    # -1.314417064529345E-205
    .end array-data

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
    :array_5
    .array-data 8
        0x1dae9bbd54ae7f04L
        0x4f462efaa14f3ef5L    # 7.83897454632449E73
    .end array-data
.end method

.method public msgChannelData([BI)V
    .locals 10

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x6

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const/16 v4, 0x9

    .line 7
    .line 8
    if-le p2, v4, :cond_6

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    aget-byte v5, p1, v5

    .line 12
    .line 13
    and-int/lit16 v5, v5, 0xff

    .line 14
    .line 15
    shl-int/lit8 v5, v5, 0x18

    .line 16
    .line 17
    aget-byte v6, p1, v3

    .line 18
    .line 19
    and-int/lit16 v6, v6, 0xff

    .line 20
    .line 21
    shl-int/lit8 v6, v6, 0x10

    .line 22
    .line 23
    or-int/2addr v5, v6

    .line 24
    const/4 v6, 0x3

    .line 25
    aget-byte v6, p1, v6

    .line 26
    .line 27
    and-int/lit16 v6, v6, 0xff

    .line 28
    .line 29
    shl-int/2addr v6, v2

    .line 30
    or-int/2addr v5, v6

    .line 31
    const/4 v6, 0x4

    .line 32
    aget-byte v7, p1, v6

    .line 33
    .line 34
    and-int/lit16 v7, v7, 0xff

    .line 35
    .line 36
    or-int/2addr v5, v7

    .line 37
    const/4 v7, 0x5

    .line 38
    aget-byte v7, p1, v7

    .line 39
    .line 40
    and-int/lit16 v7, v7, 0xff

    .line 41
    .line 42
    shl-int/lit8 v7, v7, 0x18

    .line 43
    .line 44
    aget-byte v8, p1, v1

    .line 45
    .line 46
    and-int/lit16 v8, v8, 0xff

    .line 47
    .line 48
    shl-int/lit8 v8, v8, 0x10

    .line 49
    .line 50
    or-int/2addr v7, v8

    .line 51
    aget-byte v0, p1, v0

    .line 52
    .line 53
    and-int/lit16 v0, v0, 0xff

    .line 54
    .line 55
    shl-int/2addr v0, v2

    .line 56
    or-int/2addr v0, v7

    .line 57
    aget-byte v7, p1, v2

    .line 58
    .line 59
    and-int/lit16 v7, v7, 0xff

    .line 60
    .line 61
    or-int/2addr v0, v7

    .line 62
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-eqz v7, :cond_5

    .line 67
    .line 68
    sub-int/2addr p2, v4

    .line 69
    if-ne v0, p2, :cond_4

    .line 70
    .line 71
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_0

    .line 78
    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v1, v1, [J

    .line 87
    .line 88
    fill-array-data v1, :array_0

    .line 89
    .line 90
    .line 91
    invoke-direct {v9, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v5, v3, [J

    .line 107
    .line 108
    fill-array-data v5, :array_1

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    new-array v5, v3, [J

    .line 127
    .line 128
    fill-array-data v5, :array_2

    .line 129
    .line 130
    .line 131
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    const/16 v5, 0x50

    .line 135
    .line 136
    invoke-static {v1, v8, p2, v5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 137
    .line 138
    .line 139
    :cond_0
    monitor-enter v7

    .line 140
    :try_start_0
    iget p2, v7, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 141
    .line 142
    if-ne p2, v6, :cond_1

    .line 143
    .line 144
    monitor-exit v7

    .line 145
    return-void

    .line 146
    :catchall_0
    move-exception p1

    .line 147
    goto :goto_0

    .line 148
    :cond_1
    if-ne p2, v3, :cond_3

    .line 149
    .line 150
    iget p2, v7, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 151
    .line 152
    if-lt p2, v0, :cond_2

    .line 153
    .line 154
    sub-int/2addr p2, v0

    .line 155
    iput p2, v7, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 156
    .line 157
    iget-object p2, v7, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 158
    .line 159
    invoke-virtual {p2, p1, v4, v0}, Lcom/trilead/ssh2/channel/Channel$Output;->write([BII)V

    .line 160
    .line 161
    .line 162
    monitor-exit v7

    .line 163
    return-void

    .line 164
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 165
    .line 166
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 167
    .line 168
    new-array v0, v2, [J

    .line 169
    .line 170
    fill-array-data v0, :array_3

    .line 171
    .line 172
    .line 173
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 185
    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array v1, v4, [J

    .line 194
    .line 195
    fill-array-data v1, :array_4

    .line 196
    .line 197
    .line 198
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget v0, v7, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 209
    .line 210
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 214
    .line 215
    new-array v1, v3, [J

    .line 216
    .line 217
    fill-array-data v1, :array_5

    .line 218
    .line 219
    .line 220
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p1

    .line 238
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    throw p1

    .line 240
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 241
    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 248
    .line 249
    new-array v2, v2, [J

    .line 250
    .line 251
    fill-array-data v2, :array_6

    .line 252
    .line 253
    .line 254
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 268
    .line 269
    new-array v2, v3, [J

    .line 270
    .line 271
    fill-array-data v2, :array_7

    .line 272
    .line 273
    .line 274
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v0, v3, [J

    .line 290
    .line 291
    fill-array-data v0, :array_8

    .line 292
    .line 293
    .line 294
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-static {p2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p1

    .line 305
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 306
    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 313
    .line 314
    const/16 v1, 0xa

    .line 315
    .line 316
    new-array v1, v1, [J

    .line 317
    .line 318
    fill-array-data v1, :array_9

    .line 319
    .line 320
    .line 321
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 322
    .line 323
    .line 324
    invoke-static {v0, p2, v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw p1

    .line 332
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 333
    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 340
    .line 341
    new-array v0, v0, [J

    .line 342
    .line 343
    fill-array-data v0, :array_a

    .line 344
    .line 345
    .line 346
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 360
    .line 361
    new-array v0, v3, [J

    .line 362
    .line 363
    fill-array-data v0, :array_b

    .line 364
    .line 365
    .line 366
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 367
    .line 368
    .line 369
    invoke-static {p2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw p1

    .line 377
    :array_0
    .array-data 8
        0x157b11ff64ec9d66L    # 3.372687374319051E-205
        0x6a71cbb08c18ac09L    # 5.579447983667049E204
        -0x310495fa14fd92e9L    # -3.0272884631810067E72
        -0x71807c7f35d5a5f7L    # -7.561755420229598E-239
        -0x5efd7968cfb4ff73L
        -0x6246a4c83e8d15feL    # -1.7200006425216732E-165
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
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
    :array_1
    .array-data 8
        0x4a08c85cdb7a4377L    # 4.527488529732431E48
        0x4c7b79714ccfd306L    # 2.7593521633764085E60
    .end array-data

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
    :array_2
    .array-data 8
        0x61db84afc3ec56ecL    # 2.4760498162379183E163
        0x1ab48ccab6a56492L    # 4.952377650070185E-180
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
    :array_3
    .array-data 8
        0x4170872041eac938L    # 1.7330692119820803E7
        0x486cf9f78b73ea22L    # 7.888135496399531E40
        -0x743a8ab7815965c1L    # -5.853635291457415E-252
        0x664cb47204649ce4L
        -0x354299c3d954ed8cL    # -1.0999604724329423E52
        -0x5613d08592f76f80L    # -9.601005160528616E-107
        0x8a89592e3cc9d77L
        -0x4ba88f5efbe58b10L    # -1.4936802300002008E-56
    .end array-data

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
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_4
    .array-data 8
        -0x200200f50acfa560L    # -2.5136506591543727E154
        -0x66a17d34eadcb150L    # -1.753064423323593E-186
        -0x380ca7529edca90cL    # -4.114523295423161E38
        -0x30ccbdf872df410cL    # -3.402581307180816E73
        -0x74088d048e227e21L
        -0xe5fe73803bf3d0fL    # -2.096361424903602E239
        0x5a56e4ba99b30341L    # 1.5497079303757678E127
        0x65a7abecc6b0d8c9L    # 4.911279833386325E181
        -0x7ff2ca717aff10e7L    # -1.836966174804602E-308
    .end array-data

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    :array_5
    .array-data 8
        -0x435700acbf269ad1L    # -1.734540573311969E-16
        0x5b77ad8daf913028L    # 4.20167139459186E132
    .end array-data

    :array_6
    .array-data 8
        -0x62fbf533be73dbf9L    # -6.638307746548195E-169
        0x1a1a3d88a207966L
        -0x49c84805f0b11634L    # -1.6228965301075822E-47
        -0x7bfd1d7b8f7c752aL    # -2.4222966731000414E-289
        -0x22ad75e7c6d846aaL    # -3.5324368491796514E141
        -0x1ce444fad590d0baL
        -0x5e2a260346f0f115L    # -1.093713594271009E-145
        0x684c6760172b104dL    # 2.5918139264743575E194
    .end array-data

    :array_7
    .array-data 8
        0x606b4646907efddeL    # 2.9255315851982237E156
        0x10755c6fb3f6e27cL
    .end array-data

    :array_8
    .array-data 8
        -0x497e03b6850a469eL    # -3.937976286565473E-46
        0x6b2e4e07b15311c5L    # 1.9458910173751262E208
    .end array-data

    :array_9
    .array-data 8
        -0xec77ea7767c054fL    # -2.4933076297670125E237
        0x36e147b960c2434L
        -0xf7d7321278b2c32L    # -9.215884192849719E233
        0x6bed1e8f66843059L    # 7.6585936557582685E211
        0x20c5429d36b310e3L    # 8.118574108961112E-151
        0xe411eb857f60514L    # 5.134961998778572E-240
        0x2ca8a026cf1792dcL    # 1.4756998735145558E-93
        0x301bfcbd2c47393eL    # 6.042567703601982E-77
        -0x42a2c524eadf6bffL    # -4.1538193946290984E-13
        -0x7180b8e643494907L    # -7.505139476294217E-239
    .end array-data

    :array_a
    .array-data 8
        0x49fed9afb02cd592L    # 2.8179886309140147E48
        -0x37eb4b13c049e208L    # -1.7615337629848185E39
        -0x12f2ae467b522d1cL    # -2.0214339512555783E217
        -0xbe26a0fc219647L    # -9.7922410392717E304
        0x7860185c9621b1f4L    # 6.802389169866591E271
        0x364b281052957143L    # 3.7162461360762834E-47
        0x38457b69f45f74daL    # 1.2626035067871291E-37
    .end array-data

    :array_b
    .array-data 8
        0xc09d1db105ba936L
        -0x61d438c46a5fbb42L
    .end array-data
.end method

.method public msgChannelEOF([BI)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x5

    .line 3
    if-ne p2, v1, :cond_2

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    aget-byte p2, p1, p2

    .line 7
    .line 8
    and-int/lit16 p2, p2, 0xff

    .line 9
    .line 10
    shl-int/lit8 p2, p2, 0x18

    .line 11
    .line 12
    aget-byte v1, p1, v0

    .line 13
    .line 14
    and-int/lit16 v1, v1, 0xff

    .line 15
    .line 16
    shl-int/lit8 v1, v1, 0x10

    .line 17
    .line 18
    or-int/2addr p2, v1

    .line 19
    const/4 v1, 0x3

    .line 20
    aget-byte v1, p1, v1

    .line 21
    .line 22
    and-int/lit16 v1, v1, 0xff

    .line 23
    .line 24
    shl-int/lit8 v1, v1, 0x8

    .line 25
    .line 26
    or-int/2addr p2, v1

    .line 27
    const/4 v1, 0x4

    .line 28
    aget-byte p1, p1, v1

    .line 29
    .line 30
    and-int/lit16 p1, p1, 0xff

    .line 31
    .line 32
    or-int/2addr p1, p2

    .line 33
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/trilead/ssh2/channel/Channel;->eof()V

    .line 40
    .line 41
    .line 42
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v3, 0x6

    .line 58
    new-array v3, v3, [J

    .line 59
    .line 60
    fill-array-data v3, :array_0

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v0, v0, [J

    .line 79
    .line 80
    fill-array-data v0, :array_1

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    const/16 v0, 0x32

    .line 87
    .line 88
    invoke-static {p1, v1, p2, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 89
    .line 90
    .line 91
    :cond_0
    return-void

    .line 92
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    const/16 v2, 0x9

    .line 102
    .line 103
    new-array v2, v2, [J

    .line 104
    .line 105
    fill-array-data v2, :array_2

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p2

    .line 119
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    const/4 v3, 0x7

    .line 129
    new-array v3, v3, [J

    .line 130
    .line 131
    fill-array-data v3, :array_3

    .line 132
    .line 133
    .line 134
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v0, v0, [J

    .line 150
    .line 151
    fill-array-data v0, :array_4

    .line 152
    .line 153
    .line 154
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-static {p2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :array_0
    .array-data 8
        -0x1dd6c98ac5d7f2c6L    # -7.259512441624924E164
        -0x7d5c15d72b24167cL    # -6.090146279402282E-296
        0x5ef80c5fcef0cf6cL    # 3.074984383128675E149
        -0x60bae103f4878df5L
        0x2ab5e56b901f7f93L    # 6.110119414082674E-103
        0x11eaaf3f99320974L
    .end array-data

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
    :array_1
    .array-data 8
        0x1d336a232bc4cc86L    # 5.144354124658723E-168
        -0x20512cb2bc93f8a3L    # -8.072285384068468E152
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
    :array_2
    .array-data 8
        0x60c2513a469873L
        0x54d5b4fe2c38041dL    # 4.747865884967511E100
        -0x45f52b3f69f11c97L    # -4.233195428903276E-29
        0x3745605917583b43L    # 1.9170982165281954E-42
        0x6cd28adc2645337aL    # 1.598024223343427E216
        -0xaab5657d96945e8L
        -0x6fcf87398bdc761eL    # -1.060971736454148E-230
        -0x619452eb4d3e34b0L
        -0x57a01202623d8c44L
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
    :array_3
    .array-data 8
        -0x5823b143ecbeb4cfL
        0x506366cff44c38fcL    # 1.7972424235903806E79
        0xaa92f25c5875731L    # 2.62072444702559E-257
        0x750060fd1a09b1edL    # 3.842643196685746E255
        -0x6488c4f5af884069L
        0x2ab77b4e9160dcecL    # 6.552551268057883E-103
        -0x3bb62e2daea88b9fL    # -9.52575676355663E20
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
        0x5828221870287950L    # 4.7544796025756555E116
        -0x12cd3cfb986c743eL    # -1.0348348718342343E218
    .end array-data
.end method

.method public msgChannelExtendedData([BI)V
    .locals 13

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    const/16 v4, 0x8

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/16 v6, 0xd

    .line 12
    .line 13
    if-le p2, v6, :cond_7

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    aget-byte v8, p1, v7

    .line 17
    .line 18
    and-int/lit16 v8, v8, 0xff

    .line 19
    .line 20
    shl-int/lit8 v8, v8, 0x18

    .line 21
    .line 22
    aget-byte v9, p1, v5

    .line 23
    .line 24
    and-int/lit16 v9, v9, 0xff

    .line 25
    .line 26
    shl-int/lit8 v9, v9, 0x10

    .line 27
    .line 28
    or-int/2addr v8, v9

    .line 29
    const/4 v9, 0x3

    .line 30
    aget-byte v9, p1, v9

    .line 31
    .line 32
    and-int/lit16 v9, v9, 0xff

    .line 33
    .line 34
    shl-int/2addr v9, v4

    .line 35
    or-int/2addr v8, v9

    .line 36
    const/4 v9, 0x4

    .line 37
    aget-byte v10, p1, v9

    .line 38
    .line 39
    and-int/lit16 v10, v10, 0xff

    .line 40
    .line 41
    or-int/2addr v8, v10

    .line 42
    const/4 v10, 0x5

    .line 43
    aget-byte v10, p1, v10

    .line 44
    .line 45
    and-int/lit16 v10, v10, 0xff

    .line 46
    .line 47
    shl-int/lit8 v10, v10, 0x18

    .line 48
    .line 49
    const/4 v11, 0x6

    .line 50
    aget-byte v11, p1, v11

    .line 51
    .line 52
    and-int/lit16 v11, v11, 0xff

    .line 53
    .line 54
    shl-int/lit8 v11, v11, 0x10

    .line 55
    .line 56
    or-int/2addr v10, v11

    .line 57
    aget-byte v11, p1, v3

    .line 58
    .line 59
    and-int/lit16 v11, v11, 0xff

    .line 60
    .line 61
    shl-int/2addr v11, v4

    .line 62
    or-int/2addr v10, v11

    .line 63
    aget-byte v11, p1, v4

    .line 64
    .line 65
    and-int/lit16 v11, v11, 0xff

    .line 66
    .line 67
    or-int/2addr v10, v11

    .line 68
    aget-byte v11, p1, v2

    .line 69
    .line 70
    and-int/lit16 v11, v11, 0xff

    .line 71
    .line 72
    shl-int/lit8 v11, v11, 0x18

    .line 73
    .line 74
    aget-byte v12, p1, v1

    .line 75
    .line 76
    and-int/lit16 v12, v12, 0xff

    .line 77
    .line 78
    shl-int/lit8 v12, v12, 0x10

    .line 79
    .line 80
    or-int/2addr v11, v12

    .line 81
    aget-byte v12, p1, v0

    .line 82
    .line 83
    and-int/lit16 v12, v12, 0xff

    .line 84
    .line 85
    shl-int/2addr v12, v4

    .line 86
    or-int/2addr v11, v12

    .line 87
    const/16 v12, 0xc

    .line 88
    .line 89
    aget-byte v12, p1, v12

    .line 90
    .line 91
    and-int/lit16 v12, v12, 0xff

    .line 92
    .line 93
    or-int/2addr v11, v12

    .line 94
    invoke-direct {p0, v8}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    if-eqz v12, :cond_6

    .line 99
    .line 100
    if-ne v10, v7, :cond_5

    .line 101
    .line 102
    sub-int/2addr p2, v6

    .line 103
    if-ne v11, p2, :cond_4

    .line 104
    .line 105
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v3, v3, [J

    .line 121
    .line 122
    fill-array-data v3, :array_0

    .line 123
    .line 124
    .line 125
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v3, v5, [J

    .line 141
    .line 142
    fill-array-data v3, :array_1

    .line 143
    .line 144
    .line 145
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v3, v5, [J

    .line 161
    .line 162
    fill-array-data v3, :array_2

    .line 163
    .line 164
    .line 165
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    const/16 v3, 0x50

    .line 169
    .line 170
    invoke-static {v2, v0, p2, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 171
    .line 172
    .line 173
    :cond_0
    monitor-enter v12

    .line 174
    :try_start_0
    iget p2, v12, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 175
    .line 176
    if-ne p2, v9, :cond_1

    .line 177
    .line 178
    monitor-exit v12

    .line 179
    return-void

    .line 180
    :catchall_0
    move-exception p1

    .line 181
    goto :goto_0

    .line 182
    :cond_1
    if-ne p2, v5, :cond_3

    .line 183
    .line 184
    iget p2, v12, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 185
    .line 186
    if-lt p2, v11, :cond_2

    .line 187
    .line 188
    sub-int/2addr p2, v11

    .line 189
    iput p2, v12, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 190
    .line 191
    iget-object p2, v12, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 192
    .line 193
    invoke-virtual {p2, p1, v6, v11}, Lcom/trilead/ssh2/channel/Channel$Output;->write([BII)V

    .line 194
    .line 195
    .line 196
    monitor-exit v12

    .line 197
    return-void

    .line 198
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 199
    .line 200
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array v0, v4, [J

    .line 203
    .line 204
    fill-array-data v0, :array_3

    .line 205
    .line 206
    .line 207
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p1

    .line 218
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 219
    .line 220
    new-instance p2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v1, v1, [J

    .line 228
    .line 229
    fill-array-data v1, :array_4

    .line 230
    .line 231
    .line 232
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget v0, v12, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 243
    .line 244
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 248
    .line 249
    new-array v1, v5, [J

    .line 250
    .line 251
    fill-array-data v1, :array_5

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw p1

    .line 272
    :goto_0
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    throw p1

    .line 274
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 275
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 282
    .line 283
    new-array v2, v2, [J

    .line 284
    .line 285
    fill-array-data v2, :array_6

    .line 286
    .line 287
    .line 288
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 302
    .line 303
    new-array v1, v5, [J

    .line 304
    .line 305
    fill-array-data v1, :array_7

    .line 306
    .line 307
    .line 308
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 322
    .line 323
    new-array v1, v5, [J

    .line 324
    .line 325
    fill-array-data v1, :array_8

    .line 326
    .line 327
    .line 328
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 329
    .line 330
    .line 331
    invoke-static {p2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 340
    .line 341
    new-instance p2, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 347
    .line 348
    new-array v1, v4, [J

    .line 349
    .line 350
    fill-array-data v1, :array_9

    .line 351
    .line 352
    .line 353
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 367
    .line 368
    new-array v1, v5, [J

    .line 369
    .line 370
    fill-array-data v1, :array_a

    .line 371
    .line 372
    .line 373
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 374
    .line 375
    .line 376
    invoke-static {v0, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw p1

    .line 384
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 385
    .line 386
    new-instance p2, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 392
    .line 393
    new-array v0, v0, [J

    .line 394
    .line 395
    fill-array-data v0, :array_b

    .line 396
    .line 397
    .line 398
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 399
    .line 400
    .line 401
    invoke-static {v1, p2, v8}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p2

    .line 405
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw p1

    .line 409
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 410
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .line 415
    .line 416
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 417
    .line 418
    new-array v2, v4, [J

    .line 419
    .line 420
    fill-array-data v2, :array_c

    .line 421
    .line 422
    .line 423
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 437
    .line 438
    new-array v1, v5, [J

    .line 439
    .line 440
    fill-array-data v1, :array_d

    .line 441
    .line 442
    .line 443
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 444
    .line 445
    .line 446
    invoke-static {p2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p2

    .line 450
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw p1

    .line 454
    nop

    .line 455
    :array_0
    .array-data 8
        -0x6816253f0c4bcea3L
        0x66c7334fdf07741L
        -0x3e1ef70240381678L    # -2.286415358247257E9
        -0x353a28568f139751L    # -1.6344445984069862E52
        0x46b917191c0870ebL    # 5.088902588441502E32
        0x5442f3a7051d6fcdL    # 8.096145840434301E97
        -0x467cab9feaf96aa1L    # -1.1912780258059336E-31
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    :array_1
    .array-data 8
        -0xe65a811fe340654L    # -1.715416743217149E239
        -0x61b531e49529e105L    # -9.30957555791137E-163
    .end array-data

    :array_2
    .array-data 8
        0xc3da984e4d70762L
        0x480113859a1abf0eL    # 7.26343658833524E38
    .end array-data

    :array_3
    .array-data 8
        -0x29edaecdaf2084d6L
        0x19e51fcef005b74cL
        -0x8886270035d845aL
        0x77216cdd5932f219L    # 7.023365481714879E265
        0x6a13117fa5725055L    # 9.34136410625373E202
        -0x44cc8a6f44b03566L
        0x162ea4e1c085cf7cL    # 7.819146670660889E-202
        0x40562c2afeda9056L    # 88.690124238435
    .end array-data

    :array_4
    .array-data 8
        -0xbdb0f029f04107eL    # -2.998688880397761E251
        0x217f5e5dfc4758e3L    # 2.453226055988078E-147
        0x53757ccbf5073d5dL    # 1.1205320791852611E94
        -0x21f6b4a9077331c4L    # -9.870303913650842E144
        0x5ed8db039dd7b107L    # 7.945492050935788E148
        -0x23e5bbf1f7ac378aL    # -4.772757249523004E135
        -0x4287c29583288633L    # -1.3778791368841861E-12
        0x32e1bd9c48bc7b29L    # 1.3476615635596605E-63
        0x1afe03f84f80871aL
        -0x7fe46ac45099b213L    # -3.835880195328732E-308
    .end array-data

    :array_5
    .array-data 8
        -0xb849e516840bbf9L
        -0x3a2cfdc136d1a446L    # -2.3531718144411E28
    .end array-data

    :array_6
    .array-data 8
        0x2f49c37f02cf5306L    # 6.790139238878289E-81
        0x4f2b8b9b26d9db5aL    # 2.4334198187220932E73
        -0x3a5ddf112f7d8a67L    # -2.805271786279079E27
        0x124ddc1c40d6cbbaL    # 1.6521146046130009E-220
        -0x37e0b6741873bfaL    # -5.599409725007328E291
        0x5ed2da1a48e72efaL    # 6.026351611633596E148
        -0x582aac96846b180cL    # -8.456829973404774E-117
        -0x362c97cfd1fd8689L    # -4.431771967692115E47
        0x2b1022c2b255a79aL    # 2.88171826561957E-101
    .end array-data

    :array_7
    .array-data 8
        -0x38493c4495826f58L    # -3.0259315042324055E37
        -0x64a139cbeaadbf89L
    .end array-data

    :array_8
    .array-data 8
        -0x7ca85633f7660d32L
        0x44a0e0a7ea347608L    # 3.985101696972785E22
    .end array-data

    :array_9
    .array-data 8
        -0x18311f01d5e166feL    # -1.1006488150172223E192
        -0x602b4aa3de24f693L
        0x6c805fe757e87d7eL    # 4.409996613988784E214
        -0x23dfbd4e9656b5b5L    # -5.909387662520432E135
        0x234488fbc4809551L    # 8.622012605408597E-139
        0x52862183583cb526L    # 3.521989116847871E89
        0x37f556a6d5ebbc6cL    # 3.9192603856362336E-39
        0x5495141337913778L    # 2.881486596799234E99
    .end array-data

    :array_a
    .array-data 8
        0x1033c94d375c9e9eL
        0xa5146d0bee18940L
    .end array-data

    :array_b
    .array-data 8
        0xd4ffdae09c34454L
        0x4b5000e2a455f238L    # 6.131307113708303E54
        0x433f143ba447af88L    # 8.747970669817736E15
        0x11ff396a636b1582L    # 5.398780069784391E-222
        -0x4fe18b02fd93c308L    # -6.575791536937724E-77
        -0x238844b457855cf1L    # -2.7598500372970943E137
        -0x3a3079be67b4f099L    # -1.9512682254850396E28
        0x6e9999738bb2d4deL    # 5.922252189181053E224
        -0x36692561c977ace4L    # -3.261828542725893E46
        -0x4c796a82819c6e3L    # -3.630030825489131E285
        -0x41811942ae4ada27L    # -1.151164110052802E-7
    .end array-data

    :array_c
    .array-data 8
        0x155ba7713380c310L    # 8.613547421132323E-206
        -0x1d069944f2b18d4dL    # -5.991470022966424E168
        -0x7a8a04e8266751e5L
        0x4b1e806a1e892ff7L    # 7.303686795695653E53
        -0x3505786571eba346L    # -1.5881503955475977E53
        0x7c8967f677425aa2L    # 7.92289492348263E291
        -0x50185a2005a8baf0L    # -6.382114766324482E-78
        -0x63b213834d63706eL
    .end array-data

    :array_d
    .array-data 8
        -0x1cccc96435975888L    # -7.251032764655178E169
        0x2782c423bcdf54feL
    .end array-data
.end method

.method public msgChannelFailure([BI)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x5

    .line 3
    if-ne p2, v1, :cond_2

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    aget-byte v1, p1, p2

    .line 7
    .line 8
    and-int/lit16 v1, v1, 0xff

    .line 9
    .line 10
    shl-int/lit8 v1, v1, 0x18

    .line 11
    .line 12
    aget-byte v2, p1, v0

    .line 13
    .line 14
    and-int/lit16 v2, v2, 0xff

    .line 15
    .line 16
    shl-int/lit8 v2, v2, 0x10

    .line 17
    .line 18
    or-int/2addr v1, v2

    .line 19
    const/4 v2, 0x3

    .line 20
    aget-byte v2, p1, v2

    .line 21
    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 23
    .line 24
    shl-int/lit8 v2, v2, 0x8

    .line 25
    .line 26
    or-int/2addr v1, v2

    .line 27
    const/4 v2, 0x4

    .line 28
    aget-byte p1, p1, v2

    .line 29
    .line 30
    and-int/lit16 p1, p1, 0xff

    .line 31
    .line 32
    or-int/2addr p1, v1

    .line 33
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget v2, v1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 41
    .line 42
    add-int/2addr v2, p2

    .line 43
    iput v2, v1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 46
    .line 47
    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v3, 0x6

    .line 65
    new-array v3, v3, [J

    .line 66
    .line 67
    fill-array-data v3, :array_0

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v0, v0, [J

    .line 86
    .line 87
    fill-array-data v0, :array_1

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    const/16 v0, 0x32

    .line 94
    .line 95
    invoke-static {p1, v1, p2, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 96
    .line 97
    .line 98
    :cond_0
    return-void

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p1

    .line 102
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    const/16 v2, 0xa

    .line 112
    .line 113
    new-array v2, v2, [J

    .line 114
    .line 115
    fill-array-data v2, :array_2

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p2

    .line 129
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 130
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    const/4 v3, 0x7

    .line 139
    new-array v3, v3, [J

    .line 140
    .line 141
    fill-array-data v3, :array_3

    .line 142
    .line 143
    .line 144
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v0, v0, [J

    .line 160
    .line 161
    fill-array-data v0, :array_4

    .line 162
    .line 163
    .line 164
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-static {p2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :array_0
    .array-data 8
        -0x61c3862020776525L    # -4.944956157761487E-163
        -0x3bde0730eb5c5f3dL    # -1.657616102938285E20
        0x52aa34b27ac18c4dL    # 1.668195498220055E90
        0x2c9dfb6ac5ee4628L    # 8.983454667100196E-94
        0x61c481ba5699be07L    # 9.225809841626569E162
        0x25f2854f815edb58L    # 6.84006548322896E-126
    .end array-data

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
    :array_1
    .array-data 8
        -0x665165a225f876b0L
        -0x5467ef9568539a21L    # -1.1001997255924471E-98
    .end array-data

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
    :array_2
    .array-data 8
        -0x47e78738f911860fL    # -1.797902954361848E-38
        -0x74745adc62ca4058L    # -4.713368800207092E-253
        -0x5cfdcfdf79f52c67L    # -4.77284006219065E-140
        -0x4cc16f0b547df13dL    # -7.430239735578033E-62
        -0x38ceecdea2c40026L    # -8.865705576156518E34
        -0x5e90f468dfa0751dL
        0x1fcda30df20a6b55L    # 1.726893231719456E-155
        -0x7371bd72df2dab4bL    # -3.381131180910282E-248
        -0x218175a1a6e49302L    # -1.5254362923721569E147
        -0x770b367d1285ae2fL
    .end array-data

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
    :array_3
    .array-data 8
        0x5432cd5fad305481L    # 4.016134335935612E97
        0x3b9264057bb99263L    # 9.73596010349663E-22
        -0x3f9bcb3c894937dfL    # -161.64886031817971
        0x5cd15e5566cd9450L
        -0x68194728af332dd9L    # -1.556324054385079E-193
        -0x584174c2c08aa03dL
        -0x6265d7b9c2f113b9L    # -4.435837996911334E-166
    .end array-data

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
    :array_4
    .array-data 8
        0x548444173589a89aL    # 1.3852117990469272E99
        0x623d3cc876985e59L    # 1.6836696878041536E165
    .end array-data
.end method

.method public msgChannelOpen([BI)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-instance v3, Lcom/trilead/ssh2/packets/TypesReader;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    move-object/from16 v5, p1

    .line 10
    .line 11
    move/from16 v6, p2

    .line 12
    .line 13
    invoke-direct {v3, v5, v4, v6}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v10, 0x2

    .line 38
    new-array v11, v10, [J

    .line 39
    .line 40
    fill-array-data v11, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    const-wide v11, 0xffffffffL

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    const/16 v13, 0x14

    .line 60
    .line 61
    const/4 v14, 0x1

    .line 62
    if-eqz v9, :cond_2

    .line 63
    .line 64
    iget-object v9, v1, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 65
    .line 66
    monitor-enter v9

    .line 67
    :try_start_0
    iget-object v0, v1, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    new-instance v0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    .line 76
    .line 77
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/4 v3, 0x5

    .line 80
    new-array v3, v3, [J

    .line 81
    .line 82
    fill-array-data v3, :array_1

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v5, v14, [J

    .line 95
    .line 96
    const-wide v7, -0x29ec07720454c19bL    # -4.580326932962619E106

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    aput-wide v7, v5, v4

    .line 102
    .line 103
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-direct {v0, v6, v14, v2, v3}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v2, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 120
    .line 121
    .line 122
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_0

    .line 129
    .line 130
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    const/4 v3, 0x6

    .line 133
    new-array v3, v3, [J

    .line 134
    .line 135
    fill-array-data v3, :array_2

    .line 136
    .line 137
    .line 138
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v13, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    goto :goto_1

    .line 151
    :cond_0
    :goto_0
    monitor-exit v9

    .line 152
    return-void

    .line 153
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    new-instance v3, Lcom/trilead/ssh2/channel/Channel;

    .line 163
    .line 164
    invoke-direct {v3, v1}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 165
    .line 166
    .line 167
    monitor-enter v3

    .line 168
    :try_start_1
    iput v6, v3, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 169
    .line 170
    int-to-long v4, v7

    .line 171
    and-long/2addr v4, v11

    .line 172
    iput-wide v4, v3, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 173
    .line 174
    iput v8, v3, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 175
    .line 176
    invoke-direct {v1, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    iput v4, v3, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 181
    .line 182
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    new-instance v4, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;

    .line 184
    .line 185
    invoke-direct {v4, v3, v0, v2}, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;-><init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v14}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    throw v0

    .line 198
    :goto_1
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    throw v0

    .line 200
    :cond_2
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array v15, v2, [J

    .line 203
    .line 204
    fill-array-data v15, :array_3

    .line 205
    .line 206
    .line 207
    invoke-direct {v9, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    if-eqz v9, :cond_5

    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v17

    .line 224
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v19

    .line 232
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 233
    .line 234
    .line 235
    move-result v20

    .line 236
    iget-object v3, v1, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 237
    .line 238
    monitor-enter v3

    .line 239
    :try_start_4
    iget-object v5, v1, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 240
    .line 241
    new-instance v9, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-direct {v9, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    check-cast v5, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    .line 251
    .line 252
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 253
    if-nez v5, :cond_4

    .line 254
    .line 255
    new-instance v2, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    .line 256
    .line 257
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 258
    .line 259
    new-array v0, v0, [J

    .line 260
    .line 261
    fill-array-data v0, :array_4

    .line 262
    .line 263
    .line 264
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v5, v14, [J

    .line 274
    .line 275
    const-wide v7, -0x7d68ec52e7fd3025L

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    aput-wide v7, v5, v4

    .line 281
    .line 282
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-direct {v2, v6, v14, v0, v3}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 299
    .line 300
    .line 301
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_3

    .line 308
    .line 309
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 310
    .line 311
    const/4 v3, 0x7

    .line 312
    new-array v3, v3, [J

    .line 313
    .line 314
    fill-array-data v3, :array_5

    .line 315
    .line 316
    .line 317
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v0, v13, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :cond_3
    return-void

    .line 328
    :cond_4
    new-instance v4, Lcom/trilead/ssh2/channel/Channel;

    .line 329
    .line 330
    invoke-direct {v4, v1}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 331
    .line 332
    .line 333
    monitor-enter v4

    .line 334
    :try_start_5
    iput v6, v4, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 335
    .line 336
    int-to-long v6, v7

    .line 337
    and-long/2addr v6, v11

    .line 338
    iput-wide v6, v4, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 339
    .line 340
    iput v8, v4, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 341
    .line 342
    invoke-direct {v1, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    iput v0, v4, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 347
    .line 348
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 349
    new-instance v0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;

    .line 350
    .line 351
    iget-object v3, v5, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    .line 352
    .line 353
    iget v5, v5, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetPort:I

    .line 354
    .line 355
    move-object v15, v0

    .line 356
    move-object/from16 v16, v4

    .line 357
    .line 358
    move/from16 v18, v2

    .line 359
    .line 360
    move-object/from16 v21, v3

    .line 361
    .line 362
    move/from16 v22, v5

    .line 363
    .line 364
    invoke-direct/range {v15 .. v22}, Lcom/trilead/ssh2/channel/RemoteAcceptThread;-><init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v14}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :catchall_2
    move-exception v0

    .line 375
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 376
    throw v0

    .line 377
    :catchall_3
    move-exception v0

    .line 378
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 379
    throw v0

    .line 380
    :cond_5
    new-instance v3, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    .line 381
    .line 382
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 383
    .line 384
    const/4 v8, 0x4

    .line 385
    new-array v8, v8, [J

    .line 386
    .line 387
    fill-array-data v8, :array_6

    .line 388
    .line 389
    .line 390
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 398
    .line 399
    new-array v9, v14, [J

    .line 400
    .line 401
    const-wide v11, -0x292678e6a877eb70L    # -2.398118478915993E110

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    aput-wide v11, v9, v4

    .line 407
    .line 408
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-direct {v3, v6, v2, v7, v4}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget-object v2, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 419
    .line 420
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 425
    .line 426
    .line 427
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 428
    .line 429
    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-eqz v3, :cond_6

    .line 434
    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    .line 440
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 441
    .line 442
    new-array v0, v0, [J

    .line 443
    .line 444
    fill-array-data v0, :array_7

    .line 445
    .line 446
    .line 447
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 461
    .line 462
    new-array v4, v10, [J

    .line 463
    .line 464
    fill-array-data v4, :array_8

    .line 465
    .line 466
    .line 467
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 468
    .line 469
    .line 470
    invoke-static {v0, v3, v2, v13}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 471
    .line 472
    .line 473
    :cond_6
    return-void

    .line 474
    nop

    :array_0
    .array-data 8
        -0x23aa890846cd6d2fL    # -6.240555142260979E136
        0x6082bbe78a8ae403L    # 8.037820727469057E156
    .end array-data

    :array_1
    .array-data 8
        0x1dfeb43715619742L
        -0x687a48a4f747db9bL
        -0x47b7305d58a94fa4L
        -0x598e0966396d99a8L
        0x20c85ef8bccd938cL    # 9.306475247117237E-151
    .end array-data

    :array_2
    .array-data 8
        0x6335079c85de43aaL    # 7.93654187504501E169
        0x4bf2df8579406358L    # 7.404284972595698E57
        0x704ecbff829028bfL    # 9.562538803246938E232
        0x629618d1234c47eaL    # 8.143850171651447E166
        -0xe74a4976bf59341L    # -8.907094767922679E238
        0xb449655e42b0fceL
    .end array-data

    :array_3
    .array-data 8
        0x271f122e789ad7f7L
        -0x7a84db45e996cac2L    # -2.920581662878273E-282
        0xdd44cacddd5571aL
    .end array-data

    :array_4
    .array-data 8
        0x31c96d082854df39L    # 7.367962960876587E-69
        0x27a52008aea2e834L
        0x7abc7ad4d90035c5L    # 1.6542952915108903E283
        0x1c26882b8e6d9286L    # 4.555023256967308E-173
        -0x3b41fad856416290L    # -1.4176608623147985E23
        -0x3c1b00113d93d932L    # -1.2105524149002596E19
        0x468f8db106d82c73L    # 7.999758196860718E31
        -0x676ef670be47b8b9L    # -2.389926774996718E-190
    .end array-data

    :array_5
    .array-data 8
        0xfc7fa9cad9aff72L
        -0x62c9d4e2611c5594L
        -0x6196cdae076f37d9L    # -3.5003675926366E-162
        0x7b7befe3d575f8f2L    # 6.6468633260885495E286
        0x284b597d2cbc1280L
        0x2b9ab58ea205be01L    # 1.2211315032475757E-98
        0x2d623db4c751b0c7L    # 4.477348442612974E-90
    .end array-data

    :array_6
    .array-data 8
        0x4af3a9a27a1b9ddbL    # 1.177066451246075E53
        -0x2902feddfb6bd56fL    # -1.089890047312004E111
        -0x731e3f8db9318bf9L
        -0x337f058d38813e33L    # -3.4103873152119726E60
    .end array-data

    :array_7
    .array-data 8
        0x5572b04f26d0f064L    # 4.185793493898811E103
        -0x460451233943c2a5L    # -2.1838080835647683E-29
        -0x2672c298dfabbfa5L    # -2.4161475704264464E123
        0x6ea37a2068c66da5L    # 9.011770313428345E224
        0x527c7047260d7c38L    # 2.26290711207453E89
        -0x36a5695140937cd3L    # -2.3717827265175212E45
        0x4364f045822c723L
        0x405cb07c717888deL    # 114.75759541293107
    .end array-data

    :array_8
    .array-data 8
        0x262407db29944465L    # 5.918173219488379E-125
        -0x69d9f0b05776d22bL    # -5.62878513350824E-202
    .end array-data
.end method

.method public msgChannelOpenConfirmation([BI)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p1, v2, p2}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;-><init>([BII)V

    .line 6
    .line 7
    .line 8
    iget p1, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    monitor-enter p1

    .line 17
    :try_start_0
    iget p2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne p2, v2, :cond_1

    .line 21
    .line 22
    iget p2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    .line 23
    .line 24
    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 25
    .line 26
    iget p2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->initialWindowSize:I

    .line 27
    .line 28
    int-to-long v2, p2

    .line 29
    const-wide v4, 0xffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v2, v4

    .line 35
    iput-wide v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 36
    .line 37
    iget p2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->maxPacketSize:I

    .line 38
    .line 39
    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 40
    .line 41
    iput v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 44
    .line 45
    .line 46
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    sget-object p1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 v3, 0x7

    .line 63
    new-array v3, v3, [J

    .line 64
    .line 65
    fill-array-data v3, :array_0

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    .line 79
    .line 80
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    const/4 v3, 0x3

    .line 86
    new-array v3, v3, [J

    .line 87
    .line 88
    fill-array-data v3, :array_1

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    .line 102
    .line 103
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v0, v0, [J

    .line 109
    .line 110
    fill-array-data v0, :array_2

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    const/16 v0, 0x32

    .line 117
    .line 118
    invoke-static {v1, p2, p1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 119
    .line 120
    .line 121
    :cond_0
    return-void

    .line 122
    :catchall_0
    move-exception p2

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    const/16 v3, 0xa

    .line 134
    .line 135
    new-array v3, v3, [J

    .line 136
    .line 137
    fill-array-data v3, :array_3

    .line 138
    .line 139
    .line 140
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget v1, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p2

    .line 163
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    throw p2

    .line 165
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 166
    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    const/16 v2, 0xb

    .line 175
    .line 176
    new-array v2, v2, [J

    .line 177
    .line 178
    fill-array-data v2, :array_4

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget v0, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    .line 192
    .line 193
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    nop

    .line 205
    :array_0
    .array-data 8
        -0x32cc2e843748eb60L    # -8.152773703560675E63
        -0x32af10e9242118f9L    # -2.786487963726036E64
        0x2f3c16743df94678L    # 3.70132764230653E-81
        0x7fd2825b376436feL    # 5.199042124103643E307
        0x7deacd3b51d2efbcL    # 3.5056442456102264E298
        0x89a1f9592eb9cd9L
        0x1fb3f1f9352c1af2L
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
    :array_1
    .array-data 8
        0x7e66175bd31f4c5bL    # 7.397174698848145E300
        -0x7b4e0be807f24edcL    # -4.716208860350025E-286
        -0x34eabbfce8e8ee00L    # -5.092116835538301E53
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
    :array_2
    .array-data 8
        -0x2164f6b65e19d199L    # -5.401629903691887E147
        0xf50dc8855892703L    # 6.628853882949837E-235
    .end array-data

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
    :array_3
    .array-data 8
        -0x610fea6e36c9a96eL
        0x21ec9545c627fd3fL    # 2.86128665721876E-145
        0x18608636c9fa41a8L    # 2.897444573781179E-191
        -0x2ec4cc39662828e8L    # -2.0642563766290623E83
        -0x3d7ad86068449230L    # -2.9074906786377266E12
        0x493804688ba8e8a5L    # 5.3560190891433765E44
        0x601c989c54330301L    # 9.585287271113744E154
        0x26c2211f23c4c33eL    # 5.484976238127967E-122
        -0x603d499bab1575aaL
        0x5554bc59fdaf1d87L    # 1.1610695725186607E103
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
    :array_4
    .array-data 8
        0x68d00691684085d0L    # 7.487089146445988E196
        0x35e8e44dc7ade9fdL    # 5.322396498053582E-49
        -0x9f51426180162dL
        0x43ec322b15dde759L    # 1.6253870038517991E19
        0x55a0b1a5d500fc52L    # 2.991212546368598E104
        -0x6ffa0f54c1c3c647L
        -0x5c945ef562d50de9L
        -0x53596df683c62854L
        0x353db9ff359e7012L
        -0x35e40a16ef38f29L    # -2.213828074012518E292
        0x5a880cfd43bd464fL    # 1.30243665163934E128
    .end array-data
.end method

.method public msgChannelOpenFailure([BI)V
    .locals 10

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x5

    .line 6
    if-lt p2, v4, :cond_8

    .line 7
    .line 8
    new-instance v5, Lcom/trilead/ssh2/packets/TypesReader;

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    invoke-direct {v5, p1, v6, p2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_7

    .line 26
    .line 27
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v9, v3, [J

    .line 34
    .line 35
    fill-array-data v9, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v5, v8}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eq v7, v1, :cond_3

    .line 50
    .line 51
    if-eq v7, v3, :cond_2

    .line 52
    .line 53
    const/4 v8, 0x3

    .line 54
    if-eq v7, v8, :cond_1

    .line 55
    .line 56
    if-eq v7, v2, :cond_0

    .line 57
    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v9, v2, [J

    .line 66
    .line 67
    fill-array-data v9, :array_1

    .line 68
    .line 69
    .line 70
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v8, v3, [J

    .line 86
    .line 87
    fill-array-data v8, :array_2

    .line 88
    .line 89
    .line 90
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-static {v7, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v4, v4, [J

    .line 101
    .line 102
    fill-array-data v4, :array_3

    .line 103
    .line 104
    .line 105
    invoke-direct {v7, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v4, v4, [J

    .line 116
    .line 117
    fill-array-data v4, :array_4

    .line 118
    .line 119
    .line 120
    invoke-direct {v7, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    goto :goto_0

    .line 128
    :cond_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v7, v2, [J

    .line 131
    .line 132
    fill-array-data v7, :array_5

    .line 133
    .line 134
    .line 135
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    goto :goto_0

    .line 143
    :cond_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    new-array v7, v0, [J

    .line 146
    .line 147
    fill-array-data v7, :array_6

    .line 148
    .line 149
    .line 150
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    :goto_0
    new-instance v7, Ljava/lang/StringBuffer;

    .line 158
    .line 159
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-ge v6, v5, :cond_5

    .line 170
    .line 171
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    const/16 v8, 0x20

    .line 176
    .line 177
    if-lt v5, v8, :cond_4

    .line 178
    .line 179
    const/16 v8, 0x7e

    .line 180
    .line 181
    if-gt v5, v8, :cond_4

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_4
    const v5, 0xfffd

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7, v6, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 188
    .line 189
    .line 190
    :goto_2
    add-int/2addr v6, v1

    .line 191
    goto :goto_1

    .line 192
    :cond_5
    monitor-enter p2

    .line 193
    :try_start_0
    invoke-virtual {p2}, Lcom/trilead/ssh2/channel/Channel;->eof()V

    .line 194
    .line 195
    .line 196
    iput v2, p2, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 197
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v0, v0, [J

    .line 206
    .line 207
    fill-array-data v0, :array_7

    .line 208
    .line 209
    .line 210
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array v2, v3, [J

    .line 226
    .line 227
    fill-array-data v2, :array_8

    .line 228
    .line 229
    .line 230
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 248
    .line 249
    new-array v2, v3, [J

    .line 250
    .line 251
    fill-array-data v2, :array_9

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {p2, v0}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 272
    .line 273
    .line 274
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 276
    .line 277
    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_6

    .line 282
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 289
    .line 290
    const/4 v2, 0x7

    .line 291
    new-array v2, v2, [J

    .line 292
    .line 293
    fill-array-data v2, :array_a

    .line 294
    .line 295
    .line 296
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 310
    .line 311
    new-array v1, v3, [J

    .line 312
    .line 313
    fill-array-data v1, :array_b

    .line 314
    .line 315
    .line 316
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 317
    .line 318
    .line 319
    const/16 v1, 0x32

    .line 320
    .line 321
    invoke-static {p1, v0, p2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 322
    .line 323
    .line 324
    :cond_6
    return-void

    .line 325
    :catchall_0
    move-exception p1

    .line 326
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    throw p1

    .line 328
    :cond_7
    new-instance p2, Ljava/io/IOException;

    .line 329
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 336
    .line 337
    const/16 v2, 0xb

    .line 338
    .line 339
    new-array v2, v2, [J

    .line 340
    .line 341
    fill-array-data v2, :array_c

    .line 342
    .line 343
    .line 344
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 345
    .line 346
    .line 347
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw p2

    .line 355
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 356
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 363
    .line 364
    const/16 v2, 0x8

    .line 365
    .line 366
    new-array v2, v2, [J

    .line 367
    .line 368
    fill-array-data v2, :array_d

    .line 369
    .line 370
    .line 371
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 385
    .line 386
    new-array v1, v3, [J

    .line 387
    .line 388
    fill-array-data v1, :array_e

    .line 389
    .line 390
    .line 391
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 392
    .line 393
    .line 394
    invoke-static {p2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw p1

    .line 402
    nop

    .line 403
    :array_0
    .array-data 8
        0x496f84c8f786a17eL    # 5.6231224671134724E45
        -0x6674e25953811102L
    .end array-data

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
    :array_1
    .array-data 8
        0x645d01362aa01451L    # 2.8695008797823128E175
        -0x376d505e9737e1aL    # -7.848604140338279E291
        -0x34390b33cc857bb9L    # -1.1257707761610718E57
        -0x3cc3d4dd2a1282d1L    # -7.928727965891887E15
    .end array-data

    .line 416
    .line 417
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
    :array_2
    .array-data 8
        0x1f81bd410dbe46fcL    # 6.460231884720372E-157
        0x668fa1ba6bea59eL
    .end array-data

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
    :array_3
    .array-data 8
        -0x289b4278e5992931L    # -9.975721605862849E112
        0x6bb877af419ce8d1L    # 8.043904349056218E210
        -0x5eb93d213a52df77L    # -2.22508970887286E-148
        0x267b83ebbfe232f8L
        -0x4f41dda1e99aaeb2L    # -6.662257827839812E-74
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :array_4
    .array-data 8
        -0x56714a7576e74faaL
        -0xf810f541aaaa850L    # -7.685616098371563E233
        0x44c2cc2f86d0637dL    # 1.775383142727655E23
        -0x3e450a45a9591a84L    # -4.5231163865193915E8
        0x15e69fd9cb152c70L
    .end array-data

    .line 472
    .line 473
    .line 474
    :array_5
    .array-data 8
        0x63d9b5746ed8d10cL    # 9.935265271086756E172
        0x7c804b2731208f71L    # 5.081149585565857E291
        0x5735ef268ea4602aL    # 1.3187420325774726E112
        0x54a654b29269c3a4L    # 6.105395923895611E99
    .end array-data

    :array_6
    .array-data 8
        -0x5340ed9f44ec9443L    # -3.7239822717939273E-93
        0x163472b7441680daL
        -0x65298506952da1beL
        -0x4293938be32cd161L    # -8.078486285293983E-13
        0x580521906df98de9L    # 1.0407601624248263E116
        -0x4ebf483eb5d5a088L    # -1.892387117160636E-71
    .end array-data

    :array_7
    .array-data 8
        0x3bfd5c532371bd89L    # 9.947772990052356E-20
        -0xe945032d26f1365L    # -2.253606917520219E238
        0x11c66fb7440b05e4L
        0x58a6f6b51ca89209L    # 1.158164340511742E119
        -0x7b59384e50b90471L    # -2.992050371053774E-286
        -0x1eb8b35469c3b7c1L    # -4.094625445227182E160
    .end array-data

    :array_8
    .array-data 8
        0x1afa7c43ad60ef0cL
        0x59eec6788bc20977L    # 1.6275344380754323E125
    .end array-data

    :array_9
    .array-data 8
        -0x2409d5df000cbaf5L    # -1.0068790564345857E135
        0x776c9d4e56474deeL    # 1.8453212265069905E267
    .end array-data

    :array_a
    .array-data 8
        0x28729a9011e051a5L    # 7.554442071159163E-114
        -0x4778dd4a374d1a2cL    # -2.1756600802088573E-36
        0xc4602921271297dL
        0x28df445d6b71c5fcL    # 8.125845045376699E-112
        -0x17a5578ed6601aecL    # -4.865017431601568E194
        -0x2d5f7901e6bbd84L    # -8.313220047771672E294
        -0x789345f1436dabf8L    # -6.637751677948543E-273
    .end array-data

    :array_b
    .array-data 8
        -0x680e3d3b9d813c0L
        0x7ddde1136133a293L    # 1.9540907029241512E298
    .end array-data

    :array_c
    .array-data 8
        0x4ab25689e764e533L    # 6.861075977628223E51
        -0x6915ca18c2b849f3L    # -2.739360320836097E-198
        0x542ae3e4d53d6151L    # 2.8718570472130265E97
        0x2acc5841ca9e0fe0L
        -0x4752ebb2df19b46bL    # -1.0938417630360982E-35
        -0x4885f30198ddd08bL    # -1.869050143230274E-41
        0x54f178249559395aL    # 1.5283902824749662E101
        -0x764553bad285f9beL    # -8.470606661679435E-262
        -0x2cfc221e49a743b3L    # -8.093846852451358E91
        0x23852626a6ec03fL
        0x24957667a3820c08L
    .end array-data

    :array_d
    .array-data 8
        -0x567b89ea909f3b4dL
        0x79257be8e9925817L    # 3.7191325139026915E275
        0x62202c8e720d2768L    # 4.657001607512721E164
        0x455b2b7be213608dL    # 1.3138537651339954E26
        0x59601e544fd24825L    # 3.329754200891142E122
        0x2e9e83ad59606e13L    # 3.9268611303098254E-84
        -0x7119d590f95e1a47L    # -6.807944106385904E-237
        0x51ce78d4bfd21cdL
    .end array-data

    :array_e
    .array-data 8
        -0x55d466f7d0395834L
        -0xe613b9fb87e0aa6L
    .end array-data
.end method

.method public msgChannelRequest([BI)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x7

    const/16 v3, 0xa

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    .line 1
    new-instance v7, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v8, 0x0

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-direct {v7, v9, v8, v10}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 2
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 3
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v9

    .line 4
    invoke-direct {v1, v9}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 5
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v6, [J

    fill-array-data v12, :array_0

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result v12

    .line 7
    sget-object v13, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v13}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v15, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v6, [J

    fill-array-data v15, :array_2

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v6, [J

    fill-array-data v15, :array_3

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    const/16 v15, 0x50

    .line 9
    invoke-static {v0, v14, v13, v15}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 10
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v5, [J

    fill-array-data v14, :array_4

    invoke-direct {v0, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v14, 0x32

    if-eqz v0, :cond_4

    if-nez v12, :cond_3

    .line 11
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 12
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v3

    if-nez v3, :cond_2

    .line 13
    monitor-enter v10

    .line 14
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v10, Lcom/trilead/ssh2/channel/Channel;->exit_status:Ljava/lang/Integer;

    .line 15
    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 16
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v13}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_5

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_6

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v6, [J

    fill-array-data v3, :array_7

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    invoke-static {v0, v2, v13, v14}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 21
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_8

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_9

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v5, [J

    fill-array-data v15, :array_a

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v12, :cond_7

    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v6, [J

    fill-array-data v3, :array_b

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    .line 26
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 27
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 28
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v3

    if-nez v3, :cond_6

    .line 29
    monitor-enter v10

    .line 30
    :try_start_2
    iput-object v0, v10, Lcom/trilead/ssh2/channel/Channel;->exit_signal:Ljava/lang/String;

    .line 31
    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 32
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    invoke-virtual {v13}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_c

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_d

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v6, [J

    fill-array-data v3, :array_e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    invoke-static {v0, v2, v13, v14}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    .line 36
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 37
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_f

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_10

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-eqz v12, :cond_9

    .line 39
    iget v0, v10, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    shr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    int-to-byte v0, v0

    .line 40
    new-array v9, v4, [B

    const/16 v10, 0x64

    aput-byte v10, v9, v8

    const/4 v8, 0x1

    aput-byte v2, v9, v8

    aput-byte v3, v9, v6

    aput-byte v7, v9, v5

    const/4 v2, 0x4

    aput-byte v0, v9, v2

    .line 41
    iget-object v0, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0, v9}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    goto :goto_0

    :cond_9
    const/4 v2, 0x4

    .line 42
    :goto_0
    invoke-virtual {v13}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_11

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v4, [J

    fill-array-data v3, :array_12

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    invoke-static {v2, v0, v13, v14}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    :cond_a
    return-void

    .line 45
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_13

    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    invoke-static {v4, v2, v9}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        -0x4235bcabb72ea788L    # -4.777212748842019E-11
        -0xe545ec719d10468L    # -3.5983541970923896E239
    .end array-data

    :array_1
    .array-data 8
        -0x732ec4dc551dbb30L    # -6.161044904215326E-247
        -0x3744d00025933bd3L    # -2.368365078668494E42
        -0x791dcc1ecd38c630L
        -0x665730a630e85804L
        -0x3c9166b0ddb69559L    # -6.8902515664180536E16
        0xdeb6018a6ece4eeL
    .end array-data

    :array_2
    .array-data 8
        0x1bb1b58374065655L
        -0x31d75c213dcb9182L    # -3.321481305658103E68
    .end array-data

    :array_3
    .array-data 8
        0xd23b5e065617fdL
        0x6c74cd600957b56dL    # 2.8012196976577085E214
    .end array-data

    :array_4
    .array-data 8
        -0x12eb5e75f95b3572L    # -2.8448372501844957E217
        -0x7efea681a1250b34L    # -7.906121103752719E-304
        -0x3a4f266f73225fb8L    # -5.214779679285443E27
    .end array-data

    :array_5
    .array-data 8
        0x1796994552aad007L
        -0x29c843c54a805a63L    # -2.177472431759953E107
        0x18d8f0eaf46e21f7L    # 5.597809003845468E-189
        0x8a2833efc0f9a44L
        0x52708c6ef6eda8e5L    # 1.3167979980239275E89
    .end array-data

    :array_6
    .array-data 8
        -0x6a93bb2c07e2014dL
        0x5f21d5c78b324365L    # 1.8244115756044738E150
        -0x3386ad85d45205f7L    # -2.5431980664841508E60
    .end array-data

    :array_7
    .array-data 8
        0x7f7d06fe55e7bac4L
        -0x2fd89d1e259b5f04L    # -1.3539718797513298E78
    .end array-data

    :array_8
    .array-data 8
        0x29f54321ba1481e7L
        -0x5d289584a8c81367L    # -7.680928432229063E-141
        0x58a2b1ec82fd2515L    # 9.428750106411425E118
        -0x10fdd00dd3287246L    # -5.385607776571589E226
        -0x301d5fcd61998a5dL    # -6.739740930113997E76
        -0x14255134bb1ef769L    # -3.5088774276782417E211
        0x2c4a4bd04c96e2d3L    # 2.4622010059973577E-95
    .end array-data

    :array_9
    .array-data 8
        0x30b9b66407d3ca71L    # 5.6846635964436315E-74
        0x1487132f17770012L    # 8.773513743212353E-210
        0x48b7d5a137078657L    # 2.0762770120209145E42
        -0x1bcc83b9cef02131L    # -4.819343191846165E174
        -0x4a002f5e2a12f18dL    # -1.360542840124915E-48
        0x3ee3aac84a6808d5L    # 9.378012987508122E-6
        0x3a9fec4841e65d9cL    # 2.5787175911345933E-26
        0x6f87f2e8dea9cf32L    # 1.8154808330759853E229
        0x77af8f02e09c0676L    # 3.2562999381662834E268
        0x25276485124983dbL    # 1.054608828746686E-129
    .end array-data

    :array_a
    .array-data 8
        -0x3113bcf86bb61ed0L    # -1.5604480986021215E72
        -0x30f6f04fff5d4c9eL    # -5.5349309790257596E72
        0x50876740f157441fL    # 8.671747263193772E79
    .end array-data

    :array_b
    .array-data 8
        0x1c04438e3d8e737eL
        0x3f28093f0586a7daL    # 1.8338102632969763E-4
    .end array-data

    :array_c
    .array-data 8
        0x164881a72c60d15eL    # 2.501228908597094E-201
        -0x76ddfbf5e3df8841L    # -1.1174468410001591E-264
        0x555fbbff87d69a74L    # 1.77692208777646E103
        0x3dae0278beade57fL    # 1.3646811075913517E-11
        -0x59a5bf219ebab98bL    # -6.205363673904447E-124
    .end array-data

    :array_d
    .array-data 8
        0x4dea65d0b1bf8a2eL    # 2.2240031458492814E67
        0x5f9f2feb929f1493L    # 4.083513971337838E152
        0x27c39aca85df8ddfL    # 3.887145971296973E-117
    .end array-data

    :array_e
    .array-data 8
        -0x5abdee54ce1e4dfcL    # -3.258415258481696E-129
        0x47cba14f5ad0a178L    # 7.345345037175647E37
    .end array-data

    :array_f
    .array-data 8
        0x1685be32f3170746L    # 3.550681010334334E-200
        -0x588561a9804f6dd6L
        -0xae7a0fcd5ff38fdL    # -1.143542243293679E256
        0x67da94295914bedfL    # 1.894749930863317E192
        -0x70e01919e90154a0L    # -7.838638139091736E-236
        -0x7bb94ea9d6f79791L    # -4.657155413373372E-288
        -0x4cfad53c28c63de2L    # -6.43178127284331E-63
    .end array-data

    :array_10
    .array-data 8
        -0x790dd03a6f735da8L    # -3.283036310452669E-275
        0x435f935906bb3571L    # 3.5550939409339844E16
        -0x50aca7236f642f1aL    # -1.0198056089483073E-80
        -0x1d0f5ae2369be30bL    # -3.926096925945056E168
        0x21a4d7ead521b84aL    # 1.3040710269677E-146
        -0x35174bae56ccedb6L    # -7.394402044806364E52
        0x67b78fa05ae0203fL    # 4.1990565821492906E191
        0xe5c2a2e8494c9fcL
        -0x764ad15e0d434f66L    # -6.726884905908846E-262
        0x574ef5298f76ed22L    # 3.722516248687881E112
    .end array-data

    :array_11
    .array-data 8
        0x28c5e5637a410f9fL
        0x37f9803a49dfa525L    # 4.6837736634214554E-39
        -0x29093b4f20613a38L    # -8.555580505666516E110
        0x5dc103f534bdc608L    # 4.149842852730737E143
    .end array-data

    :array_12
    .array-data 8
        -0x5db87dc4dad1e0bcL
        0x60f1f38a09309866L    # 9.858577114346637E158
        0x25f6f2f3bba20319L    # 8.475516711215204E-126
        0x687d1693b61e392eL    # 2.1234103347708964E195
        0x6c903d6eb1d9224aL    # 8.747463772825723E214
    .end array-data

    :array_13
    .array-data 8
        -0x750f792d401b540cL
        0x61b3983c104b0ea8L    # 4.407735770477336E162
        -0x4b0ff02319a5f4f4L    # -1.048092081530726E-53
        0x1cab40e2d8eb7be8L
        -0x5d2538a53f8f9f42L    # -8.783993186372203E-141
        0x565ab560276d877dL    # 9.800944674576602E107
        0x7ba7fc081c6299aL
        -0x4a282ea9b3be0e6fL    # -2.5463667858362438E-49
        -0x26eaeab6dfc81e97L    # -1.3610488482609218E121
        0x442a512e3809b0ffL    # 2.4273251024836228E20
    .end array-data
.end method

.method public msgChannelSuccess([BI)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x5

    .line 3
    if-ne p2, v1, :cond_2

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    aget-byte v1, p1, p2

    .line 7
    .line 8
    and-int/lit16 v1, v1, 0xff

    .line 9
    .line 10
    shl-int/lit8 v1, v1, 0x18

    .line 11
    .line 12
    aget-byte v2, p1, v0

    .line 13
    .line 14
    and-int/lit16 v2, v2, 0xff

    .line 15
    .line 16
    shl-int/lit8 v2, v2, 0x10

    .line 17
    .line 18
    or-int/2addr v1, v2

    .line 19
    const/4 v2, 0x3

    .line 20
    aget-byte v2, p1, v2

    .line 21
    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 23
    .line 24
    shl-int/lit8 v2, v2, 0x8

    .line 25
    .line 26
    or-int/2addr v1, v2

    .line 27
    const/4 v2, 0x4

    .line 28
    aget-byte p1, p1, v2

    .line 29
    .line 30
    and-int/lit16 p1, p1, 0xff

    .line 31
    .line 32
    or-int/2addr p1, v1

    .line 33
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget v2, v1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 41
    .line 42
    add-int/2addr v2, p2

    .line 43
    iput v2, v1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 46
    .line 47
    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v3, 0x6

    .line 65
    new-array v3, v3, [J

    .line 66
    .line 67
    fill-array-data v3, :array_0

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v0, v0, [J

    .line 86
    .line 87
    fill-array-data v0, :array_1

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    const/16 v0, 0x50

    .line 94
    .line 95
    invoke-static {p1, v1, p2, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 96
    .line 97
    .line 98
    :cond_0
    return-void

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p1

    .line 102
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    const/16 v2, 0xa

    .line 112
    .line 113
    new-array v2, v2, [J

    .line 114
    .line 115
    fill-array-data v2, :array_2

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p2

    .line 129
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 130
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    const/4 v3, 0x7

    .line 139
    new-array v3, v3, [J

    .line 140
    .line 141
    fill-array-data v3, :array_3

    .line 142
    .line 143
    .line 144
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v0, v0, [J

    .line 160
    .line 161
    fill-array-data v0, :array_4

    .line 162
    .line 163
    .line 164
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-static {p2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :array_0
    .array-data 8
        -0x2f0652b65235d498L    # -1.2178155655275058E82
        0x18e26901ef1bd7bdL    # 8.26401121637641E-189
        0x53f96ea450d05c04L    # 3.395177393670237E96
        0x143a27df65670e1eL    # 3.107780030969025E-211
        0x2b79c585df20a1efL    # 2.945658409935565E-99
        -0x63abc569b34890dcL    # -3.271551862696704E-172
    .end array-data

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
    :array_1
    .array-data 8
        -0x72823add84f732baL    # -1.0899917042394676E-243
        0x348ab692dc48f4baL
    .end array-data

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
    :array_2
    .array-data 8
        -0x58bb88f93d3f1662L    # -1.58504775890342E-119
        -0x7e4999957d272056L    # -2.090516359878884E-300
        -0x5594b5840430c4fcL
        0x708a4d35078410a5L    # 1.3066782391587164E234
        -0x631d89da129eccf6L
        0x533e2df2a0f1d3b2L    # 9.836270972093439E92
        -0x38d83201fa5ffaf8L    # -6.1800423704602595E34
        -0x29f1432c047795eaL    # -3.5248332534803657E106
        -0x600885dafd95baf8L
        -0x566302fbe04a470fL
    .end array-data

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
    :array_3
    .array-data 8
        -0x1c2293a07a4a7a7L
        -0x714aadbcaf002ad5L    # -8.185739562571054E-238
        0x78ee7690df555a3eL    # 3.295951775832315E274
        -0x59b067152bcbcaa5L
        -0x414f1239f150b063L    # -1.0090353110740884E-6
        0x22bab744a7da07e6L
        0x7a724b15ddfa189fL    # 6.641223145419242E281
    .end array-data

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
    :array_4
    .array-data 8
        0x669f1af59cd9b4e9L    # 2.114715142831017E186
        0x3712a2867de592ecL
    .end array-data
.end method

.method public msgChannelWindowAdjust([BI)V
    .locals 9

    .line 1
    const/4 v0, 0x7

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    const/16 v3, 0x9

    .line 6
    .line 7
    if-ne p2, v3, :cond_3

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    aget-byte p2, p1, p2

    .line 11
    .line 12
    and-int/lit16 p2, p2, 0xff

    .line 13
    .line 14
    shl-int/lit8 p2, p2, 0x18

    .line 15
    .line 16
    aget-byte v3, p1, v2

    .line 17
    .line 18
    and-int/lit16 v3, v3, 0xff

    .line 19
    .line 20
    shl-int/lit8 v3, v3, 0x10

    .line 21
    .line 22
    or-int/2addr p2, v3

    .line 23
    const/4 v3, 0x3

    .line 24
    aget-byte v3, p1, v3

    .line 25
    .line 26
    and-int/lit16 v3, v3, 0xff

    .line 27
    .line 28
    shl-int/2addr v3, v1

    .line 29
    or-int/2addr p2, v3

    .line 30
    const/4 v3, 0x4

    .line 31
    aget-byte v3, p1, v3

    .line 32
    .line 33
    and-int/lit16 v3, v3, 0xff

    .line 34
    .line 35
    or-int/2addr p2, v3

    .line 36
    const/4 v3, 0x5

    .line 37
    aget-byte v3, p1, v3

    .line 38
    .line 39
    and-int/lit16 v3, v3, 0xff

    .line 40
    .line 41
    shl-int/lit8 v3, v3, 0x18

    .line 42
    .line 43
    const/4 v4, 0x6

    .line 44
    aget-byte v4, p1, v4

    .line 45
    .line 46
    and-int/lit16 v4, v4, 0xff

    .line 47
    .line 48
    shl-int/lit8 v4, v4, 0x10

    .line 49
    .line 50
    or-int/2addr v3, v4

    .line 51
    aget-byte v4, p1, v0

    .line 52
    .line 53
    and-int/lit16 v4, v4, 0xff

    .line 54
    .line 55
    shl-int/2addr v4, v1

    .line 56
    or-int/2addr v3, v4

    .line 57
    aget-byte p1, p1, v1

    .line 58
    .line 59
    and-int/lit16 p1, p1, 0xff

    .line 60
    .line 61
    or-int/2addr p1, v3

    .line 62
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    monitor-enter v1

    .line 69
    :try_start_0
    iget-wide v3, v1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 70
    .line 71
    int-to-long v5, p1

    .line 72
    const-wide v7, 0xffffffffL

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    and-long/2addr v5, v7

    .line 78
    add-long/2addr v3, v5

    .line 79
    iput-wide v3, v1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 80
    .line 81
    cmp-long v5, v3, v7

    .line 82
    .line 83
    if-lez v5, :cond_0

    .line 84
    .line 85
    iput-wide v7, v1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 91
    .line 92
    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    sget-object v1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    fill-array-data v0, :array_0

    .line 112
    .line 113
    .line 114
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v0, v2, [J

    .line 130
    .line 131
    fill-array-data v0, :array_1

    .line 132
    .line 133
    .line 134
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array p2, v2, [J

    .line 150
    .line 151
    fill-array-data p2, :array_2

    .line 152
    .line 153
    .line 154
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    const/16 p2, 0x50

    .line 158
    .line 159
    invoke-static {p1, v3, v1, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 160
    .line 161
    .line 162
    :cond_1
    return-void

    .line 163
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    throw p1

    .line 165
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 166
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    const/16 v2, 0xb

    .line 175
    .line 176
    new-array v2, v2, [J

    .line 177
    .line 178
    fill-array-data v2, :array_3

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v0, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 193
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v1, v1, [J

    .line 202
    .line 203
    fill-array-data v1, :array_4

    .line 204
    .line 205
    .line 206
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v1, v2, [J

    .line 222
    .line 223
    fill-array-data v1, :array_5

    .line 224
    .line 225
    .line 226
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-static {p2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p1

    .line 237
    :array_0
    .array-data 8
        0x604f84f6cc102d55L    # 8.452118765067813E155
        -0xf5bb77aeceb4276L    # -4.030740484455528E234
        -0x3f88236cd702d72bL    # -381.7859277619403
        -0x2ddcc63d64b7663L    # -5.812398429628895E294
        -0x56ee02f3a7fb4831L    # -7.47990050269234E-111
        0x1dbe37fa38cac19aL
        -0x78b7ffb1777bd63aL
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
    :array_1
    .array-data 8
        0x700c59178f66a24aL    # 5.501350916492264E231
        -0x369d68f1f267b8ffL    # -3.316577206184137E45
    .end array-data

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
    :array_2
    .array-data 8
        0x21738deb437f65aL
        0x2282f48b31d8b760L
    .end array-data

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
    :array_3
    .array-data 8
        0x320007054532ae4eL    # 7.431127538168726E-68
        0x171089c8416fb41fL
        0x357a28435ad79135L    # 4.3695155557231234E-51
        -0x4028b47f384e9c0bL    # -0.36398334027541007
        0x6e583077f43cd95bL    # 3.4975235364028807E223
        0x509d37f592c1c40bL    # 2.1653002783769613E80
        -0x6f9a313e4fd7fb6dL    # -1.123730180236765E-229
        -0x249bce88b2c83111L    # -1.7916527217494426E132
        0x110e0e850bd614f0L
        -0x3ecbb2206eaa5b7L    # -4.694564325215846E289
        -0x7c377369a60acb99L    # -1.968026725423695E-290
    .end array-data

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
    :array_4
    .array-data 8
        0x2dedb2b6629f274bL    # 1.8661212984633198E-87
        0x2c8d6c941804d820L    # 4.408136826689633E-94
        -0x580071331b187f16L    # -5.005743517765444E-116
        0x1366c65b7cc03783L    # 3.303302296686283E-215
        -0x9ed8d2856f84d41L    # -5.673091035207418E260
        -0x34de28a5f37fa205L    # -8.544245844033155E53
        -0x7a1c5d848a87e6c6L
        -0x590bca2c71423439L    # -4.89163043777426E-121
    .end array-data

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
    :array_5
    .array-data 8
        -0x36793edc23440924L
        0x5f7b193d2e71a6c3L    # 8.870426935297931E151
    .end array-data
.end method

.method public msgGlobalFailure()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/16 v2, 0x50

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw v1

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        -0x59faedb8e0b09d0bL
        -0x7a0cb4c95356cd6L
        -0x590d6ef37b70c348L    # -4.493803401393506E-121
        0x2b43b0ab4c32bf0eL
        0x3094de019c130e54L    # 1.1533616680860775E-74
    .end array-data
.end method

.method public msgGlobalRequest([BI)V
    .locals 3

    .line 1
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1, p2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    new-array p2, p2, [B

    .line 22
    .line 23
    const/16 v0, 0x52

    .line 24
    .line 25
    aput-byte v0, p2, v1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v2, 0x5

    .line 48
    new-array v2, v2, [J

    .line 49
    .line 50
    fill-array-data v2, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    new-array v1, v1, [J

    .line 70
    .line 71
    fill-array-data v1, :array_1

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    const/16 v1, 0x50

    .line 78
    .line 79
    invoke-static {p1, v0, p2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void

    :array_0
    .array-data 8
        -0x680250e7a1342e4dL    # -4.06634958389604E-193
        0x11ea82d8e26cd8f5L    # 2.291929842909863E-222
        0x2876473ef87b030fL    # 9.046566611647639E-114
        -0x6635ca63ceeefef4L    # -1.927569237254386E-184
        0x7670745247ce4e22L    # 3.2383051632820616E262
    .end array-data

    :array_1
    .array-data 8
        -0x3880ee3f4c354189L    # -2.581140336447419E36
        -0x769e4f8e19eed5d0L
    .end array-data
.end method

.method public msgGlobalSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/16 v2, 0x50

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw v1

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x4ea1d9ea5ae80af8L    # 6.160233839759637E70
        -0x34845eaefffcf7e9L    # -4.234306973433038E55
        0x7c36eaee96f1ab32L    # 2.2334021302001227E290
        0x755ad7668182d941L    # 2.0151232126242392E257
        0x5a2f06b1e7b47f3L
    .end array-data
.end method

.method public openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/trilead/ssh2/channel/Channel;
    .locals 10

    .line 1
    new-instance v0, Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    new-instance v9, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;

    .line 15
    .line 16
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 17
    .line 18
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    .line 19
    .line 20
    move-object v1, v9

    .line 21
    move-object v5, p1

    .line 22
    move v6, p2

    .line 23
    move-object v7, p3

    .line 24
    move v8, p4

    .line 25
    invoke-direct/range {v1 .. v8}, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;-><init>(IIILjava/lang/String;ILjava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 29
    .line 30
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->getPayload()[B

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitUntilChannelOpen(Lcom/trilead/ssh2/channel/Channel;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1
.end method

.method public openSessionChannel()Lcom/trilead/ssh2/channel/Channel;
    .locals 5

    .line 1
    new-instance v0, Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-object v1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v4, 0x6

    .line 30
    new-array v4, v4, [J

    .line 31
    .line 32
    fill-array-data v4, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v4, 0x2

    .line 53
    new-array v4, v4, [J

    .line 54
    .line 55
    fill-array-data v4, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    const/16 v4, 0x32

    .line 62
    .line 63
    invoke-static {v3, v2, v1, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 64
    .line 65
    .line 66
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;

    .line 67
    .line 68
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 69
    .line 70
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 71
    .line 72
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    .line 73
    .line 74
    invoke-direct {v1, v2, v3, v4}, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;-><init>(III)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->getPayload()[B

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v2, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitUntilChannelOpen(Lcom/trilead/ssh2/channel/Channel;)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw v1

    .line 93
    :array_0
    .array-data 8
        -0x2e8d07b981899192L    # -2.303255636688575E84
        0xfea5aa8ef56fcacL    # 5.304716812363981E-232
        -0x5312147d026e90a9L    # -2.8687483782746483E-92
        -0x7cab46da060553f8L
        -0x4c6349baff63d7e0L    # -4.466878871805445E-60
        -0x6a48e9205e67f77L    # -3.800571940065912E276
    .end array-data

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
    .line 120
    .line 121
    :array_1
    .array-data 8
        0x1f18d7af6a95564bL    # 7.068022983455014E-159
        -0x767e7ce5db71deefL    # -6.951723026632645E-263
    .end array-data
.end method

.method public registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v2, 0x6

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
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x45e218d5bbea2590L    # 4.480602981543204E28
        -0x529b5a19b333ad8L    # -5.17911790829618E283
        -0x6a59ed93698429beL    # -2.1999562215132998E-204
        0x5a2c113f5c113294L    # 2.3749253730869622E126
        0x78a6c648df5bd4abL    # 1.540053749941257E273
        0x58a5f4332800e288L
    .end array-data
.end method

.method public registerX11Cookie(Ljava/lang/String;Lcom/trilead/ssh2/channel/X11ServerData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public requestCancelGlobalForward(I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 21
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    const/4 v1, 0x0

    .line 25
    :try_start_1
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 26
    .line 27
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 28
    .line 29
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 30
    new-instance p1, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;

    .line 31
    .line 32
    iget-object v1, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    .line 33
    .line 34
    iget v3, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-direct {p1, v4, v1, v3}, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->getPayload()[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v4, 0x7

    .line 65
    new-array v4, v4, [J

    .line 66
    .line 67
    fill-array-data v4, :array_0

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v3, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    new-array v4, v0, [J

    .line 88
    .line 89
    fill-array-data v4, :array_1

    .line 90
    .line 91
    .line 92
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget v3, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    fill-array-data v0, :array_2

    .line 112
    .line 113
    .line 114
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    const/16 v0, 0x32

    .line 118
    .line 119
    invoke-static {v3, v1, p1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 120
    .line 121
    .line 122
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForGlobalRequestResult()Z

    .line 123
    .line 124
    .line 125
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    if-eqz p1, :cond_1

    .line 127
    .line 128
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 129
    .line 130
    monitor-enter p1

    .line 131
    :try_start_3
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    monitor-exit p1

    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    throw v0

    .line 141
    :cond_1
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    .line 142
    .line 143
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    const/4 v1, 0x5

    .line 146
    new-array v1, v1, [J

    .line 147
    .line 148
    fill-array-data v1, :array_3

    .line 149
    .line 150
    .line 151
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 162
    :catchall_1
    move-exception p1

    .line 163
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 164
    .line 165
    monitor-enter v0

    .line 166
    :try_start_5
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 172
    throw p1

    .line 173
    :catchall_2
    move-exception p1

    .line 174
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 175
    throw p1

    .line 176
    :catchall_3
    move-exception v0

    .line 177
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 178
    throw v0

    .line 179
    :catchall_4
    move-exception p1

    .line 180
    goto :goto_0

    .line 181
    :cond_2
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    .line 182
    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    const/16 v4, 0x9

    .line 191
    .line 192
    new-array v4, v4, [J

    .line 193
    .line 194
    fill-array-data v4, :array_4

    .line 195
    .line 196
    .line 197
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v0

    .line 218
    :goto_0
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 219
    throw p1

    .line 220
    nop

    .line 221
    :array_0
    .array-data 8
        0x7ff0394548836f93L
        -0x1490310428b6603dL    # -3.2679139090707946E209
        0x1def6edd8df0f864L
        -0x243ec35db697ecccL    # -9.787821100924147E133
        0x2bf5c38580b28300L    # 6.368178819060461E-97
        -0x2ce701e3e6c0a3aL
        -0x574ad2ba881c6336L    # -1.375887139754E-112
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
    :array_1
    .array-data 8
        -0x16f11a9d308f8605L    # -1.154755323054242E198
        0x736a69585dc817c0L    # 9.233356237322155E247
    .end array-data

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
        0xf7701d7be6d3c5bL
        -0x60ba40e1d1d0f7e1L
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
    :array_3
    .array-data 8
        0x41cee7bc20cf4018L    # 1.0370069136191435E9
        0x4e7743e6d31a8d79L    # 1.0035674442062478E70
        0x25145ee319e9fc61L
        -0x3b472e4ad1c8a194L    # -1.1720522053352525E23
        -0x1e12f01085676ff2L    # -5.229941920526717E163
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
    :array_4
    .array-data 8
        -0x23720812378a96f9L    # -6.970318713695804E137
        -0x54c06474008db830L
        0x12add5f10713b90fL    # 1.056500055461353E-218
        0x5f689983795d2be2L    # 4.026215190460145E151
        -0x7d5efc0391599315L    # -5.203562644052099E-296
        -0x35a88156f6763819L    # -1.3735056061027238E50
        -0x604189abbf8a86dL    # -3.957133738500062E279
        -0x52a30b50c3ea0a1L    # -5.06741380107701E283
        0x3afd142e72ee8a57L    # 1.5033404698496818E-24
    .end array-data
.end method

.method public requestChannelTrileadPing(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_2

    .line 7
    .line 8
    new-instance v1, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;

    .line 9
    .line 10
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 17
    .line 18
    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 19
    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_1
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;->getPayload()[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v3, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 35
    .line 36
    .line 37
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 46
    .line 47
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/16 v2, 0xe

    .line 50
    .line 51
    new-array v2, v2, [J

    .line 52
    .line 53
    fill-array-data v2, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    new-instance v1, Ljava/io/IOException;

    .line 69
    .line 70
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v0, v0, [J

    .line 73
    .line 74
    fill-array-data v0, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ljava/io/IOException;

    .line 92
    .line 93
    throw p1

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    :try_start_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v0, v0, [J

    .line 99
    .line 100
    fill-array-data v0, :array_2

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
    invoke-direct {p0, v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    throw p1

    .line 115
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    throw p1

    .line 117
    :catchall_1
    move-exception v0

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    :try_start_4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v0, v0, [J

    .line 122
    .line 123
    fill-array-data v0, :array_3

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {p0, v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    throw v0

    .line 138
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    throw v0

    .line 140
    nop

    .line 141
    :array_0
    .array-data 8
        0x7e6267328fb00dbcL    # 6.162217623001039E300
        -0x5b7e4fc5f16f6647L    # -7.787537030876927E-133
        0x5fc2f1de27fa6029L    # 1.984438962240985E153
        -0x41d21229877acea5L    # -3.4842004317822997E-9
        0x135b455b15312834L
        0x25613e9899e11f7cL    # 1.243892559177103E-128
        -0x59a04b85f5c7f6fL
        0x4284a643ece887d6L    # 2.8380420907689795E12
        0x2fac51b35dcfb063L    # 4.776736205221232E-79
        -0x4574571ff24d8a73L    # -1.1171651254259501E-26
        -0x2fd8000cd98d5b44L    # -1.3894937190204451E78
        -0x60d9134fdbc6041bL    # -1.304467771729866E-158
        0x751be65dfa2b8fffL    # 1.3091172165483037E256
        -0x3c7c98833cb5ed24L    # -1.74777923440630656E17
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
    :array_1
    .array-data 8
        0x5839fb44a815a5fdL    # 1.0237238688557702E117
        -0x6b65551ac02024a6L
        -0x52aaa76e10bdeafcL
        0x627b30a15e539eddL    # 2.5052220704285932E166
    .end array-data

    :array_2
    .array-data 8
        0x5825be9c30da38b0L    # 4.283898563633812E116
        -0x726658c3f509fb00L    # -3.757042205474988E-243
        -0x435336d6f9253a90L    # -1.9974148910498257E-16
        -0x74f75c4bc73664f2L
    .end array-data

    :array_3
    .array-data 8
        0x43ed111b21cdb4a7L    # 1.6755881069624244E19
        -0x563f8459ac720769L    # -1.403679610506124E-107
        -0x6ed20fa8440072fbL
        0x1d9fd440b88e344dL    # 5.397677493091713E-166
    .end array-data
.end method

.method public requestExecCommand(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x2

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 6
    .line 7
    if-ne v3, v2, :cond_3

    .line 8
    .line 9
    new-instance v3, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;

    .line 10
    .line 11
    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-direct {v3, v4, v5, p2}, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;-><init>(IZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    iput v4, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 19
    .line 20
    iput v4, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 21
    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    iget-object v4, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v4

    .line 26
    :try_start_1
    iget-boolean v5, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 27
    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->getPayload()[B

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 37
    .line 38
    .line 39
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v5, v1, [J

    .line 56
    .line 57
    fill-array-data v5, :array_0

    .line 58
    .line 59
    .line 60
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v5, v2, [J

    .line 78
    .line 79
    fill-array-data v5, :array_1

    .line 80
    .line 81
    .line 82
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v2, v2, [J

    .line 98
    .line 99
    fill-array-data v2, :array_2

    .line 100
    .line 101
    .line 102
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    const/16 v2, 0x32

    .line 106
    .line 107
    invoke-static {p2, v3, v0, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 108
    .line 109
    .line 110
    :cond_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_1

    .line 115
    .line 116
    return-void

    .line 117
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 118
    .line 119
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v0, v1, [J

    .line 122
    .line 123
    fill-array-data v0, :array_3

    .line 124
    .line 125
    .line 126
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :catch_0
    move-exception p1

    .line 138
    new-instance p2, Ljava/io/IOException;

    .line 139
    .line 140
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v1, v1, [J

    .line 143
    .line 144
    fill-array-data v1, :array_4

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ljava/io/IOException;

    .line 162
    .line 163
    throw p1

    .line 164
    :catchall_0
    move-exception p1

    .line 165
    goto :goto_0

    .line 166
    :cond_2
    :try_start_3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 167
    .line 168
    new-array v0, v0, [J

    .line 169
    .line 170
    fill-array-data v0, :array_5

    .line 171
    .line 172
    .line 173
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-direct {p0, p2, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    throw p1

    .line 185
    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    throw p1

    .line 187
    :catchall_1
    move-exception p2

    .line 188
    goto :goto_1

    .line 189
    :cond_3
    :try_start_4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v0, v0, [J

    .line 192
    .line 193
    fill-array-data v0, :array_6

    .line 194
    .line 195
    .line 196
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-direct {p0, p2, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    throw p2

    .line 208
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 209
    throw p2

    .line 210
    nop

    .line 211
    :array_0
    .array-data 8
        -0x52d91c043724cfeeL    # -3.5116219325454904E-91
        0x1d750bfaff92e350L
        0xb238095795aac80L
        0x96e05092d85cdbfL
        -0x61a56aba0c9522fcL    # -1.846494219858838E-162
    .end array-data

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
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_1
    .array-data 8
        -0x49f799c68da9f4a9L    # -2.086836018748802E-48
        0x3327a30882f57f1L
    .end array-data

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
    :array_2
    .array-data 8
        0x2cdb59c2b1de57a7L    # 1.3111990679362082E-92
        0x59acf688bca9f78dL    # 9.573089925060777E123
    .end array-data

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
    :array_3
    .array-data 8
        0x27fda9ba4baffa3aL
        -0x495cf1b1833bafc5L    # -1.668936409883242E-45
        -0x67010543fd38192cL
        0x45698def00170c9eL    # 2.471472635421741E26
        -0x7656954cd47cd8e1L    # -4.035846089449778E-262
    .end array-data

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
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_4
    .array-data 8
        0x71f492794454b57bL    # 8.57346744009408E240
        0x8125f0c27d4b512L
        -0x3a5fcf9523f22916L    # -2.5051466133055727E27
        0x704d46296911eb4fL    # 9.089704467373253E232
        0xdf94e5e077f3a43L
    .end array-data

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
    :array_5
    .array-data 8
        -0x2007f05bd72d835fL    # -2.016291180887753E154
        0x1801c7a41970e324L    # 4.871254553739348E-193
        -0x54519f8725cae2eaL    # -2.777627979881465E-98
        0x35c2f075fa91ae1cL    # 1.0124058648843583E-49
        0x69c602b93f68d823L    # 3.3696110254900846E201
        0x107343eb1ec49a67L
    .end array-data

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
    :array_6
    .array-data 8
        -0x63b3ca99ecf3cdd3L    # -2.281045000032454E-172
        0x2a29a60433a904ecL
        0x2274f4308b2eac0eL
        0x6e04d6c0c455cca3L    # 9.41588557906457E221
        0x2fcc3709dabcffc4L    # 1.90366753886492E-78
        0x440e536c5187e96aL    # 6.992669893226222E19
    .end array-data
.end method

.method public requestGlobalForward(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/trilead/ssh2/channel/RemoteForwardingData;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, v1, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    .line 8
    .line 9
    iput p2, v1, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    .line 10
    .line 11
    iput-object p3, v1, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, v1, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetPort:I

    .line 14
    .line 15
    iget-object p3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 16
    .line 17
    monitor-enter p3

    .line 18
    :try_start_0
    new-instance p4, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-direct {p4, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 37
    iget-object p4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 38
    .line 39
    monitor-enter p4

    .line 40
    const/4 p3, 0x0

    .line 41
    :try_start_1
    iput p3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 42
    .line 43
    iput p3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 44
    .line 45
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    new-instance p3, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;

    .line 47
    .line 48
    const/4 p4, 0x1

    .line 49
    invoke-direct {p3, p4, p1, p2}, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    iget-object p4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 53
    .line 54
    invoke-virtual {p3}, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->getPayload()[B

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-virtual {p4, p3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 59
    .line 60
    .line 61
    sget-object p3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    if-eqz p4, :cond_0

    .line 68
    .line 69
    new-instance p4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v3, 0x6

    .line 77
    new-array v3, v3, [J

    .line 78
    .line 79
    fill-array-data v3, :array_0

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v2, v0, [J

    .line 98
    .line 99
    fill-array-data v2, :array_1

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v0, v0, [J

    .line 118
    .line 119
    fill-array-data v0, :array_2

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    const/16 v0, 0x32

    .line 126
    .line 127
    invoke-static {p1, p4, p3, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 128
    .line 129
    .line 130
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForGlobalRequestResult()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_1

    .line 135
    .line 136
    return p2

    .line 137
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 138
    .line 139
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    const/16 p3, 0x9

    .line 142
    .line 143
    new-array p3, p3, [J

    .line 144
    .line 145
    fill-array-data p3, :array_3

    .line 146
    .line 147
    .line 148
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    :catch_0
    move-exception p1

    .line 160
    iget-object p2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 161
    .line 162
    monitor-enter p2

    .line 163
    :try_start_3
    iget-object p3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    throw p1

    .line 170
    :catchall_0
    move-exception p1

    .line 171
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    throw p1

    .line 173
    :catchall_1
    move-exception p1

    .line 174
    :try_start_5
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 175
    throw p1

    .line 176
    :catchall_2
    move-exception p1

    .line 177
    goto :goto_0

    .line 178
    :cond_2
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    .line 179
    .line 180
    new-instance p4, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    const/4 v1, 0x7

    .line 188
    new-array v1, v1, [J

    .line 189
    .line 190
    fill-array-data v1, :array_4

    .line 191
    .line 192
    .line 193
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1

    .line 214
    :goto_0
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 215
    throw p1

    .line 216
    nop

    .line 217
    :array_0
    .array-data 8
        -0x70d9745036ed2a8fL
        -0x41a4726f0a39a943L    # -2.566072453273677E-8
        0x45f6e7615fb24a03L    # 1.1341427064379489E29
        -0x47e1a6560defba6cL    # -2.229784170723411E-38
        0x7598f329ce8e7748L    # 2.996983501470352E258
        0x375cdd110dc4fa83L    # 5.1771438511460834E-42
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
    :array_1
    .array-data 8
        0x49d91cb2c717b5b7L    # 5.734590554830299E47
        0x44f836501cf2eb6eL    # 1.8294190803962746E24
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
    :array_2
    .array-data 8
        -0x61332d9c054978d2L    # -2.5625597093000507E-160
        0x241f71a091389a05L
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
    :array_3
    .array-data 8
        -0x788dc93c1047a2baL    # -8.417197833796723E-273
        -0x777a6c6cc8a21cf6L    # -1.3069355108848E-267
        -0x2102b2abeb65d9a5L    # -3.746761788964504E149
        -0x77b59e95225990b6L    # -9.987056589932309E-269
        -0x28c4dd2a3d1b8874L    # -1.6314937824917281E112
        -0x6858d7db7c001921L    # -9.913145796778682E-195
        0x6b75f2db81e04dfbL    # 4.5098806459160496E209
        -0x5d8977aa78654869L
        -0x1ab6877d5675eafbL    # -8.257128729136136E179
    .end array-data

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
    :array_4
    .array-data 8
        0x6980890ee8d446bbL    # 1.5821272557003582E200
        -0x24ce107eb490585cL    # -1.9891760816902953E131
        0x50792ab3f76b4edeL    # 4.662587750115784E79
        -0x439c83618fca68b2L    # -8.451049138646623E-18
        -0x5b84eed2bb8b0d38L
        -0x6215ab2c5edee4ebL    # -1.428912303536154E-164
        -0x6a8ca7ede6c63e9L    # -3.214197034043976E276
    .end array-data
.end method

.method public requestGlobalTrileadPing()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 6
    .line 7
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance v0, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;->getPayload()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v3, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v4, 0x7

    .line 39
    new-array v4, v4, [J

    .line 40
    .line 41
    fill-array-data v4, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/16 v4, 0x32

    .line 52
    .line 53
    invoke-virtual {v0, v4, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForGlobalRequestResult()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    sub-long/2addr v3, v1

    .line 67
    return-wide v3

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    sub-long/2addr v3, v1

    .line 75
    return-wide v3

    .line 76
    :goto_0
    new-instance v1, Ljava/io/IOException;

    .line 77
    .line 78
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/4 v3, 0x4

    .line 81
    new-array v3, v3, [J

    .line 82
    .line 83
    fill-array-data v3, :array_1

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/io/IOException;

    .line 101
    .line 102
    throw v0

    .line 103
    :catchall_0
    move-exception v1

    .line 104
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    throw v1

    .line 106
    nop

    .line 107
    :array_0
    .array-data 8
        0x6f9b4a4ef7d6b7cfL    # 4.137561911337397E229
        0x75a5deed0e5b2c5aL    # 5.254253896317496E258
        0x375fb81099797994L    # 5.689317196540799E-42
        -0x23e0b2e2592a182dL    # -5.6877371926754244E135
        0x3b5973aa9e26978L
        0x4d15f2b2588b2d28L
        -0x3ceaeb3aee968d60L    # -1.483452786039976E15
    .end array-data

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
    :array_1
    .array-data 8
        -0xb22849852d53ae0L    # -8.645976249194874E254
        0x5ddbc97ff78246e7L    # 1.3553807317020639E144
        0x5b1e791b28bbf562L    # 8.449175952034897E130
        0x797c802e260b8c3cL    # 1.5788163619947013E277
    .end array-data
.end method

.method public requestPTY(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;IIII[B)V
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    move-object v2, p1

    .line 3
    const/4 v0, 0x6

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget v3, v2, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    if-ne v3, v4, :cond_2

    .line 9
    .line 10
    new-instance v3, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;

    .line 11
    .line 12
    iget v6, v2, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    move-object v5, v3

    .line 16
    move-object/from16 v8, p2

    .line 17
    .line 18
    move/from16 v9, p3

    .line 19
    .line 20
    move/from16 v10, p4

    .line 21
    .line 22
    move/from16 v11, p5

    .line 23
    .line 24
    move/from16 v12, p6

    .line 25
    .line 26
    move-object/from16 v13, p7

    .line 27
    .line 28
    invoke-direct/range {v5 .. v13}, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;-><init>(IZLjava/lang/String;IIII[B)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    iput v4, v2, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 33
    .line 34
    iput v4, v2, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 35
    .line 36
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    iget-object v4, v2, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v4

    .line 40
    :try_start_1
    iget-boolean v5, v2, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 41
    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    iget-object v0, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->getPayload()[B

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 51
    .line 52
    .line 53
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 62
    .line 63
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v3, 0x5

    .line 66
    new-array v3, v3, [J

    .line 67
    .line 68
    fill-array-data v3, :array_0

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v2, Ljava/io/IOException;

    .line 84
    .line 85
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    const/4 v4, 0x4

    .line 88
    new-array v4, v4, [J

    .line 89
    .line 90
    fill-array-data v4, :array_1

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/io/IOException;

    .line 108
    .line 109
    throw v0

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    :try_start_3
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v0, v0, [J

    .line 115
    .line 116
    fill-array-data v0, :array_2

    .line 117
    .line 118
    .line 119
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {p0, v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    throw v0

    .line 131
    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    throw v0

    .line 133
    :catchall_1
    move-exception v0

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    :try_start_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v0, v0, [J

    .line 138
    .line 139
    fill-array-data v0, :array_3

    .line 140
    .line 141
    .line 142
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-direct {p0, v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    throw v0

    .line 154
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    throw v0

    .line 156
    nop

    .line 157
    :array_0
    .array-data 8
        0x6b68610078ebfaf5L    # 2.504617146846501E209
        0x5c9625a5c1b6e562L    # 1.030229836681979E138
        -0x17f1eeb3e59f2261L    # -1.714768639882256E193
        -0x1fc938329789becaL    # -3.0543627395403706E155
        -0x5c772677e1862ab2L
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
    .line 178
    .line 179
    .line 180
    .line 181
    :array_1
    .array-data 8
        -0x1ee0793b7353088aL    # -6.925523464190738E159
        -0x4d2f59054c899c91L    # -6.32490761723052E-64
        0x371343a6e2205d67L    # 2.1595988178501463E-43
        0x223e700822b08ef1L    # 9.750184439069456E-144
    .end array-data

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
    :array_2
    .array-data 8
        -0x7eba2b4e2bada50cL    # -1.591713070085478E-302
        0x228f0fddaea8dc64L
        0x61963cf4c7650addL    # 1.2505917496969137E162
        0x6f0c1c0d76c9a1c2L    # 8.323790017537907E226
        -0x5fd49ed32b87ebe8L
        0x3de3e2f16c096e04L    # 1.4469330422915833E-10
    .end array-data

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
    :array_3
    .array-data 8
        -0x2d228ddac4cbfb98L    # -1.499557953628956E91
        -0x553e0932108066bL    # -8.167775816776874E282
        0xc131c91d8d42f82L
        0x1874e3d4b2cc5a6eL    # 7.325891038161037E-191
        0x2f7c49970bfb2cc3L    # 5.964240272172066E-80
        0x2cfc3c33b1a7ff58L    # 5.414416329696662E-92
    .end array-data
.end method

.method public requestShell(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    if-ne v2, v3, :cond_2

    .line 8
    .line 9
    new-instance v2, Lcom/trilead/ssh2/packets/PacketSessionStartShell;

    .line 10
    .line 11
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v2, v3, v4}, Lcom/trilead/ssh2/packets/PacketSessionStartShell;-><init>(IZ)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iput v3, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 19
    .line 20
    iput v3, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 21
    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    iget-object v3, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v3

    .line 26
    :try_start_1
    iget-boolean v4, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketSessionStartShell;->getPayload()[B

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 37
    .line 38
    .line 39
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 48
    .line 49
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v2, v1, [J

    .line 52
    .line 53
    fill-array-data v2, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    new-instance v0, Ljava/io/IOException;

    .line 69
    .line 70
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v1, v1, [J

    .line 73
    .line 74
    fill-array-data v1, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ljava/io/IOException;

    .line 92
    .line 93
    throw p1

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    :try_start_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v0, v0, [J

    .line 99
    .line 100
    fill-array-data v0, :array_2

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
    invoke-direct {p0, v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    throw p1

    .line 115
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    throw p1

    .line 117
    :catchall_1
    move-exception v0

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    :try_start_4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v0, v0, [J

    .line 122
    .line 123
    fill-array-data v0, :array_3

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {p0, v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    throw v0

    .line 138
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    throw v0

    .line 140
    nop

    .line 141
    :array_0
    .array-data 8
        0x1d56e8ee598463f9L
        -0x558b917e1059cd70L    # -3.563406583382649E-104
        0x407fd270b268ed2L
        -0x29a6082df911e7f3L    # -9.529229330371064E107
        0x569bd6ba0d87ab1eL
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
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        0x62bc9d8e79514f5aL    # 4.2185020626538575E167
        -0x654915f776957da0L    # -5.522136832740398E-180
        -0x7e4bd09412f14010L    # -1.883815065486988E-300
        0x4512e82c92234387L    # 5.714268991040732E24
        0x6345af644de44e37L    # 1.6367768835736213E170
    .end array-data

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
    :array_2
    .array-data 8
        -0x34584c212835c207L    # -2.905932641702936E56
        -0x464318d13378df8eL    # -1.4250307734591018E-30
        -0x799fe87409489acfL    # -5.673662257494882E-278
        0x562208fc43d376c9L    # 8.272695037305361E106
        -0x553775c10d9bb1f5L
        0x7985e8a982b00555L    # 2.4273105232163574E277
    .end array-data

    :array_3
    .array-data 8
        -0x4e4c7e5b436b9b90L    # -2.8263020620426867E-69
        0x718d3e9ffaf9bad3L    # 9.521660431354131E238
        0x324bc661cc39ef7eL    # 2.0604588071546994E-66
        0x4f84a543eb6346a8L    # 1.1672819375501808E75
        -0x213b1b24c0cc2cb3L    # -3.339556963202347E148
        -0x4d132c8717004476L    # -2.189758725086332E-63
    .end array-data
.end method

.method public requestSubSystem(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    if-ne v2, v3, :cond_2

    .line 8
    .line 9
    new-instance v2, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;

    .line 10
    .line 11
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v2, v3, v4, p2}, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;-><init>(IZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 19
    .line 20
    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 21
    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p2

    .line 26
    :try_start_1
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->getPayload()[B

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 37
    .line 38
    .line 39
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 48
    .line 49
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v0, v1, [J

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
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    new-instance p2, Ljava/io/IOException;

    .line 69
    .line 70
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v1, v1, [J

    .line 73
    .line 74
    fill-array-data v1, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ljava/io/IOException;

    .line 92
    .line 93
    throw p1

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    :try_start_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v0, v0, [J

    .line 99
    .line 100
    fill-array-data v0, :array_2

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
    invoke-direct {p0, v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    throw p1

    .line 115
    :goto_0
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    throw p1

    .line 117
    :catchall_1
    move-exception p2

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    :try_start_4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v0, v0, [J

    .line 122
    .line 123
    fill-array-data v0, :array_3

    .line 124
    .line 125
    .line 126
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-direct {p0, p2, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    throw p2

    .line 138
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    throw p2

    .line 140
    nop

    .line 141
    :array_0
    .array-data 8
        -0x2df19e7168894cbbL    # -1.8886522548492757E87
        0x7024556b4e64b29aL
        0x424a0d4bd3bca51bL    # 2.237844458172899E11
        -0x5f26cfa3d14e49e2L    # -1.923762667600901E-150
        -0x6ecc8f8dc74d49a6L    # -8.205831724569537E-226
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
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        -0x385f39aa3416e3bfL    # -1.1148731435413007E37
        -0x5ad09052280ab84dL    # -1.417237259601854E-129
        -0x5de3d95a29870817L    # -2.254423084532619E-144
        -0x75da6a0dfbfe1e7aL    # -8.774459479883691E-260
        -0x379d84a19920be8cL    # -5.031254248365645E40
    .end array-data

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
    :array_2
    .array-data 8
        -0x25d2e55a511748b5L    # -2.4626474015048386E126
        0x612b21a94fb5b61dL    # 1.19201399845426E160
        -0x66a0857b3d40942aL    # -1.808664207279935E-186
        -0x3325d096c9919ebL
        0x289e2df280dfd72dL    # 4.902001208046296E-113
        -0x3dd22e168efdda1bL    # -6.403789427307401E10
    .end array-data

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
    :array_3
    .array-data 8
        -0x7891c1878d2f6f35L    # -6.988332102694787E-273
        0x7e3f8931d531aa9eL
        -0x35391ded98e26cc3L    # -1.7123163305742837E52
        -0x708a4e0bdf92757aL    # -3.411659386123787E-234
        0x6dc74e30686b2935L    # 6.581484874912401E220
        -0x674430e70e8e7dc2L
    .end array-data
.end method

.method public requestX11(Lcom/trilead/ssh2/channel/Channel;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x2

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 5
    .line 6
    if-ne v2, v1, :cond_3

    .line 7
    .line 8
    new-instance v2, Lcom/trilead/ssh2/packets/PacketSessionX11Request;

    .line 9
    .line 10
    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    move-object v3, v2

    .line 14
    move v6, p2

    .line 15
    move-object v7, p3

    .line 16
    move-object v8, p4

    .line 17
    move v9, p5

    .line 18
    invoke-direct/range {v3 .. v9}, Lcom/trilead/ssh2/packets/PacketSessionX11Request;-><init>(IZZLjava/lang/String;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 23
    .line 24
    iput p2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 25
    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    iget-object p2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_1
    iget-boolean p3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 31
    .line 32
    if-nez p3, :cond_2

    .line 33
    .line 34
    iget-object p3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->getPayload()[B

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    invoke-virtual {p3, p4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 41
    .line 42
    .line 43
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_0

    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array p5, v0, [J

    .line 60
    .line 61
    fill-array-data p5, :array_0

    .line 62
    .line 63
    .line 64
    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget p4, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 75
    .line 76
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array p5, v1, [J

    .line 82
    .line 83
    fill-array-data p5, :array_1

    .line 84
    .line 85
    .line 86
    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget p4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 97
    .line 98
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array p5, v1, [J

    .line 104
    .line 105
    fill-array-data p5, :array_2

    .line 106
    .line 107
    .line 108
    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    const/16 p5, 0x32

    .line 112
    .line 113
    invoke-static {p4, p3, p2, p5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 114
    .line 115
    .line 116
    :cond_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_1

    .line 121
    .line 122
    return-void

    .line 123
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 124
    .line 125
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    const/4 p3, 0x5

    .line 128
    new-array p3, p3, [J

    .line 129
    .line 130
    fill-array-data p3, :array_3

    .line 131
    .line 132
    .line 133
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Ljava/io/IOException;

    .line 146
    .line 147
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    const/4 p4, 0x4

    .line 150
    new-array p4, p4, [J

    .line 151
    .line 152
    fill-array-data p4, :array_4

    .line 153
    .line 154
    .line 155
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Ljava/io/IOException;

    .line 170
    .line 171
    throw p1

    .line 172
    :catchall_0
    move-exception p1

    .line 173
    goto :goto_0

    .line 174
    :cond_2
    :try_start_3
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array p4, v0, [J

    .line 177
    .line 178
    fill-array-data p4, :array_5

    .line 179
    .line 180
    .line 181
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p3

    .line 188
    invoke-direct {p0, p3, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    throw p1

    .line 193
    :goto_0
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    throw p1

    .line 195
    :catchall_1
    move-exception p2

    .line 196
    goto :goto_1

    .line 197
    :cond_3
    :try_start_4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array p3, v0, [J

    .line 200
    .line 201
    fill-array-data p3, :array_6

    .line 202
    .line 203
    .line 204
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-direct {p0, p2, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    throw p2

    .line 216
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    throw p2

    .line 218
    nop

    .line 219
    :array_0
    .array-data 8
        -0x7a23d639956e1c9aL
        -0x15d8d77d8dee876bL    # -2.268990352068475E203
        -0x45863733dac05745L    # -5.207111046357062E-27
        0x1e8e778389052800L
        -0x3ab82ba6268e61eaL    # -5.761618594841158E25
        0x250e3f10eb36f1faL    # 3.408983404000934E-130
    .end array-data

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
    .line 246
    .line 247
    :array_1
    .array-data 8
        0x2a624012e92e8798L
        0x7e925a0fd590ab4L
    .end array-data

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
    :array_2
    .array-data 8
        -0x57eb43306bea14ecL
        0x7c2207b0a3253012L    # 8.785419594916124E289
    .end array-data

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
    :array_3
    .array-data 8
        -0x2c23602f65fd1847L    # -9.55329438555036E95
        -0x2a522ce7f3ee72f6L    # -5.343956717203019E104
        0x6d48e27e47444d5L
        -0x4eab286cb29c0e17L    # -4.718482277340582E-71
        -0xe7e0d0032aa6082L    # -5.844024880233045E238
    .end array-data

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
    :array_4
    .array-data 8
        -0x1dd8b4e7d9d67492L    # -6.706861837448221E164
        -0x4b12aa6438c8c723L    # -9.570797256581871E-54
        -0x17c254e2f26dc755L    # -1.3536036826017875E194
        0x574a830000648f01L    # 3.1879117046725214E112
    .end array-data

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
    :array_5
    .array-data 8
        0x237bece454d99630L    # 9.3799551216762E-138
        0x299631f37bd801fL
        -0x6eec893218cc8e66L
        -0x62d9b3b363ba0ffbL    # -2.954195282380342E-168
        -0x4ec3595bfc90ca30L    # -1.6215857454367176E-71
        -0x495b5a13a335dce9L    # -1.8083877417032617E-45
    .end array-data

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
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
    :array_6
    .array-data 8
        0x6725933f9253ce14L    # 7.510033996750966E188
        0x1255dd232203a6c9L
        0x79f3a85f0925c122L    # 2.787717101610479E279
        -0x6c046bd571259af1L    # -2.048038101167682E-212
        0x4465418c4e9490b6L    # 3.136838896456763E21
        0x2b33b5e37a0a7b4L
    .end array-data
.end method

.method public sendData(Lcom/trilead/ssh2/channel/Channel;[BII)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    const/16 v3, 0x9

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/16 v5, 0x8

    .line 10
    .line 11
    const/4 v6, 0x4

    .line 12
    move/from16 v7, p3

    .line 13
    .line 14
    move/from16 v8, p4

    .line 15
    .line 16
    :goto_0
    if-lez v8, :cond_7

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :goto_1
    :try_start_0
    iget v9, v2, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 20
    .line 21
    if-eq v9, v6, :cond_6

    .line 22
    .line 23
    if-ne v9, v4, :cond_5

    .line 24
    .line 25
    iget-wide v9, v2, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 26
    .line 27
    const-wide/16 v11, 0x0

    .line 28
    .line 29
    cmp-long v13, v9, v11

    .line 30
    .line 31
    if-eqz v13, :cond_4

    .line 32
    .line 33
    int-to-long v11, v8

    .line 34
    cmp-long v13, v9, v11

    .line 35
    .line 36
    if-ltz v13, :cond_0

    .line 37
    .line 38
    move v10, v8

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    long-to-int v10, v9

    .line 41
    :goto_2
    iget v9, v2, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 42
    .line 43
    iget-object v11, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 44
    .line 45
    invoke-virtual {v11}, Lcom/trilead/ssh2/transport/TransportManager;->getPacketOverheadEstimate()I

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    add-int/2addr v11, v3

    .line 50
    sub-int/2addr v9, v11

    .line 51
    const/4 v11, 0x1

    .line 52
    if-gtz v9, :cond_1

    .line 53
    .line 54
    const/4 v9, 0x1

    .line 55
    :cond_1
    if-le v10, v9, :cond_2

    .line 56
    .line 57
    move v10, v9

    .line 58
    :cond_2
    iget-wide v12, v2, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 59
    .line 60
    int-to-long v14, v10

    .line 61
    sub-long/2addr v12, v14

    .line 62
    iput-wide v12, v2, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 63
    .line 64
    add-int/lit8 v9, v10, 0x9

    .line 65
    .line 66
    new-array v9, v9, [B

    .line 67
    .line 68
    const/4 v12, 0x0

    .line 69
    const/16 v13, 0x5e

    .line 70
    .line 71
    aput-byte v13, v9, v12

    .line 72
    .line 73
    iget v12, v2, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 74
    .line 75
    shr-int/lit8 v13, v12, 0x18

    .line 76
    .line 77
    int-to-byte v13, v13

    .line 78
    aput-byte v13, v9, v11

    .line 79
    .line 80
    shr-int/lit8 v11, v12, 0x10

    .line 81
    .line 82
    int-to-byte v11, v11

    .line 83
    aput-byte v11, v9, v4

    .line 84
    .line 85
    shr-int/lit8 v11, v12, 0x8

    .line 86
    .line 87
    int-to-byte v11, v11

    .line 88
    const/4 v13, 0x3

    .line 89
    aput-byte v11, v9, v13

    .line 90
    .line 91
    int-to-byte v11, v12

    .line 92
    aput-byte v11, v9, v6

    .line 93
    .line 94
    shr-int/lit8 v11, v10, 0x18

    .line 95
    .line 96
    int-to-byte v11, v11

    .line 97
    aput-byte v11, v9, v0

    .line 98
    .line 99
    shr-int/lit8 v11, v10, 0x10

    .line 100
    .line 101
    int-to-byte v11, v11

    .line 102
    const/4 v12, 0x6

    .line 103
    aput-byte v11, v9, v12

    .line 104
    .line 105
    shr-int/lit8 v11, v10, 0x8

    .line 106
    .line 107
    int-to-byte v11, v11

    .line 108
    const/4 v12, 0x7

    .line 109
    aput-byte v11, v9, v12

    .line 110
    .line 111
    int-to-byte v11, v10

    .line 112
    aput-byte v11, v9, v5

    .line 113
    .line 114
    move-object/from16 v11, p2

    .line 115
    .line 116
    invoke-static {v11, v7, v9, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    iget-object v12, v2, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 121
    .line 122
    monitor-enter v12

    .line 123
    :try_start_1
    iget-boolean v13, v2, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 124
    .line 125
    if-nez v13, :cond_3

    .line 126
    .line 127
    iget-object v13, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 128
    .line 129
    invoke-virtual {v13, v9}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 130
    .line 131
    .line 132
    monitor-exit v12

    .line 133
    add-int/2addr v7, v10

    .line 134
    sub-int/2addr v8, v10

    .line 135
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    goto :goto_3

    .line 138
    :cond_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v3, v6, [J

    .line 141
    .line 142
    fill-array-data v3, :array_0

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {v1, v0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    throw v0

    .line 157
    :goto_3
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    throw v0

    .line 159
    :catchall_1
    move-exception v0

    .line 160
    goto :goto_4

    .line 161
    :cond_4
    move-object/from16 v11, p2

    .line 162
    .line 163
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :catch_0
    :try_start_3
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 171
    .line 172
    .line 173
    throw v0

    .line 174
    :cond_5
    new-instance v3, Ljava/io/IOException;

    .line 175
    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    new-array v0, v0, [J

    .line 184
    .line 185
    fill-array-data v0, :array_1

    .line 186
    .line 187
    .line 188
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget v0, v2, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 199
    .line 200
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v4, v4, [J

    .line 206
    .line 207
    fill-array-data v4, :array_2

    .line 208
    .line 209
    .line 210
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v3

    .line 228
    :cond_6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v3, v6, [J

    .line 231
    .line 232
    fill-array-data v3, :array_3

    .line 233
    .line 234
    .line 235
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {v1, v0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->ioException(Ljava/lang/String;Lcom/trilead/ssh2/channel/Channel;)Ljava/io/IOException;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    throw v0

    .line 247
    :goto_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    throw v0

    .line 249
    :cond_7
    return-void

    .line 250
    nop

    .line 251
    :array_0
    .array-data 8
        -0x6b4637bbb56665d2L    # -7.842319674386816E-209
        0x34cc030d5388970bL    # 2.2848290049035318E-54
        -0x3f131cb6c7b3f3a4L    # -59162.288122200145
        0x1ae6e163c00820b4L
    .end array-data

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
    :array_1
    .array-data 8
        -0x59de9292109a55dL    # -3.283565711250955E281
        0x2c34aa89a51c1c96L    # 9.675228570150564E-96
        0x598b3ba7ddd7f26dL    # 2.250319644474175E123
        -0x7151899b5d7e98daL
        0x52c260b93f7b7e63L    # 4.679536759112133E90
    .end array-data

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
    :array_2
    .array-data 8
        0x2e0d7536494c2b19L    # 7.404102964839639E-87
        0x7ede06fd6d98a881L    # 1.28698060915482E303
    .end array-data

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
    :array_3
    .array-data 8
        -0x34e2f227224238e1L    # -6.957072488853178E53
        -0x18846933cf8f6230L    # -3.0730814656039848E190
        0x3a2231d37d28e047L    # 1.148242792536947E-28
        -0x7fad0a636b1f0f37L    # -4.218611091576833E-307
    .end array-data
.end method

.method public sendEOF(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x5

    .line 4
    new-array v2, v2, [B

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 8
    .line 9
    if-eq v3, v1, :cond_0

    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0x60

    .line 17
    .line 18
    aput-byte v4, v2, v3

    .line 19
    .line 20
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 21
    .line 22
    shr-int/lit8 v4, v3, 0x18

    .line 23
    .line 24
    int-to-byte v4, v4

    .line 25
    const/4 v5, 0x1

    .line 26
    aput-byte v4, v2, v5

    .line 27
    .line 28
    shr-int/lit8 v4, v3, 0x10

    .line 29
    .line 30
    int-to-byte v4, v4

    .line 31
    aput-byte v4, v2, v1

    .line 32
    .line 33
    shr-int/lit8 v4, v3, 0x8

    .line 34
    .line 35
    int-to-byte v4, v4

    .line 36
    const/4 v5, 0x3

    .line 37
    aput-byte v4, v2, v5

    .line 38
    .line 39
    int-to-byte v3, v3

    .line 40
    aput-byte v3, v2, v0

    .line 41
    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object v3, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v3

    .line 46
    :try_start_1
    iget-boolean v4, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    monitor-exit v3

    .line 51
    return-void

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 55
    .line 56
    invoke-virtual {v4, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 57
    .line 58
    .line 59
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v0, v0, [J

    .line 76
    .line 77
    fill-array-data v0, :array_0

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 91
    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v4, v1, [J

    .line 98
    .line 99
    fill-array-data v4, :array_1

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget p1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 113
    .line 114
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v0, v1, [J

    .line 120
    .line 121
    fill-array-data v0, :array_2

    .line 122
    .line 123
    .line 124
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    const/16 v0, 0x32

    .line 128
    .line 129
    invoke-static {p1, v3, v2, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 130
    .line 131
    .line 132
    :cond_2
    return-void

    .line 133
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    throw p1

    .line 135
    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    throw v0

    .line 137
    :array_0
    .array-data 8
        -0x60a982de875ff25dL
        -0x6ddf4a5ca2bc8a9dL    # -2.311305080158703E-221
        0x1d237727770e7be9L
        -0x5743f8c6c4e2005aL    # -1.8210300060719214E-112
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
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
        -0x2aff235d0bff8cb1L    # -2.9504894972725164E101
        -0x372b33f00badbe1bL    # -7.2467381139833E42
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
    :array_2
    .array-data 8
        -0x27d9f091a5ed15a5L    # -4.346095970613711E116
        0x501bf4eaff269932L    # 8.092914869152355E77
    .end array-data
.end method

.method public sendOpenConfirmation(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 5

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    monitor-exit p1

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    iput v0, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 13
    .line 14
    new-instance v0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;

    .line 15
    .line 16
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 17
    .line 18
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 19
    .line 20
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 21
    .line 22
    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    .line 23
    .line 24
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;-><init>(IIII)V

    .line 25
    .line 26
    .line 27
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v1, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_1
    iget-boolean p1, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->getPayload()[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    throw p1

    .line 52
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw v0
.end method

.method public unRegisterX11Cookie(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    new-array v2, v2, [J

    .line 29
    .line 30
    fill-array-data v2, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/16 v2, 0x32

    .line 41
    .line 42
    invoke-virtual {p2, v2, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 46
    .line 47
    monitor-enter p2

    .line 48
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/util/Vector;

    .line 55
    .line 56
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    const/4 p2, 0x0

    .line 58
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-ge p2, v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/trilead/ssh2/channel/Channel;

    .line 69
    .line 70
    monitor-enter v2

    .line 71
    :try_start_2
    iget-object v3, v2, Lcom/trilead/ssh2/channel/Channel;->hexX11FakeCookie:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    monitor-exit v2

    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    const/16 v4, 0x9

    .line 87
    .line 88
    new-array v4, v4, [J

    .line 89
    .line 90
    fill-array-data v4, :array_1

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {p0, v2, v3, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 101
    .line 102
    .line 103
    :catch_0
    :goto_1
    add-int/2addr p2, v0

    .line 104
    goto :goto_0

    .line 105
    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    throw p1

    .line 107
    :cond_3
    return-void

    .line 108
    :catchall_1
    move-exception p1

    .line 109
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 110
    throw p1

    .line 111
    :catchall_2
    move-exception p1

    .line 112
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 113
    throw p1

    .line 114
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    const/4 v0, 0x5

    .line 119
    new-array v0, v0, [J

    .line 120
    .line 121
    fill-array-data v0, :array_2

    .line 122
    .line 123
    .line 124
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :array_0
    .array-data 8
        0x58da3d3b9e0cb73fL    # 1.0586898063040452E120
        -0x322dadbf264e89a1L    # -7.717833215905553E66
        0x76e599064f63748eL    # 5.440699839058417E264
        -0x40838f4ecd10389aL    # -0.006943409141045942
        -0x39b522a95993b3fL    # -1.612189727819148E291
        -0x6778e1397fe2f1aaL    # -1.621603404956084E-190
        0x7b316022d5269bb4L    # 2.583770913965147E285
        0x358ca14a6e7f11b9L    # 9.565170733742593E-51
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
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
    :array_1
    .array-data 8
        -0x24475c5a71581116L    # -6.995608347405493E133
        -0x2b01199860b61c56L    # -2.703443527487217E101
        -0x4d421bb4b7bc17baL
        -0x12b3bccebcd876e4L    # -3.1177191801345475E218
        0x23443edb1c2b6d70L    # 8.50043550050402E-139
        0xd25993dd0a32848L
        0x73b95d08e3202adcL    # 2.8374236657894767E249
        0x5c482af266706180L    # 3.5132129487047594E136
        0xa575a1326aba727L
    .end array-data

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
    .line 210
    .line 211
    :array_2
    .array-data 8
        0x7a67bcaad907df77L    # 4.308751646290483E281
        -0x411870f50e722f35L    # -1.123369251996471E-5
        -0x42d3adc24d0bbb9dL    # -5.030865315915004E-14
        0x619e22a1e29655a5L    # 1.6947004863703937E162
        -0x17f92d35207158faL    # -1.3016305518752014E193
    .end array-data
.end method

.method public waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I
    .locals 9

    .line 1
    monitor-enter p1

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    move-wide v4, v0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v6, p1, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 8
    .line 9
    invoke-virtual {v6}, Lcom/trilead/ssh2/channel/Channel$Output;->readable()I

    .line 10
    .line 11
    .line 12
    move-result v6

    .line 13
    iget-object v7, p1, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 14
    .line 15
    invoke-virtual {v7}, Lcom/trilead/ssh2/channel/Channel$Output;->readable()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    const/4 v8, 0x4

    .line 20
    if-lez v6, :cond_0

    .line 21
    .line 22
    const/4 v6, 0x4

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v6, 0x0

    .line 25
    :goto_1
    if-lez v7, :cond_1

    .line 26
    .line 27
    or-int/lit8 v6, v6, 0x8

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->isEOF()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    or-int/lit8 v6, v6, 0x10

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    if-eqz v7, :cond_3

    .line 42
    .line 43
    or-int/lit8 v6, v6, 0x20

    .line 44
    .line 45
    :cond_3
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getExitSignal()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    if-eqz v7, :cond_4

    .line 50
    .line 51
    or-int/lit8 v6, v6, 0x40

    .line 52
    .line 53
    :cond_4
    iget v7, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 54
    .line 55
    if-ne v7, v8, :cond_5

    .line 56
    .line 57
    or-int/lit8 p2, v6, 0x12

    .line 58
    .line 59
    monitor-exit p1

    .line 60
    return p2

    .line 61
    :catchall_0
    move-exception p2

    .line 62
    goto :goto_3

    .line 63
    :cond_5
    and-int v7, v6, p4

    .line 64
    .line 65
    if-eqz v7, :cond_6

    .line 66
    .line 67
    monitor-exit p1

    .line 68
    return v6

    .line 69
    :cond_6
    cmp-long v7, p2, v0

    .line 70
    .line 71
    if-lez v7, :cond_8

    .line 72
    .line 73
    const/4 v7, 0x1

    .line 74
    if-nez v3, :cond_7

    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    add-long v4, v3, p2

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide p2

    .line 88
    sub-long p2, v4, p2

    .line 89
    .line 90
    cmp-long v8, p2, v0

    .line 91
    .line 92
    if-gtz v8, :cond_8

    .line 93
    .line 94
    or-int/lit8 p2, v6, 0x1

    .line 95
    .line 96
    monitor-exit p1

    .line 97
    return p2

    .line 98
    :cond_8
    :goto_2
    cmp-long v6, p2, v0

    .line 99
    .line 100
    if-lez v6, :cond_9

    .line 101
    .line 102
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw p2
.end method
