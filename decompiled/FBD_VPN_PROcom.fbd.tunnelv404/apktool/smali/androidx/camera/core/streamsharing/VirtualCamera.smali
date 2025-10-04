.class Landroidx/camera/core/streamsharing/VirtualCamera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraInternal;


# static fields
.field private static final UNSUPPORTED_MESSAGE:Ljava/lang/String; = "Operation not supported by VirtualCamera."


# instance fields
.field private final mParentCamera:Landroidx/camera/core/impl/CameraInternal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

.field private final mVirtualCameraControl:Landroidx/camera/core/streamsharing/VirtualCameraControl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/UseCase$StateChangeCallback;Landroidx/camera/core/streamsharing/StreamSharing$Control;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/UseCase$StateChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/streamsharing/StreamSharing$Control;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mParentCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

    .line 7
    .line 8
    new-instance p2, Landroidx/camera/core/streamsharing/VirtualCameraControl;

    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p2, v0, p3}, Landroidx/camera/core/streamsharing/VirtualCameraControl;-><init>(Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/core/streamsharing/StreamSharing$Control;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraControl:Landroidx/camera/core/streamsharing/VirtualCameraControl;

    .line 18
    .line 19
    new-instance p2, Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p2, p1}, Landroidx/camera/core/streamsharing/VirtualCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public attachUseCases(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Operation not supported by VirtualCamera."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Operation not supported by VirtualCamera."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public detachUseCases(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Operation not supported by VirtualCamera."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final synthetic getCameraControl()Landroidx/camera/core/CameraControl;
    .locals 1

    .line 1
    invoke-static {p0}, L돶뒨뎬땥땜됨듔둠듼듸됐듔땬뎸뎰땔딝땠돠땔딞딹뒀땨땠뒾뒛땠듟돤딹둑돷땐딽딠땨땱땦듐따딽뒵돷뎠듔땩둠땱돰땰됩딠둬돷돰둣도땰뒀땳딠뒨둡뒙뒐되됨돶땅땵뎠땵돨됨뎰돼땜뒀뒾딅땱딃땁땯뒛땋땲뒈땯듬뒻땋듽땡땝듽듐땬둑땬딄딜돵됫딀딅딃돳땔둣땻뎹땣돤땩뎹뒘땁듟듐둣땫듔둥딄둠뒵돨둡;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/CameraControl;

    move-result-object v0

    return-object v0
.end method

.method public getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraControl:Landroidx/camera/core/streamsharing/VirtualCameraControl;

    .line 2
    .line 3
    return-object v0
.end method

.method public final synthetic getCameraInfo()Landroidx/camera/core/CameraInfo;
    .locals 1

    .line 1
    invoke-static {p0}, L돶뒨뎬땥땜됨듔둠듼듸됐듔땬뎸뎰땔딝땠돠땔딞딹뒀땨땠뒾뒛땠듟돤딹둑돷땐딽딠땨땱땦듐따딽뒵돷뎠듔땩둠땱돰땰됩딠둬돷돰둣도땰뒀땳딠뒨둡뒙뒐되됨돶땅땵뎠땵돨됨뎰돼땜뒀뒾딅땱딃땁땯뒛땋땲뒈땯듬뒻땋듽땡땝듽듐땬둑땬딄딜돵됫딀딅딃돳땔둣땻뎹땣돤땩뎹뒘땁듟듐둣땫듔둥딄둠뒵돨둡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/CameraInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCameraState()Landroidx/camera/core/impl/Observable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/impl/Observable<",
            "Landroidx/camera/core/impl/CameraInternal$State;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mParentCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraState()Landroidx/camera/core/impl/Observable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 1

    .line 1
    invoke-static {p0}, L돶뒨뎬땥땜됨듔둠듼듸됐듔땬뎸뎰땔딝땠돠땔딞딹뒀땨땠뒾뒛땠듟돤딹둑돷땐딽딠땨땱땦듐따딽뒵돷뎠듔땩둠땱돰땰됩딠둬돷돰둣도땰뒀땳딠뒨둡뒙뒐되됨돶땅땵뎠땵돨됨뎰돼땜뒀뒾딅땱딃땁땯뒛땋땲뒈땯듬뒻땋듽땡땝듽듐땬둑땬딄딜돵됫딀딅딃돳땔둣땻뎹땣돤땩뎹뒘땁듟듐둣땫듔둥딄둠뒵돨둡;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/impl/CameraConfig;

    move-result-object v0

    return-object v0
.end method

.method public getHasTransform()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic isFrontFacing()Z
    .locals 1

    .line 1
    invoke-static {p0}, L돶뒨뎬땥땜됨듔둠듼듸됐듔땬뎸뎰땔딝땠돠땔딞딹뒀땨땠뒾뒛땠듟돤딹둑돷땐딽딠땨땱땦듐따딽뒵돷뎠듔땩둠땱돰땰됩딠둬돷돰둣도땰뒀땳딠뒨둡뒙뒐되됨돶땅땵뎠땵돨됨뎰돼땜뒀뒾딅땱딃땁땯뒛땋땲뒈땯듬뒻땋듽땡땝듽듐땬둑땬딄딜돵됫딀딅딃돳땔둣땻뎹땣돤땩뎹뒘땁듟듐둣땫듔둥딄둠뒵돨둡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v0

    return v0
.end method

.method public final varargs synthetic isUseCasesCombinationSupported(Z[Landroidx/camera/core/UseCase;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, L돴뒻돸땯땥땯돳들도땻땜딟딌땟딐딹뎸뎸된땜땲뒀땟딻땻땄뎽딨딐돰된땵딝땧뒐됫듐딨딹딠돶딅땅땱두딌땦듽뎸돼뒝땳둥뒈딜들뒼땱딤뒙듬땠돝뒈돝돨땀땤둘둡뒐딜뒷딄듌돳됩뎡뒼돷뎽땠뒬뒷돶땋둔딅땄됐돝땃뎰땋둣뎠땤땥딠돰땧듟딤둬뒵딃땟도돨돠뎸땹땍뒹뒛땯됩듟딤따둠뒼뎸들돸둔땐땮땦땹;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/Camera;Z[Landroidx/camera/core/UseCase;)Z

    move-result p1

    return p1
.end method

.method public final varargs synthetic isUseCasesCombinationSupported([Landroidx/camera/core/UseCase;)Z
    .locals 0

    .line 2
    invoke-static {p0, p1}, L돴뒻돸땯땥땯돳들도땻땜딟딌땟딐딹뎸뎸된땜땲뒀땟딻땻땄뎽딨딐돰된땵딝땧뒐됫듐딨딹딠돶딅땅땱두딌땦듽뎸돼뒝땳둥뒈딜들뒼땱딤뒙듬땠돝뒈돝돨땀땤둘둡뒐딜뒷딄듌돳됩뎡뒼돷뎽땠뒬뒷돶땋둔딅땄됐돝땃뎰땋둣뎠땤땥딠돰땧듟딤둬뒵딃땟도돨돠뎸땹땍뒹뒛땯됩듟딤따둠뒼뎸들돸둔땐땮땦땹;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/Camera;[Landroidx/camera/core/UseCase;)Z

    move-result p1

    return p1
.end method

.method public final varargs synthetic isUseCasesCombinationSupportedByFramework([Landroidx/camera/core/UseCase;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, L돴뒻돸땯땥땯돳들도땻땜딟딌땟딐딹뎸뎸된땜땲뒀땟딻땻땄뎽딨딐돰된땵딝땧뒐됫듐딨딹딠돶딅땅땱두딌땦듽뎸돼뒝땳둥뒈딜들뒼땱딤뒙듬땠돝뒈돝돨땀땤둘둡뒐딜뒷딄듌돳됩뎡뒼돷뎽땠뒬뒷돶땋둔딅땄됐돝땃뎰땋둣뎠땤땥딠돰땧듟딤둬뒵딃땟도돨돠뎸땹땍뒹뒛땯됩듟딤따둠뒼뎸들돸둔땐땮땦땹;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/Camera;[Landroidx/camera/core/UseCase;)Z

    move-result p1

    return p1
.end method

.method public onUseCaseActive(Landroidx/camera/core/UseCase;)V
    .locals 1
    .param p1    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseActive(Landroidx/camera/core/UseCase;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onUseCaseInactive(Landroidx/camera/core/UseCase;)V
    .locals 1
    .param p1    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseInactive(Landroidx/camera/core/UseCase;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onUseCaseReset(Landroidx/camera/core/UseCase;)V
    .locals 1
    .param p1    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseReset(Landroidx/camera/core/UseCase;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onUseCaseUpdated(Landroidx/camera/core/UseCase;)V
    .locals 1
    .param p1    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseUpdated(Landroidx/camera/core/UseCase;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public open()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Operation not supported by VirtualCamera."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public release()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Operation not supported by VirtualCamera."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final synthetic setActiveResumingMode(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, L돶뒨뎬땥땜됨듔둠듼듸됐듔땬뎸뎰땔딝땠돠땔딞딹뒀땨땠뒾뒛땠듟돤딹둑돷땐딽딠땨땱땦듐따딽뒵돷뎠듔땩둠땱돰땰됩딠둬돷돰둣도땰뒀땳딠뒨둡뒙뒐되됨돶땅땵뎠땵돨됨뎰돼땜뒀뒾딅땱딃땁땯뒛땋땲뒈땯듬뒻땋듽땡땝듽듐땬둑땬딄딜돵됫딀딅딃돳땔둣땻뎹땣돤땩뎹뒘땁듟듐둣땫듔둥딄둠뒵돨둡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/core/impl/CameraInternal;Z)V

    return-void
.end method

.method public final synthetic setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, L돶뒨뎬땥땜됨듔둠듼듸됐듔땬뎸뎰땔딝땠돠땔딞딹뒀땨땠뒾뒛땠듟돤딹둑돷땐딽딠땨땱땦듐따딽뒵돷뎠듔땩둠땱돰땰됩딠둬돷돰둣도땰뒀땳딠뒨둡뒙뒐되됨돶땅땵뎠땵돨됨뎰돼땜뒀뒾딅땱딃땁땯뒛땋땲뒈땯듬뒻땋듽땡땝듽듐땬둑땬딄딜돵됫딀딅딃돳땔둣땻뎹땣돤땩뎹뒘땁듟듐둣땫듔둥딄둠뒵돨둡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraConfig;)V

    return-void
.end method

.method public final synthetic setPrimary(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, L돶뒨뎬땥땜됨듔둠듼듸됐듔땬뎸뎰땔딝땠돠땔딞딹뒀땨땠뒾뒛땠듟돤딹둑돷땐딽딠땨땱땦듐따딽뒵돷뎠듔땩둠땱돰땰됩딠둬돷돰둣도땰뒀땳딠뒨둡뒙뒐되됨돶땅땵뎠땵돨됨뎰돼땜뒀뒾딅땱딃땁땯뒛땋땲뒈땯듬뒻땋듽땡땝듽듐땬둑땬딄딜돵됫딀딅딃돳땔둣땻뎹땣돤땩뎹뒘땁듟듐둣땫듔둥딄둠뒵돨둡;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/core/impl/CameraInternal;Z)V

    return-void
.end method

.method public setRotationDegrees(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/camera/core/streamsharing/VirtualCameraInfo;->setVirtualCameraRotationDegrees(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
