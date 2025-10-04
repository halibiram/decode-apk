.class public Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;
.super Lcom/tknetwork/tunnel/connectivity/ConnectionState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/connectivity/ConnectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionStateV21AndHigher"
.end annotation


# instance fields
.field private mLteActiveNetworks:I

.field private mWifiActiveNetworks:I


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/connectivity/ConnectionState;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mLteActiveNetworks:I

    .line 6
    .line 7
    iput v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mWifiActiveNetworks:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_3

    .line 16
    .line 17
    aget-object v4, v1, v3

    .line 18
    .line 19
    invoke-virtual {p1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    iget v5, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mWifiActiveNetworks:I

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x1

    .line 38
    if-ne v6, v7, :cond_0

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 v6, 0x0

    .line 43
    :goto_1
    add-int/2addr v5, v6

    .line 44
    iput v5, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mWifiActiveNetworks:I

    .line 45
    .line 46
    iget v5, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mLteActiveNetworks:I

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    :cond_1
    add-int/2addr v5, v7

    .line 56
    iput v5, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mLteActiveNetworks:I

    .line 57
    .line 58
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-void
.end method


# virtual methods
.method public hasChanged(Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;)Z
    .locals 4

    .line 2
    iget v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mWifiActiveNetworks:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget v2, p1, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mWifiActiveNetworks:I

    if-lez v2, :cond_0

    return v1

    .line 3
    :cond_0
    iget v2, p1, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mWifiActiveNetworks:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    return v3

    .line 4
    :cond_1
    iget v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mLteActiveNetworks:I

    iget p1, p1, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mLteActiveNetworks:I

    if-eq v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hasChanged(Lcom/tknetwork/tunnel/connectivity/ConnectionState;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->hasChanged(Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;)Z

    move-result p1

    return p1
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mWifiActiveNetworks:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->mLteActiveNetworks:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public isDisconnected()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV21AndHigher;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method
