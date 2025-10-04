.class Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;
.super Landroid/location/GnssMeasurementsEvent$Callback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssMeasurementsTransport"
.end annotation


# instance fields
.field final mCallback:Landroid/location/GnssMeasurementsEvent$Callback;

.field volatile mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/location/GnssMeasurementsEvent$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/location/GnssMeasurementsEvent$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mCallback:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$onGnssMeasurementsReceived$0(Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mCallback:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 7
    .line 8
    invoke-static {p1, p2}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Landroid/location/GnssMeasurementsEvent$Callback;Landroid/location/GnssMeasurementsEvent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$onStatusChanged$1(Ljava/util/concurrent/Executor;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mCallback:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 7
    .line 8
    invoke-static {p1, p2}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/location/GnssMeasurementsEvent$Callback;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->lambda$onGnssMeasurementsReceived$0(Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->lambda$onStatusChanged$1(Ljava/util/concurrent/Executor;I)V

    return-void
.end method


# virtual methods
.method public onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Landroidx/core/location/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/core/location/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Landroidx/core/location/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/core/location/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;II)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3
    .line 4
    return-void
.end method
