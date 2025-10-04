.class public Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;
    }
.end annotation


# instance fields
.field mIpAddresses:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/TreeSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    .line 10
    .line 11
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method


# virtual methods
.method public addIP(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    .line 2
    .line 3
    new-instance v1, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public addIPSplit(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V
    .locals 1

    .line 1
    new-instance v0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->split()[Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    .line 11
    .line 12
    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public addIPv6(Ljava/net/Inet6Address;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    .line 2
    .line 3
    new-instance v1, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Ljava/net/Inet6Address;IZ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public generateIPList()Ljava/util/TreeSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/PriorityQueue;

    .line 2
    .line 3
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/SortedSet;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/TreeSet;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    :goto_0
    if-eqz v2, :cond_9

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 29
    .line 30
    if-eqz v3, :cond_8

    .line 31
    .line 32
    invoke-virtual {v2}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-gez v4, :cond_1

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_1
    invoke-virtual {v2}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/4 v5, 0x1

    .line 61
    const/4 v6, 0x0

    .line 62
    if-eqz v4, :cond_5

    .line 63
    .line 64
    iget v4, v2, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 65
    .line 66
    iget v7, v3, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 67
    .line 68
    if-lt v4, v7, :cond_5

    .line 69
    .line 70
    invoke-static {v2}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-static {v3}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-ne v4, v7, :cond_2

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_2
    invoke-virtual {v3}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->split()[Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    aget-object v4, v3, v5

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_3

    .line 92
    .line 93
    aget-object v4, v3, v5

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_3
    aget-object v4, v3, v6

    .line 99
    .line 100
    invoke-virtual {v4}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v2}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_4

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    aget-object v4, v3, v6

    .line 116
    .line 117
    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-nez v4, :cond_0

    .line 122
    .line 123
    aget-object v3, v3, v6

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_5
    invoke-static {v2}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-static {v3}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-ne v4, v7, :cond_6

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    invoke-virtual {v2}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->split()[Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    aget-object v4, v2, v5

    .line 145
    .line 146
    iget v5, v4, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 147
    .line 148
    iget v7, v3, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 149
    .line 150
    if-ne v5, v7, :cond_7

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    :goto_1
    aget-object v2, v2, v6

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_8
    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    :goto_3
    move-object v2, v3

    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_9
    return-object v1
.end method

.method public getNetworks(Z)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 23
    .line 24
    invoke-static {v2}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ne v3, p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method

.method public getPositiveIPList()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->generateIPList()Ljava/util/TreeSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/Vector;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 25
    .line 26
    invoke-static {v2}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v1
.end method
