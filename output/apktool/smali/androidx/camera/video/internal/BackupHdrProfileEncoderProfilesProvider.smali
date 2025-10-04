.class public Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupHdrProfileEncoderProfilesProvider"


# instance fields
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

.field private final mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field private final mVideoEncoderInfoFinder:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/arch/core/util/Function;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/EncoderProfilesProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/EncoderProfilesProvider;",
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
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mVideoEncoderInfoFinder:Landroidx/arch/core/util/Function;

    .line 14
    .line 15
    return-void
.end method

.method private appendBackupVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy;II)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 5
    .param p1    # Landroidx/camera/core/impl/EncoderProfilesProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move-object v3, v0

    .line 42
    :goto_0
    invoke-static {v3, p2, p3}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->generateBackupProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;II)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget-object p3, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mVideoEncoderInfoFinder:Landroidx/arch/core/util/Function;

    .line 47
    .line 48
    invoke-static {p2, p3}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->validateOrAdapt(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/arch/core/util/Function;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p2, p3, p1, v1}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_1
    return-object v0
.end method

.method private static deriveCodec(I)I
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Unexpected HDR format: "

    .line 19
    .line 20
    invoke-static {p0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x5

    .line 29
    return p0
.end method

.method private static deriveMediaType(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, L뒛땀딽뒾땱뒹뒛땟딌든땡돠땬됨딝둡듨땤듐딄딜딎둠듨땀돝딁돠되듐딄땸딽딞따땍뒹둔도듟딤둘땳딻땱딃뎡땃돰되뒋딁딀딌땮딝돤뒝뒷듼둣뎰땫돸뎨듻딀뎨땀땫땀딻딅뎨땅딄땍듌두딎뒷뎡뒹딸둡될뒾드땨듼뒬되땫될땫돵땰돵땮뎡땲땰뒼딁뒀뒘땟땋땵듼땤딽뎡뒨듽딀될땣땹땣땍돠딟땝땄듽뎸돤돤돵;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static deriveProfile(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    if-eq p0, v1, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Unexpected HDR format: "

    .line 20
    .line 21
    invoke-static {p0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    const/16 p0, 0x2000

    .line 30
    .line 31
    return p0

    .line 32
    :cond_2
    const/16 p0, 0x1000

    .line 33
    .line 34
    return p0

    .line 35
    :cond_3
    return v1

    .line 36
    :cond_4
    return v0
.end method

.method private static generateBackupProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;II)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 13
    .param p0    # Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getCodec()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getProfile()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eq p1, v3, :cond_1

    .line 22
    .line 23
    invoke-static {p1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->deriveCodec(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->deriveMediaType(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {p1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->deriveProfile(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :cond_1
    move v3, v0

    .line 36
    move-object v4, v1

    .line 37
    move v9, v2

    .line 38
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitrate()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v0, p2, v1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->scaleBitrate(III)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getFrameRate()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getChromaSubsampling()I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    move v10, p2

    .line 67
    move v12, p1

    .line 68
    invoke-static/range {v3 .. v12}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->create(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method private getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x1

    .line 41
    const/16 v2, 0xa

    .line 42
    .line 43
    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->appendBackupVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy;II)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0
.end method

.method private static modifyBitrate(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;I)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 10
    .param p0    # Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getCodec()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getFrameRate()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getProfile()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getChromaSubsampling()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    move v2, p1

    .line 38
    invoke-static/range {v0 .. v9}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->create(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method private static scaleBitrate(III)I
    .locals 5

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return p0

    .line 4
    :cond_0
    new-instance v0, Landroid/util/Rational;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Landroid/util/Rational;-><init>(II)V

    .line 7
    .line 8
    .line 9
    int-to-double v1, p0

    .line 10
    invoke-virtual {v0}, Landroid/util/Rational;->doubleValue()D

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    mul-double v3, v3, v1

    .line 15
    .line 16
    double-to-int v0, v3

    .line 17
    const-string v1, "BackupHdrProfileEncoderProfilesProvider"

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x4

    .line 42
    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    aput-object p0, v3, v4

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    aput-object p1, v3, p0

    .line 49
    .line 50
    const/4 p0, 0x2

    .line 51
    aput-object p2, v3, p0

    .line 52
    .line 53
    const/4 p0, 0x3

    .line 54
    aput-object v2, v3, p0

    .line 55
    .line 56
    const-string p0, "Base Bitrate(%dbps) * Bit Depth Ratio (%d / %d) = %d"

    .line 57
    .line 58
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v1, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return v0
.end method

.method public static validateOrAdapt(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/arch/core/util/Function;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 4
    .param p0    # Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;)",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {p0}, Landroidx/camera/video/internal/config/VideoConfigUtil;->toVideoEncoderConfig(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p1, v1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-interface {p1, v2, v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupportedAllowSwapping(II)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getBitrate()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {p0, p1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->modifyBitrate(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;I)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_0
    return-object p0

    .line 62
    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_1
    return v1
.end method
