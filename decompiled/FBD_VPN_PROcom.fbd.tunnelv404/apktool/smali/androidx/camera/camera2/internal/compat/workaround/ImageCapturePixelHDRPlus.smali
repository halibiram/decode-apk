.class public Landroidx/camera/camera2/internal/compat/workaround/ImageCapturePixelHDRPlus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/OptIn;
    markerClass = {
        Landroidx/camera/camera2/interop/ExperimentalCamera2Interop;
    }
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
.method public toggleHDRPlus(ILandroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .locals 1
    .param p2    # Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const-class v0, Landroidx/camera/camera2/internal/compat/quirk/ImageCapturePixelHDRPlusQuirk;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/camera2/internal/compat/quirk/ImageCapturePixelHDRPlusQuirk;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎()Landroid/hardware/camera2/CaptureRequest$Key;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p2, p1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-static {}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎()Landroid/hardware/camera2/CaptureRequest$Key;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p2, p1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
