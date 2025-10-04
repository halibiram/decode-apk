.class final Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;
.super Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private compatibleAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

.field private mimeType:Ljava/lang/String;

.field private profile:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/video/internal/config/AudioMimeInfo;
    .locals 5

    .line 2
    iget-object v0, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    const-string v0, " mimeType"

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, ""

    .line 5
    :goto_0
    iget-object v1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->profile:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 6
    const-string v1, " profile"

    .line 7
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    new-instance v0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;

    iget-object v1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->profile:Ljava/lang/Integer;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->compatibleAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$1;)V

    return-object v0

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic build()Landroidx/camera/video/internal/config/MimeInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->build()Landroidx/camera/video/internal/config/AudioMimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCompatibleAudioProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;
    .locals 0
    .param p1    # Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->compatibleAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->mimeType:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null mimeType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setMimeType(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setProfile(I)Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->profile:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic setProfile(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->setProfile(I)Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;

    move-result-object p1

    return-object p1
.end method
