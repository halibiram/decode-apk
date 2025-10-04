.class final Landroidx/core/app/JobIntentService$JobWorkEnqueuer;
.super Landroidx/core/app/JobIntentService$WorkEnqueuer;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JobWorkEnqueuer"
.end annotation


# instance fields
.field private final mJobInfo:Landroid/app/job/JobInfo;

.field private final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/ComponentName;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p3}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->ensureJobId(I)V

    .line 5
    .line 6
    .line 7
    new-instance p2, Landroid/app/job/JobInfo$Builder;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    .line 10
    .line 11
    invoke-direct {p2, p3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    invoke-virtual {p2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "jobscheduler"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/app/job/JobScheduler;

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public enqueueWork(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    .line 4
    .line 5
    invoke-static {p1}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroid/content/Intent;)Landroid/app/job/JobWorkItem;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0, v1, p1}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Landroid/app/job/JobScheduler;Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
