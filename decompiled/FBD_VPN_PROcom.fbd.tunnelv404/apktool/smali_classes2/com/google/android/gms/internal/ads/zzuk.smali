.class final Lcom/google/android/gms/internal/ads/zzuk;
.super Lcom/google/android/gms/internal/ads/zzuf;
.source "SourceFile"


# static fields
.field public static final zzd:Ljava/lang/Object;


# instance fields
.field private final zze:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzuk;->zzd:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcx;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzuf;-><init>(Lcom/google/android/gms/internal/ads/zzcx;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuk;->zze:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzuk;->zzf:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static zzq(Lcom/google/android/gms/internal/ads/zzbp;)Lcom/google/android/gms/internal/ads/zzuk;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzuk;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzul;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzul;-><init>(Lcom/google/android/gms/internal/ads/zzbp;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcw;->zza:Ljava/lang/Object;

    .line 9
    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzuk;->zzd:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzuk;-><init>(Lcom/google/android/gms/internal/ads/zzcx;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static zzr(Lcom/google/android/gms/internal/ads/zzcx;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzuk;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/ads/zzuk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuk;-><init>(Lcom/google/android/gms/internal/ads/zzcx;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzuk;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzuk;->zzf:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzuk;->zzd:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuk;->zzf:Ljava/lang/Object;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object p1, v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzc:Lcom/google/android/gms/internal/ads/zzcx;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcx;->zza(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final zzd(ILcom/google/android/gms/internal/ads/zzcu;Z)Lcom/google/android/gms/internal/ads/zzcu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzc:Lcom/google/android/gms/internal/ads/zzcx;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcx;->zzd(ILcom/google/android/gms/internal/ads/zzcu;Z)Lcom/google/android/gms/internal/ads/zzcu;

    .line 4
    .line 5
    .line 6
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcu;->zzc:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuk;->zzf:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfy;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzuk;->zzd:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzcu;->zzc:Ljava/lang/Object;

    .line 21
    .line 22
    :cond_0
    return-object p2
.end method

.method public final zze(ILcom/google/android/gms/internal/ads/zzcw;J)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzc:Lcom/google/android/gms/internal/ads/zzcx;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcx;->zze(ILcom/google/android/gms/internal/ads/zzcw;J)Lcom/google/android/gms/internal/ads/zzcw;

    .line 4
    .line 5
    .line 6
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcw;->zzc:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzuk;->zze:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzfy;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcw;->zza:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzcw;->zzc:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_0
    return-object p2
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuf;->zzc:Lcom/google/android/gms/internal/ads/zzcx;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcx;->zzf(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuk;->zzf:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfy;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/google/android/gms/internal/ads/zzuk;->zzd:Ljava/lang/Object;

    .line 16
    .line 17
    :cond_0
    return-object p1
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzuk;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuk;->zze:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuk;->zzf:Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzuk;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzuk;-><init>(Lcom/google/android/gms/internal/ads/zzcx;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
