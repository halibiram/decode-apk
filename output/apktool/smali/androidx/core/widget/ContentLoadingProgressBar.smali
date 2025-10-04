.class public Landroidx/core/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# static fields
.field private static final MIN_DELAY_MS:I = 0x1f4

.field private static final MIN_SHOW_TIME_MS:I = 0x1f4


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field mDismissed:Z

.field mPostedHide:Z

.field mPostedShow:Z

.field mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/core/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 4
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 5
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 6
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 7
    new-instance p1, L둬된돨뒷됨땫듌땋땀듽딃딸든땄딸돼땤딽도둔돤듔돛돳된땥땭듐듔둬듨든땟땁땍땍땃땟듐된디땵뎠뎽딐듌듬뎰땪돝든둘뒝둣돼뎨득뒘딹뒘뒼땫득땀딄딄도돶딝땡뎡듽드딞뒘땠뒀땐듰뒝땧땱돵뎸뎡득땵듰돷둠땪딄듽뎹땪듻땻듌땸됴뒹듔뎻돠돼뒐듨뒨돛돶돰듟땸뒤땁둬땋딞돤딀땵딁들딀돵뎡뎸땠딞디;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, L둬된돨뒷됨땫듌땋땀듽딃딸든땄딸돼땤딽도둔돤듔돛돳된땥땭듐듔둬듨든땟땁땍땍땃땟듐된디땵뎠뎽딐듌듬뎰땪돝든둘뒝둣돼뎨득뒘딹뒘뒼땫득땀딄딄도돶딝땡뎡듽드딞뒘땠뒀땐듰뒝땧땱돵뎸뎡득땵듰돷둠땪딄듽뎹땪듻땻듌땸됴뒹듔뎻돠돼뒐듨뒨돛돶돰듟땸뒤땁둬땋딞돤딀땵딁들딀돵뎡뎸땠딞디;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 8
    new-instance p1, L둬된돨뒷됨땫듌땋땀듽딃딸든땄딸돼땤딽도둔돤듔돛돳된땥땭듐듔둬듨든땟땁땍땍땃땟듐된디땵뎠뎽딐듌듬뎰땪돝든둘뒝둣돼뎨득뒘딹뒘뒼땫득땀딄딄도돶딝땡뎡듽드딞뒘땠뒀땐듰뒝땧땱돵뎸뎡득땵듰돷둠땪딄듽뎹땪듻땻듌땸됴뒹듔뎻돠돼뒐듨뒨돛돶돰듟땸뒤땁둬땋딞돤딀땵딁들딀돵뎡뎸땠딞디;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, L둬된돨뒷됨땫듌땋땀듽딃딸든땄딸돼땤딽도둔돤듔돛돳된땥땭듐듔둬듨든땟땁땍땍땃땟듐된디땵뎠뎽딐듌듬뎰땪돝든둘뒝둣돼뎨득뒘딹뒘뒼땫득땀딄딄도돶딝땡뎡듽드딞뒘땠뒀땐듰뒝땧땱돵뎸뎡득땵듰돷둠땪딄듽뎹땪듻땻듌땸됴뒹듔뎻돠돼뒐듨뒨돛돶돰듟땸뒤땁둬땋딞돤딀땵딁들딀돵뎡뎸땠딞디;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    return-void
.end method

.method private hideOnUiThread()V
    .locals 10
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-wide v3, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 17
    .line 18
    sub-long/2addr v1, v3

    .line 19
    const-wide/16 v5, 0x1f4

    .line 20
    .line 21
    cmp-long v7, v1, v5

    .line 22
    .line 23
    if-gez v7, :cond_1

    .line 24
    .line 25
    const-wide/16 v7, -0x1

    .line 26
    .line 27
    cmp-long v9, v3, v7

    .line 28
    .line 29
    if-nez v9, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-boolean v3, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 37
    .line 38
    sub-long/2addr v5, v1

    .line 39
    invoke-virtual {p0, v3, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iput-wide v1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private removeCallbacks()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private showOnUiThread()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    .line 20
    .line 21
    const-wide/16 v1, 0x1f4

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->showOnUiThread()V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->hideOnUiThread()V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->lambda$new$1()V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->lambda$new$0()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 1
    new-instance v0, L둬된돨뒷됨땫듌땋땀듽딃딸든땄딸돼땤딽도둔돤듔돛돳된땥땭듐듔둬듨든땟땁땍땍땃땟듐된디땵뎠뎽딐듌듬뎰땪돝든둘뒝둣돼뎨득뒘딹뒘뒼땫득땀딄딄도돶딝땡뎡듽드딞뒘땠뒀땐듰뒝땧땱돵뎸뎡득땵듰돷둠땪딄듽뎹땪듻땻듌땸됴뒹듔뎻돠돼뒐듨뒨돛돶돰듟땸뒤땁둬땋딞돤딀땵딁들딀돵뎡뎸땠딞디;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, v1}, L둬된돨뒷됨땫듌땋땀듽딃딸든땄딸돼땤딽도둔돤듔돛돳된땥땭듐듔둬듨든땟땁땍땍땃땟듐된디땵뎠뎽딐듌듬뎰땪돝든둘뒝둣돼뎨득뒘딹뒘뒼땫득땀딄딄도돶딝땡뎡듽드딞뒘땠뒀땐듰뒝땧땱돵뎸뎡득땵듰돷둠땪딄듽뎹땪듻땻듌땸됴뒹듔뎻돠돼뒐듨뒨돛돶돰듟땸뒤땁둬땋딞돤딀땵딁들딀돵뎡뎸땠딞디;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    new-instance v0, L둬된돨뒷됨땫듌땋땀듽딃딸든땄딸돼땤딽도둔돤듔돛돳된땥땭듐듔둬듨든땟땁땍땍땃땟듐된디땵뎠뎽딐듌듬뎰땪돝든둘뒝둣돼뎨득뒘딹뒘뒼땫득땀딄딄도돶딝땡뎡듽드딞뒘땠뒀땐듰뒝땧땱돵뎸뎡득땵듰돷둠땪딄듽뎹땪듻땻듌땸됴뒹듔뎻돠돼뒐듨뒨돛돶돰듟땸뒤땁둬땋딞돤딀땵딁들딀돵뎡뎸땠딞디;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, L둬된돨뒷됨땫듌땋땀듽딃딸든땄딸돼땤딽도둔돤듔돛돳된땥땭듐듔둬듨든땟땁땍땍땃땟듐된디땵뎠뎽딐듌듬뎰땪돝든둘뒝둣돼뎨득뒘딹뒘뒼땫득땀딄딄도돶딝땡뎡듽드딞뒘땠뒀땐듰뒝땧땱돵뎸뎡득땵듰돷둠땪딄듽뎹땪듻땻듌땸됴뒹듔뎻돠돼뒐듨뒨돛돶돰듟땸뒤땁둬땋딞돤딀땵딁들딀돵뎡뎸땠딞디;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
