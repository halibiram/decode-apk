.class public final Lcom/google/android/gms/internal/ads/zzecv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgey;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgey;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzedq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhgx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgey;Lcom/google/android/gms/internal/ads/zzgey;Lcom/google/android/gms/internal/ads/zzedq;Lcom/google/android/gms/internal/ads/zzhgx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecv;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzecv;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzecv;->zzc:Lcom/google/android/gms/internal/ads/zzedq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzecv;->zzd:Lcom/google/android/gms/internal/ads/zzhgx;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbym;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzkX:Lcom/google/android/gms/internal/ads/zzbfu;

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
    check-cast v0, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecv;->zzc:Lcom/google/android/gms/internal/ads/zzedq;

    .line 18
    .line 19
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzedq;->zza(Lcom/google/android/gms/internal/ads/zzbym;J)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbym;ILcom/google/android/gms/internal/ads/zzecf;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzecv;->zzd:Lcom/google/android/gms/internal/ads/zzhgx;

    .line 2
    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzhgx;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/google/android/gms/internal/ads/zzeew;

    .line 8
    .line 9
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzeew;->zzb(Lcom/google/android/gms/internal/ads/zzbym;I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbym;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbym;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzt;->zzB(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v1, 0x5

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
    new-instance v1, Lcom/google/android/gms/internal/ads/zzecf;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzecf;-><init>(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgen;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecs;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzecs;-><init>(Lcom/google/android/gms/internal/ads/zzecv;Lcom/google/android/gms/internal/ads/zzbym;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecv;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgen;->zzk(Lcom/google/android/gms/internal/ads/zzgdt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecv;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 50
    .line 51
    const-class v2, Ljava/util/concurrent/ExecutionException;

    .line 52
    .line 53
    sget-object v3, Lcom/google/android/gms/internal/ads/zzect;->zza:Lcom/google/android/gms/internal/ads/zzect;

    .line 54
    .line 55
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgen;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    new-instance v2, Lcom/google/android/gms/internal/ads/zzecu;

    .line 64
    .line 65
    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzecu;-><init>(Lcom/google/android/gms/internal/ads/zzecv;Lcom/google/android/gms/internal/ads/zzbym;I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecv;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 69
    .line 70
    const-class v1, Lcom/google/android/gms/internal/ads/zzecf;

    .line 71
    .line 72
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :array_0
    .array-data 8
        -0x71abadf4a827fe0aL
        -0x6a977af3d32e59b3L
        0x37d216633416eb7L
        -0x2bbc5732bb921ea1L    # -8.398437072974344E97
        0x5c0f84ca38be1c1L
    .end array-data
.end method
