.class Lcom/tknetwork/tunnel/service/c_05$EventInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# instance fields
.field public flags:I

.field public icon_res_id:I

.field public priority:I

.field public progress:I

.field public res_id:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->res_id:I

    .line 5
    .line 6
    iput p2, p0, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->icon_res_id:I

    .line 7
    .line 8
    iput p3, p0, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->progress:I

    .line 9
    .line 10
    iput p4, p0, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->priority:I

    .line 11
    .line 12
    iput p5, p0, Lcom/tknetwork/tunnel/service/c_05$EventInfo;->flags:I

    .line 13
    .line 14
    return-void
.end method
