.class public Lde/blinkt/openvpn/core/IServiceStatus$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/blinkt/openvpn/core/IServiceStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/blinkt/openvpn/core/IServiceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
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


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastConnectedVPN()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrafficHistory()Lde/blinkt/openvpn/core/TrafficHistory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerStatusCallback(Lde/blinkt/openvpn/core/IStatusCallbacks;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setCachedPassword(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unregisterStatusCallback(Lde/blinkt/openvpn/core/IStatusCallbacks;)V
    .locals 0

    return-void
.end method
