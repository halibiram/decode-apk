.class public final synthetic Lcom/google/android/gms/internal/ads/zzuy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzva;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzvb;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzui;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzun;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzva;Lcom/google/android/gms/internal/ads/zzvb;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuy;->zza:Lcom/google/android/gms/internal/ads/zzva;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuy;->zzb:Lcom/google/android/gms/internal/ads/zzvb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzuy;->zzc:Lcom/google/android/gms/internal/ads/zzui;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzuy;->zzd:Lcom/google/android/gms/internal/ads/zzun;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuy;->zza:Lcom/google/android/gms/internal/ads/zzva;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzva;->zzb:Lcom/google/android/gms/internal/ads/zzur;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuy;->zzc:Lcom/google/android/gms/internal/ads/zzui;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuy;->zzb:Lcom/google/android/gms/internal/ads/zzvb;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzuy;->zzd:Lcom/google/android/gms/internal/ads/zzun;

    .line 11
    .line 12
    invoke-interface {v2, v3, v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzvb;->zzaf(ILcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
