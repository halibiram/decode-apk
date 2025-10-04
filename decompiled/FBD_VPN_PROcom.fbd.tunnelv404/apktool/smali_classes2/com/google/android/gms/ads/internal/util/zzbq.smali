.class public final Lcom/google/android/gms/ads/internal/util/zzbq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/ads/internal/util/zzbl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static zzb:Lcom/google/android/gms/internal/ads/zzaqd;

.field private static final zzc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzbq;->zzc:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbi;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzbi;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzbq;->zza:Lcom/google/android/gms/ads/internal/util/zzbl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbq;->zzc:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzer:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzaz;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaqd;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 56
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzarg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaqo;)Lcom/google/android/gms/internal/ads/zzaqd;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_0
    sput-object p1, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 61
    .line 62
    :cond_2
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzceu;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzceu;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/ads/internal/util/zzbp;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, p1, v3, v0}, Lcom/google/android/gms/ads/internal/util/zzbp;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzceu;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqd;->zza(Lcom/google/android/gms/internal/ads/zzaqa;)Lcom/google/android/gms/internal/ads/zzaqa;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final zzb(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 14
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/gms/ads/internal/util/zzbn;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v10, v1}, Lcom/google/android/gms/ads/internal/util/zzbn;-><init>(Lcom/google/android/gms/ads/internal/util/zzbm;)V

    .line 7
    .line 8
    .line 9
    new-instance v6, Lcom/google/android/gms/ads/internal/util/zzbj;

    .line 10
    .line 11
    move-object v11, p0

    .line 12
    invoke-direct {v6, p0, v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbj;-><init>(Lcom/google/android/gms/ads/internal/util/zzbq;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbn;)V

    .line 13
    .line 14
    .line 15
    new-instance v12, Lcom/google/android/gms/internal/ads/zzceb;

    .line 16
    .line 17
    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/zzceb;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v13, Lcom/google/android/gms/ads/internal/util/zzbk;

    .line 21
    .line 22
    move-object v1, v13

    .line 23
    move-object v2, p0

    .line 24
    move v3, p1

    .line 25
    move-object/from16 v4, p2

    .line 26
    .line 27
    move-object v5, v10

    .line 28
    move-object/from16 v7, p4

    .line 29
    .line 30
    move-object/from16 v8, p3

    .line 31
    .line 32
    move-object v9, v12

    .line 33
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/util/zzbk;-><init>(Lcom/google/android/gms/ads/internal/util/zzbq;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzaqf;Lcom/google/android/gms/internal/ads/zzaqe;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/zzceb;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzceb;->zzk()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    new-array v2, v2, [J

    .line 46
    .line 47
    fill-array-data v2, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v13}, Lcom/google/android/gms/ads/internal/util/zzbk;->zzl()Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v13}, Lcom/google/android/gms/ads/internal/util/zzbk;->zzx()[B

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzceb;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzapi; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 78
    .line 79
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzaqd;->zza(Lcom/google/android/gms/internal/ads/zzaqa;)Lcom/google/android/gms/internal/ads/zzaqa;

    .line 80
    .line 81
    .line 82
    return-object v10

    .line 83
    :array_0
    .array-data 8
        -0x63007bf9a46a566fL    # -5.219269309016324E-169
        0x2e8916d2b6707bc8L    # 1.6143482312104966E-84
    .end array-data
.end method
