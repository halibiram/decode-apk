.class public abstract synthetic L돷됩뒝땔땬될득땦땄돤됩땅돰뒝뒐뒾뎬딤뒼딁듌둬됩뎹도든뒝돵딎듸뎰도땻뒤듼땦땀땟딤돳뒋듼딞땮땳딟듐든득딤딻뒤땦도듐듐땰듻땐됴됴뒼땔디땭딃땻뎸뎠딄들뒈뒉뎬뒹뒝땻땄뒋따돶됨됴뒤뒋됨뒨뒀듼딜딀두딌돝듌딹따뒋뎽돵돤돵뒹들되돰딟돰땵땡뒬뒙뎸딟땥득뎬뒬땬든듼땪돷듟듔딄딨땬딠뎻;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/camera2/internal/compat/quirk/CaptureIntentPreviewQuirk;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public static 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/Quirks;)Z
    .locals 1

    .line 1
    const-class v0, Landroidx/camera/camera2/internal/compat/quirk/CaptureIntentPreviewQuirk;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/Quirks;->getAll(Ljava/lang/Class;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/camera/camera2/internal/compat/quirk/CaptureIntentPreviewQuirk;

    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/quirk/CaptureIntentPreviewQuirk;->workaroundByCaptureIntentPreview()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return p0
.end method
