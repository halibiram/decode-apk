.class public abstract synthetic L땨둘듟뒵돶땬땀듰돸뒻딜뒵땰뎬뒘뒈뒼디땝돛땭땳딤땟든딀뎻뒘딎땬돰땃땯뒛땦뒤돨됨딁돛땬돸땭딻땪뎨된뒋돝듽돨됩딄된땭땔뒙딠뒵듽뒵됴딞땝됫뒘된딞듽들둡땲된딻뒻듨땩땱디뎽돷드딟딽땁뒷도땹돠돸듰딌땟땔땭돛땨뒼돤돸딞땝딐딁둡득뎨땧땟듨둠듌돵딠둡된득땐뒨돳듌뎡뒤뎡둬딤땝땫뎽땡;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public static 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/Quirks;)Z
    .locals 1

    .line 1
    const-class v0, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;

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
    check-cast v0, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;

    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;->workaroundBySurfaceProcessing()Z

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
