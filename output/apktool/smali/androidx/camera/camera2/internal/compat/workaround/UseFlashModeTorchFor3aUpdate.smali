.class public Landroidx/camera/camera2/internal/compat/workaround/UseFlashModeTorchFor3aUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UseFlashModeTorchFor3aUpdate"


# instance fields
.field private final mTorchFlashRequiredFor3AUpdateQuirk:Landroidx/camera/camera2/internal/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/Quirks;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/Quirks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroidx/camera/camera2/internal/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/camera/camera2/internal/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/workaround/UseFlashModeTorchFor3aUpdate;->mTorchFlashRequiredFor3AUpdateQuirk:Landroidx/camera/camera2/internal/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public shouldUseFlashModeTorch()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/workaround/UseFlashModeTorchFor3aUpdate;->mTorchFlashRequiredFor3AUpdateQuirk:Landroidx/camera/camera2/internal/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;->isFlashModeTorchRequired()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "shouldUseFlashModeTorch: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "UseFlashModeTorchFor3aUpdate"

    .line 29
    .line 30
    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v0
.end method
