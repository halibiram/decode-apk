.class final Lcom/google/android/play/core/appupdate/internal/zzq;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzb:Lcom/google/android/play/core/appupdate/internal/zzn;

.field final synthetic zzc:Lcom/google/android/play/core/appupdate/internal/zzx;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzx;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/appupdate/internal/zzn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzc:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzb:Lcom/google/android/play/core/appupdate/internal/zzn;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzc:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzg(Lcom/google/android/play/core/appupdate/internal/zzx;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzc:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn(Lcom/google/android/play/core/appupdate/internal/zzx;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzc:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzi(Lcom/google/android/play/core/appupdate/internal/zzx;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzc:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf(Lcom/google/android/play/core/appupdate/internal/zzx;)Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v3, 0x6

    .line 36
    new-array v3, v3, [J

    .line 37
    .line 38
    fill-array-data v3, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    new-array v3, v3, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzc:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzb:Lcom/google/android/play/core/appupdate/internal/zzn;

    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzp(Lcom/google/android/play/core/appupdate/internal/zzx;Lcom/google/android/play/core/appupdate/internal/zzn;)V

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x2e23d016df0e97caL    # -2.1903320572131874E86
        0x20d6823e249d3fbdL
        0x647b3dda42627f50L    # 1.0780285983128336E176
        -0x7ed1df20a491d76dL    # -5.491747503671867E-303
        -0x276abe131ff9f525L    # -5.360569353201534E118
        0x55f45bf684216f6dL    # 1.1673466621869924E106
    .end array-data
.end method
