.class public Lcom/tknetwork/tunnel/service/c_05$MergedProfile;
.super Lcom/tknetwork/tunnel/service/c_05$Profile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MergedProfile"
.end annotation


# instance fields
.field public profile_content:Ljava/lang/String;

.field final synthetic this$0:Lcom/tknetwork/tunnel/service/c_05;


# direct methods
.method public synthetic constructor <init>(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Ljava/lang/String;Lnet/openvpn/openvpn/ClientAPI_EvalConfig;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tknetwork/tunnel/service/c_05$MergedProfile;-><init>(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ClientAPI_EvalConfig;)V

    return-void
.end method

.method private constructor <init>(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ClientAPI_EvalConfig;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$MergedProfile;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/tknetwork/tunnel/service/c_05$Profile;-><init>(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ClientAPI_EvalConfig;)V

    return-void
.end method
