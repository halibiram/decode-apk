.class public Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# instance fields
.field private mExtraQualityToEncoderProfiles:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/EncoderProfilesProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/impl/Quirks;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/arch/core/util/Function;)V
    .locals 3
    .param p1    # Landroidx/camera/core/impl/EncoderProfilesProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/Quirks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/EncoderProfilesProvider;",
            "Landroidx/camera/core/impl/Quirks;",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 5
    .line 6
    const-class v0, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroidx/camera/core/impl/Quirks;->getAll(Ljava/lang/Class;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;

    .line 36
    .line 37
    invoke-virtual {p2, p3, p1, p4}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;->getExtraEncoderProfiles(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/arch/core/util/Function;)Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-instance p2, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->mExtraQualityToEncoderProfiles:Ljava/util/Map;

    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method private getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->mExtraQualityToEncoderProfiles:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->mExtraQualityToEncoderProfiles:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method
