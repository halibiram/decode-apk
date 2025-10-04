.class public abstract Landroidx/camera/core/ForwardingImageProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageProxy;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;
    }
.end annotation


# instance fields
.field protected final mImage:Landroidx/camera/core/ImageProxy;

.field private final mLock:Ljava/lang/Object;

.field private final mOnImageCloseListeners:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/ImageProxy;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mOnImageCloseListeners:Ljava/util/Set;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public addOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V
    .locals 2
    .param p1    # Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ForwardingImageProxy;->mOnImageCloseListeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->close()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/camera/core/ForwardingImageProxy;->notifyOnImageCloseListeners()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getCropRect()Landroid/graphics/Rect;

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
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getFormat()I

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
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getImage()Landroid/media/Image;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/camera/core/ExperimentalGetImage;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getImageInfo()Landroidx/camera/core/ImageInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public notifyOnImageCloseListeners()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/camera/core/ForwardingImageProxy;->mOnImageCloseListeners:Ljava/util/Set;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;

    .line 27
    .line 28
    invoke-interface {v1, p0}, Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;->onImageClose(Landroidx/camera/core/ImageProxy;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v1
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

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
