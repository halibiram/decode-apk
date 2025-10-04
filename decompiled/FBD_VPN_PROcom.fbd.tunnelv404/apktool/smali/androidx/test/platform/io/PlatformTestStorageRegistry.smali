.class public final Landroidx/test/platform/io/PlatformTestStorageRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static testStorageInstance:Landroidx/test/platform/io/PlatformTestStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-class v1, Landroidx/test/platform/io/PlatformTestStorage;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/test/platform/io/PlatformTestStorage;

    .line 15
    .line 16
    sput-object v0, Landroidx/test/platform/io/PlatformTestStorageRegistry;->testStorageInstance:Landroidx/test/platform/io/PlatformTestStorage;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized getInstance()Landroidx/test/platform/io/PlatformTestStorage;
    .locals 2

    .line 1
    const-class v0, Landroidx/test/platform/io/PlatformTestStorageRegistry;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/test/platform/io/PlatformTestStorageRegistry;->testStorageInstance:Landroidx/test/platform/io/PlatformTestStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method public static declared-synchronized registerInstance(Landroidx/test/platform/io/PlatformTestStorage;)V
    .locals 1

    .line 1
    const-class v0, Landroidx/test/platform/io/PlatformTestStorageRegistry;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/test/platform/io/PlatformTestStorage;

    .line 9
    .line 10
    sput-object p0, Landroidx/test/platform/io/PlatformTestStorageRegistry;->testStorageInstance:Landroidx/test/platform/io/PlatformTestStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p0
.end method
