.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderImpl29"
.end annotation


# instance fields
.field final mPlatBuilder:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 2
    invoke-static {}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 4
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->applyInsetTypes()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 5
    .line 6
    invoke-static {v0}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setOverriddenInsets([Landroidx/core/graphics/Insets;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public setDisplayCutout(Landroidx/core/view/DisplayCutoutCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->unwrap()Landroid/view/DisplayCutout;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {v0, p1}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/view/WindowInsets$Builder;Landroid/view/DisplayCutout;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setStableInsets(Landroidx/core/graphics/Insets;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setSystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setTappableElementInsets(Landroidx/core/graphics/Insets;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
