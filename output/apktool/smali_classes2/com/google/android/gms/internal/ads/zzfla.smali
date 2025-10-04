.class public final synthetic Lcom/google/android/gms/internal/ads/zzfla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfld;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfkr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfld;Lcom/google/android/gms/internal/ads/zzfkr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zza:Lcom/google/android/gms/internal/ads/zzfld;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzb:Lcom/google/android/gms/internal/ads/zzfkr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfla;->zza:Lcom/google/android/gms/internal/ads/zzfld;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfld;->zza:Lcom/google/android/gms/internal/ads/zzfle;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfle;->zzc(Lcom/google/android/gms/internal/ads/zzfle;)Lcom/google/android/gms/internal/ads/zzflf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzb:Lcom/google/android/gms/internal/ads/zzfkr;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzflf;->zzc(Lcom/google/android/gms/internal/ads/zzfkr;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
