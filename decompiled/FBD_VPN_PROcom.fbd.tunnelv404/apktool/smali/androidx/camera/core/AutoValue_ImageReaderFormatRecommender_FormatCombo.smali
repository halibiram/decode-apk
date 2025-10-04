.class final Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;
.super Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;
.source "SourceFile"


# instance fields
.field private final imageAnalysisFormat:I

.field private final imageCaptureFormat:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    .line 7
    .line 8
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
    instance-of v1, p1, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;

    .line 11
    .line 12
    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;->imageCaptureFormat()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ne v1, v3, :cond_1

    .line 19
    .line 20
    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;->imageAnalysisFormat()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ne v1, p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    .line 31
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

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
    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public imageAnalysisFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public imageCaptureFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FormatCombo{imageCaptureFormat="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", imageAnalysisFormat="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    .line 19
    .line 20
    const-string v2, "}"

    .line 21
    .line 22
    invoke-static {v0, v2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
