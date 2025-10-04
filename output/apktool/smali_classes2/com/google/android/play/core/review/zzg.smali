.class Lcom/google/android/play/core/review/zzg;
.super Lcom/google/android/play/core/review/internal/zzg;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/play/core/review/internal/zzi;

.field final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzc:Lcom/google/android/play/core/review/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/play/core/review/internal/zzi;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/review/zzg;->zzc:Lcom/google/android/play/core/review/zzi;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzg;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/play/core/review/zzg;->zza:Lcom/google/android/play/core/review/internal/zzi;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public zzb(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/review/zzg;->zzc:Lcom/google/android/play/core/review/zzi;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/play/core/review/zzi;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/review/internal/zzt;->zzu(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/review/zzg;->zza:Lcom/google/android/play/core/review/internal/zzi;

    .line 13
    .line 14
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    new-array v1, v1, [J

    .line 18
    .line 19
    fill-array-data v1, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/google/android/play/core/review/internal/zzi;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        0x12aff4d3596428cdL
        -0x111769e91ca7eecdL    # -1.820118665348865E226
        -0x7a6991e371a48097L    # -9.65374286342139E-282
        -0x4000445571af766cL    # -1.983316951671985
        -0xd85c1e2e9550d23L
    .end array-data
.end method
