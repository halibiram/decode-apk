.class public Lcom/google/android/gms/internal/ads/zzcum;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcwf;

.field private final zzb:Landroid/view/View;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcjk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjk;Lcom/google/android/gms/internal/ads/zzcwf;Lcom/google/android/gms/internal/ads/zzfgn;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzcjk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzb:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzd:Lcom/google/android/gms/internal/ads/zzcjk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcum;->zza:Lcom/google/android/gms/internal/ads/zzcwf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzc:Lcom/google/android/gms/internal/ads/zzfgn;

    return-void
.end method

.method public static final zzf(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzfgm;Lcom/google/android/gms/internal/ads/zzfhh;)Lcom/google/android/gms/internal/ads/zzdim;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdim;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcuk;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcuk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzfgm;Lcom/google/android/gms/internal/ads/zzfhh;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcep;->zzf:Lcom/google/android/gms/internal/ads/zzgey;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzdim;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static final zzg(Lcom/google/android/gms/internal/ads/zzcvw;)Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdim;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcep;->zzf:Lcom/google/android/gms/internal/ads/zzgey;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdim;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final zzh(Lcom/google/android/gms/internal/ads/zzcvu;)Lcom/google/android/gms/internal/ads/zzdim;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdim;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcep;->zze:Lcom/google/android/gms/internal/ads/zzgey;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdim;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzb:Landroid/view/View;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcjk;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzd:Lcom/google/android/gms/internal/ads/zzcjk;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcwf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcum;->zza:Lcom/google/android/gms/internal/ads/zzcwf;

    return-object v0
.end method

.method public zzd(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdcj;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcj;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdcj;-><init>(Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfgn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzc:Lcom/google/android/gms/internal/ads/zzfgn;

    return-object v0
.end method
