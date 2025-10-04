.class public final Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zaa:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zab:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zac:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zad:I

.field private zae:Landroid/view/View;

.field private zaf:Ljava/lang/String;

.field private zag:Ljava/lang/String;

.field private final zah:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/zab;",
            ">;"
        }
    .end annotation
.end field

.field private final zai:Landroid/content/Context;

.field private final zaj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;"
        }
    .end annotation
.end field

.field private zak:Lcom/google/android/gms/common/api/internal/LifecycleActivity;

.field private zal:I

.field private zam:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zan:Landroid/os/Looper;

.field private zao:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private zap:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final zaq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final zar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zac:Ljava/util/Set;

    .line 3
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zah:Ljava/util/Map;

    new-instance v0, Landroidx/collection/ArrayMap;

    .line 4
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zal:I

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zao:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 6
    sget-object v0, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zap:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaq:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zar:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zai:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zan:Landroid/os/Looper;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaf:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaq:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x7

    new-array p2, p2, [J

    fill-array-data p2, :array_1

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zar:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 8
        -0x4a9753c9af2caa5aL    # -2.0607603749472797E-51
        -0x17d61a15022e1bc7L    # -5.907931031319284E193
        -0x2a190f32e5d65b16L    # -6.576787782896231E105
        0x3f25874648f453e5L    # 1.6424878092693922E-4
        0x6250c8b25fd850f3L    # 3.866093678383928E165
        0x3e18a0429852cd0fL    # 1.4334227982479347E-9
    .end array-data

    :array_1
    .array-data 8
        0x780c346b3cf2c076L    # 1.8625526448810387E270
        0x26c897d6257ab365L    # 7.440553455649399E-122
        0x76a4d5f89548a8fbL    # 3.280476344831529E263
        0x5347c0d1cc5cd826L    # 1.5483560171450445E93
        -0x53a228800a8db49fL    # -5.588385274650163E-95
        -0x189f498720096d5fL    # -9.307992552730107E189
        -0x21b8452b1fdc710cL
    .end array-data
.end method

.method private final varargs zab(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;[Lcom/google/android/gms/common/api/Scope;)V
    .locals 3
    .param p2    # Lcom/google/android/gms/common/api/Api$ApiOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    .line 25
    .line 26
    new-instance v1, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    array-length p2, p3

    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    if-ge v0, p2, :cond_0

    .line 38
    .line 39
    aget-object v2, p3, v0

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zah:Ljava/util/Map;

    .line 48
    .line 49
    new-instance p3, Lcom/google/android/gms/common/internal/zab;

    .line 50
    .line 51
    invoke-direct {p3, v1}, Lcom/google/android/gms/common/internal/zab;-><init>(Ljava/util/Set;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x5d850971959b1867L    # 3.206634717772035E142
        0x7002aeac43b7e553L    # 3.625579208834014E231
        0x6bfa865fca323dfL
        -0x23e2f617a0662c2cL    # -5.276613276915902E135
        -0x1e80df75e817e294L    # -4.3761928652080163E161
        0x4d602b9610a8ab69L    # 5.32164683113797E64
    .end array-data
.end method


# virtual methods
.method public addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zac:Ljava/util/Set;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :array_0
    .array-data 8
        0x18b6de58645054aeL    # 1.283160871848914E-189
        0x5e0585da7bb8dfefL    # 8.398621592326699E144
        0x6163a513cc295107L    # 1.380943932603908E161
        -0x2ec4949f93ca80bcL    # -2.080738016201966E83
    .end array-data

    :array_1
    .array-data 8
        -0x53ccb67926e5395aL    # -9.029649311453364E-96
        0x1852a945d67a1ccbL    # 1.636073624120634E-191
        -0x635607c1e94ec0b7L    # -1.3440002713295774E-170
        0x1c46bf3059cfd371L
        0x3841e15529f7922aL    # 1.0509040424452647E-37
        -0x7469839e2d32cb06L    # -7.667491467672787E-253
    .end array-data
.end method

.method public addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    .line 10
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zac:Ljava/util/Set;

    .line 14
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    .line 15
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0

    nop

    :array_0
    .array-data 8
        0x61f91a6e66cd41f4L    # 9.034987571215745E163
        0x4fd6a49e585fa7a6L    # 4.0966953783709E76
        0x52caab4399b7765eL    # 6.790714120543863E90
        0x6ad15034a6335d77L    # 3.474057334747956E206
    .end array-data

    :array_1
    .array-data 8
        -0x3bdebe818a3275a4L    # -1.5915699411912163E20
        -0x53708f453df793cdL    # -4.710193336763966E-94
        0x5616318f339af8e6L    # 5.09009710055231E106
        0x524c9250f6547d57L    # 2.8418589327347286E88
        -0x36fd20c0864fbea4L    # -5.260763160965089E43
        0x68507b31ca1918ffL    # 3.007785049206416E194
        0x1fbf3af14e35a5a9L    # 9.09866425086238E-156
    .end array-data

    :array_2
    .array-data 8
        -0x5fe157dafb2fa630L    # -5.716224274376147E-154
        -0x2194b48348f5dfc9L    # -6.8166181052927505E146
        -0x5e89a0edebffddebL
        0x2cdfd8a46e80fa13L    # 1.5267213094557915E-92
        0x68f401dc50e754f7L    # 3.7389095812069695E197
        -0x592519c4b4b2d4d3L
    .end array-data
.end method

.method public varargs addApiIfAvailable(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0

    nop

    :array_0
    .array-data 8
        0x2dd55795fdc82ee7L    # 6.705313464181975E-88
        -0x75f8049faa5c2668L
        0xf826c1cdd616379L    # 5.79398800969109E-234
        0x5396f11bf950135L
    .end array-data

    :array_1
    .array-data 8
        -0x38e295acc6f4bd13L    # -3.818328447681139E34
        0x487dee4b85101bd3L    # 1.6295899239688247E41
        -0x19ab0cd88b4506a5L    # -8.901796615855672E184
        0xa53e09eb079e8a6L
        -0x261e3698d816d9b1L    # -9.40641937567387E124
        -0x34977fbd687383fcL    # -1.877384896999576E55
        -0x3c2885ea0f109160L    # -6.7667549383375258E18
    .end array-data
.end method

.method public varargs addApiIfAvailable(Lcom/google/android/gms/common/api/Api;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api<",
            "+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0

    :array_0
    .array-data 8
        0x1520c5257e8b3492L
        0x32df4db5cd79a8e0L    # 1.1889801215842238E-63
        -0x1c5f21e9397bff16L    # -8.148152753508027E171
        -0x66e6184f8449ae2fL    # -9.302655231793034E-188
    .end array-data
.end method

.method public addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaq:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :array_0
    .array-data 8
        0x5fa1cc4a25d37fdcL    # 4.6607861604337705E152
        -0x2dbddacfd665a518L    # -1.8048124976065345E88
        0x3af377aea0ea0352L    # 1.0064465936757762E-24
        0x7e8eb36270800a74L    # 4.1120108252610354E301
        -0x2f1a6c91907bb245L    # -5.116557282433535E81
    .end array-data
.end method

.method public addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zar:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :array_0
    .array-data 8
        -0x77062a3828064293L
        0x71059fbc795c2a32L
        -0x72407798eaf80c2cL    # -1.847252892558451E-242
        -0x3d36d5dcb530f702L    # -5.5337542852113984E13
        -0x392e6f0a46032574L    # -1.4251434693475326E33
    .end array-data
.end method

.method public addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :array_0
    .array-data 8
        0x4cc2c8a337aa81f4L    # 6.036861444771528E61
        -0xff31c820ca1f3d7L    # -5.6062671500493645E231
        0x63795f0f50b38b5cL
        0x4d86399b72d58e7dL    # 2.9257108160911697E65
    .end array-data
.end method

.method public build()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 23
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    xor-int/2addr v2, v3

    .line 13
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v5, 0x7

    .line 16
    new-array v5, v5, [J

    .line 17
    .line 18
    fill-array-data v5, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaa()Lcom/google/android/gms/common/internal/ClientSettings;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ClientSettings;->zad()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v12, Landroidx/collection/ArrayMap;

    .line 40
    .line 41
    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v15, Landroidx/collection/ArrayMap;

    .line 45
    .line 46
    invoke-direct {v15}, Landroidx/collection/ArrayMap;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v14, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v5, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    const/4 v5, 0x0

    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    move-object/from16 v17, v5

    .line 68
    .line 69
    const/16 v18, 0x0

    .line 70
    .line 71
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_5

    .line 76
    .line 77
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    move-object v11, v5

    .line 82
    check-cast v11, Lcom/google/android/gms/common/api/Api;

    .line 83
    .line 84
    iget-object v5, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    .line 85
    .line 86
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v19

    .line 90
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    if-eqz v5, :cond_1

    .line 95
    .line 96
    const/4 v5, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    const/4 v5, 0x0

    .line 99
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-interface {v12, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    new-instance v10, Lcom/google/android/gms/common/api/internal/zat;

    .line 107
    .line 108
    invoke-direct {v10, v11, v5}, Lcom/google/android/gms/common/api/internal/zat;-><init>(Lcom/google/android/gms/common/api/Api;Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11}, Lcom/google/android/gms/common/api/Api;->zaa()Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    move-object/from16 v20, v5

    .line 123
    .line 124
    check-cast v20, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 125
    .line 126
    iget-object v6, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zai:Landroid/content/Context;

    .line 127
    .line 128
    iget-object v7, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zan:Landroid/os/Looper;

    .line 129
    .line 130
    move-object/from16 v5, v20

    .line 131
    .line 132
    move-object v8, v2

    .line 133
    move-object/from16 v9, v19

    .line 134
    .line 135
    move-object/from16 v21, v10

    .line 136
    .line 137
    move-object/from16 v22, v11

    .line 138
    .line 139
    move-object/from16 v11, v21

    .line 140
    .line 141
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/common/api/Api;->zab()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-interface {v15, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getPriority()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-ne v6, v3, :cond_3

    .line 157
    .line 158
    if-eqz v19, :cond_2

    .line 159
    .line 160
    const/16 v18, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_2
    const/16 v18, 0x0

    .line 164
    .line 165
    :cond_3
    :goto_2
    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_0

    .line 170
    .line 171
    if-nez v17, :cond_4

    .line 172
    .line 173
    move-object/from16 v17, v22

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    add-int/lit8 v4, v4, 0x15

    .line 205
    .line 206
    add-int/2addr v4, v5

    .line 207
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 214
    .line 215
    const/4 v4, 0x4

    .line 216
    new-array v4, v4, [J

    .line 217
    .line 218
    fill-array-data v4, :array_1

    .line 219
    .line 220
    .line 221
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 222
    .line 223
    .line 224
    invoke-static {v2, v6, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0

    .line 232
    :cond_5
    if-eqz v17, :cond_8

    .line 233
    .line 234
    if-nez v18, :cond_7

    .line 235
    .line 236
    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaa:Landroid/accounts/Account;

    .line 237
    .line 238
    if-nez v4, :cond_6

    .line 239
    .line 240
    const/4 v4, 0x1

    .line 241
    goto :goto_3

    .line 242
    :cond_6
    const/4 v4, 0x0

    .line 243
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    new-array v6, v3, [Ljava/lang/Object;

    .line 248
    .line 249
    aput-object v5, v6, v16

    .line 250
    .line 251
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 252
    .line 253
    new-array v7, v0, [J

    .line 254
    .line 255
    fill-array-data v7, :array_2

    .line 256
    .line 257
    .line 258
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    .line 269
    .line 270
    iget-object v5, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zac:Ljava/util/Set;

    .line 271
    .line 272
    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    new-array v6, v3, [Ljava/lang/Object;

    .line 281
    .line 282
    aput-object v5, v6, v16

    .line 283
    .line 284
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 285
    .line 286
    new-array v0, v0, [J

    .line 287
    .line 288
    fill-array-data v0, :array_3

    .line 289
    .line 290
    .line 291
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {v4, v0, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 303
    .line 304
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    add-int/lit8 v3, v3, 0x52

    .line 319
    .line 320
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .line 322
    .line 323
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 324
    .line 325
    const/4 v5, 0x3

    .line 326
    new-array v5, v5, [J

    .line 327
    .line 328
    fill-array-data v5, :array_4

    .line 329
    .line 330
    .line 331
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 345
    .line 346
    const/16 v3, 0xa

    .line 347
    .line 348
    new-array v3, v3, [J

    .line 349
    .line 350
    fill-array-data v3, :array_5

    .line 351
    .line 352
    .line 353
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 354
    .line 355
    .line 356
    invoke-static {v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw v0

    .line 364
    :cond_8
    :goto_4
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/internal/zabe;->zad(Ljava/lang/Iterable;Z)I

    .line 369
    .line 370
    .line 371
    move-result v17

    .line 372
    new-instance v0, Lcom/google/android/gms/common/api/internal/zabe;

    .line 373
    .line 374
    iget-object v6, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zai:Landroid/content/Context;

    .line 375
    .line 376
    new-instance v7, Ljava/util/concurrent/locks/ReentrantLock;

    .line 377
    .line 378
    invoke-direct {v7}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 379
    .line 380
    .line 381
    iget-object v8, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zan:Landroid/os/Looper;

    .line 382
    .line 383
    iget-object v10, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zao:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 384
    .line 385
    iget-object v11, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zap:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 386
    .line 387
    iget-object v13, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaq:Ljava/util/ArrayList;

    .line 388
    .line 389
    iget-object v3, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zar:Ljava/util/ArrayList;

    .line 390
    .line 391
    iget v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zal:I

    .line 392
    .line 393
    move-object v5, v0

    .line 394
    move-object v9, v2

    .line 395
    move-object v2, v14

    .line 396
    move-object v14, v3

    .line 397
    move/from16 v16, v4

    .line 398
    .line 399
    move-object/from16 v18, v2

    .line 400
    .line 401
    invoke-direct/range {v5 .. v18}, Lcom/google/android/gms/common/api/internal/zabe;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    .line 402
    .line 403
    .line 404
    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zaq()Ljava/util/Set;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    monitor-enter v2

    .line 409
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zaq()Ljava/util/Set;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget v2, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zal:I

    .line 418
    .line 419
    if-ltz v2, :cond_9

    .line 420
    .line 421
    iget-object v2, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zak:Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    .line 422
    .line 423
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zak;->zaa(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/zak;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    iget v3, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zal:I

    .line 428
    .line 429
    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zam:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 430
    .line 431
    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/gms/common/api/internal/zak;->zad(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 432
    .line 433
    .line 434
    :cond_9
    return-object v0

    .line 435
    :catchall_0
    move-exception v0

    .line 436
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    throw v0

    .line 438
    nop

    .line 439
    :array_0
    .array-data 8
        0x7a057ce590d8aae7L    # 6.094520141405447E279
        -0x3092189ff870e4cdL    # -4.226836578849468E74
        0x1cecc821c8037b31L    # 2.38325152567758E-169
        0x55c798ac97f330a6L    # 1.6911960330328674E105
        -0x676988b0c3814550L
        0x3b8593d5c025a4abL    # 5.711511485607582E-22
        -0x7758774e5a7058ebL    # -5.702021862275751E-267
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :array_1
    .array-data 8
        0x65cae957ec98a384L    # 2.2333935876108209E182
        -0x393ae38d144f4727L    # -8.563691129006361E32
        0x1682a350e6e52318L
        0x41ad2850e16e35fbL    # 2.445907047152556E8
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    :array_2
    .array-data 8
        -0x6879204b28ec04f7L
        0x26932816f7658f3bL    # 7.244696872796537E-123
        -0x61142cca0064de13L    # -9.895737138995202E-160
        0x64633eb01b46175aL    # 3.807874063243121E175
        0x74f64c346222335bL    # 2.61562757964646E255
        -0x4ced21230f77f4e8L    # -1.14679468290892E-62
        -0x481405c8952f82eaL    # -2.5693191540811624E-39
        -0x5ba15d23fb186a18L
        0x47855cd12918d827L    # 3.549465187764902E36
        -0x5012675a58c1c1d2L    # -7.98745132968599E-78
        0xef7642e62e79f7cL
        0x339df2c5cf5405b2L    # 4.659223008964831E-60
        0x796e59f67d2a0206L    # 8.406689544977668E276
        0x3daa1df70629ef2eL    # 1.1876659545255232E-11
        0x12d17bd8f04507a9L    # 4.952887407857458E-218
        0x4defbea5beefafa7L    # 2.6744870812013997E67
    .end array-data

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_3
    .array-data 8
        -0x48f0c02a2bb42c2eL    # -1.7515870124358527E-43
        -0x7f32605091d164cfL    # -8.437129928268401E-305
        0xce68d02a56e4885L
        -0x19ae5e0cabdea41eL    # -7.492283154873979E184
        -0x4288167c29f574b6L    # -1.359249376333546E-12
        0x7000958065338cf8L    # 3.218368143690026E231
        0x35d41e35006e9022L    # 2.150826815688656E-49
        0x504d6c81878bda90L
        0x45115f9205b06f0aL    # 5.250764345976432E24
        -0x68a3f19cd09fbf91L    # -3.753286348059013E-196
        -0x363f7c0c2328611bL    # -1.8857298677680026E47
        0x4054374baee1e185L    # 80.86399433191953
        0x6427d778e9e06c77L    # 2.9483872245268665E174
        0x30785e30680d3e69L    # 3.367128277497367E-75
        -0x49fbff0a082d3a27L    # -1.71089041775504E-48
        0x2c261af99376e338L    # 5.1745095724585E-96
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :array_4
    .array-data 8
        0x6b2d9e5112a9db6fL    # 1.901818096323462E208
        0x4c145d01c86b30e1L    # 3.195563970976423E58
        -0x1d0f5ff4271fb8c9L    # -3.921425471566331E168
    .end array-data

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    :array_5
    .array-data 8
        -0x475799816def4b13L    # -9.178398623473662E-36
        -0x7edd1d1f6ccd2d38L    # -3.442546870183853E-303
        0x4eaad9b391589553L    # 9.265731206771155E70
        -0x5a91f4bdb76b62bcL    # -2.167151768558653E-128
        -0x66c2bc0d5fface43L
        0x302e7a1982d46c66L    # 1.31602046256055E-76
        -0x216a8830afa5c3a2L    # -4.289134084467922E147
        -0x27c1ed77a12e6c8aL    # -1.1849126289967322E117
        -0x739e149219bab708L    # -5.005679193371035E-249
        -0x5c3b22cfe4fdcf6bL    # -2.242589916302655E-136
    .end array-data
.end method

.method public enableAutoManage(Landroidx/fragment/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Landroid/app/Activity;)V

    if-ltz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x5

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zal:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zam:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zak:Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    return-object p0

    nop

    :array_0
    .array-data 8
        -0xbb7dc2c3a64cd68L
        0x608c575b5119cae6L    # 1.2159803647576397E157
        0x4b1291d0b56a56fcL    # 4.446533630727997E53
        0x84122127b53df9fL
        -0x52d2c06dd077a525L    # -4.486961188057827E-91
    .end array-data
.end method

.method public enableAutoManage(Landroidx/fragment/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroidx/fragment/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object p1, v0

    .line 26
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaa:Landroid/accounts/Account;

    .line 27
    .line 28
    return-object p0

    .line 29
    :array_0
    .array-data 8
        -0x119dba8829c0a607L    # -5.283694096904669E223
        -0x1e26642fe168f0a0L    # -2.3042216711434142E163
        0x6fa07079d2603230L    # 4.98484414938915E229
    .end array-data
.end method

.method public setGravityForPopups(I)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zad:I

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zan:Landroid/os/Looper;

    .line 24
    .line 25
    return-object p0

    .line 26
    nop

    :array_0
    .array-data 8
        -0x7a3f587c60b4875eL    # -5.734318318895694E-281
        -0x30e2ef73e5d6b976L    # -1.2838192491938638E73
        0x3ae3725dfd55fd04L    # 5.026866193901822E-25
        -0x547ca09f5b15f5cfL    # -4.4285202889406415E-99
    .end array-data
.end method

.method public setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zae:Landroid/view/View;

    .line 20
    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x2f7996ded77c1ba1L    # 5.39535728543565E-80
        -0x412a40f3c5351a7L    # -8.941064468346062E288
        0x1660806d381477d0L    # 6.736909415553837E-201
        0x46904391d4abe60bL    # 8.246799324433713E31
    .end array-data
.end method

.method public useDefaultAccount()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x7bcc5466dd1b2083L
        -0x212db31a382b2805L    # -5.850028892041362E148
        -0xc054cf2e552a3b7L
        0x1af00bfe4ab89645L    # 6.187459203762613E-179
    .end array-data
.end method

.method public final zaa()Lcom/google/android/gms/common/internal/ClientSettings;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/signin/SignInOptions;->zaa:Lcom/google/android/gms/signin/SignInOptions;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/signin/zad;->zag:Lcom/google/android/gms/common/api/Api;

    .line 6
    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/google/android/gms/signin/SignInOptions;

    .line 20
    .line 21
    :cond_0
    move-object v9, v0

    .line 22
    new-instance v0, Lcom/google/android/gms/common/internal/ClientSettings;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaa:Landroid/accounts/Account;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zah:Ljava/util/Map;

    .line 29
    .line 30
    iget v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zad:I

    .line 31
    .line 32
    iget-object v6, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zae:Landroid/view/View;

    .line 33
    .line 34
    iget-object v7, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaf:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v8, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zag:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    move-object v1, v0

    .line 40
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;Z)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method
