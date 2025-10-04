.class final Lcom/google/android/gms/internal/ads/zzfgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzby;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfgj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgj;Lcom/google/android/gms/ads/internal/client/zzby;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zza:Lcom/google/android/gms/ads/internal/client/zzby;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzb:Lcom/google/android/gms/internal/ads/zzfgj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzb:Lcom/google/android/gms/internal/ads/zzfgj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfgj;->zzv(Lcom/google/android/gms/internal/ads/zzfgj;)Lcom/google/android/gms/internal/ads/zzdso;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zza:Lcom/google/android/gms/ads/internal/client/zzby;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzby;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x6

    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :array_0
    .array-data 8
        -0x41e0988a3405a642L    # -1.8279616014538614E-9
        -0x228c8755181ba6fdL    # -1.4840010506523254E142
        0x5ff699104d623cd6L    # 1.8936773118753464E154
        -0x34426bbd6e9c4049L    # -7.252784207336491E56
        -0x342325d46dd47ea8L    # -2.8298182235593992E57
        -0x3de81dba69d9a2fdL    # -2.564511476159083E10
    .end array-data
.end method
