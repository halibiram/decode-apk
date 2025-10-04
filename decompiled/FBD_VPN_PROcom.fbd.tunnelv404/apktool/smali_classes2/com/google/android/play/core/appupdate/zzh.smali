.class public final Lcom/google/android/play/core/appupdate/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;


# instance fields
.field private final zza:Lcom/google/android/play/core/appupdate/internal/zzaf;

.field private final zzb:Lcom/google/android/play/core/appupdate/internal/zzaf;

.field private final zzc:Lcom/google/android/play/core/appupdate/internal/zzaf;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzaf;Lcom/google/android/play/core/appupdate/internal/zzaf;Lcom/google/android/play/core/appupdate/internal/zzaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzh;->zza:Lcom/google/android/play/core/appupdate/internal/zzaf;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzh;->zzb:Lcom/google/android/play/core/appupdate/internal/zzaf;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzh;->zzc:Lcom/google/android/play/core/appupdate/internal/zzaf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzh;->zza:Lcom/google/android/play/core/appupdate/internal/zzaf;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzh;->zzb:Lcom/google/android/play/core/appupdate/internal/zzaf;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/google/android/play/core/appupdate/zzc;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/zzh;->zzc:Lcom/google/android/play/core/appupdate/internal/zzaf;

    .line 16
    .line 17
    check-cast v2, Lcom/google/android/play/core/appupdate/zzk;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/zzk;->zzb()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/google/android/play/core/appupdate/zzg;

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/play/core/appupdate/zzr;

    .line 26
    .line 27
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/appupdate/zzg;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/play/core/appupdate/zzc;Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    return-object v3
.end method
