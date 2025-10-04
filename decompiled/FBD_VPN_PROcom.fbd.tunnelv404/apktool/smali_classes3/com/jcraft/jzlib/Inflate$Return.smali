.class Lcom/jcraft/jzlib/Inflate$Return;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jzlib/Inflate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Return"
.end annotation


# instance fields
.field r:I

.field final synthetic this$0:Lcom/jcraft/jzlib/Inflate;


# direct methods
.method public constructor <init>(Lcom/jcraft/jzlib/Inflate;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jzlib/Inflate$Return;->this$0:Lcom/jcraft/jzlib/Inflate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/jcraft/jzlib/Inflate$Return;->r:I

    .line 7
    .line 8
    return-void
.end method
