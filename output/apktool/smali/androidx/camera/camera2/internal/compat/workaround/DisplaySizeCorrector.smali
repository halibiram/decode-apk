.class public Landroidx/camera/camera2/internal/compat/workaround/DisplaySizeCorrector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mSmallDisplaySizeQuirk:Landroidx/camera/camera2/internal/compat/quirk/SmallDisplaySizeQuirk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroidx/camera/camera2/internal/compat/quirk/SmallDisplaySizeQuirk;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/camera/camera2/internal/compat/quirk/SmallDisplaySizeQuirk;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/workaround/DisplaySizeCorrector;->mSmallDisplaySizeQuirk:Landroidx/camera/camera2/internal/compat/quirk/SmallDisplaySizeQuirk;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getDisplaySize()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/workaround/DisplaySizeCorrector;->mSmallDisplaySizeQuirk:Landroidx/camera/camera2/internal/compat/quirk/SmallDisplaySizeQuirk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/quirk/SmallDisplaySizeQuirk;->getDisplaySize()Landroid/util/Size;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method
