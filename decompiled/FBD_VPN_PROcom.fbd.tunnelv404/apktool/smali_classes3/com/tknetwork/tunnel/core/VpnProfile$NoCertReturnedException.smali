.class Lcom/tknetwork/tunnel/core/VpnProfile$NoCertReturnedException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/core/VpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoCertReturnedException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/core/VpnProfile;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/core/VpnProfile;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/core/VpnProfile$NoCertReturnedException;->this$0:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
