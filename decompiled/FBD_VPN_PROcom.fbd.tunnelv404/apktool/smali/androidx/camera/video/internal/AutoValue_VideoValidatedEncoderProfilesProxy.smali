.class final Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;
.super Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
.source "SourceFile"


# instance fields
.field private final audioProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

.field private final defaultDurationSeconds:I

.field private final defaultVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

.field private final recommendedFileFormat:I

.field private final videoProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/List;Ljava/util/List;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;)V
    .locals 0
    .param p5    # Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;",
            ">;",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultDurationSeconds:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->recommendedFileFormat:I

    .line 7
    .line 8
    if-eqz p3, :cond_2

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->audioProfiles:Ljava/util/List;

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    iput-object p4, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->videoProfiles:Ljava/util/List;

    .line 15
    .line 16
    iput-object p5, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 17
    .line 18
    if-eqz p6, :cond_0

    .line 19
    .line 20
    iput-object p6, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 24
    .line 25
    const-string p2, "Null defaultVideoProfile"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 32
    .line 33
    const-string p2, "Null videoProfiles"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 40
    .line 41
    const-string p2, "Null audioProfiles"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 11
    .line 12
    iget v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultDurationSeconds:I

    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ne v1, v3, :cond_2

    .line 19
    .line 20
    iget v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->recommendedFileFormat:I

    .line 21
    .line 22
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ne v1, v3, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->audioProfiles:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->videoProfiles:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->getDefaultAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->getDefaultAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    :goto_0
    iget-object v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->getDefaultVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 v0, 0x0

    .line 87
    :goto_1
    return v0

    .line 88
    :cond_3
    return v2
.end method

.method public getAudioProfiles()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->audioProfiles:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultDurationSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultDurationSeconds:I

    .line 2
    .line 3
    return v0
.end method

.method public getDefaultVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecommendedFileFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->recommendedFileFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoProfiles()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->videoProfiles:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultDurationSeconds:I

    .line 2
    .line 3
    const v1, 0xf4243

    .line 4
    .line 5
    .line 6
    xor-int/2addr v0, v1

    .line 7
    mul-int v0, v0, v1

    .line 8
    .line 9
    iget v2, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->recommendedFileFormat:I

    .line 10
    .line 11
    xor-int/2addr v0, v2

    .line 12
    mul-int v0, v0, v1

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->audioProfiles:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    xor-int/2addr v0, v2

    .line 21
    mul-int v0, v0, v1

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->videoProfiles:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    xor-int/2addr v0, v2

    .line 30
    mul-int v0, v0, v1

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :goto_0
    xor-int/2addr v0, v2

    .line 43
    mul-int v0, v0, v1

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    xor-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VideoValidatedEncoderProfilesProxy{defaultDurationSeconds="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultDurationSeconds:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", recommendedFileFormat="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->recommendedFileFormat:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", audioProfiles="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->audioProfiles:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", videoProfiles="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->videoProfiles:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", defaultAudioProfile="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", defaultVideoProfile="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;->defaultVideoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "}"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
