.class public final Lcom/google/android/gms/internal/ads/zzctl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzayq;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcjk;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcsx;

.field private final zzd:Lcom/google/android/gms/common/util/Clock;

.field private zze:Z

.field private zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcta;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcsx;Lcom/google/android/gms/common/util/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzf:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcta;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcta;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzg:Lcom/google/android/gms/internal/ads/zzcta;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzb:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzc:Lcom/google/android/gms/internal/ads/zzcsx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzd:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzg()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzc:Lcom/google/android/gms/internal/ads/zzcsx;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzg:Lcom/google/android/gms/internal/ads/zzcta;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcsx;->zza(Lcom/google/android/gms/internal/ads/zzcta;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctl;->zza:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzb:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/internal/ads/zzctk;

    .line 16
    .line 17
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzctk;-><init>(Lcom/google/android/gms/internal/ads/zzctl;Lorg/json/JSONObject;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 27
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v2, 0x6

    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x3ab4b7c6196535c7L    # 6.694303713086137E-26
        -0x354fcd0bf68d2b04L    # -6.060778992831987E51
        -0x57af26e178fb9f40L    # -1.710382154384813E-114
        -0x41922b43341cca93L    # -5.556457825934102E-8
        0x3ee0a1095172b30eL    # 7.92934819878737E-6
        0x551f6e717af4de11L    # 1.0999743063370675E102
    .end array-data
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zze:Z

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zze:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzctl;->zzg()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzby(Lcom/google/android/gms/internal/ads/zzayp;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzf:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzayp;->zzj:Z

    .line 8
    .line 9
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzg:Lcom/google/android/gms/internal/ads/zzcta;

    .line 10
    .line 11
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcta;->zza:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzd:Lcom/google/android/gms/common/util/Clock;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcta;->zzd:J

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzg:Lcom/google/android/gms/internal/ads/zzcta;

    .line 22
    .line 23
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzcta;->zzf:Lcom/google/android/gms/internal/ads/zzayp;

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzctl;->zze:Z

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzctl;->zzg()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final synthetic zzd(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zza:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbqn;->zzl(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x5aa87f72bba7de08L    # 5.306596159535232E128
        0x25603d93e4e77c5aL
        0x47423af890fdc86cL    # 1.893148333351767E35
        0x406f6656f393874dL    # 251.19811419309772
    .end array-data
.end method

.method public final zze(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzctl;->zzf:Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcjk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctl;->zza:Lcom/google/android/gms/internal/ads/zzcjk;

    return-void
.end method
