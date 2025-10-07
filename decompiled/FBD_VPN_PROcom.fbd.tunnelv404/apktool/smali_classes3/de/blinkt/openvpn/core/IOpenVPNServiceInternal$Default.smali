.class public Lde/blinkt/openvpn/core/IOpenVPNServiceInternal$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/blinkt/openvpn/core/IOpenVPNServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/blinkt/openvpn/core/IOpenVPNServiceInternal;
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

.method public challengeResponse(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public protect(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public stopVPN(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public userPause(Z)V
    .locals 0

    return-void
.end method
