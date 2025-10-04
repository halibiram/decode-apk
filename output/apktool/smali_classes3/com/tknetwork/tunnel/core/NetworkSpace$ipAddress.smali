.class public Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/core/NetworkSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ipAddress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;",
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
.method public constructor <init>(Lcom/tknetwork/tunnel/core/CIDRIP;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->included:Z

    .line 3
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/core/CIDRIP;->getInt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->netAddress:Ljava/math/BigInteger;

    .line 4
    iget p1, p1, Lcom/tknetwork/tunnel/core/CIDRIP;->len:I

    iput p1, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->isV4:Z

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;IZZ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->netAddress:Ljava/math/BigInteger;

    .line 14
    iput p2, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 15
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->included:Z

    .line 16
    iput-boolean p4, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->isV4:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet6Address;IZ)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p2, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 8
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->included:Z

    .line 9
    sget-object p2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->netAddress:Ljava/math/BigInteger;

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
    iget-object v2, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->netAddress:Ljava/math/BigInteger;

    and-int/lit16 v1, v1, 0xff

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->netAddress:Ljava/math/BigInteger;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getMaskedAddress(Z)Ljava/math/BigInteger;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->netAddress:Ljava/math/BigInteger;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->isV4:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 8
    .line 9
    rsub-int/lit8 v1, v1, 0x20

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

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

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->included:Z

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;)I
    .locals 2
    .param p1    # Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    iget p1, p1, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    if-le v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->compareTo(Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;)I

    move-result p1

    return p1
.end method

