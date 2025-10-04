.class public abstract synthetic L땰딠딻된돰뎡땩땮돰듼드땧둥듻돨든듻땄뒬뒤돷듸땹둘땹듐둔둥둑딤뒤땠뒻돛딝딄됴땄땦딃둔됩뒼됴딃뒈딸든둑딁뎹뎻돶듨됫땬듼뒻둣딸돝됫딸들뒵땁돳땐듐땝뒤듟땠뒹돰딐듔든둡두땰둣땭땥뒼뒝뒝뎡딐듼땟뒘딟둥되땫땸땥땩딜뒙뎠됨됩뎽땣뒨땦땦둣딌돤뒋둑듻됐땹뒋땥땀뎹땪땵두뒛둣됐땝땋돵;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;II)Z
    .locals 1

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupported(II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->canSwapWidthHeight()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p2, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupported(II)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
.end method
