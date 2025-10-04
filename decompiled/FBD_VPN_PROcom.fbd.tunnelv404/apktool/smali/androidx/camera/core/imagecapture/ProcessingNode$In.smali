.class abstract Landroidx/camera/core/imagecapture/ProcessingNode$In;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/imagecapture/ProcessingNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "In"
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

.method public static of(II)Landroidx/camera/core/imagecapture/ProcessingNode$In;
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/core/processing/Edge;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/camera/core/processing/Edge;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroidx/camera/core/processing/Edge;

    .line 9
    .line 10
    invoke-direct {v2}, Landroidx/camera/core/processing/Edge;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;-><init>(Landroidx/camera/core/processing/Edge;Landroidx/camera/core/processing/Edge;II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public abstract getEdge()Landroidx/camera/core/processing/Edge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputFormat()I
.end method

.method public abstract getOutputFormat()I
.end method

.method public abstract getPostviewEdge()Landroidx/camera/core/processing/Edge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;",
            ">;"
        }
    .end annotation
.end method
