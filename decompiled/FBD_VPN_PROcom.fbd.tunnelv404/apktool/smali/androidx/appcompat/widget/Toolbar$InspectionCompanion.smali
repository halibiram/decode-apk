.class public final Landroidx/appcompat/widget/Toolbar$InspectionCompanion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroidx/appcompat/widget/Toolbar;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollapseContentDescriptionId:I

.field private mCollapseIconId:I

.field private mContentInsetEndId:I

.field private mContentInsetEndWithActionsId:I

.field private mContentInsetLeftId:I

.field private mContentInsetRightId:I

.field private mContentInsetStartId:I

.field private mContentInsetStartWithNavigationId:I

.field private mLogoDescriptionId:I

.field private mLogoId:I

.field private mMenuId:I

.field private mNavigationContentDescriptionId:I

.field private mNavigationIconId:I

.field private mPopupThemeId:I

.field private mPropertiesMapped:Z

.field private mSubtitleId:I

.field private mTitleId:I

.field private mTitleMarginBottomId:I

.field private mTitleMarginEndId:I

.field private mTitleMarginStartId:I

.field private mTitleMarginTopId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 1
    .param p1    # Landroid/view/inspector/PropertyMapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroidx/appcompat/R$attr;->collapseContentDescription:I

    .line 2
    .line 3
    invoke-static {p1, v0}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/view/inspector/PropertyMapper;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseContentDescriptionId:I

    .line 8
    .line 9
    sget v0, Landroidx/appcompat/R$attr;->collapseIcon:I

    .line 10
    .line 11
    invoke-static {p1, v0}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyMapper;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseIconId:I

    .line 16
    .line 17
    sget v0, Landroidx/appcompat/R$attr;->contentInsetEnd:I

    .line 18
    .line 19
    invoke-static {p1, v0}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroid/view/inspector/PropertyMapper;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndId:I

    .line 24
    .line 25
    sget v0, Landroidx/appcompat/R$attr;->contentInsetEndWithActions:I

    .line 26
    .line 27
    invoke-static {p1, v0}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/view/inspector/PropertyMapper;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndWithActionsId:I

    .line 32
    .line 33
    sget v0, Landroidx/appcompat/R$attr;->contentInsetLeft:I

    .line 34
    .line 35
    invoke-static {p1, v0}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/view/inspector/PropertyMapper;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetLeftId:I

    .line 40
    .line 41
    sget v0, Landroidx/appcompat/R$attr;->contentInsetRight:I

    .line 42
    .line 43
    invoke-static {p1, v0}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Landroid/view/inspector/PropertyMapper;I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetRightId:I

    .line 48
    .line 49
    sget v0, Landroidx/appcompat/R$attr;->contentInsetStart:I

    .line 50
    .line 51
    invoke-static {p1, v0}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Landroid/view/inspector/PropertyMapper;I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartId:I

    .line 56
    .line 57
    sget v0, Landroidx/appcompat/R$attr;->contentInsetStartWithNavigation:I

    .line 58
    .line 59
    invoke-static {p1, v0}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/view/inspector/PropertyMapper;I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartWithNavigationId:I

    .line 64
    .line 65
    sget v0, Landroidx/appcompat/R$attr;->logo:I

    .line 66
    .line 67
    invoke-static {p1, v0}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Landroid/view/inspector/PropertyMapper;I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoId:I

    .line 72
    .line 73
    sget v0, Landroidx/appcompat/R$attr;->logoDescription:I

    .line 74
    .line 75
    invoke-static {p1, v0}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/view/inspector/PropertyMapper;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoDescriptionId:I

    .line 80
    .line 81
    sget v0, Landroidx/appcompat/R$attr;->menu:I

    .line 82
    .line 83
    invoke-static {p1, v0}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/view/inspector/PropertyMapper;I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mMenuId:I

    .line 88
    .line 89
    sget v0, Landroidx/appcompat/R$attr;->navigationContentDescription:I

    .line 90
    .line 91
    invoke-static {p1, v0}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Landroid/view/inspector/PropertyMapper;I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationContentDescriptionId:I

    .line 96
    .line 97
    sget v0, Landroidx/appcompat/R$attr;->navigationIcon:I

    .line 98
    .line 99
    invoke-static {p1, v0}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Landroid/view/inspector/PropertyMapper;I)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationIconId:I

    .line 104
    .line 105
    sget v0, Landroidx/appcompat/R$attr;->popupTheme:I

    .line 106
    .line 107
    invoke-static {p1, v0}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/view/inspector/PropertyMapper;I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPopupThemeId:I

    .line 112
    .line 113
    sget v0, Landroidx/appcompat/R$attr;->subtitle:I

    .line 114
    .line 115
    invoke-static {p1, v0}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Landroid/view/inspector/PropertyMapper;I)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mSubtitleId:I

    .line 120
    .line 121
    sget v0, Landroidx/appcompat/R$attr;->title:I

    .line 122
    .line 123
    invoke-static {p1, v0}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Landroid/view/inspector/PropertyMapper;I)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleId:I

    .line 128
    .line 129
    sget v0, Landroidx/appcompat/R$attr;->titleMarginBottom:I

    .line 130
    .line 131
    invoke-static {p1, v0}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Landroid/view/inspector/PropertyMapper;I)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginBottomId:I

    .line 136
    .line 137
    sget v0, Landroidx/appcompat/R$attr;->titleMarginEnd:I

    .line 138
    .line 139
    invoke-static {p1, v0}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroid/view/inspector/PropertyMapper;I)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginEndId:I

    .line 144
    .line 145
    sget v0, Landroidx/appcompat/R$attr;->titleMarginStart:I

    .line 146
    .line 147
    invoke-static {p1, v0}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroid/view/inspector/PropertyMapper;I)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginStartId:I

    .line 152
    .line 153
    sget v0, Landroidx/appcompat/R$attr;->titleMarginTop:I

    .line 154
    .line 155
    invoke-static {p1, v0}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroid/view/inspector/PropertyMapper;I)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginTopId:I

    .line 160
    .line 161
    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    .line 163
    .line 164
    return-void
