.class public Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpAddress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private firstAddress:Ljava/math/BigInteger;

.field private final included:Z

.field private isV4:Z

.field private lastAddress:Ljava/math/BigInteger;

.field private netAddress:Ljava/math/BigInteger;

.field public networkMask:I


# direct methods
.method public constructor <init>(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    .line 3
    invoke-virtual {p1}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->getInt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    .line 4
    iget p1, p1, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->len:I

    iput p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;IZZ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    .line 14
    iput p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 15
    iput-boolean p3, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    .line 16
    iput-boolean p4, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet6Address;IZ)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 8
    iput-boolean p3, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    .line 9
    sget-object p2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    .line 10
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p1

    array-length p2, p1

    const/16 p3, 0x80

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p1, v0

    add-int/lit8 p3, p3, -0x8

    .line 11
    iget-object v2, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    and-int/lit16 v1, v1, 0xff

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getMaskedAddress(Z)Ljava/math/BigInteger;
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    .line 2
    .line 3
    iget-boolean v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 8
    .line 9
    rsub-int/lit8 v1, v1, 0x20

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 13
    .line 14
    rsub-int v1, v1, 0x80

    .line 15
    .line 16
    :goto_0
    const/4 v2, 0x0

    .line 17
    :goto_1
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    return-object v0
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    return p0
.end method


# virtual methods
.method public compareTo(Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;)I
    .locals 2
    .param p1    # Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget p1, p1, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    iget v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    invoke-static {p1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    invoke-virtual {p0, p1}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->compareTo(Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;)I

    move-result p1

    return p1
.end method

.method public containsNet(Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v0, v3, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v1, -0x1

    .line 33
    if-eq p1, v1, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_1
    if-eqz v0, :cond_2

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    :cond_2
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    check-cast p1, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 11
    .line 12
    iget v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 13
    .line 14
    iget v1, p1, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_0
    return p1
.end method

.method public getFirstAddress()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->firstAddress:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getMaskedAddress(Z)Ljava/math/BigInteger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->firstAddress:Ljava/math/BigInteger;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->firstAddress:Ljava/math/BigInteger;

    .line 13
    .line 14
    return-object v0
.end method

.method public getIPv4Address()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    const/16 v2, 0x18

    .line 10
    .line 11
    shr-long v2, v0, v2

    .line 12
    .line 13
    const-wide/16 v4, 0x100

    .line 14
    .line 15
    rem-long/2addr v2, v4

    .line 16
    const/16 v6, 0x10

    .line 17
    .line 18
    shr-long v6, v0, v6

    .line 19
    .line 20
    rem-long/2addr v6, v4

    .line 21
    const/16 v8, 0x8

    .line 22
    .line 23
    shr-long v8, v0, v8

    .line 24
    .line 25
    rem-long/2addr v8, v4

    .line 26
    rem-long/2addr v0, v4

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "."

    .line 36
    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method public getIPv6Address()Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x1

    .line 7
    :goto_0
    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    if-lez v5, :cond_4

    .line 14
    .line 15
    const-wide/32 v5, 0x10000

    .line 16
    .line 17
    .line 18
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    const-wide/16 v7, 0x0

    .line 33
    .line 34
    cmp-long v9, v5, v7

    .line 35
    .line 36
    if-eqz v9, :cond_3

    .line 37
    .line 38
    :cond_0
    if-nez v2, :cond_1

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    const-string v2, ":"

    .line 43
    .line 44
    :cond_1
    if-eqz v4, :cond_2

    .line 45
    .line 46
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 47
    .line 48
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    new-array v5, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v4, v5, v0

    .line 55
    .line 56
    const-string v4, "%x"

    .line 57
    .line 58
    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 64
    .line 65
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const/4 v6, 0x2

    .line 70
    new-array v6, v6, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object v5, v6, v0

    .line 73
    .line 74
    aput-object v2, v6, v3

    .line 75
    .line 76
    const-string v2, "%x:%s"

    .line 77
    .line 78
    invoke-static {v4, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :cond_3
    :goto_1
    const/16 v4, 0x10

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const/4 v4, 0x0

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-nez v2, :cond_5

    .line 91
    .line 92
    const-string v0, "::"

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_5
    return-object v2
.end method

.method public getLastAddress()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->lastAddress:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getMaskedAddress(Z)Ljava/math/BigInteger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->lastAddress:Ljava/math/BigInteger;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->lastAddress:Ljava/math/BigInteger;

    .line 13
    .line 14
    return-object v0
.end method

.method public split()[Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;
    .locals 7

    .line 1
    new-instance v0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 2
    .line 3
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    add-int/2addr v2, v3

    .line 11
    iget-boolean v4, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    .line 12
    .line 13
    iget-boolean v5, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v4, v5}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Ljava/math/BigInteger;IZZ)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 19
    .line 20
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget v4, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 31
    .line 32
    add-int/2addr v4, v3

    .line 33
    iget-boolean v5, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    .line 34
    .line 35
    iget-boolean v6, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    .line 36
    .line 37
    invoke-direct {v1, v2, v4, v5, v6}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Ljava/math/BigInteger;IZZ)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    new-array v2, v2, [Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    aput-object v0, v2, v4

    .line 45
    .line 46
    aput-object v1, v2, v3

    .line 47
    .line 48
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getIPv4Address()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v2, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getIPv6Address()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v2, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
