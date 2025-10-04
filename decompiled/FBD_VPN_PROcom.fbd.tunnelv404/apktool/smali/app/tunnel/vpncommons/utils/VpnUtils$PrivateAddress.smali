.class public Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/tunnel/vpncommons/utils/VpnUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateAddress"
.end annotation


# instance fields
.field public final mIpAddress:Ljava/lang/String;

.field public final mPrefixLength:I

.field public final mRouter:Ljava/lang/String;

.field public final mSubnet:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;->mIpAddress:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;->mSubnet:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;->mPrefixLength:I

    .line 9
    .line 10
    iput-object p4, p0, Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;->mRouter:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