.end method

.method public readProperties(Landroidx/appcompat/widget/Toolbar;Landroid/view/inspector/PropertyReader;)V
    .locals 2
    .param p1    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inspector/PropertyReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseContentDescriptionId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getCollapseContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p2, v0, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/view/inspector/PropertyReader;ILjava/lang/CharSequence;)V

    .line 4
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseIconId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getCollapseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p2, v0, v1}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/view/inspector/PropertyReader;ILandroid/graphics/drawable/Drawable;)V

    .line 5
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 6
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndWithActionsId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEndWithActions()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 7
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetLeftId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetLeft()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 8
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetRightId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetRight()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 9
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 10
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartWithNavigationId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStartWithNavigation()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 11
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p2, v0, v1}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/view/inspector/PropertyReader;ILandroid/graphics/drawable/Drawable;)V

    .line 12
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoDescriptionId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getLogoDescription()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p2, v0, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/view/inspector/PropertyReader;ILjava/lang/CharSequence;)V

    .line 13
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mMenuId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-static {p2, v0, v1}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroid/view/inspector/PropertyReader;ILandroid/view/Menu;)V

    .line 14
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationContentDescriptionId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p2, v0, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/view/inspector/PropertyReader;ILjava/lang/CharSequence;)V

    .line 15
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationIconId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p2, v0, v1}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/view/inspector/PropertyReader;ILandroid/graphics/drawable/Drawable;)V

    .line 16
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPopupThemeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getPopupTheme()I

    move-result v1

    invoke-static {p2, v0, v1}, L땟됫땦딞뒈땃뒵들뒻딟딌땃돤듟돰딨됫딜뒝땮뒝땲땔뒹뒘둣되딤됨땱딜듸되돳땨듬돷땃땠뒻딜땠돳돴듻뒙돤뒨드땅땫뒈뎰땠딎뒙땠돵딸둔땲땠딽땧듨듨둣뒬듬딞딟땸땲땅딜땋딐둬돳둡땠뎨뎠드둑딜둘듬땳땧득돵뒘뒘딅듌딟듔돳딠땭뎻뒾땬땪됨될뒛둬딁돳딌딀딤돴뒙뒀딟땟들뎠땻뎠땯돝돰뒈땍돳딝;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroid/view/inspector/PropertyReader;II)V

    .line 17
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mSubtitleId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p2, v0, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/view/inspector/PropertyReader;ILjava/lang/CharSequence;)V

    .line 18
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p2, v0, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/view/inspector/PropertyReader;ILjava/lang/CharSequence;)V

    .line 19
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginBottomId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginBottom()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 20
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginEndId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 21
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginStartId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 22
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginTopId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginTop()I

    move-result p1

    invoke-static {p2, v0, p1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    return-void

    .line 23
    :cond_0
    invoke-static {}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷()Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inspector/PropertyReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/Toolbar;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
