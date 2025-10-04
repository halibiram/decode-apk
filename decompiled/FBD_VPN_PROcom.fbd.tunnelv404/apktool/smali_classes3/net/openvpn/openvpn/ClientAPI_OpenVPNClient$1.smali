.class Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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
.method public onFinish(ZLjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
