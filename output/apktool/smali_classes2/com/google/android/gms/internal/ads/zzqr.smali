.class public final Lcom/google/android/gms/internal/ads/zzqr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzpd;

.field private zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzqq;

.field private zzd:Lcom/google/android/gms/internal/ads/zzqt;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzqj;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzpd;->zza:Lcom/google/android/gms/internal/ads/zzpd;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zza:Lcom/google/android/gms/internal/ads/zzpd;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzqq;->zza:Lcom/google/android/gms/internal/ads/zzqq;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzc:Lcom/google/android/gms/internal/ads/zzqq;

    .line 11
    .line 12
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzqr;)Lcom/google/android/gms/internal/ads/zzpd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zza:Lcom/google/android/gms/internal/ads/zzpd;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzqr;)Lcom/google/android/gms/internal/ads/zzqq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzc:Lcom/google/android/gms/internal/ads/zzqq;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzqr;)Lcom/google/android/gms/internal/ads/zzqt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzd:Lcom/google/android/gms/internal/ads/zzqt;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzqr;)Lcom/google/android/gms/internal/ads/zzqj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zze:Lcom/google/android/gms/internal/ads/zzqj;

    return-object p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzpd;)Lcom/google/android/gms/internal/ads/zzqr;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqr;->zza:Lcom/google/android/gms/internal/ads/zzpd;

    return-object p0
.end method

.method public final zzd([Lcom/google/android/gms/internal/ads/zzdt;)Lcom/google/android/gms/internal/ads/zzqr;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqt;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzqt;-><init>([Lcom/google/android/gms/internal/ads/zzdt;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzd:Lcom/google/android/gms/internal/ads/zzqt;

    .line 7
    .line 8
    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzrd;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzb:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzb:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzd:Lcom/google/android/gms/internal/ads/zzqt;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqt;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzdt;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzqt;-><init>([Lcom/google/android/gms/internal/ads/zzdt;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzd:Lcom/google/android/gms/internal/ads/zzqt;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zze:Lcom/google/android/gms/internal/ads/zzqj;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqj;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzqj;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zze:Lcom/google/android/gms/internal/ads/zzqj;

    .line 35
    .line 36
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrd;

    .line 37
    .line 38
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzrd;-><init>(Lcom/google/android/gms/internal/ads/zzqr;Lcom/google/android/gms/internal/ads/zzrc;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method
