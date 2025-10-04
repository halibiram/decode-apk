.class final Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;
.super Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitrate:Ljava/lang/Integer;

.field private channelCount:Ljava/lang/Integer;

.field private inputTimebase:Landroidx/camera/core/impl/Timebase;

.field private mimeType:Ljava/lang/String;

.field private profile:Ljava/lang/Integer;

.field private sampleRate:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public autoBuild()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " mimeType"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->profile:Ljava/lang/Integer;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, " profile"

    .line 15
    .line 16
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    const-string v1, " inputTimebase"

    .line 25
    .line 26
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->bitrate:Ljava/lang/Integer;

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    const-string v1, " bitrate"

    .line 35
    .line 36
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_3
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->sampleRate:Ljava/lang/Integer;

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    const-string v1, " sampleRate"

    .line 45
    .line 46
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_4
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->channelCount:Ljava/lang/Integer;

    .line 51
    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    const-string v1, " channelCount"

    .line 55
    .line 56
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    new-instance v0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig;

    .line 67
    .line 68
    iget-object v3, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->mimeType:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->profile:Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    iget-object v5, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 77
    .line 78
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->bitrate:Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->sampleRate:Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->channelCount:Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    const/4 v9, 0x0

    .line 97
    move-object v2, v0

    .line 98
    invoke-direct/range {v2 .. v9}, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;IIILandroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$1;)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string v2, "Missing required properties:"

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v1
.end method

.method public setBitrate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->bitrate:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setChannelCount(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->channelCount:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setInputTimebase(Landroidx/camera/core/impl/Timebase;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null inputTimebase"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->mimeType:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null mimeType"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setProfile(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->profile:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setSampleRate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->sampleRate:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method
