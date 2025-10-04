.class final Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;
.super Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private durationLimitMillis:Ljava/lang/Long;

.field private file:Ljava/io/File;

.field private fileSizeLimit:Ljava/lang/Long;

.field private location:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal;
    .locals 10

    .line 2
    iget-object v0, p0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->fileSizeLimit:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 3
    const-string v0, " fileSizeLimit"

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, ""

    .line 5
    :goto_0
    iget-object v1, p0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->durationLimitMillis:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 6
    const-string v1, " durationLimitMillis"

    .line 7
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_1
    iget-object v1, p0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->file:Ljava/io/File;

    if-nez v1, :cond_2

    .line 9
    const-string v1, " file"

    .line 10
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    new-instance v0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->fileSizeLimit:Ljava/lang/Long;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->durationLimitMillis:Ljava/lang/Long;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->location:Landroid/location/Location;

    iget-object v8, p0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->file:Ljava/io/File;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal;-><init>(JJLandroid/location/Location;Ljava/io/File;Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$1;)V

    return-object v0

    .line 15
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic build()Landroidx/camera/video/OutputOptions$OutputOptionsInternal;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->build()Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal;

    move-result-object v0

    return-object v0
.end method

.method public setDurationLimitMillis(J)Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal$Builder;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->durationLimitMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic setDurationLimitMillis(J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->setDurationLimitMillis(J)Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFile(Ljava/io/File;)Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->file:Ljava/io/File;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null file"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setFileSizeLimit(J)Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal$Builder;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->fileSizeLimit:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic setFileSizeLimit(J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->setFileSizeLimit(J)Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLocation(Landroid/location/Location;)Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal$Builder;
    .locals 0
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->location:Landroid/location/Location;

    return-object p0
.end method

.method public bridge synthetic setLocation(Landroid/location/Location;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/video/AutoValue_FileOutputOptions_FileOutputOptionsInternal$Builder;->setLocation(Landroid/location/Location;)Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal$Builder;

    move-result-object p1

    return-object p1
.end method
