.class public Landroidx/camera/core/impl/utils/SurfaceUtil$SurfaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/SurfaceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceInfo"
.end annotation


# instance fields
.field public format:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/camera/core/impl/utils/SurfaceUtil$SurfaceInfo;->format:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/camera/core/impl/utils/SurfaceUtil$SurfaceInfo;->width:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/camera/core/impl/utils/SurfaceUtil$SurfaceInfo;->height:I

    .line 10
    .line 11
    return-void
.end method
