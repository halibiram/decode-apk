.class public Lapp/tunnel/ssh2/tunnel/HTTPJet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/ProxyData;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private modoDropbear:Z

.field private final proxyHost:Ljava/lang/String;

.field private final proxyPass:Ljava/lang/String;

.field private final proxyPort:I

.field private final proxyUser:Ljava/lang/String;

.field private final requestPayload:Ljava/lang/String;

.field private sock:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lapp/tunnel/ssh2/tunnel/HTTPJet;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 2
    invoke-direct/range {v0 .. v7}, Lapp/tunnel/ssh2/tunnel/HTTPJet;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 4
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->proxyHost:Ljava/lang/String;

    .line 5
    iput p2, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->proxyPort:I

    .line 6
    iput-object p3, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->proxyUser:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->proxyPass:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->requestPayload:Ljava/lang/String;

    .line 9
    iput-boolean p6, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->modoDropbear:Z

    .line 10
    iput-object p7, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->mContext:Landroid/content/Context;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxyPort must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxyHost must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getRequestPayload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->requestPayload:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->formatCustomPayload(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "CONNECT "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 p1, 0x3a

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " HTTP/1.0\r\n"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->proxyUser:Ljava/lang/String;

    .line 34
    .line 35
    const-string p2, "\r\n"

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->proxyPass:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->proxyUser:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ":"

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->proxyPass:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v1, "Proxy-Authorization: Basic "

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_0
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->sock:Ljava/net/Socket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    return-void
.end method

.method public openConnection(Ljava/lang/String;III)Ljava/net/Socket;
    .locals 5

    .line 1
    new-instance v0, Ljava/net/Socket;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->sock:Ljava/net/Socket;

    .line 7
    .line 8
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->proxyHost:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->sock:Ljava/net/Socket;

    .line 15
    .line 16
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 17
    .line 18
    iget v3, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->proxyPort:I

    .line 19
    .line 20
    invoke-direct {v2, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->sock:Ljava/net/Socket;

    .line 27
    .line 28
    invoke-virtual {p3, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 29
    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    new-array p4, p3, [Ljava/lang/Object;

    .line 33
    .line 34
    const v0, 0x7f13025f

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p4}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, p2}, Lapp/tunnel/ssh2/tunnel/HTTPJet;->getRequestPayload(Ljava/lang/String;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {p2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->isActiveVpn(Landroid/content/Context;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const-string p4, "</strong>"

    .line 51
    .line 52
    const-string v0, "<strong>"

    .line 53
    .line 54
    if-nez p2, :cond_8

    .line 55
    .line 56
    const p2, 0x7f13025e

    .line 57
    .line 58
    .line 59
    new-array v1, p3, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {p2, v1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->sock:Ljava/net/Socket;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-static {p1, p2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->injectSplitPayload(Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_0

    .line 75
    .line 76
    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 94
    .line 95
    .line 96
    :cond_0
    iget-boolean p1, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->modoDropbear:Z

    .line 97
    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->sock:Ljava/net/Socket;

    .line 101
    .line 102
    return-object p1

    .line 103
    :cond_1
    const/16 p1, 0x400

    .line 104
    .line 105
    new-array p1, p1, [B

    .line 106
    .line 107
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->sock:Ljava/net/Socket;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    new-instance v3, Ljava/lang/String;

    .line 118
    .line 119
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 120
    .line 121
    invoke-direct {v3, p1, p3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 122
    .line 123
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    invoke-static {p4}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance p4, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_1
    invoke-static {v1, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_2

    .line 152
    .line 153
    const-string v2, "\n"

    .line 154
    .line 155
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    new-instance v2, Ljava/lang/String;

    .line 159
    .line 160
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 161
    .line 162
    invoke-direct {v2, p1, p3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-lez p1, :cond_3

    .line 174
    .line 175
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_3
    const-string p1, "HTTP/"

    .line 183
    .line 184
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    const-string p3, "The proxy did not send back a valid HTTP response."

    .line 189
    .line 190
    if-eqz p1, :cond_7

    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    const/16 p4, 0xe

    .line 197
    .line 198
    if-lt p1, p4, :cond_6

    .line 199
    .line 200
    const/16 p1, 0x8

    .line 201
    .line 202
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    const/16 p4, 0x20

    .line 207
    .line 208
    if-ne p1, p4, :cond_6

    .line 209
    .line 210
    const/16 p1, 0xc

    .line 211
    .line 212
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-ne v0, p4, :cond_6

    .line 217
    .line 218
    const/16 p4, 0x9

    .line 219
    .line 220
    :try_start_1
    invoke-virtual {v3, p4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-ltz p1, :cond_5

    .line 229
    .line 230
    const/16 p4, 0x3e7

    .line 231
    .line 232
    if-gt p1, p4, :cond_5

    .line 233
    .line 234
    const/16 p4, 0xc8

    .line 235
    .line 236
    if-eq p1, p4, :cond_4

    .line 237
    .line 238
    const-string p1, "HTTP/1.1 200 OK\r\n\r\n"

    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->sock:Ljava/net/Socket;

    .line 251
    .line 252
    return-object p1

    .line 253
    :cond_4
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->sock:Ljava/net/Socket;

    .line 254
    .line 255
    return-object p1

    .line 256
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 257
    .line 258
    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    :catch_1
    new-instance p1, Ljava/io/IOException;

    .line 263
    .line 264
    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1

    .line 268
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 269
    .line 270
    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p1

    .line 274
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 275
    .line 276
    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw p1

    .line 280
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/HTTPJet;->mContext:Landroid/content/Context;

    .line 286
    .line 287
    const p3, 0x7f1300ad

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance p1, Ljava/io/IOException;

    .line 308
    .line 309
    const-string p2, "error detected"

    .line 310
    .line 311
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw p1
.end method
