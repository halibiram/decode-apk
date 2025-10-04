.class public abstract Lcom/google/android/gms/common/api/GoogleApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/GoogleApiClient$Builder;,
        Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;,
        Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_ACCOUNT:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final SIGN_IN_MODE_OPTIONAL:I = 0x2

.field public static final SIGN_IN_MODE_REQUIRED:I = 0x1

.field private static final zaa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sAllClients"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    sput-object v0, Lcom/google/android/gms/common/api/GoogleApiClient;->DEFAULT_ACCOUNT:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/android/gms/common/api/GoogleApiClient;->zaa:Ljava/util/Set;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x5a210d869c212646L    # -2.857345105676274E-126
        -0x1e73616a3ef2832cL    # -8.047283745097463E161
        0x1a47f6902b3cbL
        -0x6e52ec5a5e7c65b8L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpAll(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/GoogleApiClient;->zaa:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v3, v3, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 43
    .line 44
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v7, 0x3

    .line 51
    new-array v7, v7, [J

    .line 52
    .line 53
    fill-array-data v7, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    add-int/lit8 v6, v3, 0x1

    .line 68
    .line 69
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v1, p1, p2, p3}, Lcom/google/android/gms/common/api/GoogleApiClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    move v3, v6

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0

    .line 83
    :array_0
    .array-data 8
        -0x2fa5f267e1cef56aL    # -1.206697262532077E79
        0x6871a2cb15b694b5L    # 1.2874047707747077E195
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_1
    .array-data 8
        -0x4802399e75386e29L    # -5.468790181494314E-39
        0x4c9feae727031528L    # 1.2822397254559864E61
        -0x431b8c62ea6f8a9cL    # -2.2705854602305932E-15
    .end array-data
.end method

.method public static getAllClients()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/GoogleApiClient;->zaa:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-exit v0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v1
.end method

.method public static bridge synthetic zaq()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/GoogleApiClient;->zaa:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public abstract blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract connect()V
.end method

.method public connect(I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract disconnect()V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

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
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

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
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Api$AnyClientKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public abstract getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
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
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public hasApi(Lcom/google/android/gms/common/api/Api;)Z
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public abstract hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isConnecting()Z
.end method

.method public abstract isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public maybeSignIn(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/SignInConnectionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public maybeSignOut()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public abstract reconnect()V
.end method

.method public abstract registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public registerListener(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public abstract stopAutoManage(Landroidx/fragment/app/FragmentActivity;)V
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public zao(Lcom/google/android/gms/common/api/internal/zada;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public zap(Lcom/google/android/gms/common/api/internal/zada;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method
