.class public abstract Lapp/tunnel/vpncommons/connectivity/ConnectionState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/tunnel/vpncommons/connectivity/ConnectionState$ConnectionStateV21AndHigher;,
        Lapp/tunnel/vpncommons/connectivity/ConnectionState$ConnectionStateV20AndLower;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance(Landroid/net/ConnectivityManager;)Lapp/tunnel/vpncommons/connectivity/ConnectionState;
    .locals 1

    .line 1
    new-instance v0, Lapp/tunnel/vpncommons/connectivity/ConnectionState$ConnectionStateV21AndHigher;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lapp/tunnel/vpncommons/connectivity/ConnectionState$ConnectionStateV21AndHigher;-><init>(Landroid/net/ConnectivityManager;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract hasChanged(Lapp/tunnel/vpncommons/connectivity/ConnectionState;)Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isDisconnected()Z
.end method
