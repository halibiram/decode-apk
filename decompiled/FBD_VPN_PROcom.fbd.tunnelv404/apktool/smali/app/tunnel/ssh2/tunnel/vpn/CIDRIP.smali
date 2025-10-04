.class public Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field len:I

.field mIp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->len:I

    .line 6
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->mIp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->mIp:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->calculateLenFromMask(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->len:I

    return-void
.end method

.method public static calculateLenFromMask(Ljava/lang/String;)I
    .locals 7

    .line 1
    invoke-static {p0}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->getInt(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x100000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    add-long/2addr v0, v2

    .line 11
    const/4 p0, 0x0

    .line 12
    :goto_0
    const-wide/16 v2, 0x1

    .line 13
    .line 14
    and-long/2addr v2, v0

    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long v6, v2, v4

    .line 18
    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    add-int/lit8 p0, p0, 0x1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    shr-long/2addr v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-wide v2, 0x1ffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    shr-long/2addr v2, p0

    .line 32
    const/16 v4, 0x20

    .line 33
    .line 34
    cmp-long v5, v0, v2

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sub-int/2addr v4, p0

    .line 40
    :goto_1
    return v4
.end method

.method public static getInt(Ljava/lang/String;)J
    .locals 4

    .line 1
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    const/4 v2, 0x1

    .line 3
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/4 v2, 0x2

    .line 4
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/4 v2, 0x3

    .line 5
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getInt()J
    .locals 2

    .line 6
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->mIp:Ljava/lang/String;

    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->getInt(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public normalise()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->mIp:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->getInt(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget v2, p0, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->len:I

    .line 8
    .line 9
    rsub-int/lit8 v2, v2, 0x20

    .line 10
    .line 11
    const-wide v3, 0xffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    shl-long v2, v3, v2

    .line 17
    .line 18
    and-long/2addr v2, v0

    .line 19
    cmp-long v4, v2, v0

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    const-wide/32 v0, -0x1000000

    .line 26
    .line 27
    .line 28
    and-long/2addr v0, v2

    .line 29
    const/16 v4, 0x18

    .line 30
    .line 31
    shr-long/2addr v0, v4

    .line 32
    const-wide/32 v4, 0xff0000

    .line 33
    .line 34
    .line 35
    and-long/2addr v4, v2

    .line 36
    const/16 v6, 0x10

    .line 37
    .line 38
    shr-long/2addr v4, v6

    .line 39
    const-wide/32 v6, 0xff00

    .line 40
    .line 41
    .line 42
    and-long/2addr v6, v2

    .line 43
    const/16 v8, 0x8

    .line 44
    .line 45
    shr-long/2addr v6, v8

    .line 46
    const-wide/16 v8, 0xff

    .line 47
    .line 48
    and-long/2addr v2, v8

    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "."

    .line 58
    .line 59
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->mIp:Ljava/lang/String;

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 86
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->mIp:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;->len:I

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "/"

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
