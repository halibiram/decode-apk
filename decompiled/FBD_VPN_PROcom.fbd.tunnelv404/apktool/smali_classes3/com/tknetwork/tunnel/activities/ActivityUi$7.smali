.class Lcom/tknetwork/tunnel/activities/ActivityUi$7;
.super Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/ActivityUi;->loadAdview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/activities/ActivityUi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$7;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$7;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroidx/drawerlayout/widget/DrawerLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-wide/16 v0, 0xc8

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    cmpl-float p1, p1, v2

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$7;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroidx/drawerlayout/widget/DrawerLayout;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$7;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroidx/drawerlayout/widget/DrawerLayout;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    :goto_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$7;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroidx/drawerlayout/widget/DrawerLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-wide/16 v0, 0xc8

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    cmpl-float p1, p1, v2

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$7;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroidx/drawerlayout/widget/DrawerLayout;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$7;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroidx/drawerlayout/widget/DrawerLayout;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    :goto_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3

    .line 1
    const v0, 0x3e99999a    # 0.3f

    .line 2
    .line 3
    .line 4
    mul-float v0, v0, p2

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    sub-float/2addr v1, v0

    .line 9
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$7;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$7;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    int-to-float p1, p1

    .line 32
    mul-float p1, p1, p2

    .line 33
    .line 34
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$7;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    int-to-float p2, p2

    .line 45
    mul-float p2, p2, v0

    .line 46
    .line 47
    const/high16 v0, 0x40000000    # 2.0f

    .line 48
    .line 49
    div-float/2addr p2, v0

    .line 50
    sub-float/2addr p1, p2

    .line 51
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$7;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 52
    .line 53
    invoke-static {p2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
