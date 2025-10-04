.class public final Landroidx/test/core/app/ActivityScenario;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/core/app/ActivityScenario$ActivityAction;,
        Landroidx/test/core/app/ActivityScenario$ActivityState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final STEADY_STATES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/test/runner/lifecycle/Stage;",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActivityScenario"

.field private static final TIMEOUT_MILLISECONDS:J = 0xafc8L


# instance fields
.field private final activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

.field private final activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

.field private final controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

.field private currentActivity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private currentActivityStage:Landroidx/test/runner/lifecycle/Stage;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final startActivityIntent:Landroid/content/Intent;

.field private final stateChangedCondition:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Landroidx/test/runner/lifecycle/Stage;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    .line 9
    .line 10
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    .line 11
    .line 12
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    .line 18
    .line 19
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    .line 25
    .line 26
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 27
    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->DESTROYED:Landroidx/test/runner/lifecycle/Stage;

    .line 32
    .line 33
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 34
    .line 35
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 4
    new-instance v0, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;-><init>(I)V

    .line 5
    const-class v1, Landroidx/test/internal/platform/app/ActivityInvoker;

    invoke-static {v1, v0}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 6
    new-instance v0, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;-><init>(I)V

    .line 7
    const-class v1, Landroidx/test/internal/platform/os/ControlledLooper;

    invoke-static {v1, v0}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/os/ControlledLooper;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 8
    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 9
    new-instance v0, Landroidx/test/core/app/ActivityScenario$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario$1;-><init>(Landroidx/test/core/app/ActivityScenario;)V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 10
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 14
    new-instance v0, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;-><init>(I)V

    .line 15
    const-class v1, Landroidx/test/internal/platform/app/ActivityInvoker;

    invoke-static {v1, v0}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 16
    new-instance v1, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;-><init>(I)V

    .line 17
    const-class v2, Landroidx/test/internal/platform/os/ControlledLooper;

    invoke-static {v2, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/internal/platform/os/ControlledLooper;

    iput-object v1, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 18
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    iput-object v1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 19
    new-instance v1, Landroidx/test/core/app/ActivityScenario$1;

    invoke-direct {v1, p0}, Landroidx/test/core/app/ActivityScenario$1;-><init>(Landroidx/test/core/app/ActivityScenario;)V

    iput-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 20
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-interface {v0, p1}, Landroidx/test/internal/platform/app/ActivityInvoker;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method public static synthetic access$000(Landroidx/test/core/app/ActivityScenario;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Landroid/content/Intent;Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/test/core/app/ActivityScenario;->activityMatchesIntent(Landroid/content/Intent;Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/core/app/ActivityScenario;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Landroidx/test/core/app/ActivityScenario;)Landroidx/test/runner/lifecycle/Stage;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$402(Landroidx/test/core/app/ActivityScenario;Landroidx/test/runner/lifecycle/Stage;)Landroidx/test/runner/lifecycle/Stage;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$500(Landroidx/test/core/app/ActivityScenario;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$502(Landroidx/test/core/app/ActivityScenario;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$600(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 2
    .line 3
    return-object p0
.end method

.method private static activityMatchesIntent(Landroid/content/Intent;Landroid/app/Activity;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0, v2}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    return v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v0, v2}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    return v1

    .line 51
    :cond_2
    invoke-static {p0}, Landroidx/test/core/app/ActivityScenario;->hasPackageEquivalentComponent(Landroid/content/Intent;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-static {p1}, Landroidx/test/core/app/ActivityScenario;->hasPackageEquivalentComponent(Landroid/content/Intent;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v0, v2}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    return v1

    .line 79
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v0, v2}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_5

    .line 98
    .line 99
    return v1

    .line 100
    :cond_5
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v0, v2}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    return v1

    .line 115
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 116
    .line 117
    const/16 v2, 0x1d

    .line 118
    .line 119
    if-lt v0, v2, :cond_7

    .line 120
    .line 121
    invoke-static {p0}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Landroid/content/Intent;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p1}, L뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Landroid/content/Intent;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p0, p1}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-nez p0, :cond_7

    .line 134
    .line 135
    return v1

    .line 136
    :cond_7
    const/4 p0, 0x1

    .line 137
    return p0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method private getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/core/app/ActivityScenario$ActivityState<",
            "TA;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v0, Landroidx/test/core/app/ActivityScenario$ActivityState;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    .line 16
    .line 17
    sget-object v2, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 20
    .line 21
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/lifecycle/Lifecycle$State;

    .line 26
    .line 27
    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3}, Landroidx/test/core/app/ActivityScenario$ActivityState;-><init>(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$State;Landroidx/test/runner/lifecycle/Stage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method private static hasPackageEquivalentComponent(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method private static synthetic lambda$new$0()Landroidx/test/internal/platform/app/ActivityInvoker;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/core/app/InstrumentationActivityInvoker;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$new$1()Landroidx/test/internal/platform/os/ControlledLooper;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/internal/platform/os/ControlledLooper;->NO_OP_CONTROLLED_LOOPER:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 2
    .line 3
    return-object v0
.end method

.method private synthetic lambda$onActivity$2(Landroidx/test/core/app/ActivityScenario$ActivityAction;)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    .line 10
    .line 11
    const-string v1, "Cannot run onActivity since Activity has been destroyed already"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroidx/test/core/app/ActivityScenario$ActivityAction;->perform(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public static launch(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Landroid/content/Intent;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public static launch(Landroid/content/Intent;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 8
    invoke-direct {v0, p1, p0}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public static launch(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Ljava/lang/Class;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public static launch(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Ljava/lang/Class;)V

    const/4 p0, 0x0

    .line 4
    invoke-direct {v0, p1, p0}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public static launchActivityForResult(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Landroid/content/Intent;)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public static launchActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Landroid/content/Intent;)V

    const/4 p0, 0x1

    .line 8
    invoke-direct {v0, p1, p0}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public static launchActivityForResult(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Ljava/lang/Class;)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, p0, v1}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public static launchActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Ljava/lang/Class;)V

    const/4 p0, 0x1

    .line 4
    invoke-direct {v0, p1, p0}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method private launchInternal(Landroid/os/Bundle;Z)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "always_finish_activities"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    const-string v1, "\"Don\'t keep activities\" developer options must be disabled for ActivityScenario"

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 31
    .line 32
    .line 33
    const-string v0, "ActivityScenario launch"

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 50
    .line 51
    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->addLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V

    .line 52
    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 59
    .line 60
    iget-object p2, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    .line 61
    .line 62
    invoke-interface {p1, p2}, Landroidx/test/internal/platform/app/ActivityInvoker;->startActivityForResult(Landroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 69
    .line 70
    iget-object p2, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    .line 71
    .line 72
    invoke-interface {p1, p2}, Landroidx/test/internal/platform/app/ActivityInvoker;->startActivity(Landroid/content/Intent;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    if-eqz p2, :cond_3

    .line 77
    .line 78
    iget-object p2, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    .line 81
    .line 82
    invoke-interface {p2, v0, p1}, Landroidx/test/internal/platform/app/ActivityInvoker;->startActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-object p2, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 87
    .line 88
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    .line 89
    .line 90
    invoke-interface {p2, v0, p1}, Landroidx/test/internal/platform/app/ActivityInvoker;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    sget-object p1, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-array p2, v2, [Landroidx/lifecycle/Lifecycle$State;

    .line 100
    .line 101
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, [Landroidx/lifecycle/Lifecycle$State;

    .line 106
    .line 107
    invoke-direct {p0, p1}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :goto_2
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method private varargs waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const-string v3, "Activity never becomes requested state \"%s\" (last lifecycle transition = \"%s\")"

    .line 5
    .line 6
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    invoke-virtual {v4}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 11
    .line 12
    .line 13
    new-instance v4, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    sget-object p1, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 30
    .line 31
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    const-wide/32 v7, 0xafc8

    .line 52
    .line 53
    .line 54
    add-long/2addr v7, v5

    .line 55
    :goto_0
    cmp-long p1, v5, v7

    .line 56
    .line 57
    if-gez p1, :cond_1

    .line 58
    .line 59
    sget-object p1, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    .line 60
    .line 61
    iget-object v9, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 62
    .line 63
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 74
    .line 75
    sub-long v5, v7, v5

    .line 76
    .line 77
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    .line 79
    invoke-interface {p1, v5, v6, v9}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_2

    .line 89
    :catch_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    sget-object p1, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    .line 92
    .line 93
    iget-object v5, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 94
    .line 95
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 112
    .line 113
    iget-object v5, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 114
    .line 115
    new-array v6, v2, [Ljava/lang/Object;

    .line 116
    .line 117
    aput-object v4, v6, v1

    .line 118
    .line 119
    aput-object v5, v6, v0

    .line 120
    .line 121
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-direct {p1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/AssertionError;

    .line 130
    .line 131
    iget-object v6, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 132
    .line 133
    new-array v2, v2, [Ljava/lang/Object;

    .line 134
    .line 135
    aput-object v4, v2, v1

    .line 136
    .line 137
    aput-object v6, v2, v0

    .line 138
    .line 139
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {v5, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    :goto_2
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    .line 151
    .line 152
    throw p1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Landroidx/test/internal/platform/os/ControlledLooper;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/test/core/app/ActivityScenario;->lambda$new$1()Landroidx/test/internal/platform/os/ControlledLooper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()Landroidx/test/internal/platform/app/ActivityInvoker;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/test/core/app/ActivityScenario;->lambda$new$0()Landroidx/test/internal/platform/app/ActivityInvoker;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/test/core/app/ActivityScenario;Landroidx/test/core/app/ActivityScenario$ActivityAction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/test/core/app/ActivityScenario;->lambda$onActivity$2(Landroidx/test/core/app/ActivityScenario$ActivityAction;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    const-string v0, "ActivityScenario close"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->removeLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public getResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/test/internal/platform/app/ActivityInvoker;->getActivityResult()Landroid/app/Instrumentation$ActivityResult;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getState()Landroidx/lifecycle/Lifecycle$State;
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->stage:Landroidx/test/runner/lifecycle/Stage;

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v2, v3, v4

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v0, v3, v2

    .line 19
    .line 20
    const-string v0, "Could not get current state of activity %s due to the transition is incomplete. Current stage = %s"

    .line 21
    .line 22
    invoke-static {v1, v0, v3}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    .line 27
    .line 28
    return-object v0
.end method

.method public moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle$State;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v2, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 18
    .line 19
    iget-object v4, v2, Landroidx/test/core/app/ActivityScenario$ActivityState;->stage:Landroidx/test/runner/lifecycle/Stage;

    .line 20
    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v6, "Current state was null unexpectedly. Last stage = "

    .line 24
    .line 25
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v3, v2, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 39
    .line 40
    if-ne v3, p1, :cond_0

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 44
    .line 45
    if-eq v3, v4, :cond_1

    .line 46
    .line 47
    iget-object v3, v2, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v3, 0x0

    .line 54
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v5, "Cannot move to state \""

    .line 57
    .line 58
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v5, "\" since the Activity has been destroyed already"

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v3, v4}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object v3, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    aget v3, v3, v4

    .line 83
    .line 84
    if-eq v3, v1, :cond_5

    .line 85
    .line 86
    const/4 v4, 0x2

    .line 87
    if-eq v3, v4, :cond_4

    .line 88
    .line 89
    const/4 v4, 0x3

    .line 90
    if-eq v3, v4, :cond_3

    .line 91
    .line 92
    const/4 v4, 0x4

    .line 93
    if-ne v3, v4, :cond_2

    .line 94
    .line 95
    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 96
    .line 97
    iget-object v2, v2, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 98
    .line 99
    invoke-interface {v3, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->finishActivity(Landroid/app/Activity;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v2, "A requested state \""

    .line 108
    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p1, "\" is not supported"

    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_3
    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 129
    .line 130
    iget-object v2, v2, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 131
    .line 132
    invoke-interface {v3, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->resumeActivity(Landroid/app/Activity;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 137
    .line 138
    invoke-virtual {p0, v3}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 139
    .line 140
    .line 141
    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 142
    .line 143
    iget-object v2, v2, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 144
    .line 145
    invoke-interface {v3, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->pauseActivity(Landroid/app/Activity;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 150
    .line 151
    iget-object v2, v2, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 152
    .line 153
    invoke-interface {v3, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->stopActivity(Landroid/app/Activity;)V

    .line 154
    .line 155
    .line 156
    :goto_1
    new-array v1, v1, [Landroidx/lifecycle/Lifecycle$State;

    .line 157
    .line 158
    aput-object p1, v1, v0

    .line 159
    .line 160
    invoke-direct {p0, v1}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V

    .line 161
    .line 162
    .line 163
    return-object p0
.end method

.method public onActivity(Landroidx/test/core/app/ActivityScenario$ActivityAction;)Landroidx/test/core/app/ActivityScenario;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/core/app/ActivityScenario$ActivityAction<",
            "TA;>;)",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 1
    new-instance v0, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 18
    .line 19
    invoke-interface {p1}, Landroidx/test/internal/platform/os/ControlledLooper;->drainMainThreadUntilIdle()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;->run()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-object p0
.end method

.method public recreate()Landroidx/test/core/app/ActivityScenario;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 16
    .line 17
    invoke-static {v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 21
    .line 22
    invoke-static {v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 31
    .line 32
    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 33
    .line 34
    invoke-interface {v1, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->recreateActivity(Landroid/app/Activity;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    const-wide/32 v3, 0xafc8

    .line 42
    .line 43
    .line 44
    add-long/2addr v1, v3

    .line 45
    :cond_0
    const/4 v3, 0x1

    .line 46
    new-array v3, v3, [Landroidx/lifecycle/Lifecycle$State;

    .line 47
    .line 48
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    aput-object v4, v3, v5

    .line 52
    .line 53
    invoke-direct {p0, v3}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    cmp-long v6, v3, v1

    .line 65
    .line 66
    if-gez v6, :cond_1

    .line 67
    .line 68
    iget-object v3, v5, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 69
    .line 70
    iget-object v4, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 71
    .line 72
    if-eq v3, v4, :cond_0

    .line 73
    .line 74
    :cond_1
    iget-object v1, v5, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 75
    .line 76
    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 77
    .line 78
    if-eq v1, v2, :cond_2

    .line 79
    .line 80
    iget-object v0, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string v1, "Requested a re-creation of Activity but didn\'t happen"

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0
.end method
