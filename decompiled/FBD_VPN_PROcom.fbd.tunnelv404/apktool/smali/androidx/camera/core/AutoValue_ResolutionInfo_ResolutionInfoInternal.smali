.class final Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;
.super Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal$Builder;
    }
.end annotation


# instance fields
.field private final cropRect:Landroid/graphics/Rect;

.field private final resolution:Landroid/util/Size;

.field private final rotationDegrees:I


# direct methods
.method private constructor <init>(Landroid/util/Size;Landroid/graphics/Rect;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->resolution:Landroid/util/Size;

    .line 4
    iput-object p2, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->cropRect:Landroid/graphics/Rect;

    .line 5
    iput p3, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->rotationDegrees:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/Size;Landroid/graphics/Rect;ILandroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;-><init>(Landroid/util/Size;Landroid/graphics/Rect;I)V

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
    instance-of v1, p1, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->resolution:Landroid/util/Size;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;->getResolution()Landroid/util/Size;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->cropRect:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;->getCropRect()Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget v1, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->rotationDegrees:I

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/camera/core/ResolutionInfo$ResolutionInfoInternal;->getRotationDegrees()I

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

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->cropRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResolution()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->resolution:Landroid/util/Size;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRotationDegrees()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->rotationDegrees:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->resolution:Landroid/util/Size;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->hashCode()I

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
    iget-object v2, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->cropRect:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

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
    iget v1, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->rotationDegrees:I

    .line 23
    .line 24
    xor-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ResolutionInfoInternal{resolution="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->resolution:Landroid/util/Size;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", cropRect="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->cropRect:Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", rotationDegrees="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/camera/core/AutoValue_ResolutionInfo_ResolutionInfoInternal;->rotationDegrees:I

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
