.class public final Lcom/google/android/gms/internal/measurement/zzbz;
.super Lcom/google/android/gms/internal/measurement/zzce;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private zzb:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzce;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    return-void
.end method

.method public static final zze(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    new-array v3, v0, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-array v2, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    aput-object p1, v2, v3

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    aput-object p0, v2, p1

    .line 50
    .line 51
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array p1, v0, [J

    .line 54
    .line 55
    fill-array-data p1, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/16 p1, 0x8

    .line 67
    .line 68
    new-array p1, p1, [J

    .line 69
    .line 70
    fill-array-data p1, :array_2

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    throw v1

    .line 84
    :cond_0
    :goto_0
    return-object v1

    .line 85
    :array_0
    .array-data 8
        -0x22fc59c7039d82f2L    # -1.1699713850546264E140
        0x4439ef968ac933afL    # 4.784327406610703E20
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
    :array_1
    .array-data 8
        0x4a6dde7f9a94a6abL    # 3.4923031275387723E50
        0x3e789becfc769309L    # 9.167598512842125E-8
    .end array-data

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
    :array_2
    .array-data 8
        0x5febf72013e34132L
        0x67a168ed6954b596L
        0x359293583aa6aa5aL    # 1.2412028663409853E-50
        0x6a3119265f541e93L    # 3.3504916491638656E203
        -0x4406f7fc366a19f5L    # -8.480936965007756E-20
        0x3b528a90394051ebL    # 6.13478937325562E-23
        -0x1e30473ab9507d3eL    # -1.4271346452683347E163
        0x3ba38945812fc0fL
    .end array-data
.end method


# virtual methods
.method public final zzb(J)Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzbz;->zzb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :catch_0
    :try_start_2
    monitor-exit v0

    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/os/Bundle;

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object p1

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    throw p1
.end method

.method public final zzc(J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbz;->zzb(J)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-class p2, Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbz;->zze(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    return-object p1
.end method

.method public final zzd(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzbz;->zzb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :catchall_1
    move-exception p1

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method
