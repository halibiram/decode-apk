.class public final Lcom/google/android/gms/internal/ads/zzfoy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfok;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfok;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/google/android/gms/internal/ads/zzfqk;

    .line 5
    .line 6
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzfqk;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zza:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzb:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzc:Lcom/google/android/gms/internal/ads/zzfok;

    .line 22
    .line 23
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 p2, 0x3

    .line 26
    new-array p2, p2, [J

    .line 27
    .line 28
    fill-array-data p2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Ljava/lang/String;

    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 8
        0x427d36203a6c93f1L    # 2.0073941337052463E12
        0x1d910d5a34367fb7L    # 2.8917566391853E-166
        0x1ede0144407c7fa0L    # 5.33550080070155E-160
    .end array-data
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfok;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzc:Lcom/google/android/gms/internal/ads/zzfok;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfqk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zza:Lcom/google/android/gms/internal/ads/zzfqk;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzb:Ljava/lang/String;

    return-object v0
.end method
