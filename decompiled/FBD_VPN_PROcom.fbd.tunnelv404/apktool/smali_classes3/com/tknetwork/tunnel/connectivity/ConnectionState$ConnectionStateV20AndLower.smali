.class public Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;
.super Lcom/tknetwork/tunnel/connectivity/ConnectionState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/connectivity/ConnectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionStateV20AndLower"
.end annotation


# instance fields
.field private hasLte:Z

.field private hasWifi:Z


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/connectivity/ConnectionState;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasLte:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasWifi:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasWifi:Z

    .line 25
    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasLte:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public hasChanged(Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;)Z
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasWifi:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p1, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasWifi:Z

    if-eqz v2, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v2, p1, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasWifi:Z

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    return v3

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasLte:Z

    iget-boolean p1, p1, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasLte:Z

    if-eq v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hasChanged(Lcom/tknetwork/tunnel/connectivity/ConnectionState;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasChanged(Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;)Z

    move-result p1

    return p1
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasWifi:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->hasLte:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

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
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/connectivity/ConnectionState$ConnectionStateV20AndLower;->isConnected()Z

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
