.class public Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;
.super Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathRotateSet"
.end annotation


# instance fields
.field mType:Ljava/lang/String;

.field mTypeId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;->mType:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1}, L땭땣딟두돝뒤두땯두둥땳땫땸돤딤듼땄뒨돳돵땟듌딽뒾듻딻듌듌딠땻땭딠딃둬뎡듸둡땅된뒼땋딽땸딤듻땥뎽딁돶듼뒝됨드뎰듬돸듬딤둡땱땪땫됴땜뒻뎰든뒛둡땤딟뒉듸땀됩뒀돝둑뎻든돳도땨딃땪듼듔뒙됫뎠듟돴딁땲땯딄듨딨둡땀듽땨땪도뒷둡뒋돝땄듌땠땫땃뎽돤땰뒝뒬딅뒐땵딨딝듟딸뒤딄뒛땦땹;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;->mTypeId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public setPathRotate(Landroidx/constraintlayout/core/motion/MotionWidget;FDD)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    .line 6
    .line 7
    .line 8
    move-result-wide p3

    .line 9
    invoke-static {p3, p4}, Ljava/lang/Math;->toDegrees(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide p3

    .line 13
    double-to-float p3, p3

    .line 14
    add-float/2addr p2, p3

    .line 15
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setRotationZ(F)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;->mTypeId:I

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p1, v0, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValue(IF)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
