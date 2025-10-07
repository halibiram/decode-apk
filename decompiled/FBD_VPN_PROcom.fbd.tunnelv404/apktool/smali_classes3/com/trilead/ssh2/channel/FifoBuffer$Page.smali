.class final Lcom/trilead/ssh2/channel/FifoBuffer$Page;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/channel/FifoBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Page"
.end annotation


# instance fields
.field final buf:[B

.field next:Lcom/trilead/ssh2/channel/FifoBuffer$Page;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array p1, p1, [B

    .line 5
    .line 6
    iput-object p1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Page;->buf:[B

    .line 7
    .line 8
    return-void
.end method
