.class public Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService$LocalBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;


# direct methods
.method public constructor <init>(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService$LocalBinder;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getService()Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService$LocalBinder;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 2
    .line 3
    return-object v0
.end method
