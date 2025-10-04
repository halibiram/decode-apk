.class public final Lcom/google/android/gms/internal/ads/zzezm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcdl;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgey;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbas;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbas;Lcom/google/android/gms/internal/ads/zzcdl;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzgey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezm;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezm;->zze:Lcom/google/android/gms/internal/ads/zzbas;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzezm;->zza:Lcom/google/android/gms/internal/ads/zzcdl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzezm;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzezm;->zzd:Lcom/google/android/gms/internal/ads/zzgey;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x2b

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzcC:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzcH:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfui;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezm;->zzd:Lcom/google/android/gms/internal/ads/zzgey;

    .line 47
    .line 48
    sget-object v2, Lcom/google/android/gms/internal/ads/zzezk;->zza:Lcom/google/android/gms/internal/ads/zzezk;

    .line 49
    .line 50
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgen;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgdu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhp;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhp;->zzb:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Long;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzezm;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 81
    .line 82
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 83
    .line 84
    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgen;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzezl;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzezl;-><init>(Lcom/google/android/gms/internal/ads/zzezm;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzezm;->zzd:Lcom/google/android/gms/internal/ads/zzgey;

    .line 94
    .line 95
    const-class v3, Ljava/lang/Exception;

    .line 96
    .line 97
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgen;->zze(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfws;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0

    .line 102
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzezn;

    .line 103
    .line 104
    const/4 v2, -0x1

    .line 105
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzezn;-><init>(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method

.method public final synthetic zzc(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzezn;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezm;->zza:Lcom/google/android/gms/internal/ads/zzcdl;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzezn;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v1, -0x1

    .line 25
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzezn;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :array_0
    .array-data 8
        0x6c6a5ab40991b0dfL    # 1.7744288046474548E214
        0xbced03da2a2f6f8L
        0x4b8b1e78b75a8492L    # 8.311958351188144E55
        -0x4f04ef24d7504932L    # -9.574203053369878E-73
        0x37f8a4045c83fa39L    # 4.525780268250904E-39
    .end array-data
.end method
