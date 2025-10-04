.class final Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;
.super Landroidx/camera/video/internal/config/AudioMimeInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;
    }
.end annotation


# instance fields
.field private final compatibleAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

.field private final mimeType:Ljava/lang/String;

.field private final profile:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V
    .locals 0
    .param p3    # Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->mimeType:Ljava/lang/String;

    .line 4
    iput p2, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->profile:I

    .line 5
    iput-object p3, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->compatibleAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    return-void
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
    instance-of v1, p1, Landroidx/camera/video/internal/config/AudioMimeInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/video/internal/config/AudioMimeInfo;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->mimeType:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/video/internal/config/MimeInfo;->getMimeType()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget v1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->profile:I

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/camera/video/internal/config/MimeInfo;->getProfile()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ne v1, v3, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->compatibleAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getCompatibleAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getCompatibleAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 56
    :cond_3
    return v2
.end method

.method public getCompatibleAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->compatibleAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProfile()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->profile:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int v0, v0, v1

    .line 12
    .line 13
    iget v2, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->profile:I

    .line 14
    .line 15
    xor-int/2addr v0, v2

    .line 16
    mul-int v0, v0, v1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->compatibleAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    xor-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AudioMimeInfo{mimeType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->mimeType:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", profile="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->profile:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", compatibleAudioProfile="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;->compatibleAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "}"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
