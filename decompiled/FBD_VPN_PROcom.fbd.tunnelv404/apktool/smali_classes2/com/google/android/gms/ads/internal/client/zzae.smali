.class final Lcom/google/android/gms/ads/internal/client/zzae;
.super Lcom/google/android/gms/ads/internal/client/zzax;
.source "SourceFile"


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbsv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbsv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzb:Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzax;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zza:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzb:Lcom/google/android/gms/internal/ads/zzbsv;

    .line 8
    .line 9
    const v2, 0xe52bf80

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzce;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbsv;I)Lcom/google/android/gms/internal/ads/zzcct;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final bridge synthetic zzc()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zza:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zza:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/16 v3, 0x9

    .line 12
    .line 13
    new-array v3, v3, [J

    .line 14
    .line 15
    fill-array-data v3, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzad;->zza:Lcom/google/android/gms/ads/internal/client/zzad;

    .line 26
    .line 27
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzceg;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcee;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/google/android/gms/internal/ads/zzccw;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzb:Lcom/google/android/gms/internal/ads/zzbsv;

    .line 34
    .line 35
    const v3, 0xe52bf80

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzccw;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbsv;I)Lcom/google/android/gms/internal/ads/zzcct;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcef; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 45
    :array_0
    .array-data 8
        -0x53144b781aa4b9abL    # -2.656394715577557E-92
        0x2f05c5a7beeedca3L    # 3.5863389275072393E-82
        -0x58a7266cbea8bb99L    # -3.849341366610567E-119
        -0x6aabf09d580293eaL
        -0x2212dd8241b67f7bL    # -2.8422282768184912E144
        -0x742e83577592f367L    # -9.54064245591676E-252
        0x27ac6d71e9fc3119L
        0x6a2eb998cbf6f5b5L    # 3.0103625935043374E203
        0x31caa6c16428cd33L    # 7.723085456088014E-69
    .end array-data
.end method
