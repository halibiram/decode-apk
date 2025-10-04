.class public final Landroidx/appcompat/widget/SearchView$InspectionCompanion;
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
        "Landroidx/appcompat/widget/SearchView;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconifiedByDefaultId:I

.field private mImeOptionsId:I

.field private mMaxWidthId:I

.field private mPropertiesMapped:Z

.field private mQueryHintId:I


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
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

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
    invoke-static {p1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/view/inspector/PropertyMapper;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mImeOptionsId:I

    .line 6
    .line 7
    invoke-static {p1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Landroid/view/inspector/PropertyMapper;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mMaxWidthId:I

    .line 12
    .line 13
    sget v0, Landroidx/appcompat/R$attr;->iconifiedByDefault:I

    .line 14
    .line 15
    invoke-static {p1, v0}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Landroid/view/inspector/PropertyMapper;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mIconifiedByDefaultId:I

    .line 20
    .line 21
    sget v0, Landroidx/appcompat/R$attr;->queryHint:I

    .line 22
    .line 23
    invoke-static {p1, v0}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Landroid/view/inspector/PropertyMapper;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mQueryHintId:I

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

    .line 31
    .line 32
    return-void
.end method

.method public readProperties(Landroidx/appcompat/widget/SearchView;Landroid/view/inspector/PropertyReader;)V
    .locals 2
    .param p1    # Landroidx/appcompat/widget/SearchView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inspector/PropertyReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mImeOptionsId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getImeOptions()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 4
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mMaxWidthId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getMaxWidth()I

    move-result v1

    invoke-static {p2, v0, v1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/view/inspector/PropertyReader;II)V

    .line 5
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mIconifiedByDefaultId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->isIconfiedByDefault()Z

    move-result v1

    invoke-static {p2, v0, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/view/inspector/PropertyReader;IZ)V

    .line 6
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mQueryHintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p2, v0, p1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/view/inspector/PropertyReader;ILjava/lang/CharSequence;)V

    return-void

    .line 7
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
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/SearchView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
