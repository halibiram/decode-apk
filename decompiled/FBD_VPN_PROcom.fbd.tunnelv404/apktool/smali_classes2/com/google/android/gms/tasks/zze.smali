.class final Lcom/google/android/gms/tasks/zze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/Task;

.field final synthetic zzb:Lcom/google/android/gms/tasks/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzf;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/zzf;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zze;->zza:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/zzf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/zzf;->zza(Lcom/google/android/gms/tasks/zzf;)Lcom/google/android/gms/tasks/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zza:Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/zzf;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/NullPointerException;

    .line 20
    .line 21
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v3, 0x5

    .line 24
    new-array v3, v3, [J

    .line 25
    .line 26
    fill-array-data v3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzf;->onFailure(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/zzf;

    .line 44
    .line 45
    sget-object v2, Lcom/google/android/gms/tasks/TaskExecutors;->zza:Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/zzf;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/zzf;

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/zzf;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzf;->zzb(Lcom/google/android/gms/tasks/zzf;)Lcom/google/android/gms/tasks/zzw;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    instance-of v1, v1, Ljava/lang/Exception;

    .line 80
    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/zzf;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzf;->zzb(Lcom/google/android/gms/tasks/zzf;)Lcom/google/android/gms/tasks/zzw;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/Exception;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tasks/zze;->zzb:Lcom/google/android/gms/tasks/zzf;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzf;->zzb(Lcom/google/android/gms/tasks/zzf;)Lcom/google/android/gms/tasks/zzw;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :array_0
    .array-data 8
        -0x2440df851456b16cL    # -8.837585377367148E133
        -0x6f286992c8010706L
        0x7d7b086bce8c991L    # 7.0064952353267E-271
        -0x6e2126ab47b7ecefL
        -0x6270ebde06bdea17L    # -2.635205327330367E-166
    .end array-data
.end method
