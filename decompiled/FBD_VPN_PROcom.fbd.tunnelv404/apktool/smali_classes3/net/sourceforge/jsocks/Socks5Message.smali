.class public Lnet/sourceforge/jsocks/Socks5Message;
.super Lnet/sourceforge/jsocks/ProxyMessage;
.source "SourceFile"


# static fields
.field public static final SOCKS_ATYP_DOMAINNAME:I = 0x3

.field public static final SOCKS_ATYP_IPV4:I = 0x1

.field public static final SOCKS_ATYP_IPV6:I = 0x4

.field public static final SOCKS_IPV6_LENGTH:I = 0x10

.field public static final SOCKS_VERSION:I = 0x5

.field static doResolveIP:Z = true


# instance fields
.field public addrType:I

.field data:[B


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v2, 0x5

    .line 6
    aput-byte v2, v0, v1

    const/4 v2, 0x1

    int-to-byte p1, p1

    .line 7
    aput-byte p1, v0, v2

    const/4 p1, 0x2

    .line 8
    aput-byte v1, v0, p1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0, p3}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    .line 25
    iput-object p2, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    const/4 p1, 0x5

    .line 26
    iput p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    const/4 v0, 0x3

    .line 27
    iput v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 29
    array-length v1, p2

    add-int/lit8 v1, v1, 0x7

    new-array v1, v1, [B

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v2, 0x0

    .line 30
    aput-byte p1, v1, v2

    .line 31
    iget v3, p0, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    const/4 v3, 0x2

    .line 32
    aput-byte v2, v1, v3

    .line 33
    aput-byte v0, v1, v0

    .line 34
    array-length v0, p2

    int-to-byte v0, v0

    const/4 v5, 0x4

    aput-byte v0, v1, v5

    .line 35
    array-length v0, p2

    invoke-static {p2, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    array-length p2, p1

    sub-int/2addr p2, v3

    shr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 37
    array-length p2, p1

    sub-int/2addr p2, v4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;I)V
    .locals 7

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    if-nez p2, :cond_0

    .line 10
    const-string p1, "0.0.0.0"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    const/4 p1, 0x5

    .line 11
    iput p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez p2, :cond_1

    .line 12
    new-array p2, v3, [B

    .line 13
    aput-byte v4, p2, v0

    aput-byte v4, p2, v1

    aput-byte v4, p2, v2

    aput-byte v4, p2, v4

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    .line 15
    :goto_1
    array-length v5, p2

    if-ne v5, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x4

    :goto_2
    iput v5, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    .line 16
    array-length v6, p2

    add-int/lit8 v6, v6, 0x6

    new-array v6, v6, [B

    iput-object v6, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 17
    aput-byte p1, v6, v4

    .line 18
    iget p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    int-to-byte p1, p1

    aput-byte p1, v6, v2

    .line 19
    aput-byte v4, v6, v1

    int-to-byte p1, v5

    .line 20
    aput-byte p1, v6, v0

    .line 21
    array-length p1, p2

    invoke-static {p2, v4, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    array-length p2, p1

    sub-int/2addr p2, v1

    shr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 23
    array-length p2, p1

    sub-int/2addr p2, v2

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/jsocks/Socks5Message;->read(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public static resolveIP()Z
    .locals 1

    .line 1
    sget-boolean v0, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    return v0
.end method

.method public static resolveIP(Z)Z
    .locals 1

    .line 2
    sget-boolean v0, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    .line 3
    sput-boolean p0, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    return v0
.end method


# virtual methods
.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 13
    .line 14
    return-object v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/jsocks/Socks5Message;->read(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public read(Ljava/io/InputStream;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 3
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 4
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    .line 6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    iget p2, p0, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    invoke-direct {p1, p2}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    const/4 p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq p1, p2, :cond_4

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    const/16 p1, 0x10

    .line 10
    new-array p1, p1, [B

    .line 11
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 12
    invoke-static {p1, v1}, Lnet/sourceforge/jsocks/ProxyMessage;->bytes2IPV6([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 p2, 0x60000

    invoke-direct {p1, p2}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1

    .line 14
    :cond_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    new-array p1, p1, [B

    .line 15
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 16
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p2, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    goto :goto_1

    .line 17
    :cond_4
    new-array p1, v2, [B

    .line 18
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 19
    invoke-static {p1, v1}, Lnet/sourceforge/jsocks/ProxyMessage;->bytes2IPV4([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    .line 20
    :goto_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    .line 21
    iget p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    if-eq p1, v3, :cond_5

    sget-boolean p1, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    if-eqz p1, :cond_5

    .line 22
    :try_start_0
    iget-object p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Socks5Message:\nVN   "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\nCMD  "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\nATYP "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\nADDR "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\nPORT "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    .line 49
    .line 50
    const-string v2, "\n"

    .line 51
    .line 52
    invoke-static {v0, v2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    .line 11
    .line 12
    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    .line 13
    .line 14
    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    .line 15
    .line 16
    iget v3, p0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    .line 36
    .line 37
    const/high16 v0, 0x60000

    .line 38
    .line 39
    invoke-direct {p1, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    :goto_0
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    .line 44
    .line 45
    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    .line 46
    .line 47
    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 48
    .line 49
    iget v3, p0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    .line 50
    .line 51
    invoke-direct {v0, v1, v2, v3}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 52
    .line 53
    .line 54
    :goto_1
    iget-object v0, v0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 55
    .line 56
    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
