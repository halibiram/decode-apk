.class public final Lcom/google/android/gms/common/api/internal/zabx;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field zaa:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zab:Lcom/google/android/gms/common/api/internal/zabw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabx;->zab:Lcom/google/android/gms/common/api/internal/zabw;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    new-array v0, v0, [J

    .line 17
    .line 18
    fill-array-data v0, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabx;->zab:Lcom/google/android/gms/common/api/internal/zabw;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabw;->zaa()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabx;->zab()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void

    .line 43
    :array_0
    .array-data 8
        -0x7503dcb617f3a15fL    # -9.369891241801956E-256
        -0xcb8175df9ce0a8eL
        0x609766cb4c5e7138L    # 2.0080854274282797E157
        0x2e24cc50264594ddL    # 2.0910040454217683E-86
    .end array-data
.end method

.method public final zaa(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabx;->zaa:Landroid/content/Context;

    return-void
.end method

.method public final declared-synchronized zab()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabx;->zaa:Landroid/content/Context;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabx;->zaa:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method
