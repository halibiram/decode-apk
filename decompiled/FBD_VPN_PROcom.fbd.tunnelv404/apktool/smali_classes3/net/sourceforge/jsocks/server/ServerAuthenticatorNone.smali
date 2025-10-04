.class public Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sourceforge/jsocks/server/ServerAuthenticator;


# static fields
.field static final socks5response:[B


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->socks5response:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x5t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->in:Ljava/io/InputStream;

    .line 3
    iput-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->in:Ljava/io/InputStream;

    .line 6
    iput-object p2, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public static selectSocks5Authentication(Ljava/io/InputStream;Ljava/io/OutputStream;I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    new-array v2, v0, [B

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v3, v3, [B

    .line 13
    .line 14
    const/4 v4, 0x5

    .line 15
    aput-byte v4, v3, v1

    .line 16
    .line 17
    const/4 v4, -0x1

    .line 18
    const/4 v5, 0x1

    .line 19
    aput-byte v4, v3, v5

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-ge v4, v0, :cond_1

    .line 23
    .line 24
    sub-int v6, v0, v4

    .line 25
    .line 26
    invoke-virtual {p0, v2, v4, v6}, Ljava/io/InputStream;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    add-int/2addr v4, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_1
    if-ge p0, v0, :cond_3

    .line 34
    .line 35
    aget-byte v4, v2, p0

    .line 36
    .line 37
    if-ne v4, p2, :cond_2

    .line 38
    .line 39
    int-to-byte p0, p2

    .line 40
    aput-byte p0, v3, v5

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_2
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 48
    .line 49
    .line 50
    return v1
.end method


# virtual methods
.method public checkRequest(Ljava/net/DatagramPacket;Z)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public checkRequest(Lnet/sourceforge/jsocks/ProxyMessage;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public endSession()V
    .locals 0

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public startSession(Ljava/net/Socket;)Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/PushbackInputStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x5

    .line 19
    const/4 v3, 0x0

    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v0, p1, v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->selectSocks5Authentication(Ljava/io/InputStream;Ljava/io/OutputStream;I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_0
    new-instance v1, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;

    .line 31
    .line 32
    invoke-direct {v1, v0, p1}, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_1
    return-object v3
.end method
