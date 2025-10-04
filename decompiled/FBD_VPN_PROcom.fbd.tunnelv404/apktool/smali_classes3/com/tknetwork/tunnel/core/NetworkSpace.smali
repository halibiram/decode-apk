.class public Lcom/tknetwork/tunnel/core/NetworkSpace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;
    }
.end annotation


# instance fields
.field mIpAddresses:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;",
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
    iput-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addIP(Lcom/tknetwork/tunnel/core/CIDRIP;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    .line 2
    .line 3
    new-instance v1, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;-><init>(Lcom/tknetwork/tunnel/core/CIDRIP;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public addIPSplit(Lcom/tknetwork/tunnel/core/CIDRIP;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;-><init>(Lcom/tknetwork/tunnel/core/CIDRIP;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->split()[Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/tknetwork/tunnel/core/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    .line 2
    .line 3
    new-instance v1, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;-><init>(Ljava/net/Inet6Address;IZ)V

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

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
            "Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/PriorityQueue;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/core/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

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
    check-cast v2, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

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
    check-cast v3, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 29
    .line 30
    if-eqz v3, :cond_8

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getLastAddress()Ljava/math/BigInteger;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getFirstAddress()Ljava/math/BigInteger;

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
    const/4 v5, -0x1

    .line 45
    if-ne v4, v5, :cond_1

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_1
    invoke-virtual {v2}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getFirstAddress()Ljava/math/BigInteger;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, 0x1

    .line 62
    const/4 v6, 0x0

    .line 63
    if-eqz v4, :cond_5

    .line 64
    .line 65
    iget v4, v2, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 66
    .line 67
    iget v7, v3, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 68
    .line 69
    if-lt v4, v7, :cond_5

    .line 70
    .line 71
    invoke-static {v2}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-static {v3}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-ne v4, v7, :cond_2

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->split()[Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    aget-object v4, v3, v5

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_3

    .line 93
    .line 94
    aget-object v4, v3, v5

    .line 95
    .line 96
    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_3
    aget-object v4, v3, v6

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getLastAddress()Ljava/math/BigInteger;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v2}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->getLastAddress()Ljava/math/BigInteger;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_4

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    aget-object v4, v3, v6

    .line 117
    .line 118
    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_0

    .line 123
    .line 124
    aget-object v3, v3, v6

    .line 125
    .line 126
    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    invoke-static {v2}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-static {v3}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;)Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-ne v4, v7, :cond_6

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    invoke-virtual {v2}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->split()[Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    aget-object v4, v2, v5

    .line 146
    .line 147
    iget v5, v4, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 148
    .line 149
    iget v7, v3, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->networkMask:I

    .line 150
    .line 151
    if-ne v5, v7, :cond_7

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    :goto_1
    aget-object v2, v2, v6

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_8
    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :goto_3
    move-object v2, v3

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_9
    return-object v1
.end method

.method public getNetworks(Z)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;",
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
    iget-object v1, p0, Lcom/tknetwork/tunnel/core/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

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
    check-cast v2, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;)Z

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
            "Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/core/NetworkSpace;->generateIPList()Ljava/util/TreeSet;

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
    check-cast v2, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/core/NetworkSpace$ipAddress;)Z

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
