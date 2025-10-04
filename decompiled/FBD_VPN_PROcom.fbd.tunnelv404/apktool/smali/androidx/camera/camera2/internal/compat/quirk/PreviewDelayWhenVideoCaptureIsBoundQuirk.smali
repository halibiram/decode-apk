.class public Landroidx/camera/camera2/internal/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/internal/compat/quirk/CaptureIntentPreviewQuirk;
.implements Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;


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

.method public static load()Z
    .locals 2

    .line 1
    const-string v0, "Huawei"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method


# virtual methods
.method public final synthetic workaroundByCaptureIntentPreview()Z
    .locals 1

    .line 1
    invoke-static {p0}, L돷됩뒝땔땬될득땦땄돤됩땅돰뒝뒐뒾뎬딤뒼딁듌둬됩뎹도든뒝돵딎듸뎰도땻뒤듼땦땀땟딤돳뒋듼딞땮땳딟듐든득딤딻뒤땦도듐듐땰듻땐됴됴뒼땔디땭딃땻뎸뎠딄들뒈뒉뎬뒹뒝땻땄뒋따돶됨됴뒤뒋됨뒨뒀듼딜딀두딌돝듌딹따뒋뎽돵돤돵뒹들되돰딟돰땵땡뒬뒙뎸딟땥득뎬뒬땬든듼땪돷듟듔딄딨땬딠뎻;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/camera2/internal/compat/quirk/CaptureIntentPreviewQuirk;)Z

    move-result v0

    return v0
.end method

.method public final synthetic workaroundBySurfaceProcessing()Z
    .locals 1

    .line 1
    invoke-static {p0}, L땨둘듟뒵돶땬땀듰돸뒻딜뒵땰뎬뒘뒈뒼디땝돛땭땳딤땟든딀뎻뒘딎땬돰땃땯뒛땦뒤돨됨딁돛땬돸땭딻땪뎨된뒋돝듽돨됩딄된땭땔뒙딠뒵듽뒵됴딞땝됫뒘된딞듽들둡땲된딻뒻듨땩땱디뎽돷드딟딽땁뒷도땹돠돸듰딌땟땔땭돛땨뒼돤돸딞땝딐딁둡득뎨땧땟듨둠듌돵딠둡된득땐뒨돳듌뎡뒤뎡둬딤땝땫뎽땡;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;)Z

    move-result v0

    return v0
.end method
