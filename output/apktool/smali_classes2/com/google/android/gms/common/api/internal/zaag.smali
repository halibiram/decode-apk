.class public Lcom/google/android/gms/common/api/internal/zaag;
.super Lcom/google/android/gms/common/api/GoogleApiClient;
.source "SourceFile"


# instance fields
.field private final zaa:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v0, 0x10

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x38c8e5e7f5068996L    # -1.1995207526832814E35
        -0x64f71e97278bcdf5L    # -1.918720826290898E-178
        -0x56f84a93986d5456L    # -4.929229989068249E-111
        0x5a2627d79ad82e24L    # 1.874702572317958E126
        0x33a0eb8242f650bbL    # 5.264657353867295E-60
        0x296c5c751ec02a25L    # 3.77377154017052E-109
        -0x63aa191133cf6f1eL
        0x2fabda25a30d9357L    # 4.697963827573873E-79
        -0x308a35d1aadbb64dL    # -6.159870439426755E74
        -0x753600b368f4e733L
        -0x579b669c0032ce8bL
        -0xb57972854555b59L    # -8.947999945226409E253
        -0x64eadf5a379511aaL    # -3.258601817247764E-178
        0x104ebf4b8128cda3L
        0x2908c372d8735fbdL    # 5.148528597190351E-111
        -0x73dafbfe2ab3fe73L
    .end array-data
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final connect()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final disconnect()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1
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

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .locals 1
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

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final isConnected()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final isConnecting()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final reconnect()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final stopAutoManage(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
