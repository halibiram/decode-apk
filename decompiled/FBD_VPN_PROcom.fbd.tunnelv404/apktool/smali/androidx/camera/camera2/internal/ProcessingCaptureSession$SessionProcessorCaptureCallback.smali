.class Landroidx/camera/camera2/internal/ProcessingCaptureSession$SessionProcessorCaptureCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/ProcessingCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionProcessorCaptureCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(JILandroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0
    .param p4    # Landroidx/camera/core/impl/CameraCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 0

    return-void
.end method

.method public final synthetic onCaptureProcessProgressed(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땝뎠돸땫땃뒼땳뎡딄뒋뎰뒵드딞땡뒋된땃돠뎻딞듻뒀뒵뎡듐딐딠돨땍땍뒹됨뒻둬딌돴뒋됴뒘딃딠딄뒝둣땳딝됐든뒨듐돨땳땮딹땥딄땥땱둔뎠둡뒨뒐듬둡돰딃뒷뒐듰땦땩딽땵됩땥듬듽뒨뒀땣땮듐됴땝땨땭딽돝둣둡돝딹딃땦땱됩딹됨둑딨딅돛딜돠듌땫땸돤뒝둑뎹뒉땻뎻땫두딀뒙됴둡뒙뒤땥드뒀돼딤될;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;I)V

    return-void
.end method

.method public onCaptureProcessStarted(I)V
    .locals 0

    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 0

    return-void
.end method

.method public onCaptureSequenceCompleted(I)V
    .locals 0

    return-void
.end method

.method public onCaptureStarted(IJ)V
    .locals 0

    return-void
.end method
