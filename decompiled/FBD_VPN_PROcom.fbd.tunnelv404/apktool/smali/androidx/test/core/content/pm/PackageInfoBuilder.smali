.class public final Landroidx/test/core/content/pm/PackageInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private applicationInfo:Landroid/content/pm/ApplicationInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private longVersionCode:J

.field private packageName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final requestedPermissionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private versionName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->longVersionCode:J

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->requestedPermissionsMap:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method

.method public static newBuilder()Landroidx/test/core/content/pm/PackageInfoBuilder;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/core/content/pm/PackageInfoBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/test/core/content/pm/PackageInfoBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public addRequestedPermission(Ljava/lang/String;I)Landroidx/test/core/content/pm/PackageInfoBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->requestedPermissionsMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public build()Landroid/content/pm/PackageInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Mandatory field \'packageName\' missing."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->versionName:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 20
    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x1c

    .line 24
    .line 25
    if-lt v1, v2, :cond_0

    .line 26
    .line 27
    iget-wide v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->longVersionCode:J

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, L뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroid/content/pm/PackageInfo;J)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-wide v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->longVersionCode:J

    .line 34
    .line 35
    long-to-int v2, v1

    .line 36
    iput v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 37
    .line 38
    :goto_0
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    invoke-static {}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->newBuilder()Landroidx/test/core/content/pm/ApplicationInfoBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->setPackageName(Ljava/lang/String;)Landroidx/test/core/content/pm/ApplicationInfoBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->build()Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 57
    .line 58
    :cond_1
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 59
    .line 60
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    .line 62
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->requestedPermissionsMap:Ljava/util/Map;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x0

    .line 69
    new-array v3, v2, [Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, [Ljava/lang/String;

    .line 76
    .line 77
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 78
    .line 79
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->requestedPermissionsMap:Ljava/util/Map;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-array v3, v2, [Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, [Ljava/lang/Integer;

    .line 92
    .line 93
    array-length v3, v1

    .line 94
    new-array v3, v3, [I

    .line 95
    .line 96
    :goto_1
    array-length v4, v1

    .line 97
    if-ge v2, v4, :cond_2

    .line 98
    .line 99
    aget-object v4, v1, v2

    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    aput v4, v3, v2

    .line 106
    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    iput-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 111
    .line 112
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 115
    .line 116
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    const-string v2, "Field \'packageName\' must match field \'applicationInfo.packageName\'"

    .line 123
    .line 124
    invoke-static {v1, v2}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    return-object v0
.end method

.method public setApplicationInfo(Landroid/content/pm/ApplicationInfo;)Landroidx/test/core/content/pm/PackageInfoBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroidx/test/core/content/pm/PackageInfoBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVersionCode(J)Landroidx/test/core/content/pm/PackageInfoBuilder;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 1
    iput-wide p1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->longVersionCode:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Landroidx/test/core/content/pm/PackageInfoBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
