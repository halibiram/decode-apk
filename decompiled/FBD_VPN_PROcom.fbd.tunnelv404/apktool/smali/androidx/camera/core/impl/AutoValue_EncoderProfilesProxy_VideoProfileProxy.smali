.class final Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;
.super Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
.source "SourceFile"


# instance fields
.field private final bitDepth:I

.field private final bitrate:I

.field private final chromaSubsampling:I

.field private final codec:I

.field private final frameRate:I

.field private final hdrFormat:I

.field private final height:I

.field private final mediaType:Ljava/lang/String;

.field private final profile:I

.field private final width:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->codec:I

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->mediaType:Ljava/lang/String;

    .line 9
    .line 10
    iput p3, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->bitrate:I

    .line 11
    .line 12
    iput p4, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->frameRate:I

    .line 13
    .line 14
    iput p5, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->width:I

    .line 15
    .line 16
    iput p6, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->height:I

    .line 17
    .line 18
    iput p7, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->profile:I

    .line 19
    .line 20
    iput p8, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->bitDepth:I

    .line 21
    .line 22
    iput p9, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->chromaSubsampling:I

    .line 23
    .line 24
    iput p10, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->hdrFormat:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 28
    .line 29
    const-string p2, "Null mediaType"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
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
    instance-of v1, p1, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 11
    .line 12
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->codec:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getCodec()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ne v1, v3, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->mediaType:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->bitrate:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitrate()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->frameRate:I

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getFrameRate()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-ne v1, v3, :cond_1

    .line 47
    .line 48
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->width:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ne v1, v3, :cond_1

    .line 55
    .line 56
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->height:I

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-ne v1, v3, :cond_1

    .line 63
    .line 64
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->profile:I

    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getProfile()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-ne v1, v3, :cond_1

    .line 71
    .line 72
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->bitDepth:I

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-ne v1, v3, :cond_1

    .line 79
    .line 80
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->chromaSubsampling:I

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getChromaSubsampling()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-ne v1, v3, :cond_1

    .line 87
    .line 88
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->hdrFormat:I

    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-ne v1, p1, :cond_1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    .line 99
    :cond_2
    return v2
.end method

.method public getBitDepth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->bitDepth:I

    .line 2
    .line 3
    return v0
.end method

.method public getBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->bitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getChromaSubsampling()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->chromaSubsampling:I

    .line 2
    .line 3
    return v0
.end method

.method public getCodec()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->codec:I

    .line 2
    .line 3
    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->frameRate:I

    .line 2
    .line 3
    return v0
.end method

.method public getHdrFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->hdrFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->mediaType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProfile()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->profile:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->codec:I

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
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->mediaType:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    xor-int/2addr v0, v2

    .line 16
    mul-int v0, v0, v1

    .line 17
    .line 18
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->bitrate:I

    .line 19
    .line 20
    xor-int/2addr v0, v2

    .line 21
    mul-int v0, v0, v1

    .line 22
    .line 23
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->frameRate:I

    .line 24
    .line 25
    xor-int/2addr v0, v2

    .line 26
    mul-int v0, v0, v1

    .line 27
    .line 28
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->width:I

    .line 29
    .line 30
    xor-int/2addr v0, v2

    .line 31
    mul-int v0, v0, v1

    .line 32
    .line 33
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->height:I

    .line 34
    .line 35
    xor-int/2addr v0, v2

    .line 36
    mul-int v0, v0, v1

    .line 37
    .line 38
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->profile:I

    .line 39
    .line 40
    xor-int/2addr v0, v2

    .line 41
    mul-int v0, v0, v1

    .line 42
    .line 43
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->bitDepth:I

    .line 44
    .line 45
    xor-int/2addr v0, v2

    .line 46
    mul-int v0, v0, v1

    .line 47
    .line 48
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->chromaSubsampling:I

    .line 49
    .line 50
    xor-int/2addr v0, v2

    .line 51
    mul-int v0, v0, v1

    .line 52
    .line 53
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->hdrFormat:I

    .line 54
    .line 55
    xor-int/2addr v0, v1

    .line 56
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VideoProfileProxy{codec="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->codec:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mediaType="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->mediaType:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", bitrate="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->bitrate:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", frameRate="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->frameRate:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", width="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->width:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", height="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->height:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", profile="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->profile:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", bitDepth="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->bitDepth:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", chromaSubsampling="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->chromaSubsampling:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", hdrFormat="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->hdrFormat:I

    .line 99
    .line 100
    const-string v2, "}"

    .line 101
    .line 102
    invoke-static {v0, v2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method
