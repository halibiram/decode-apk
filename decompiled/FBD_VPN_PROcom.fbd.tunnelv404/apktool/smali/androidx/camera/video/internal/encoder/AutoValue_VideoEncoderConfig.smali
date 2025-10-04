.class final Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;
.super Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;
    }
.end annotation


# instance fields
.field private final IFrameInterval:I

.field private final bitrate:I

.field private final colorFormat:I

.field private final dataSpace:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

.field private final frameRate:I

.field private final inputTimebase:Landroidx/camera/core/impl/Timebase;

.field private final mimeType:Ljava/lang/String;

.field private final profile:I

.field private final resolution:Landroid/util/Size;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroid/util/Size;ILandroidx/camera/video/internal/encoder/VideoEncoderDataSpace;III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->mimeType:Ljava/lang/String;

    .line 4
    iput p2, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->profile:I

    .line 5
    iput-object p3, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 6
    iput-object p4, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->resolution:Landroid/util/Size;

    .line 7
    iput p5, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->colorFormat:I

    .line 8
    iput-object p6, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->dataSpace:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 9
    iput p7, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->frameRate:I

    .line 10
    iput p8, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->IFrameInterval:I

    .line 11
    iput p9, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->bitrate:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroid/util/Size;ILandroidx/camera/video/internal/encoder/VideoEncoderDataSpace;IIILandroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroid/util/Size;ILandroidx/camera/video/internal/encoder/VideoEncoderDataSpace;III)V

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
    instance-of v1, p1, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->mimeType:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getMimeType()Ljava/lang/String;

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
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->profile:I

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getProfile()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ne v1, v3, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getInputTimebase()Landroidx/camera/core/impl/Timebase;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->resolution:Landroid/util/Size;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getResolution()Landroid/util/Size;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->colorFormat:I

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getColorFormat()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-ne v1, v3, :cond_1

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->dataSpace:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getDataSpace()Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    iget v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->frameRate:I

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getFrameRate()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-ne v1, v3, :cond_1

    .line 83
    .line 84
    iget v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->IFrameInterval:I

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getIFrameInterval()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-ne v1, v3, :cond_1

    .line 91
    .line 92
    iget v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->bitrate:I

    .line 93
    .line 94
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getBitrate()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-ne v1, p1, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    .line 103
    :cond_2
    return v2
.end method

.method public getBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->bitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getColorFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->colorFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public getDataSpace()Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->dataSpace:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->frameRate:I

    .line 2
    .line 3
    return v0
.end method

.method public getIFrameInterval()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->IFrameInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public getInputTimebase()Landroidx/camera/core/impl/Timebase;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProfile()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->profile:I

    .line 2
    .line 3
    return v0
.end method

.method public getResolution()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->resolution:Landroid/util/Size;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->mimeType:Ljava/lang/String;

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
    iget v2, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->profile:I

    .line 14
    .line 15
    xor-int/2addr v0, v2

    .line 16
    mul-int v0, v0, v1

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    xor-int/2addr v0, v2

    .line 25
    mul-int v0, v0, v1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->resolution:Landroid/util/Size;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/util/Size;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    xor-int/2addr v0, v2

    .line 34
    mul-int v0, v0, v1

    .line 35
    .line 36
    iget v2, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->colorFormat:I

    .line 37
    .line 38
    xor-int/2addr v0, v2

    .line 39
    mul-int v0, v0, v1

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->dataSpace:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    xor-int/2addr v0, v2

    .line 48
    mul-int v0, v0, v1

    .line 49
    .line 50
    iget v2, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->frameRate:I

    .line 51
    .line 52
    xor-int/2addr v0, v2

    .line 53
    mul-int v0, v0, v1

    .line 54
    .line 55
    iget v2, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->IFrameInterval:I

    .line 56
    .line 57
    xor-int/2addr v0, v2

    .line 58
    mul-int v0, v0, v1

    .line 59
    .line 60
    iget v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->bitrate:I

    .line 61
    .line 62
    xor-int/2addr v0, v1

    .line 63
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VideoEncoderConfig{mimeType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->mimeType:Ljava/lang/String;

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
    iget v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->profile:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", inputTimebase="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", resolution="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->resolution:Landroid/util/Size;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", colorFormat="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->colorFormat:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", dataSpace="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->dataSpace:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", frameRate="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->frameRate:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", IFrameInterval="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->IFrameInterval:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", bitrate="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->bitrate:I

    .line 89
    .line 90
    const-string v2, "}"

    .line 91
    .line 92
    invoke-static {v0, v2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method
