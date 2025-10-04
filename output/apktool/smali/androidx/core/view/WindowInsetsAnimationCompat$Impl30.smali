.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Impl;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl30"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;
    }
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/WindowInsetsAnimation;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0

    .line 3
    invoke-static {p1, p2, p3, p4}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(ILandroid/view/animation/Interpolator;J)Landroid/view/WindowInsetsAnimation;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;-><init>(Landroid/view/WindowInsetsAnimation;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 2
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    return-void
.end method

.method public static createPlatformBounds(Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1

    .line 1
    invoke-static {}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getLowerBound()Landroidx/core/graphics/Insets;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getUpperBound()Landroidx/core/graphics/Insets;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {v0, p0}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static getHigherBounds(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/graphics/Insets;
    .locals 0

    .line 1
    invoke-static {p0}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getLowerBounds(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/graphics/Insets;
    .locals 0

    .line 1
    invoke-static {p0}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;-><init>(Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {p0, v0}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-static {v0}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/view/WindowInsetsAnimation;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDurationMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-static {v0}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroid/view/WindowInsetsAnimation;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getFraction()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-static {v0}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Landroid/view/WindowInsetsAnimation;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getInterpolatedFraction()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-static {v0}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Landroid/view/WindowInsetsAnimation;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-static {v0}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroid/view/WindowInsetsAnimation;)Landroid/view/animation/Interpolator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTypeMask()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-static {v0}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroid/view/WindowInsetsAnimation;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-static {v0, p1}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠(Landroid/view/WindowInsetsAnimation;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFraction(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-static {v0, p1}, L땠뎹딨둘듬뒛됴땧뒛뎽뒋듔딠듨딹두둠되뎻땵둬땐딅듸땔듻뎡딹돰돰됐뒵땲딨딟뎰둥땍돝둘돰뒼돼땤땻딠돤땐뎹딸돝땯뒀듌뒐됐딞땠뎨돶땯딄돤뒘돝땠뒋딽듽딹뒾돛둣드딐땪뒈듔땵땬땧땳됐돵둘뒵뎠뎽땰듟둑뒷듐뒘땸뎡둣땮돝딀뒛뎽됨뒾땬땅딹뒬둥돰돴땫듰땭뒨둥딨땸돶땜땃뒤땄뒾디땲딃땋땣뎡;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/view/WindowInsetsAnimation;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
