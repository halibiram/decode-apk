.class public Landroidx/camera/core/impl/LensFacingCameraFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/CameraFilter;


# instance fields
.field private final mLensFacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/core/impl/LensFacingCameraFilter;->mLensFacing:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public filter(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/camera/core/CameraInfo;

    .line 21
    .line 22
    instance-of v2, v1, Landroidx/camera/core/impl/CameraInfoInternal;

    .line 23
    .line 24
    const-string v3, "The camera info doesn\'t contain internal implementation."

    .line 25
    .line 26
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget v3, p0, Landroidx/camera/core/impl/LensFacingCameraFilter;->mLensFacing:I

    .line 34
    .line 35
    if-ne v2, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method

.method public final synthetic getIdentifier()Landroidx/camera/core/impl/Identifier;
    .locals 1

    .line 1
    invoke-static {p0}, L돵딽됨듽든들들딁땱뎨딃둠딄땩땫돵딞뒘돶뎠됨땻뒀땝듽뒹뒝딜듻돰땲땬땀딃딄뒷뎨듻됫땫둣땍둣땄딠땹듌땩돛듽뒈딠뎽뒹땨뒛땰뒾듰됐땧딁드딎돶뒷땐뒨될딌뒋뎡뎸뒼땟뒈뒹뒹딐듼돵돸돝득둬돳땐돸땟땤듔땃땃땧땧땃땐돳땰듟딀땪딌뒤땹땁뎠땁도돛들땸땵딅땩딌딜땬땧땋듼드뒬돳뒘디뒤도둘듽;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/impl/Identifier;

    move-result-object v0

    return-object v0
.end method

.method public getLensFacing()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/LensFacingCameraFilter;->mLensFacing:I

    .line 2
    .line 3
    return v0
.end method
