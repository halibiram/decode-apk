.class final Lcom/google/android/play/core/appupdate/zzm;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzc:Lcom/google/android/play/core/appupdate/zzr;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

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
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zze()Landroid/os/IInterface;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/zzr;->zzh(Lcom/google/android/play/core/appupdate/zzr;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lcom/google/android/play/core/appupdate/zzr;->zzb(Lcom/google/android/play/core/appupdate/zzr;Ljava/lang/String;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v3, Lcom/google/android/play/core/appupdate/zzq;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    .line 24
    .line 25
    iget-object v5, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/play/core/appupdate/zzq;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/play/core/appupdate/internal/zzf;->zzd(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/appupdate/internal/zzh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-static {}, Lcom/google/android/play/core/appupdate/zzr;->zzg()Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    aput-object v2, v3, v4

    .line 48
    .line 49
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v4, 0x4

    .line 52
    new-array v4, v4, [J

    .line 53
    .line 54
    fill-array-data v4, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 68
    .line 69
    new-instance v2, Ljava/lang/RuntimeException;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        -0x7a30a64dfd5e2b12L
        0x3dc92066946d6582L    # 4.570495592532582E-11
        0x3706a8c8654e2a57L    # 1.270098128692462E-43
        0x322f0c761dea88a3L    # 5.75829724434915E-67
    .end array-data
.end method
