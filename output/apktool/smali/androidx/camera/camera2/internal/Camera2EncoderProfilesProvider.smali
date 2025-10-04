.class public Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider$Api31Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera2EncoderProfilesProvider"


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private final mCameraQuirks:Landroidx/camera/core/impl/Quirks;

.field private final mEncoderProfilesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/EncoderProfilesProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasValidCameraId:Z

.field private final mIntCameraId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/camera/core/impl/Quirks;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/Quirks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mCameraId:Ljava/lang/String;

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Camera id is not an integer: "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, ", unable to create Camera2EncoderProfilesProvider"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "Camera2EncoderProfilesProvider"

    .line 39
    .line 40
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    const/4 p1, -0x1

    .line 45
    :goto_0
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mHasValidCameraId:Z

    .line 46
    .line 47
    iput p1, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mIntCameraId:I

    .line 48
    .line 49
    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mCameraQuirks:Landroidx/camera/core/impl/Quirks;

    .line 50
    .line 51
    return-void
.end method

.method private createProfilesFromCamcorderProfile(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget v1, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mIntCameraId:I

    .line 3
    .line 4
    invoke-static {v1, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "Unable to get CamcorderProfile by quality: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v2, "Camera2EncoderProfilesProvider"

    .line 25
    .line 26
    invoke-static {v2, p1, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    move-object p1, v0

    .line 30
    :goto_0
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-static {p1}, Landroidx/camera/core/impl/compat/EncoderProfilesProxyCompat;->from(Landroid/media/CamcorderProfile;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_0
    return-object v0
.end method

.method private findHighestQualityProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/impl/EncoderProfilesProvider;->QUALITY_HIGH_TO_LOW:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method private findLowestQualityProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/impl/EncoderProfilesProvider;->QUALITY_HIGH_TO_LOW:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method private getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mCameraId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider$Api31Impl;->getAll(Ljava/lang/String;I)Landroid/media/EncoderProfiles;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    const-class v1, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Camera2EncoderProfilesProvider"

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string v0, "EncoderProfiles contains invalid video profiles, use CamcorderProfile to create EncoderProfilesProxy."

    .line 28
    .line 29
    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroidx/camera/core/impl/compat/EncoderProfilesProxyCompat;->from(Landroid/media/EncoderProfiles;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object p1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "Failed to create EncoderProfilesProxy, EncoderProfiles might  contain invalid video profiles. Use CamcorderProfile instead."

    .line 40
    .line 41
    invoke-static {v2, v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->createProfilesFromCamcorderProfile(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method private isEncoderProfilesResolutionValidInQuirk(Landroidx/camera/core/impl/EncoderProfilesProxy;)Z
    .locals 3
    .param p1    # Landroidx/camera/core/impl/EncoderProfilesProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mCameraQuirks:Landroidx/camera/core/impl/Quirks;

    .line 2
    .line 3
    const-class v1, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;->getSupportedResolutions()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Landroid/util/Size;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mHasValidCameraId:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mIntCameraId:I

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_2
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->isEncoderProfilesResolutionValidInQuirk(Landroidx/camera/core/impl/EncoderProfilesProxy;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    if-ne p1, v0, :cond_3

    .line 55
    .line 56
    invoke-direct {p0}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->findHighestQualityProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    if-nez p1, :cond_5

    .line 62
    .line 63
    invoke-direct {p0}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->findLowestQualityProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    move-object v1, v0

    .line 69
    :cond_5
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-object v1
.end method

.method public hasProfile(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mHasValidCameraId:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_1
    return v1
.end method
