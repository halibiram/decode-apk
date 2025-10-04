.class public final synthetic L땟둑딞뎬뒛땭뒵딠도뎽딤듰딌둑듨뎠땡딻따듨두땣듬땅되땄뒐뎨딄들돨뒤땧땅둣돨딻돠뒉듽돶둔땳뎬딸뎡땅땔땐뒾뎻됐땦땜뎸될든뒵땧둘딄됐땥뒷땨돠됨둔돸뒐돝듸딸땜땩돠딻땝딝뎬둬땫듽듨땃드드뎡땣드딄뒘딃돷뎡뎬딽뒉땍땝뒀드땲딠딠뒐듔뒬뎡둡뒘뒻된땵듸돵듰뎡뒝뎸돳딃땁땨뎨땤뒾땱따뒉;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/SingletonImageLoader$Factory;


# virtual methods
.method public final newImageLoader(Landroid/content/Context;)Lcoil3/ImageLoader;
    .locals 3

    .line 1
    sget-object v0, Lcoil3/SingletonImageLoaderKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L땟둑딞뎬뒛땭뒵딠도뎽딤듰딌둑듨뎠땡딻따듨두땣듬땅되땄뒐뎨딄들돨뒤땧땅둣돨딻돠뒉듽돶둔땳뎬딸뎡땅땔땐뒾뎻됐땦땜뎸될든뒵땧둘딄됐땥뒷땨돠됨둔돸뒐돝듸딸땜땩돠딻땝딝뎬둬땫듽듨땃드드뎡땣드딄뒘딃돷뎡뎬딽뒉땍땝뒀드땲딠딠뒐듔뒬뎡둡뒘뒻된땵듸돵듰뎡뒝뎸돳딃땁땨뎨땤뒾땱따뒉;

    .line 2
    .line 3
    new-instance v0, Lcoil3/ImageLoader$Builder;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcoil3/ImageLoader$Builder;->getExtras()Lcoil3/Extras$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v1, Lcoil3/SingletonImageLoaderKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/Extras$Key;

    .line 13
    .line 14
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcoil3/ImageLoader$Builder;->build()Lcoil3/ImageLoader;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
