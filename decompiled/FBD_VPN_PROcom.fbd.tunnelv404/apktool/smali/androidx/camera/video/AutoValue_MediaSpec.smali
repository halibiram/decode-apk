.class final Landroidx/camera/video/AutoValue_MediaSpec;
.super Landroidx/camera/video/MediaSpec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/AutoValue_MediaSpec$Builder;
    }
.end annotation


# instance fields
.field private final audioSpec:Landroidx/camera/video/AudioSpec;

.field private final outputFormat:I

.field private final videoSpec:Landroidx/camera/video/VideoSpec;


# direct methods
.method private constructor <init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/camera/video/MediaSpec;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/camera/video/AutoValue_MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    .line 4
    iput-object p2, p0, Landroidx/camera/video/AutoValue_MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    .line 5
    iput p3, p0, Landroidx/camera/video/AutoValue_MediaSpec;->outputFormat:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;ILandroidx/camera/video/AutoValue_MediaSpec$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/AutoValue_MediaSpec;-><init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;I)V

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
    instance-of v1, p1, Landroidx/camera/video/MediaSpec;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/video/MediaSpec;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/camera/video/MediaSpec;->getAudioSpec()Landroidx/camera/video/AudioSpec;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget v1, p0, Landroidx/camera/video/AutoValue_MediaSpec;->outputFormat:I

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne v1, p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    .line 47
    :cond_2
    return v2
.end method

.method public getAudioSpec()Landroidx/camera/video/AudioSpec;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutputFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/AutoValue_MediaSpec;->outputFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoSpec()Landroidx/camera/video/VideoSpec;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Landroidx/camera/video/AutoValue_MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    xor-int/2addr v0, v2

    .line 20
    mul-int v0, v0, v1

    .line 21
    .line 22
    iget v1, p0, Landroidx/camera/video/AutoValue_MediaSpec;->outputFormat:I

    .line 23
    .line 24
    xor-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public toBuilder()Landroidx/camera/video/MediaSpec$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroidx/camera/video/AutoValue_MediaSpec$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/camera/video/AutoValue_MediaSpec$Builder;-><init>(Landroidx/camera/video/MediaSpec;Landroidx/camera/video/AutoValue_MediaSpec$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MediaSpec{videoSpec="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", audioSpec="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/video/AutoValue_MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", outputFormat="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/camera/video/AutoValue_MediaSpec;->outputFormat:I

    .line 29
    .line 30
    const-string v2, "}"

    .line 31
    .line 32
    invoke-static {v0, v2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
