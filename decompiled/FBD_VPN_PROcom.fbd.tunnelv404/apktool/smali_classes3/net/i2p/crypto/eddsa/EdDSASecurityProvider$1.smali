.class Lnet/i2p/crypto/eddsa/EdDSASecurityProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider$1;->this$0:Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider$1;->this$0:Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->setup()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return-object v0
.end method
