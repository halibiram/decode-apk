.class final Landroidx/camera/video/AutoValue_VideoSpec$Builder;
.super Landroidx/camera/video/VideoSpec$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/AutoValue_VideoSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aspectRatio:Ljava/lang/Integer;

.field private bitrate:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private frameRate:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qualitySelector:Landroidx/camera/video/QualitySelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/camera/video/VideoSpec$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroidx/camera/video/VideoSpec;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroidx/camera/video/VideoSpec$Builder;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroidx/camera/video/VideoSpec;->getQualitySelector()Landroidx/camera/video/QualitySelector;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->qualitySelector:Landroidx/camera/video/QualitySelector;

    .line 5
    invoke-virtual {p1}, Landroidx/camera/video/VideoSpec;->getFrameRate()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->frameRate:Landroid/util/Range;

    .line 6
    invoke-virtual {p1}, Landroidx/camera/video/VideoSpec;->getBitrate()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->bitrate:Landroid/util/Range;

    .line 7
    invoke-virtual {p1}, Landroidx/camera/video/VideoSpec;->getAspectRatio()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->aspectRatio:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AutoValue_VideoSpec$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/AutoValue_VideoSpec$Builder;-><init>(Landroidx/camera/video/VideoSpec;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/video/VideoSpec;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->qualitySelector:Landroidx/camera/video/QualitySelector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " qualitySelector"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->frameRate:Landroid/util/Range;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, " frameRate"

    .line 15
    .line 16
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    iget-object v1, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->bitrate:Landroid/util/Range;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    const-string v1, " bitrate"

    .line 25
    .line 26
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    iget-object v1, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->aspectRatio:Ljava/lang/Integer;

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    const-string v1, " aspectRatio"

    .line 35
    .line 36
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    new-instance v0, Landroidx/camera/video/AutoValue_VideoSpec;

    .line 47
    .line 48
    iget-object v3, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->qualitySelector:Landroidx/camera/video/QualitySelector;

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->frameRate:Landroid/util/Range;

    .line 51
    .line 52
    iget-object v5, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->bitrate:Landroid/util/Range;

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->aspectRatio:Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/4 v7, 0x0

    .line 61
    move-object v2, v0

    .line 62
    invoke-direct/range {v2 .. v7}, Landroidx/camera/video/AutoValue_VideoSpec;-><init>(Landroidx/camera/video/QualitySelector;Landroid/util/Range;Landroid/util/Range;ILandroidx/camera/video/AutoValue_VideoSpec$1;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v2, "Missing required properties:"

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1
.end method

.method public setAspectRatio(I)Landroidx/camera/video/VideoSpec$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->aspectRatio:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setBitrate(Landroid/util/Range;)Landroidx/camera/video/VideoSpec$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/video/VideoSpec$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->bitrate:Landroid/util/Range;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null bitrate"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setFrameRate(Landroid/util/Range;)Landroidx/camera/video/VideoSpec$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/video/VideoSpec$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->frameRate:Landroid/util/Range;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null frameRate"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setQualitySelector(Landroidx/camera/video/QualitySelector;)Landroidx/camera/video/VideoSpec$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->qualitySelector:Landroidx/camera/video/QualitySelector;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null qualitySelector"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
