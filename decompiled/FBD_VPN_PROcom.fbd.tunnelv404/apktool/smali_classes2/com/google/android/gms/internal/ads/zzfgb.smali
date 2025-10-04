.class final Lcom/google/android/gms/internal/ads/zzfgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzdd;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfgd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgd;Lcom/google/android/gms/ads/internal/client/zzdd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgb;->zza:Lcom/google/android/gms/ads/internal/client/zzdd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgb;->zzb:Lcom/google/android/gms/internal/ads/zzfgd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgb;->zzb:Lcom/google/android/gms/internal/ads/zzfgd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfgd;->zzr(Lcom/google/android/gms/internal/ads/zzfgd;)Lcom/google/android/gms/internal/ads/zzdso;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgb;->zza:Lcom/google/android/gms/ads/internal/client/zzdd;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdd;->zze()V
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
        -0x7f579869e497256cL
        -0x5b95b77f18e67cf1L    # -2.892880197057136E-133
        0x4a42045a87d9b995L    # 5.266376867270794E49
        0x48395e69698fd8afL    # 8.632553936847086E39
        -0x1ef632ecada8c90aL    # -2.8339066666829337E159
        0x5d55fc9fbb948b4cL    # 4.189288300254102E141
    .end array-data
.end method
