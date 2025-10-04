.class public Lcom/tknetwork/tunnel/activities/AppOpenManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static AD_UNIT_ID:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static isShowingAds:Z


# instance fields
.field private appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

.field private currentActivity:Landroid/app/Activity;

.field private loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private myApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->LOG_TAG:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->isShowingAds:Z

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x6c9890ba6eaf4b3cL
        0x2651ba432f500754L
        -0x52ada980077271fL    # -4.913224252715102E283
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 6
    .line 7
    sput-object p2, Lcom/tknetwork/tunnel/activities/AppOpenManager;->AD_UNIT_ID:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->myApplication:Landroid/app/Application;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private getAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/activities/AppOpenManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-void
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->isShowingAds:Z

    return-void
.end method


# virtual methods
.method public fetchAd()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/AppOpenManager;->isAdAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/tknetwork/tunnel/activities/AppOpenManager$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/activities/AppOpenManager$1;-><init>(Lcom/tknetwork/tunnel/activities/AppOpenManager;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/AppOpenManager;->getAdRequest()Lcom/google/android/gms/ads/AdRequest;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->myApplication:Landroid/app/Application;

    .line 20
    .line 21
    sget-object v2, Lcom/tknetwork/tunnel/activities/AppOpenManager;->AD_UNIT_ID:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    .line 24
    .line 25
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public isAdAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->currentActivity:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->currentActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->currentActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/AppOpenManager;->showAdIfAvailable()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showAdIfAvailable()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->isShowingAds:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/AppOpenManager;->isAdAvailable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/tknetwork/tunnel/activities/AppOpenManager$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/activities/AppOpenManager$2;-><init>(Lcom/tknetwork/tunnel/activities/AppOpenManager;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/AppOpenManager;->currentActivity:Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/AppOpenManager;->fetchAd()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
