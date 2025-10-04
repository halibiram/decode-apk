.class public Landroidx/camera/camera2/interop/CaptureRequestOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/ReadableConfig;


# annotations
.annotation build Landroidx/camera/camera2/interop/ExperimentalCamera2Interop;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;
    }
.end annotation


# instance fields
.field private final mConfig:Landroidx/camera/core/impl/Config;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/Config;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/interop/CaptureRequestOptions;->mConfig:Landroidx/camera/core/impl/Config;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic containsOption(Landroidx/camera/core/impl/Config$Option;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Z

    move-result p1

    return p1
.end method

.method public final synthetic findOptions(Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/ReadableConfig;Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V

    return-void
.end method

.method public getCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/hardware/camera2/CaptureRequest$Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TValueT;>;)TValueT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->createCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;)Landroidx/camera/core/impl/Config$Option;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/interop/CaptureRequestOptions;->mConfig:Landroidx/camera/core/impl/Config;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/hardware/camera2/CaptureRequest$Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TValueT;>;TValueT;)TValueT;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->createCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;)Landroidx/camera/core/impl/Config$Option;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/interop/CaptureRequestOptions;->mConfig:Landroidx/camera/core/impl/Config;

    invoke-interface {v0, p1, p2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Landroidx/camera/core/impl/Config;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/CaptureRequestOptions;->mConfig:Landroidx/camera/core/impl/Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public final synthetic getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getPriorities(Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic listOptions()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-static {p0}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/core/impl/ReadableConfig;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic retrieveOptionWithPriority(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
