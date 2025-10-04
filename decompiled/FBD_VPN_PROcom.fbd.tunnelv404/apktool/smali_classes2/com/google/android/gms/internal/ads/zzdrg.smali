.class final Lcom/google/android/gms/internal/ads/zzdrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbja;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdrh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdrh;Ljava/lang/String;)V
    .locals 1

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrg;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrg;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :array_0
    .array-data 8
        0x6a37f35fa13a1564L    # 4.6932630585147294E203
        -0x76c8f7b1fb6c6996L
        -0x2b38f62203473f5dL    # -2.5195535490469467E100
    .end array-data
.end method


# virtual methods
.method public final zza()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrg;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdrh;->zzc(Lcom/google/android/gms/internal/ads/zzdrh;)Lcom/google/android/gms/internal/ads/zzdmv;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrg;->zza:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdrh;->zzc(Lcom/google/android/gms/internal/ads/zzdrh;)Lcom/google/android/gms/internal/ads/zzdmv;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmv;->zzE(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final zzd(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