.method public containsNet(Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getLastAddress()Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getLastAddress()Ljava/math/BigInteger;

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
    instance-of v0, p1, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 6
    .line 7
    iget v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 8
    .line 9
    iget v1, p1, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1

    .line 31
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public getFirstAddress()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->firstAddress:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getMaskedAddress(Z)Ljava/math/BigInteger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->firstAddress:Ljava/math/BigInteger;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->firstAddress:Ljava/math/BigInteger;

    .line 13
    .line 14
    return-object v0
.end method

.method public getIPv4Address()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->netAddress:Ljava/math/BigInteger;

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
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    new-array v5, v4, [J

    .line 13
    .line 14
    fill-array-data v5, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/16 v5, 0x18

    .line 25
    .line 26
    shr-long v5, v0, v5

    .line 27
    .line 28
    const-wide/16 v7, 0x100

    .line 29
    .line 30
    rem-long/2addr v5, v7

    .line 31
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/16 v6, 0x10

    .line 36
    .line 37
    shr-long v9, v0, v6

    .line 38
    .line 39
    rem-long/2addr v9, v7

    .line 40
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const/16 v9, 0x8

    .line 45
    .line 46
    shr-long v9, v0, v9

    .line 47
    .line 48
    rem-long/2addr v9, v7

    .line 49
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    rem-long/2addr v0, v7

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x4

    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    aput-object v5, v1, v7

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    aput-object v6, v1, v5

    .line 66
    .line 67
    const/4 v5, 0x2

    .line 68
    aput-object v9, v1, v5

    .line 69
    .line 70
    aput-object v0, v1, v4

    .line 71
    .line 72
    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :array_0
    .array-data 8
        0x403bb81090859e24L    # 27.71900275480415
        -0x5a687de989fd05aL
        0x4f061cd27cad42daL    # 4.883694880204295E72
    .end array-data
.end method

.method public getIPv6Address()Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->netAddress:Ljava/math/BigInteger;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x1

    .line 8
    :goto_0
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 9
    .line 10
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    if-ne v6, v4, :cond_4

    .line 15
    .line 16
    const-wide/32 v6, 0x10000

    .line 17
    .line 18
    .line 19
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    const-wide/16 v8, 0x0

    .line 34
    .line 35
    cmp-long v10, v6, v8

    .line 36
    .line 37
    if-eqz v10, :cond_3

    .line 38
    .line 39
    :cond_0
    if-nez v3, :cond_1

    .line 40
    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v8, v1, [J

    .line 46
    .line 47
    fill-array-data v8, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_1
    if-eqz v5, :cond_2

    .line 58
    .line 59
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 60
    .line 61
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v9, v1, [J

    .line 64
    .line 65
    fill-array-data v9, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    new-array v7, v1, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v6, v7, v0

    .line 82
    .line 83
    aput-object v3, v7, v4

    .line 84
    .line 85
    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 91
    .line 92
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v9, v1, [J

    .line 95
    .line 96
    fill-array-data v9, :array_2

    .line 97
    .line 98
    .line 99
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    new-array v7, v1, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object v6, v7, v0

    .line 113
    .line 114
    aput-object v3, v7, v4

    .line 115
    .line 116
    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    :cond_3
    :goto_1
    const/16 v5, 0x10

    .line 121
    .line 122
    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const/4 v5, 0x0

    .line 127
    goto :goto_0

    .line 128
    :cond_4
    if-nez v3, :cond_5

    .line 129
    .line 130
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v1, v1, [J

    .line 133
    .line 134
    fill-array-data v1, :array_3

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    return-object v0

    .line 145
    :cond_5
    return-object v3

    .line 146
    nop

    .line 147
    :array_0
    .array-data 8
        -0x94c3e2be37ec365L    # -6.221288739803577E263
        -0x3d0c55b917374dd0L    # -3.45952880462627E14
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
    :array_1
    .array-data 8
        -0xf019b920c6aa265L    # -1.932681209852015E236
        -0x7dc2a983e8aef76aL
    .end array-data

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
        -0x1198ff9d1ccefdfeL    # -6.65155401865253E223
        -0x27a37485d772d367L    # -4.4988947058790956E117
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_3
    .array-data 8
        -0x3e65f80b242054c4L    # -1.0918226296842664E8
        -0x48c82d0678f66c59L    # -1.0683104880684939E-42
    .end array-data
.end method

.method public getLastAddress()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->lastAddress:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getMaskedAddress(Z)Ljava/math/BigInteger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->lastAddress:Ljava/math/BigInteger;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->lastAddress:Ljava/math/BigInteger;

    .line 13
    .line 14
    return-object v0
.end method

.method public split()[Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;
    .locals 7

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    add-int/2addr v2, v3

    .line 11
    iget-boolean v4, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->included:Z

    .line 12
    .line 13
    iget-boolean v5, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->isV4:Z

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;-><init>(Ljava/math/BigInteger;IZZ)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getLastAddress()Ljava/math/BigInteger;

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
    iget v4, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 31
    .line 32
    add-int/2addr v4, v3

    .line 33
    iget-boolean v5, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->included:Z

    .line 34
    .line 35
    iget-boolean v6, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->isV4:Z

    .line 36
    .line 37
    invoke-direct {v1, v2, v4, v5, v6}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;-><init>(Ljava/math/BigInteger;IZZ)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    new-array v2, v2, [Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

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
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->isV4:Z

    .line 5
    .line 6
    if-eqz v3, :cond_0

    .line 7
    .line 8
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 9
    .line 10
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v5, v2, [J

    .line 13
    .line 14
    fill-array-data v5, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getIPv4Address()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget v6, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 29
    .line 30
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object v5, v2, v1

    .line 37
    .line 38
    aput-object v6, v2, v0

    .line 39
    .line 40
    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 46
    .line 47
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v5, v2, [J

    .line 50
    .line 51
    fill-array-data v5, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getIPv6Address()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    iget v6, p0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 66
    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    new-array v2, v2, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v5, v2, v1

    .line 74
    .line 75
    aput-object v6, v2, v0

    .line 76
    .line 77
    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    nop

    .line 83
    :array_0
    .array-data 8
        0x54cf74f92358720bL    # 3.4402092692752273E100
        0x7ccf855a2d927c6fL    # 1.5727674324321717E293
    .end array-data

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
    :array_1
    .array-data 8
        0x1960279cadd87b6aL    # 1.856404092134837E-186
        -0x6058d974f6643d5fL    # -3.372358544351734E-156
    .end array-data
.end method
