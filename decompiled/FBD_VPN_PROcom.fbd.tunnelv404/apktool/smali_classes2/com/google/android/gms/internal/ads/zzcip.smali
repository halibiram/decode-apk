.class public final synthetic Lcom/google/android/gms/internal/ads/zzcip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgv;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcix;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcix;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcip;->zza:Lcom/google/android/gms/internal/ads/zzcix;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgw;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcip;->zza:Lcom/google/android/gms/internal/ads/zzcix;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzc:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcix;->zzX(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzgw;

    move-result-object v0

    return-object v0
.end method
