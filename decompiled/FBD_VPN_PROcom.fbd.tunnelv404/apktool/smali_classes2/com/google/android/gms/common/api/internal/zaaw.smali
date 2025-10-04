.class public final Lcom/google/android/gms/common/api/internal/zaaw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabf;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/zabi;

.field private final zab:Ljava/util/concurrent/locks/Lock;

.field private final zac:Landroid/content/Context;

.field private final zad:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private zae:Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zaf:I

.field private zag:I

.field private zah:I

.field private final zai:Landroid/os/Bundle;

.field private final zaj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey;",
            ">;"
        }
    .end annotation
.end field

.field private zak:Lcom/google/android/gms/signin/zae;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zal:Z

.field private zam:Z

.field private zan:Z

.field private zao:Lcom/google/android/gms/common/internal/IAccountAccessor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zap:Z

.field private zaq:Z

.field private final zar:Lcom/google/android/gms/common/internal/ClientSettings;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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

.field private final zau:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabi;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .param p2    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabi;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/GoogleApiAvailabilityLight;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zag:I

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zai:Landroid/os/Bundle;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaj:Ljava/util/Set;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zau:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zas:Ljava/util/Map;

    .line 33
    .line 34
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zad:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 35
    .line 36
    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 37
    .line 38
    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zab:Ljava/util/concurrent/locks/Lock;

    .line 39
    .line 40
    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zac:Landroid/content/Context;

    .line 41
    .line 42
    return-void
.end method

