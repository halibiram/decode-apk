.class public final Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;
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
        "Landroidx/appcompat/widget/LinearLayoutCompat;",
        ">;"
    }
.end annotation


# instance fields
.field private mBaselineAlignedChildIndexId:I

.field private mBaselineAlignedId:I

.field private mDividerId:I

.field private mDividerPaddingId:I

.field private mGravityId:I

.field private mMeasureWithLargestChildId:I

.field private mOrientationId:I

.field private mPropertiesMapped:Z

.field private mShowDividersId:I

.field private mWeightSumId:I


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
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mPropertiesMapped:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 2
    .param p1    # Landroid/view/inspector/PropertyMapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/view/inspector/PropertyMapper;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mBaselineAlignedId:I

    .line 6
    .line 7
    invoke-static {p1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/view/inspector/PropertyMapper;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mBaselineAlignedChildIndexId:I

    .line 12
    .line 13
    invoke-static {p1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Landroid/view/inspector/PropertyMapper;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mGravityId:I

    .line 18
    .line 19
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion$1;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroid/view/inspector/PropertyMapper;Ljava/util/function/IntFunction;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mOrientationId:I

    .line 29
    .line 30
    invoke-static {p1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Landroid/view/inspector/PropertyMapper;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mWeightSumId:I

    .line 35
    .line 36
    sget v0, Landroidx/appcompat/R$attr;->divider:I

    .line 37
    .line 38
    invoke-static {p1, v0}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/view/inspector/PropertyMapper;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mDividerId:I

    .line 43
    .line 44
    sget v0, Landroidx/appcompat/R$attr;->dividerPadding:I

    .line 45
    .line 46
    invoke-static {p1, v0}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Landroid/view/inspector/PropertyMapper;I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mDividerPaddingId:I

    .line 51
    .line 52
    sget v0, Landroidx/appcompat/R$attr;->measureWithLargestChild:I

    .line 53
    .line 54
    invoke-static {p1, v0}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠(Landroid/view/inspector/PropertyMapper;I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mMeasureWithLargestChildId:I

    .line 59
    .line 60
    sget v0, Landroidx/appcompat/R$attr;->showDividers:I

    .line 61
    .line 62
    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion$2;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion$2;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroid/view/inspector/PropertyMapper;ILjava/util/function/IntFunction;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mShowDividersId:I

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mPropertiesMapped:Z

    .line 75
    .line 76
    return-void
.end method

.method public readProperties(Landroidx/appcompat/widget/LinearLayoutCompat;Landroid/view/inspector/PropertyReader;)V
    .locals 2
    .param p1    # Landroidx/appcompat/widget/LinearLayoutCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inspector/PropertyReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mBaselineAlignedId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->isBaselineAligned()Z

    move-result v1

    invoke-static {p2, v0, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/view/inspector/PropertyReader;IZ)V

    .line 4
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mBaselineAlignedChildIndexId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBaselineAlignedChildIndex()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 5
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mGravityId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getGravity()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroid/view/inspector/PropertyReader;II)V

    .line 6
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mOrientationId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getOrientation()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Landroid/view/inspector/PropertyReader;II)V

    .line 7
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mWeightSumId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWeightSum()F

    move-result v1

    invoke-static {p2, v0, v1}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;IF)V

    .line 8
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mDividerId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p2, v0, v1}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/view/inspector/PropertyReader;ILandroid/graphics/drawable/Drawable;)V

    .line 9
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mDividerPaddingId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerPadding()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 10
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mMeasureWithLargestChildId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->isMeasureWithLargestChildEnabled()Z

    move-result v1

    invoke-static {p2, v0, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/view/inspector/PropertyReader;IZ)V

    .line 11
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mShowDividersId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getShowDividers()I

    move-result p1

    invoke-static {p2, v0, p1}, L뎽둣딜땝뒾딀뒋땨딄듸돵뒀땍든땸땹딁딝돛둘땤뎽딨두듟땵뒝땱딹땠딠딹돠땄듟딞돵득둘들땦뒈뒉뒉땰돳뒤땬뒈듰둡땁둡뎸땸됐땵뎽딹되돼땱둬땭딟땠든땰딞득뒤되뒉땐뒹뒬도드뎽뎹땫딐뒻듻뒼딀딸땩둔땹땭땨딽뎹땱딹땡둥땟듸뒷딸돴돛됫둘딀뒨뒀뎰듼땻듼땰뒛된딞딁돤됩돼땨들돼듔땻땃땔땭돰;->뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨(Landroid/view/inspector/PropertyReader;II)V

    return-void

    .line 12
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
    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/LinearLayoutCompat;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
