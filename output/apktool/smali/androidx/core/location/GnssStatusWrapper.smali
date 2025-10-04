.class Landroidx/core/location/GnssStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/GnssStatusWrapper$Api26Impl;,
        Landroidx/core/location/GnssStatusWrapper$Api30Impl;
    }
.end annotation


# instance fields
.field private final mWrapped:Landroid/location/GnssStatus;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Ljava/lang/Object;)Landroid/location/GnssStatus;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Ljava/lang/Object;)Landroid/location/GnssStatus;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/core/location/GnssStatusWrapper;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Landroidx/core/location/GnssStatusWrapper;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 16
    .line 17
    invoke-static {v0, p1}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Landroid/location/GnssStatus;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getAzimuthDegrees(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 2
    .line 3
    invoke-static {v0, p1}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠(Landroid/location/GnssStatus;I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getBasebandCn0DbHz(I)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api30Impl;->getBasebandCn0DbHz(Landroid/location/GnssStatus;I)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public getCarrierFrequencyHz(I)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api26Impl;->getCarrierFrequencyHz(Landroid/location/GnssStatus;I)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public getCn0DbHz(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 2
    .line 3
    invoke-static {v0, p1}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/location/GnssStatus;I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getConstellationType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 2
    .line 3
    invoke-static {v0, p1}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Landroid/location/GnssStatus;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getElevationDegrees(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 2
    .line 3
    invoke-static {v0, p1}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Landroid/location/GnssStatus;I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getSatelliteCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 2
    .line 3
    invoke-static {v0}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/location/GnssStatus;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSvid(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 2
    .line 3
    invoke-static {v0, p1}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroid/location/GnssStatus;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hasAlmanacData(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 2
    .line 3
    invoke-static {v0, p1}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Landroid/location/GnssStatus;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hasBasebandCn0DbHz(I)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api30Impl;->hasBasebandCn0DbHz(Landroid/location/GnssStatus;I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public hasCarrierFrequencyHz(I)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api26Impl;->hasCarrierFrequencyHz(Landroid/location/GnssStatus;I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public hasEphemerisData(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 2
    .line 3
    invoke-static {v0, p1}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Landroid/location/GnssStatus;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 2
    .line 3
    invoke-static {v0}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/location/GnssStatus;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public usedInFix(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 2
    .line 3
    invoke-static {v0, p1}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨(Landroid/location/GnssStatus;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
