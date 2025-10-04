.class Lcom/google/android/play/core/appupdate/zzo;
.super Lcom/google/android/play/core/appupdate/internal/zzg;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/play/core/appupdate/internal/zzm;

.field final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzc:Lcom/google/android/play/core/appupdate/zzr;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/play/core/appupdate/internal/zzm;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzo;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzg;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzo;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public zzb(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzo;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzu(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzo;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 11
    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x5a1af67b65918c32L
        -0x1b7845dcaa3d1126L    # -1.8778987461393498E176
        -0x3f57700bfc716878L    # -3143.976589637754
    .end array-data
.end method

.method public zzc(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzo;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzu(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzo;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 11
    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x6b1be041d3994434L    # -4.896967456195999E-208
        -0x4b4909fd72055767L    # -9.3642101509887E-55
        -0x13a3ba8bf45c60d5L    # -9.5174969881956E213
    .end array-data
.end method
