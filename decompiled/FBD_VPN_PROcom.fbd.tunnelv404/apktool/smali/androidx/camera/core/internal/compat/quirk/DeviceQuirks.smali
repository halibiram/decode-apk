.class public Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceQuirks"

.field private static volatile sQuirks:Landroidx/camera/core/impl/Quirks;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/QuirkSettingsHolder;->instance()Landroidx/camera/core/impl/QuirkSettingsHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, L뒋돨뒋딝땋땦딸돰땅땠되딽되땜돳땪딌듟됨땤됫뒋듰둠따땧둥땫뒙땵될뎹딨뒼돶땯득두둘돰듨땤듸땪돝둬뎹듰든됫딀딎두땮뎸뎠듐뎰뎠딝뒛땱될땧두뒛딻뒘뒉도듟땧뎨듬둡되뎹뒵뎰뎰땫땡둡뒙땯땪뎬딨땃돤땣땭돤뎸땱두땍도듟뎽됐딞돨듌땣딌뒨땋돴딅딌둬딅뒷둑딄땧돼딀둥되돠땩뎰돰됫돠딅딤듬;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, v3}, L뒋돨뒋딝땋땦딸돰땅땠되딽되땜돳땪딌듟됨땤됫뒋듰둠따땧둥땫뒙땵될뎹딨뒼돶땯득두둘돰듨땤듸땪돝둬뎹듰든됫딀딎두땮뎸뎠듐뎰뎠딝뒛땱될땧두뒛딻뒘뒉도듟땧뎨듬둡되뎹뒵뎰뎰땫땡둡뒙땯땪뎬딨땃돤땣땭돤뎸땱두땍도듟뎽됐딞돨듌땣딌뒨땋돴딅딌둬딅뒷둑딄땧돼딀둥되돠땩뎰돰됫돠딅딤듬;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/QuirkSettingsHolder;->observe(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 16
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

.method public static get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/camera/core/impl/Quirk;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->sQuirks:Landroidx/camera/core/impl/Quirks;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getAll()Landroidx/camera/core/impl/Quirks;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->sQuirks:Landroidx/camera/core/impl/Quirks;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic lambda$static$0(Landroidx/camera/core/impl/QuirkSettings;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/impl/Quirks;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirksLoader;->loadQuirks(Landroidx/camera/core/impl/QuirkSettings;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroidx/camera/core/impl/Quirks;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->sQuirks:Landroidx/camera/core/impl/Quirks;

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "core DeviceQuirks = "

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->sQuirks:Landroidx/camera/core/impl/Quirks;

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/camera/core/impl/Quirks;->toString(Landroidx/camera/core/impl/Quirks;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "DeviceQuirks"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/impl/QuirkSettings;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->lambda$static$0(Landroidx/camera/core/impl/QuirkSettings;)V

    return-void
.end method
