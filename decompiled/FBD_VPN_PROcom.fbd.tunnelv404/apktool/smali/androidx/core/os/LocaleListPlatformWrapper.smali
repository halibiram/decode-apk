.class final Landroidx/core/os/LocaleListPlatformWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation


# instance fields
.field private final mLocaleList:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    .line 3
    check-cast p1, Landroidx/core/os/LocaleListInterface;

    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/core/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1, v0}, L뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Ljava/lang/Object;Landroid/os/LocaleList;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public get(I)Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0, p1}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0, p1}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroid/os/LocaleList;[Ljava/lang/String;)Ljava/util/Locale;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Landroid/os/LocaleList;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0, p1}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/os/LocaleList;Ljava/util/Locale;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Landroid/os/LocaleList;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/os/LocaleList;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, L뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/os/LocaleList;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroid/os/LocaleList;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
