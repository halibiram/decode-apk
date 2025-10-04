.class public final Lcom/google/common/net/InetAddresses$TeredoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/InetAddresses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TeredoInfo"
.end annotation


# instance fields
.field private final client:Ljava/net/Inet4Address;

.field private final flags:I

.field private final port:I

.field private final server:Ljava/net/Inet4Address;


# direct methods
.method public constructor <init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V
    .locals 6
    .param p1    # Ljava/net/Inet4Address;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/Inet4Address;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    const v2, 0xffff

    .line 7
    .line 8
    .line 9
    if-ltz p3, :cond_0

    .line 10
    .line 11
    if-gt p3, v2, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v5, 0x7

    .line 19
    new-array v5, v5, [J

    .line 20
    .line 21
    fill-array-data v5, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v3, v4, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    if-ltz p4, :cond_1

    .line 35
    .line 36
    if-gt p4, v2, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    new-array v2, v2, [J

    .line 44
    .line 45
    fill-array-data v2, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1, p4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/google/common/net/InetAddresses;->access$000()Ljava/net/Inet4Address;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/net/Inet4Address;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->server:Ljava/net/Inet4Address;

    .line 69
    .line 70
    invoke-static {}, Lcom/google/common/net/InetAddresses;->access$000()Ljava/net/Inet4Address;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p2, p1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Ljava/net/Inet4Address;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->client:Ljava/net/Inet4Address;

    .line 81
    .line 82
    iput p3, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->port:I

    .line 83
    .line 84
    iput p4, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->flags:I

    .line 85
    .line 86
    return-void

    .line 87
    :array_0
    .array-data 8
        0x1bd2b8930e4a99adL    # 1.182691362844237E-174
        0x2197958a56f7fe05L    # 7.377720672838088E-147
        -0x7a51818ae17c92e4L
        -0x55e7f5648cc23eb0L    # -6.551517601101475E-106
        -0x7edc4c1bfcfc95b4L    # -3.591369368693053E-303
        0x199dab332dd2ed1cL
        0x713ed36f3af4cbbdL    # 3.1364082752340212E237
    .end array-data

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
        0x42268063e24fced9L    # 4.8321655079904E10
        -0x6fe4da75284535aaL
        0x52c5b9a8049596d6L    # 5.531881841674316E90
        -0x6fa6f82e42fd78L
        -0x76a49048dd18377L    # -7.341949751909435E272
        -0x1bb652996561d2c3L    # -1.2701577016496984E175
        -0x66200c604822224eL
        0x1d44e754d82c0a9dL    # 1.107782008408692E-167
    .end array-data
.end method


# virtual methods
.method public getClient()Ljava/net/Inet4Address;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->client:Ljava/net/Inet4Address;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->flags:I

    .line 2
    .line 3
    return v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->port:I

    .line 2
    .line 3
    return v0
.end method

.method public getServer()Ljava/net/Inet4Address;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->server:Ljava/net/Inet4Address;

    .line 2
    .line 3
    return-object v0
.end method
