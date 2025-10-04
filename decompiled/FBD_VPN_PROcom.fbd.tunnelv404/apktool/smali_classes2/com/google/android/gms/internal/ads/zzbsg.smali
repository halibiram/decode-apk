.class public final Lcom/google/android/gms/internal/ads/zzbsg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbrj;

.field private zzb:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbrj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zza:Lcom/google/android/gms/internal/ads/zzbrj;

    return-void
.end method

.method private final zzd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzceu;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzceu;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zza:Lcom/google/android/gms/internal/ads/zzbrj;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbrj;->zzb(Lcom/google/android/gms/internal/ads/zzavi;)Lcom/google/android/gms/internal/ads/zzbrd;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbsd;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbsd;-><init>(Lcom/google/android/gms/internal/ads/zzceu;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbse;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzbse;-><init>(Lcom/google/android/gms/internal/ads/zzceu;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzi(Lcom/google/android/gms/internal/ads/zzcey;Lcom/google/android/gms/internal/ads/zzcew;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrq;Lcom/google/android/gms/internal/ads/zzbrp;)Lcom/google/android/gms/internal/ads/zzbsj;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbsg;->zzd()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbsj;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbsj;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrq;Lcom/google/android/gms/internal/ads/zzbrp;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :array_0
    .array-data 8
        0x32654dcc524314ffL    # 6.32164424038008E-66
        0x57b1501d5f5ca9f5L    # 2.664706608659599E114
        -0x3b0f5abe9b4b370aL    # -1.257700617407388E24
        -0x421a3e13afb003e4L
        -0x9625f37d1a6fd96L
        -0x7e13a9f0739886dbL
    .end array-data
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbsg;->zzd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsf;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcep;->zzf:Lcom/google/android/gms/internal/ads/zzgey;

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgdu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 18
    .line 19
    return-void
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsc;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcep;->zzf:Lcom/google/android/gms/internal/ads/zzgey;

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfws;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    return-void
.end method
