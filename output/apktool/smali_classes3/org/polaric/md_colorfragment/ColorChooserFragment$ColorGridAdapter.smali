.class Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/polaric/md_colorfragment/ColorChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorGridAdapter"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field final synthetic this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;


# direct methods
.method public constructor <init>(Lorg/polaric/md_colorfragment/ColorChooserFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->activity:Landroid/app/Activity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lorg/polaric/md_colorfragment/ColorChooserFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lorg/polaric/md_colorfragment/ColorChooserFragment;)[[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 16
    .line 17
    invoke-static {v1}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lorg/polaric/md_colorfragment/ColorChooserFragment;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    aget-object v0, v0, v1

    .line 22
    .line 23
    array-length v0, v0

    .line 24
    return v0

    .line 25
    :cond_0
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 26
    .line 27
    invoke-static {v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lorg/polaric/md_colorfragment/ColorChooserFragment;)[I

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    array-length v0, v0

    .line 32
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lorg/polaric/md_colorfragment/ColorChooserFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lorg/polaric/md_colorfragment/ColorChooserFragment;)[[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 16
    .line 17
    invoke-static {v1}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lorg/polaric/md_colorfragment/ColorChooserFragment;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    aget-object v0, v0, v1

    .line 22
    .line 23
    aget p1, v0, p1

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 31
    .line 32
    invoke-static {v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lorg/polaric/md_colorfragment/ColorChooserFragment;)[I

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    aget p1, v0, p1

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    new-instance p2, Lorg/polaric/md_colorfragment/CircleView;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->activity:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-direct {p2, v1}, Lorg/polaric/md_colorfragment/CircleView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 13
    .line 14
    iget-object v2, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 15
    .line 16
    invoke-static {v2}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lorg/polaric/md_colorfragment/ColorChooserFragment;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 21
    .line 22
    invoke-static {v3}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lorg/polaric/md_colorfragment/ColorChooserFragment;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    move-object v1, p2

    .line 33
    check-cast v1, Lorg/polaric/md_colorfragment/CircleView;

    .line 34
    .line 35
    iget-object v2, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 36
    .line 37
    invoke-static {v2}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lorg/polaric/md_colorfragment/ColorChooserFragment;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-object v2, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 44
    .line 45
    invoke-static {v2}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lorg/polaric/md_colorfragment/ColorChooserFragment;)[[I

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v3, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 50
    .line 51
    invoke-static {v3}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lorg/polaric/md_colorfragment/ColorChooserFragment;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    aget-object v2, v2, v3

    .line 56
    .line 57
    aget v2, v2, p1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v2, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 61
    .line 62
    invoke-static {v2}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lorg/polaric/md_colorfragment/ColorChooserFragment;)[I

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    aget v2, v2, p1

    .line 67
    .line 68
    :goto_0
    invoke-virtual {v1, v2}, Lorg/polaric/md_colorfragment/CircleView;->setBackgroundColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 72
    .line 73
    invoke-static {v3}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lorg/polaric/md_colorfragment/ColorChooserFragment;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    iget-object v3, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 80
    .line 81
    invoke-static {v3}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lorg/polaric/md_colorfragment/ColorChooserFragment;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-ne v3, p1, :cond_2

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 v3, 0x0

    .line 90
    :goto_1
    invoke-virtual {v1, v3}, Lorg/polaric/md_colorfragment/CircleView;->setSelected(Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    iget-object v3, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 95
    .line 96
    invoke-static {v3}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lorg/polaric/md_colorfragment/ColorChooserFragment;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ne v3, p1, :cond_4

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/4 v3, 0x0

    .line 105
    :goto_2
    invoke-virtual {v1, v3}, Lorg/polaric/md_colorfragment/CircleView;->setSelected(Z)V

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const/4 v3, 0x2

    .line 117
    new-array v3, v3, [Ljava/lang/Object;

    .line 118
    .line 119
    aput-object p1, v3, v0

    .line 120
    .line 121
    aput-object v2, v3, p3

    .line 122
    .line 123
    const-string p1, "%d:%d"

    .line 124
    .line 125
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;->this$0:Lorg/polaric/md_colorfragment/ColorChooserFragment;

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 140
    .line 141
    .line 142
    return-object p2
.end method
