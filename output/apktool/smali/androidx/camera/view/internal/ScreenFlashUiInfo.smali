.class public Landroidx/camera/view/internal/ScreenFlashUiInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;
    }
.end annotation


# instance fields
.field private final mProviderType:Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mScreenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;Landroidx/camera/core/ImageCapture$ScreenFlash;)V
    .locals 0
    .param p1    # Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/ImageCapture$ScreenFlash;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/view/internal/ScreenFlashUiInfo;->mProviderType:Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/view/internal/ScreenFlashUiInfo;->mScreenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/camera/view/internal/ScreenFlashUiInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/camera/view/internal/ScreenFlashUiInfo;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/camera/view/internal/ScreenFlashUiInfo;->mProviderType:Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/camera/view/internal/ScreenFlashUiInfo;->mProviderType:Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/camera/view/internal/ScreenFlashUiInfo;->mScreenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/camera/view/internal/ScreenFlashUiInfo;->mScreenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

    .line 22
    .line 23
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
.end method

.method public getProviderType()Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/internal/ScreenFlashUiInfo;->mProviderType:Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenFlash()Landroidx/camera/core/ImageCapture$ScreenFlash;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/internal/ScreenFlashUiInfo;->mScreenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/view/internal/ScreenFlashUiInfo;->mProviderType:Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/view/internal/ScreenFlashUiInfo;->mScreenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object v1, v2, v0

    .line 13
    .line 14
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method
