.class final Landroidx/camera/core/AndroidImageProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/AndroidImageProxy$PlaneProxy;
    }
.end annotation


# instance fields
.field private final mImage:Landroid/media/Image;

.field private final mImageInfo:Landroidx/camera/core/ImageInfo;

.field private final mPlanes:[Landroidx/camera/core/AndroidImageProxy$PlaneProxy;


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 6
    .param p1    # Landroid/media/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/AndroidImageProxy;->mImage:Landroid/media/Image;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    array-length v2, v0

    .line 14
    new-array v2, v2, [Landroidx/camera/core/AndroidImageProxy$PlaneProxy;

    .line 15
    .line 16
    iput-object v2, p0, Landroidx/camera/core/AndroidImageProxy;->mPlanes:[Landroidx/camera/core/AndroidImageProxy$PlaneProxy;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    array-length v3, v0

    .line 20
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/camera/core/AndroidImageProxy;->mPlanes:[Landroidx/camera/core/AndroidImageProxy$PlaneProxy;

    .line 23
    .line 24
    new-instance v4, Landroidx/camera/core/AndroidImageProxy$PlaneProxy;

    .line 25
    .line 26
    aget-object v5, v0, v2

    .line 27
    .line 28
    invoke-direct {v4, v5}, Landroidx/camera/core/AndroidImageProxy$PlaneProxy;-><init>(Landroid/media/Image$Plane;)V

    .line 29
    .line 30
    .line 31
    aput-object v4, v3, v2

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-array v0, v1, [Landroidx/camera/core/AndroidImageProxy$PlaneProxy;

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/camera/core/AndroidImageProxy;->mPlanes:[Landroidx/camera/core/AndroidImageProxy$PlaneProxy;

    .line 39
    .line 40
    :cond_1
    invoke-static {}, Landroidx/camera/core/impl/TagBundle;->emptyBundle()Landroidx/camera/core/impl/TagBundle;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    new-instance p1, Landroid/graphics/Matrix;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v2, v3, v1, p1}, Landroidx/camera/core/ImmutableImageInfo;->create(Landroidx/camera/core/impl/TagBundle;JILandroid/graphics/Matrix;)Landroidx/camera/core/ImageInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Landroidx/camera/core/AndroidImageProxy;->mImageInfo:Landroidx/camera/core/ImageInfo;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy;->mImage:Landroid/media/Image;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy;->mImage:Landroid/media/Image;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy;->mImage:Landroid/media/Image;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy;->mImage:Landroid/media/Image;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getImage()Landroid/media/Image;
    .locals 1
    .annotation build Landroidx/camera/core/ExperimentalGetImage;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy;->mImage:Landroid/media/Image;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageInfo()Landroidx/camera/core/ImageInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy;->mImageInfo:Landroidx/camera/core/ImageInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy;->mPlanes:[Landroidx/camera/core/AndroidImageProxy$PlaneProxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy;->mImage:Landroid/media/Image;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy;->mImage:Landroid/media/Image;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic toBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {p0}, L듽뒤돼뎽뎰땦딤딄뎻뎡뎨듼든딟듼뒐땡땱돸뎬땲뒬땹뎠뎸든딤땯딃딄뒐땅땣땣돝듰딅땪뎬뎠듬딞돼뒈땯뒝땤듨땧뒻둠둬드땹뒙딜땠땁됐뒋뎸드듻되뒀뒬땍둬땳땬땫딀땁뒈뒀땪땯뒝뎽됨딀돝땵땍땯딨땀뒈둠뎡두듽뒉뒝듌돴듬돸돷듟딠땠뒼뒵뒋딜땟둥둡디뎰딌땰딻돴땮뎻됐땐딃뒛뒹뒋땬딤딄딄됐땃뒻;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/ImageProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
