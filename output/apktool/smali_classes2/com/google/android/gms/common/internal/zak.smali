.class public final Lcom/google/android/gms/common/internal/zak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final zaa:Ljava/util/ArrayList;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final zab:Lcom/google/android/gms/common/internal/zaj;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private final zac:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final zad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zae:Z

.field private final zaf:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zag:Z

.field private final zah:Landroid/os/Handler;

.field private final zai:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zaj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zak;->zae:Z

    .line 27
    .line 28
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zak;->zag:Z

    .line 36
    .line 37
    new-instance v0, Ljava/lang/Object;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zak;->zab:Lcom/google/android/gms/common/internal/zaj;

    .line 45
    .line 46
    new-instance p2, Lcom/google/android/gms/internal/base/zaq;

    .line 47
    .line 48
    invoke-direct {p2, p1, p0}, Lcom/google/android/gms/internal/base/zaq;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zak;->zae:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zab:Lcom/google/android/gms/common/internal/zaj;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zaj;->isConnected()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    monitor-exit v2

    .line 41
    return v1

    .line 42
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const/16 v1, 0x2d

    .line 47
    .line 48
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v2, 0x6

    .line 54
    new-array v2, v2, [J

    .line 55
    .line 56
    fill-array-data v2, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    new-instance v0, Ljava/lang/Exception;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/4 v2, 0x3

    .line 80
    new-array v2, v2, [J

    .line 81
    .line 82
    fill-array-data v2, :array_1

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .line 98
    .line 99
    const/4 p1, 0x0

    .line 100
    return p1

    .line 101
    :array_0
    .array-data 8
        -0x27acb6c3a6978f4aL    # -3.039640518613726E117
        -0x2907116bf0df7530L
        -0x7373b4890698eaa3L
        0x149f905d08af155L
        0x6fb4eee06fa6842bL    # 1.2694935664103E230
        -0x3814c161c8e7175cL    # -2.897142982191767E38
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
    :array_1
    .array-data 8
        0xc7c08de0e38bc1fL
        -0x20386657d0870b38L    # -2.472087899505201E153
        -0x5b3bc9b4a109138dL
    .end array-data
.end method

.method public final zaa()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zak;->zae:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zab()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zak;->zae:Z

    return-void
.end method

.method public final zac(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 59
    .line 60
    iget-boolean v4, p0, Lcom/google/android/gms/common/internal/zak;->zae:Z

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eq v4, v2, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_0

    .line 80
    .line 81
    invoke-interface {v3, p1}, Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    :goto_1
    monitor-exit v0

    .line 88
    return-void

    .line 89
    :cond_3
    monitor-exit v0

    .line 90
    return-void

    .line 91
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p1

    .line 93
    :array_0
    .array-data 8
        -0x778b639193bb3608L    # -6.242293631412753E-268
        -0x4a0cae29f7329976L    # -8.26191007165198E-49
        -0x7257d8c1a3e9bdc0L    # -7.074730465252507E-243
        -0x48e7b6c96f650f10L    # -2.722553509708888E-43
        0x24d450752139427fL    # 2.861959532077957E-131
        -0x7ce17e3856d83dcL    # -9.46000351957545E270
        -0x54003b393a4bf2c5L    # -9.295660943283241E-97
        0x6e69e3c05bd5b85bL    # 7.486744988834689E223
        0x1f943d9c40dd1cf0L
    .end array-data
.end method

.method public final zad(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/zak;->zag:Z

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    xor-int/2addr v1, v2

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    .line 36
    .line 37
    iput-boolean v2, p0, Lcom/google/android/gms/common/internal/zak;->zag:Z

    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 76
    .line 77
    iget-boolean v4, p0, Lcom/google/android/gms/common/internal/zak;->zae:Z

    .line 78
    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zak;->zab:Lcom/google/android/gms/common/internal/zaj;

    .line 82
    .line 83
    invoke-interface {v4}, Lcom/google/android/gms/common/internal/zaj;->isConnected()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eq v4, v2, :cond_1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_0

    .line 105
    .line 106
    invoke-interface {v3, p1}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 115
    .line 116
    .line 117
    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zak;->zag:Z

    .line 119
    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 122
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p1

    .line 124
    nop

    .line 125
    :array_0
    .array-data 8
        -0xf9d8b8384b75ff7L    # -2.2921407467231903E233
        0x869d4309175caa1L
        -0x7fa241ec99146878L    # -6.617922263756529E-307
        0x50d2538d75c635faL    # 2.1729786992520323E81
        0x3566c07eeab181d4L
        -0x24d82f1186c76342L    # -1.3206857265851666E131
        0x2d1913a6bed2930aL    # 1.9235027153290524E-91
        0x780908e4f848fa4dL    # 1.6532147799284918E270
        0x7d07c32b46aa7cfbL    # 1.8970365615266625E294
    .end array-data
.end method

.method public final zae(I)V
    .locals 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/zak;->zag:Z

    .line 32
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 61
    .line 62
    iget-boolean v4, p0, Lcom/google/android/gms/common/internal/zak;->zae:Z

    .line 63
    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eq v4, v2, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    invoke-interface {v3, p1}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->onConnectionSuspended(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 92
    .line 93
    .line 94
    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zak;->zag:Z

    .line 96
    .line 97
    monitor-exit v0

    .line 98
    return-void

    .line 99
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p1

    .line 101
    :array_0
    .array-data 8
        -0x3be63cb7158eaff3L    # -1.1881008916271328E20
        0x3fe41716c40c5b92L    # 0.6278184727733438
        -0x38c6d9a0c077fafbL    # -1.3058569936574154E35
        0x187a260737f7514eL    # 9.17002099143676E-191
        0x7993614f39039461L    # 4.294299905150001E277
        -0x4129d4090d404cafL    # -5.286154003397739E-6
        -0x61eb2ecde8a77adbL    # -9.037411728198192E-164
        -0x2183e51ea9fe73b5L    # -1.4037879307566198E147
        0x738b00a62acfedb1L    # 3.775991308831876E248
        -0x61446b9a0aa1c981L
    .end array-data
.end method

.method public final zaf(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    new-array v2, v2, [J

    .line 19
    .line 20
    fill-array-data v2, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/lit8 v1, v1, 0x3e

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v2, 0x6

    .line 47
    new-array v2, v2, [J

    .line 48
    .line 49
    fill-array-data v2, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v2, 0x4

    .line 61
    new-array v2, v2, [J

    .line 62
    .line 63
    fill-array-data v2, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zab:Lcom/google/android/gms/common/internal/zaj;

    .line 82
    .line 83
    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zaj;->isConnected()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void

    .line 100
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p1

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        0x7b8b98b44a53a204L    # 1.3131668358411498E287
        -0x7369dd21a8551816L
        -0x72e7aa9265cc656dL
    .end array-data

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
    .line 118
    .line 119
    :array_1
    .array-data 8
        0x4ddffa5008e3bc67L    # 1.3470614749609088E67
        0x6f2ee8d6c145a0ccL    # 3.6611633100812385E227
        0x584b37195e6913a8L    # 2.1446693889418278E117
        0x6084effa5be21282L    # 8.983194382134088E156
        0x43c46bfa47c1f590L    # 2.9430897787406336E18
        -0x5e19e1dbc1fb469aL
    .end array-data

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
    .line 134
    .line 135
    .line 136
    .line 137
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
    :array_2
    .array-data 8
        -0x4ddb1f61b291f0cdL    # -3.8719318998677424E-67
        0x1fd87f6e46b3a41dL    # 2.854886934043368E-155
        -0x5057c4b9420939a7L    # -4.087260439495965E-79
        0x4d180834e23d7bb4L    # 2.4715537012410865E63
    .end array-data
.end method

.method public final zag(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    new-array v2, v2, [J

    .line 19
    .line 20
    fill-array-data v2, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    add-int/lit8 p1, p1, 0x43

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v1, 0x7

    .line 47
    new-array v1, v1, [J

    .line 48
    .line 49
    fill-array-data v1, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v1, 0x4

    .line 61
    new-array v1, v1, [J

    .line 62
    .line 63
    fill-array-data v1, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :goto_0
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p1

    .line 84
    nop

    .line 85
    :array_0
    .array-data 8
        -0x36e0f01641facc7dL    # -1.7317733095381094E44
        0x1d179c475eaa6af6L
        -0x2fd27929b177aa1dL    # -1.7094795784380013E78
    .end array-data

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
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        0x5ebd87261fb89d8bL    # 2.3597762187397724E148
        -0x1f266fddaf9cc067L    # -3.509699690572169E158
        -0x7ac1c47b02044960L
        0xe98871951603992L
        -0x18876e8f5cffd04L
        0xd1716a02813710bL
        -0x7e7a4afcf6e30b94L
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
        0x7608360d8d57de8eL    # 3.722558939014587E260
        0x40504b7654f64471L    # 65.17909740495249
        -0x492635950b5e52ceL    # -1.8070230307340617E-44
        -0x3cc72224aec189d6L    # -6.999333471680042E15
    .end array-data
.end method

.method public final zah(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v3, v0, [J

    .line 19
    .line 20
    fill-array-data v3, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    add-int/lit8 p1, p1, 0x34

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    new-array v2, v2, [J

    .line 48
    .line 49
    fill-array-data v2, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zak;->zag:Z

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    monitor-exit v1

    .line 84
    return-void

    .line 85
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p1

    .line 87
    :array_0
    .array-data 8
        -0x285e76a54ad09d09L    # -1.349560295232977E114
        -0x252ac3cabaebfef6L    # -3.679885109629509E129
        0xbe9637a8e5ecf19L
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_1
    .array-data 8
        -0x47a92f0ffbfcd6b6L    # -2.682026994814075E-37
        -0x3a57e0b4f39448ccL    # -3.7327356713646045E27
        -0x740b0d6abba63ae0L    # -4.571489143146396E-251
        0x3d261b5e46952e9eL    # 3.9269755950554905E-14
        -0x3de2ab705f2c064eL    # -3.1493187636993843E10
        0x1ea698e1c0035f95L    # 5.022811217193087E-161
        0x4a95d5d1fa4b02d3L    # 2.0423828529585502E51
    .end array-data

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
    .line 134
    .line 135
    :array_2
    .array-data 8
        -0x68e17eb70b017717L
        0x3a60b4f371c6a1aeL    # 1.6869597009075293E-27
        -0x46e30ae49254eb21L    # -1.394250490823018E-33
    .end array-data
.end method

.method public final zai(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v3, v0, [J

    .line 19
    .line 20
    fill-array-data v3, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    add-int/lit8 p1, p1, 0x39

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    new-array v2, v2, [J

    .line 48
    .line 49
    fill-array-data v2, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    monitor-exit v1

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p1

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        0x2e746f805da858c8L    # 6.574573946700429E-85
        -0x582eeb3b5c1b0e0bL    # -6.773578595838184E-117
        -0x2c7a82c17a3a9ffcL    # -2.2412464816861157E94
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
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
        -0x1ed69d6fc6a621cbL    # -1.1152830662912157E160
        -0x8282f7f77d12340L    # -1.965789005650974E269
        -0x33638393c3fb204dL    # -1.1443819938854021E61
        -0x4807be0d4097970fL    # -4.455419352398104E-39
        0x739dd03b01aa19c8L    # 8.338116295072451E248
        0x65f8ce25d6e74ccL
        -0x1eba196b50c13f17L    # -3.848804275050398E160
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
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
    :array_2
    .array-data 8
        0x6b196631ab3b7513L    # 8.154493379216554E207
        0x6920715542c452bcL    # 2.4582185063122995E198
        0x25187b91e5b65617L    # 5.518754861569979E-130
    .end array-data
.end method

.method public final zaj(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    monitor-exit v0

    .line 14
    return p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method

.method public final zak(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    monitor-exit v0

    .line 14
    return p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method