.method private final zaA()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zam:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabi;->zag:Lcom/google/android/gms/common/api/internal/zabe;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabe;->zad:Ljava/util/Set;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaj:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabi;->zab:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabi;->zab:Ljava/util/Map;

    .line 45
    .line 46
    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    .line 47
    .line 48
    const/16 v4, 0x11

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method private final zaB(Z)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zak:Lcom/google/android/gms/signin/zae;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/signin/zae;->zaa()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zao:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private final zaC()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabi;->zai()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zabj;->zaa()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/google/android/gms/common/api/internal/zaak;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zaak;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zak:Lcom/google/android/gms/signin/zae;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zap:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zao:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaq:Z

    .line 35
    .line 36
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/signin/zae;->zac(Lcom/google/android/gms/common/internal/IAccountAccessor;Z)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaB(Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabi;->zab:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabi;->zaa:Ljava/util/Map;

    .line 70
    .line 71
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/google/android/gms/common/api/Api$Client;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/google/android/gms/common/api/Api$Client;

    .line 82
    .line 83
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zai:Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zai:Landroid/os/Bundle;

    .line 98
    .line 99
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 100
    .line 101
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabi;->zah:Lcom/google/android/gms/common/api/internal/zabz;

    .line 102
    .line 103
    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/internal/zabz;->zab(Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private final zaD(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaz()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaB(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabi;->zak(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabi;->zah:Lcom/google/android/gms/common/api/internal/zabz;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabz;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final zaE(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getPriority()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zad:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p3, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    if-eqz p3, :cond_3

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zae:Lcom/google/android/gms/common/ConnectionResult;

    .line 31
    .line 32
    if-eqz p3, :cond_2

    .line 33
    .line 34
    iget p3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaf:I

    .line 35
    .line 36
    if-ge v0, p3, :cond_3

    .line 37
    .line 38
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zae:Lcom/google/android/gms/common/ConnectionResult;

    .line 39
    .line 40
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaf:I

    .line 41
    .line 42
    :cond_3
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 43
    .line 44
    iget-object p3, p3, Lcom/google/android/gms/common/api/internal/zabi;->zab:Ljava/util/Map;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zab()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final zaF()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zah:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zam:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zan:Z

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zag:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabi;->zaa:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zah:I

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabi;->zaa:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabi;->zab:Ljava/util/Map;

    .line 59
    .line 60
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaH()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaC()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 77
    .line 78
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabi;->zaa:Ljava/util/Map;

    .line 79
    .line 80
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_5

    .line 95
    .line 96
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zau:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zabj;->zaa()Ljava/util/concurrent/ExecutorService;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-instance v3, Lcom/google/android/gms/common/api/internal/zaap;

    .line 103
    .line 104
    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/zaap;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/ArrayList;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_5
    return-void
.end method

.method private final zaG(I)Z
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    iget v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zag:I

    .line 4
    .line 5
    if-eq v2, p1, :cond_0

    .line 6
    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v3, v1, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabi;->zag:Lcom/google/android/gms/common/api/internal/zabe;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabe;->zaf()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v3, v1, [J

    .line 30
    .line 31
    fill-array-data v3, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v3, v0, [J

    .line 43
    .line 44
    fill-array-data v3, :array_2

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v0, v0, [J

    .line 64
    .line 65
    fill-array-data v0, :array_3

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v2, v1, [J

    .line 77
    .line 78
    fill-array-data v2, :array_4

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zag:I

    .line 88
    .line 89
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaJ(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaw;->zaJ(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/lit8 v0, v0, 0x46

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    add-int/2addr p1, v0

    .line 110
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    const/4 v0, 0x6

    .line 116
    new-array v0, v0, [J

    .line 117
    .line 118
    fill-array-data v0, :array_5

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    const/4 v0, 0x5

    .line 130
    new-array v0, v0, [J

    .line 131
    .line 132
    fill-array-data v0, :array_6

    .line 133
    .line 134
    .line 135
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    new-instance p1, Ljava/lang/Exception;

    .line 142
    .line 143
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v0, v1, [J

    .line 149
    .line 150
    fill-array-data v0, :array_7

    .line 151
    .line 152
    .line 153
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 160
    .line 161
    const/16 v0, 0x8

    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaaw;->zaD(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 168
    .line 169
    .line 170
    const/4 p1, 0x0

    .line 171
    return p1

    .line 172
    :cond_0
    const/4 p1, 0x1

    .line 173
    return p1

    .line 174
    nop

    .line 175
    :array_0
    .array-data 8
        -0x34496db10ce385d3L    # -5.534519907673626E56
        -0x7949d7431c45d741L    # -2.500096304269688E-276
        0x3dbd61ea189611d9L    # 2.6723208313426702E-11
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_1
    .array-data 8
        0x27f361e05e47e146L
        -0x689bc77551494a04L    # -5.410190847340797E-196
        0x20f045021e01db4eL    # 4.970248132594983E-150
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_2
    .array-data 8
        0x6e05d8200c817674L    # 9.870149748578323E221
        -0x580017a7dd1959b5L    # -5.061226244207308E-116
        0x53687870b1b51cb5L    # 6.380445041313614E93
        -0x7f4a36bd92379185L    # -3.102453572022913E-305
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_3
    .array-data 8
        -0x1eaa6ff8eb92ff98L    # -7.578774586560514E160
        -0x30e3c60c49fad1c4L    # -1.246792194789255E73
        -0x1a1332e287d86e0eL    # -9.560892487327163E182
        -0x3d58258dbb4b47b1L    # -1.3113493707356154E13
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_4
    .array-data 8
        0x6980934894def5a5L    # 1.5859490071339092E200
        0x3ba52f174ac9433aL    # 2.2429378614087762E-21
        -0x6594713275dedf54L
    .end array-data

    :array_5
    .array-data 8
        -0x1a12e9315691f371L    # -9.65645084903693E182
        -0x43729c8f044e2276L    # -5.098082153749918E-17
        -0x3f31871dcfa9d9efL    # -15601.767100113475
        -0x98ab640f1490ff7L    # -4.189599968991322E262
        -0x628be32a2d52d597L    # -8.526905322461996E-167
        0x154b255f1b263458L
    .end array-data

    :array_6
    .array-data 8
        -0x5eb88412f756c477L
        0x58b3569d9a3d520L
        0xc22701a30d3d395L
        -0x3538de1df52822b4L    # -1.7309683336724759E52
        0x64f53d6f78fc840eL
    .end array-data

    :array_7
    .array-data 8
        -0x82875764b777d77L
        0x24b057fdb655098bL    # 5.756422881118519E-132
        0x7f2caf08fb136d73L    # 3.934062646142195E304
    .end array-data
.end method

.method private final zaH()Z
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    iget v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zah:I

    .line 3
    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 5
    .line 6
    iput v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zah:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    if-gez v1, :cond_1

    .line 13
    .line 14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v3, v0, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabi;->zag:Lcom/google/android/gms/common/api/internal/zabe;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabe;->zaf()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/lang/Exception;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v0, v0, [J

    .line 42
    .line 43
    fill-array-data v0, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/16 v4, 0x13

    .line 56
    .line 57
    new-array v4, v4, [J

    .line 58
    .line 59
    fill-array-data v4, :array_2

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v0, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 73
    .line 74
    const/16 v1, 0x8

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaD(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 81
    .line 82
    .line 83
    return v2

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zae:Lcom/google/android/gms/common/ConnectionResult;

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 89
    .line 90
    iget v3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaf:I

    .line 91
    .line 92
    iput v3, v1, Lcom/google/android/gms/common/api/internal/zabi;->zaf:I

    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaD(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 95
    .line 96
    .line 97
    return v2

    .line 98
    :cond_2
    const/4 v0, 0x1

    .line 99
    return v0

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        0x128f20b2e623321fL
        0x2e74f01d946d933fL    # 6.73620689933101E-85
        -0x58a6ebc16e01509dL
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        0x3629e861e9f5bf33L    # 8.863398913104621E-48
        -0x1b71b32c312578eaL    # -2.3981240360469267E176
        -0x26856acae314195aL    # -1.0982966353978838E123
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_2
    .array-data 8
        -0x5cfd2075d007cef2L    # -4.952649802847084E-140
        0x798eadc9f938c803L    # 3.3989539887283282E277
        -0x2315ac550b40808fL    # -3.9189212350322575E139
        0x46d8ef1058675218L    # 2.0228736798483866E33
        0x76aed0f43eca9c40L    # 4.8518312378942885E263
        0x5142b04bc320253dL    # 2.8363961504358496E83
        0x5898cfdea4d08ebL
        -0x3c924a09b6f83803L    # -6.6902749731504104E16
        -0x38467ae2d522b548L    # -3.3921866962755877E37
        -0x4dfd9fd675ec9ab6L    # -8.519876757906501E-68
        -0x38328d65222088faL    # -7.828534957859491E37
        -0x601e2d65bdc96691L    # -4.153984937652595E-155
        -0x770093382fe56c33L
        -0x43d7d50e2ac5873dL    # -6.550682462172684E-19
        -0x712be9de5346e3b8L
        0x6c35d4091866a26aL    # 1.8371141439377014E213
        0x554c24fbcb178145L    # 7.879552765234555E102
        -0x281e3b15d93ca2f1L    # -2.187943888951816E115
        0x523720609878363bL    # 1.1501332862432257E88
    .end array-data
.end method

.method private final zaI(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zal:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method private static final zaJ(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    :goto_0
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    goto :goto_0

    :array_0
    .array-data 8
        0x178432a38a78f983L    # 2.161608606645194E-195
        0x58f7ac77abc30b3dL    # 3.8207132255093985E120
        -0x5b15d367cbdf9ef8L    # -7.375055094243245E-131
        -0x2c4492cb64eb389eL    # -2.2883917092990196E95
        0x485ff10e4ca5d9a4L    # 4.347668627316964E40
    .end array-data

    :array_1
    .array-data 8
        -0x21fd5d752220b06cL    # -7.271696275035879E144
        -0x6b12cbe043b111cfL    # -7.106398111222081E-208
        -0x6d242312ffe27abcL    # -7.893159664869762E-218
        0x1c23dbfb18bf70ceL
        -0x2cae77bbda9b5c6aL    # -2.2856899279374096E93
        0x458dfb63046017ceL    # 1.1598716575669111E27
    .end array-data
.end method

.method public static bridge synthetic zac(Lcom/google/android/gms/common/api/internal/zaaw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zac:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic zaf(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zad:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    return-object p0
.end method

.method public static bridge synthetic zak(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/api/internal/zabi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    return-object p0
.end method

.method public static bridge synthetic zal(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/internal/ClientSettings;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    return-object p0
.end method

.method public static bridge synthetic zam(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/internal/IAccountAccessor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zao:Lcom/google/android/gms/common/internal/IAccountAccessor;

    return-object p0
.end method

.method public static bridge synthetic zan(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/signin/zae;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zak:Lcom/google/android/gms/signin/zae;

    return-object p0
.end method

.method public static bridge synthetic zao(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/Set;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings;->getRequiredScopes()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings;->zad()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/google/android/gms/common/api/Api;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 46
    .line 47
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabi;->zab:Ljava/util/Map;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->zab()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/google/android/gms/common/internal/zab;

    .line 64
    .line 65
    iget-object v3, v3, Lcom/google/android/gms/common/internal/zab;->zaa:Ljava/util/Set;

    .line 66
    .line 67
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object p0, v1

    .line 72
    :goto_1
    return-object p0
.end method

.method public static bridge synthetic zap(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zab:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public static bridge synthetic zaq(Lcom/google/android/gms/common/api/internal/zaaw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaA()V

    return-void
.end method

.method public static bridge synthetic zar(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaG(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zab()Lcom/google/android/gms/common/internal/zav;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/google/android/gms/common/internal/zav;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v1, Ljava/lang/Exception;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    new-array v3, v3, [J

    .line 52
    .line 53
    fill-array-data v3, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v4, 0x7

    .line 66
    new-array v4, v4, [J

    .line 67
    .line 68
    fill-array-data v4, :array_1

    .line 69
    .line 70
    .line 71
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaD(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zan:Z

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zab()Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zao:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zac()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zap:Z

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zad()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaq:Z

    .line 115
    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaF()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaI(Lcom/google/android/gms/common/ConnectionResult;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaA()V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaF()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaD(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :array_0
    .array-data 8
        -0x5a4e1260da86de8eL
        0x780f4c51f0f15744L    # 2.066828555381999E270
        0x1e8bba42cb2b8cL
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_1
    .array-data 8
        0x29261cd1722a05dL
        0x71adfd0fee5613d5L    # 3.9055451778340806E239
        -0x1a1a845b12094c50L    # -7.131518582417154E182
        0x4a628a5287febee7L    # 2.1677368565024237E50
        0x5530e553aeb429dcL
        -0x8fc57fe9db9c46cL
        0x6873864a1c83f484L    # 1.4252749389084953E195
    .end array-data
.end method

.method public static bridge synthetic zas(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaaw;->zaD(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public static bridge synthetic zat(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zaaw;->zaE(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    return-void
.end method

.method public static bridge synthetic zau(Lcom/google/android/gms/common/api/internal/zaaw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaF()V

    return-void
.end method

.method public static bridge synthetic zav(Lcom/google/android/gms/common/api/internal/zaaw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zam:Z

    return p0
.end method

.method public static bridge synthetic zaw(Lcom/google/android/gms/common/api/internal/zaaw;I)Z
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaaw;->zaG(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic zax(Lcom/google/android/gms/common/api/internal/zaaw;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaH()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic zay(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaaw;->zaI(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result p0

    return p0
.end method

.method private final zaz()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zau:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/util/concurrent/Future;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zau:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final zaa(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabi;->zag:Lcom/google/android/gms/common/api/internal/zabe;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabe;->zaa:Ljava/util/Queue;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x3004e5dadf56a657L    # 2.2559692026106257E-77
        -0x17b609eb679afd6dL    # -2.368933390210296E194
        0x2bbc140b32abed99L    # 5.134902103137278E-98
        0x350748cc52291569L    # 3.0387517704565775E-53
        -0x2ac5890aba3ae874L    # -3.7046330013828224E102
        0x5fa4f93ac9553a03L    # 5.492370580476821E152
    .end array-data
.end method

.method public final zad()V
    .locals 11
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabi;->zab:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zam:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zae:Lcom/google/android/gms/common/ConnectionResult;

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zag:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zal:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zan:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zap:Z

    .line 22
    .line 23
    new-instance v3, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zas:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_3

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lcom/google/android/gms/common/api/Api;

    .line 50
    .line 51
    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 52
    .line 53
    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabi;->zaa:Ljava/util/Map;

    .line 54
    .line 55
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zab()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Lcom/google/android/gms/common/api/Api$Client;

    .line 64
    .line 65
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Lcom/google/android/gms/common/api/Api$Client;

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getPriority()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-ne v8, v2, :cond_0

    .line 80
    .line 81
    const/4 v8, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    const/4 v8, 0x0

    .line 84
    :goto_1
    or-int/2addr v5, v8

    .line 85
    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zas:Ljava/util/Map;

    .line 86
    .line 87
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    invoke-interface {v7}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_2

    .line 102
    .line 103
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zam:Z

    .line 104
    .line 105
    if-eqz v8, :cond_1

    .line 106
    .line 107
    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaj:Ljava/util/Set;

    .line 108
    .line 109
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zab()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zal:Z

    .line 118
    .line 119
    :cond_2
    :goto_2
    new-instance v9, Lcom/google/android/gms/common/api/internal/zaal;

    .line 120
    .line 121
    invoke-direct {v9, p0, v6, v8}, Lcom/google/android/gms/common/api/internal/zaal;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/Api;Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    if-eqz v5, :cond_4

    .line 129
    .line 130
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zam:Z

    .line 131
    .line 132
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zam:Z

    .line 133
    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 149
    .line 150
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabi;->zag:Lcom/google/android/gms/common/api/internal/zabe;

    .line 151
    .line 152
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/ClientSettings;->zae(Ljava/lang/Integer;)V

    .line 161
    .line 162
    .line 163
    new-instance v10, Lcom/google/android/gms/common/api/internal/zaat;

    .line 164
    .line 165
    invoke-direct {v10, p0, v1}, Lcom/google/android/gms/common/api/internal/zaat;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/internal/zaas;)V

    .line 166
    .line 167
    .line 168
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 169
    .line 170
    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zac:Landroid/content/Context;

    .line 171
    .line 172
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabi;->zag:Lcom/google/android/gms/common/api/internal/zabe;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->getLooper()Landroid/os/Looper;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 181
    .line 182
    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/ClientSettings;->zaa()Lcom/google/android/gms/signin/SignInOptions;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    move-object v9, v10

    .line 187
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zak:Lcom/google/android/gms/signin/zae;

    .line 192
    .line 193
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabi;->zaa:Ljava/util/Map;

    .line 196
    .line 197
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zah:I

    .line 202
    .line 203
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zau:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zabj;->zaa()Ljava/util/concurrent/ExecutorService;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    new-instance v2, Lcom/google/android/gms/common/api/internal/zaao;

    .line 210
    .line 211
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/common/api/internal/zaao;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/Map;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public final zae()V
    .locals 0

    return-void
.end method

.method public final zag(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaG(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zai:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaH()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaC()V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method public final zah(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaG(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zaaw;->zaE(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaH()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaC()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final zai(I)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaaw;->zaD(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zaj()Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaz()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaB(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabi;->zak(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 12
    .line 13
    .line 14
    return v0
.end method
