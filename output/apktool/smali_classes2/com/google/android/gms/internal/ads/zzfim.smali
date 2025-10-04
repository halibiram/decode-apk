.class public final Lcom/google/android/gms/internal/ads/zzfim;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static zza:Lcom/google/android/gms/tasks/Task;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static zzb:Lcom/google/android/gms/appset/AppSetIdClient;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final zzc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfim;->zzc:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfim;->zzb(Landroid/content/Context;Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfim;->zzc:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfim;->zza:Lcom/google/android/gms/tasks/Task;

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v0
.end method

.method public static zzb(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfim;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfim;->zzb:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sput-object p0, Lcom/google/android/gms/internal/ads/zzfim;->zzb:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfim;->zza:Lcom/google/android/gms/tasks/Task;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfim;->zza:Lcom/google/android/gms/tasks/Task;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    :cond_1
    if-eqz p1, :cond_3

    .line 36
    .line 37
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfim;->zza:Lcom/google/android/gms/tasks/Task;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfim;->zzb:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 46
    .line 47
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v1, 0x6

    .line 50
    new-array v1, v1, [J

    .line 51
    .line 52
    fill-array-data v1, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Lcom/google/android/gms/appset/AppSetIdClient;

    .line 67
    .line 68
    invoke-interface {p0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    sput-object p0, Lcom/google/android/gms/internal/ads/zzfim;->zza:Lcom/google/android/gms/tasks/Task;

    .line 73
    .line 74
    :cond_3
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        0x3eb589f8245f948aL    # 1.2838210223739575E-6
        -0x4579b90810b67b6fL    # -8.997697778797755E-27
        -0x41bd92902bda599eL    # -8.580967607226543E-9
        0x16fd6322b8f1caa8L
        0x6ea1642bed557019L    # 8.04671661902066E224
        0x727cd767dc445f92L    # 3.077040987696263E243
    .end array-data
.end method
