.class public Lcom/tknetwork/tunnel/core/CIDRIP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field len:I

.field mIp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p2, p0, Lcom/tknetwork/tunnel/core/CIDRIP;->len:I

    .line 8
    iput-object p1, p0, Lcom/tknetwork/tunnel/core/CIDRIP;->mIp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tknetwork/tunnel/core/CIDRIP;->mIp:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/tknetwork/tunnel/core/CIDRIP;->getInt(Ljava/lang/String;)J

    move-result-wide p1

    const-wide v0, 0x100000000L

    add-long/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x1

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    shr-long/2addr p1, v1

    goto :goto_0

    :cond_0
    const-wide v1, 0x1ffffffffL

    shr-long/2addr v1, v0

    const/16 v3, 0x20

    cmp-long v4, p1, v1

    if-eqz v4, :cond_1

    .line 4
    iput v3, p0, Lcom/tknetwork/tunnel/core/CIDRIP;->len:I

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v0

    .line 5
    iput v3, p0, Lcom/tknetwork/tunnel/core/CIDRIP;->len:I

    :goto_1
    return-void
.end method

.method public static getInt(Ljava/lang/String;)J
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v0, 0x18

    shl-long/2addr v2, v0

    const/4 v0, 0x1

    .line 3
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 4
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    add-long/2addr v2, v0

    const/4 v0, 0x3

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    add-long/2addr v2, v0

    return-wide v2

    :array_0
    .array-data 8
        0x4546b1634217c5beL    # 5.486811577829123E25
        -0x1290865f2bc94017L    # -1.3888461070892981E219
    .end array-data
.end method


# virtual methods
.method public getInt()J
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/CIDRIP;->mIp:Ljava/lang/String;

    invoke-static {v0}, Lcom/tknetwork/tunnel/core/CIDRIP;->getInt(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public normalise()Z
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    iget-object v3, p0, Lcom/tknetwork/tunnel/core/CIDRIP;->mIp:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v3}, Lcom/tknetwork/tunnel/core/CIDRIP;->getInt(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v3

    .line 10
    iget v5, p0, Lcom/tknetwork/tunnel/core/CIDRIP;->len:I

    .line 11
    .line 12
    rsub-int/lit8 v5, v5, 0x20

    .line 13
    .line 14
    const-wide v6, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    shl-long v5, v6, v5

    .line 20
    .line 21
    and-long/2addr v5, v3

    .line 22
    cmp-long v7, v5, v3

    .line 23
    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v4, v2, [J

    .line 29
    .line 30
    fill-array-data v4, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-wide/32 v7, 0xd51212

    .line 41
    .line 42
    .line 43
    and-long/2addr v7, v5

    .line 44
    const/16 v4, 0x18

    .line 45
    .line 46
    shr-long/2addr v7, v4

    .line 47
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-wide/32 v7, 0x1264e

    .line 52
    .line 53
    .line 54
    and-long/2addr v7, v5

    .line 55
    const/16 v9, 0x10

    .line 56
    .line 57
    shr-long/2addr v7, v9

    .line 58
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const-wide/32 v8, 0xff00

    .line 63
    .line 64
    .line 65
    and-long/2addr v8, v5

    .line 66
    const/16 v10, 0x8

    .line 67
    .line 68
    shr-long/2addr v8, v10

    .line 69
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    const-wide/16 v9, 0xff

    .line 74
    .line 75
    and-long/2addr v5, v9

    .line 76
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const/4 v6, 0x4

    .line 81
    new-array v6, v6, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object v4, v6, v1

    .line 84
    .line 85
    aput-object v7, v6, v0

    .line 86
    .line 87
    const/4 v1, 0x2

    .line 88
    aput-object v8, v6, v1

    .line 89
    .line 90
    aput-object v5, v6, v2

    .line 91
    .line 92
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, p0, Lcom/tknetwork/tunnel/core/CIDRIP;->mIp:Ljava/lang/String;

    .line 97
    .line 98
    return v0

    .line 99
    :cond_0
    return v1

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        0x62bfbf15ca305187L    # 4.6800710834717355E167
        0x633a8889c8d12581L    # 1.0013587505169037E170
        0x3057024e8c2705caL    # 7.948387904851004E-76
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v3, p0, Lcom/tknetwork/tunnel/core/CIDRIP;->mIp:Ljava/lang/String;

    .line 19
    .line 20
    iget v4, p0, Lcom/tknetwork/tunnel/core/CIDRIP;->len:I

    .line 21
    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v3, v2, v5

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    aput-object v4, v2, v3

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :array_0
    .array-data 8
        0x37040b576de5ce7fL    # 1.123522030128249E-43
        -0x1b64fee646d6819bL    # -4.2745497938446033E176
    .end array-data
.end method
