.class public Lorg/polaric/md_colorfragment/ColorChooserFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/tknetwork/tunnel/config/SettingsConstants;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;,
        Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private apply:Landroidx/cardview/widget/CardView;

.field private back:Landroid/widget/LinearLayout;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mCallback:Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;

.field private mCircleSize:I

.field private mColorsSub:[[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mColorsTop:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mConfig:Lconfig/ConfigUtil;

.field private mGrid:Landroid/widget/GridView;

.field private mInSub:Z

.field private mPreselect:I

.field private mSetPreselectionColor:Z

.field private mSubIndex:I

.field private mTopIndex:I

.field private myPrefs:Landroid/content/SharedPreferences;

.field private name:Ljava/lang/String;

.field private root:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mSetPreselectionColor:Z

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mSubIndex:I

    .line 9
    .line 10
    iput v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mTopIndex:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mInSub:Z

    .line 13
    .line 14
    const-string v0, "ColorFragment"

    .line 15
    .line 16
    iput-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->name:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private findSubIndexForColor(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsSub:[[I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    if-ge v1, p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    aget-object p1, v0, p1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    array-length v1, p1

    .line 15
    if-ge v0, v1, :cond_2

    .line 16
    .line 17
    aget v1, p1, v0

    .line 18
    .line 19
    if-ne v1, p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->subIndex(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :goto_1
    return-void
.end method

.method private generateColors()V
    .locals 1

    .line 1
    sget-object v0, Lorg/polaric/md_colorfragment/ColorPalette;->PRIMARY_COLORS:[I

    .line 2
    .line 3
    iput-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsTop:[I

    .line 4
    .line 5
    sget-object v0, Lorg/polaric/md_colorfragment/ColorPalette;->PRIMARY_COLORS_SUB:[[I

    .line 6
    .line 7
    iput-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsSub:[[I

    .line 8
    .line 9
    return-void
.end method

.method private invalidate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mGrid:Landroid/widget/GridView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mGrid:Landroid/widget/GridView;

    .line 10
    .line 11
    new-instance v1, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->activity:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-direct {v1, p0, v2}, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorGridAdapter;-><init>(Lorg/polaric/md_colorfragment/ColorChooserFragment;Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mGrid:Landroid/widget/GridView;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->activity:Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v2, 0x7f06001e

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mGrid:Landroid/widget/GridView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/BaseAdapter;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method private isInSub(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mInSub:Z

    return-void
.end method

.method private isInSub()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mInSub:Z

    return v0
.end method

.method private subIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsSub:[[I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mSubIndex:I

    return v0
.end method

.method private topIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mTopIndex:I

    return v0
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lorg/polaric/md_colorfragment/ColorChooserFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mCircleSize:I

    return p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lorg/polaric/md_colorfragment/ColorChooserFragment;)[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsSub:[[I

    return-object p0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lorg/polaric/md_colorfragment/ColorChooserFragment;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsTop:[I

    return-object p0
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lorg/polaric/md_colorfragment/ColorChooserFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->isInSub()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lorg/polaric/md_colorfragment/ColorChooserFragment;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->subIndex()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lorg/polaric/md_colorfragment/ColorChooserFragment;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->topIndex()I

    move-result p0

    return p0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;

    .line 11
    .line 12
    iput-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mCallback:Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "ColorChooserFragment needs to be created from an Activity implementing ColorFragmentCallback."

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mCallback:Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;

    .line 5
    .line 6
    const-string v0, "cancel"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;->onFragmentDone(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, ":"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    aget-object v2, v0, v1

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    aget-object v0, v0, v3

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-direct {p0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->isInSub()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->subIndex(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, v2}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->topIndex(I)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsSub:[[I

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    array-length v4, v4

    .line 51
    if-ge v2, v4, :cond_1

    .line 52
    .line 53
    invoke-direct {p0, v3}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->isInSub(Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mCallback:Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;

    .line 57
    .line 58
    invoke-interface {v2, v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;->onColorSelection(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const v2, 0x7f0a006c

    .line 66
    .line 67
    .line 68
    if-ne v0, v2, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mCallback:Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;

    .line 71
    .line 72
    const-string v0, "Apply"

    .line 73
    .line 74
    invoke-interface {p1, v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;->onFragmentDone(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const v0, 0x7f0a0077

    .line 90
    .line 91
    .line 92
    if-ne p1, v0, :cond_5

    .line 93
    .line 94
    invoke-direct {p0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->isInSub()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mCallback:Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;

    .line 101
    .line 102
    const-string v0, "cancel"

    .line 103
    .line 104
    invoke-interface {p1, v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;->onFragmentDone(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-direct {p0, v1}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->isInSub(Z)V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_1
    invoke-direct {p0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->invalidate()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->activity:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->myPrefs:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->editor:Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mConfig:Lconfig/ConfigUtil;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0d002c

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->root:Landroid/view/View;

    .line 26
    .line 27
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->root:Landroid/view/View;

    .line 37
    .line 38
    const v2, 0x7f0a006c

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroidx/cardview/widget/CardView;

    .line 46
    .line 47
    iput-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->apply:Landroidx/cardview/widget/CardView;

    .line 48
    .line 49
    iget-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->root:Landroid/view/View;

    .line 50
    .line 51
    const v2, 0x7f0a0077

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/widget/LinearLayout;

    .line 59
    .line 60
    iput-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->back:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    iget-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->root:Landroid/view/View;

    .line 63
    .line 64
    const v2, 0x7f0a0079

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/widget/TextView;

    .line 72
    .line 73
    iget-object v2, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->myPrefs:Landroid/content/SharedPreferences;

    .line 74
    .line 75
    const-string v3, "#008080"

    .line 76
    .line 77
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    const-string v5, "_APP_COLORS"

    .line 82
    .line 83
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->root:Landroid/view/View;

    .line 91
    .line 92
    const v2, 0x7f0a00c7

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-object v2, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->myPrefs:Landroid/content/SharedPreferences;

    .line 100
    .line 101
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->apply:Landroidx/cardview/widget/CardView;

    .line 113
    .line 114
    iget-object v2, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->myPrefs:Landroid/content/SharedPreferences;

    .line 115
    .line 116
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->apply:Landroidx/cardview/widget/CardView;

    .line 128
    .line 129
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->back:Landroid/widget/LinearLayout;

    .line 133
    .line 134
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->generateColors()V

    .line 138
    .line 139
    .line 140
    const/4 v1, 0x0

    .line 141
    if-nez p1, :cond_4

    .line 142
    .line 143
    iget-boolean p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mSetPreselectionColor:Z

    .line 144
    .line 145
    if-eqz p1, :cond_4

    .line 146
    .line 147
    iget p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mPreselect:I

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    :goto_0
    iget-object v3, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsTop:[I

    .line 153
    .line 154
    array-length v4, v3

    .line 155
    if-ge v2, v4, :cond_4

    .line 156
    .line 157
    aget v3, v3, v2

    .line 158
    .line 159
    if-ne v3, p1, :cond_1

    .line 160
    .line 161
    invoke-virtual {p0, v2}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->topIndex(I)V

    .line 162
    .line 163
    .line 164
    iget-object v3, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsSub:[[I

    .line 165
    .line 166
    if-eqz v3, :cond_0

    .line 167
    .line 168
    invoke-direct {p0, v2, p1}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->findSubIndexForColor(II)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_0
    const/4 p1, 0x5

    .line 173
    invoke-virtual {p0, p1}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->subIndex(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_1
    iget-object v3, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsSub:[[I

    .line 178
    .line 179
    if-eqz v3, :cond_3

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    :goto_1
    iget-object v4, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsSub:[[I

    .line 183
    .line 184
    aget-object v4, v4, v2

    .line 185
    .line 186
    array-length v5, v4

    .line 187
    if-ge v3, v5, :cond_3

    .line 188
    .line 189
    aget v4, v4, v3

    .line 190
    .line 191
    if-ne v4, p1, :cond_2

    .line 192
    .line 193
    invoke-virtual {p0, v2}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->topIndex(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v3}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->subIndex(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_4
    :goto_3
    const/16 p1, 0x38

    .line 207
    .line 208
    iput p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mCircleSize:I

    .line 209
    .line 210
    iget-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->root:Landroid/view/View;

    .line 211
    .line 212
    const v2, 0x7f0a01c2

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Landroid/widget/GridView;

    .line 220
    .line 221
    iput-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mGrid:Landroid/widget/GridView;

    .line 222
    .line 223
    invoke-direct {p0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->invalidate()V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->root:Landroid/view/View;

    .line 227
    .line 228
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->activity:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    aget-object v0, v0, v1

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    check-cast p1, Lorg/polaric/md_colorfragment/CircleView;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lorg/polaric/md_colorfragment/CircleView;->showHint(I)V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public preselect(I)Lorg/polaric/md_colorfragment/ColorChooserFragment;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mPreselect:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mSetPreselectionColor:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/polaric/md_colorfragment/ColorChooserFragment;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public subIndex(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsSub:[[I

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mSubIndex:I

    return-void
.end method

.method public topIndex(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->topIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mColorsTop:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0}, Lorg/polaric/md_colorfragment/ColorChooserFragment;->findSubIndexForColor(II)V

    .line 4
    :cond_0
    iput p1, p0, Lorg/polaric/md_colorfragment/ColorChooserFragment;->mTopIndex:I

    return-void
.end method
