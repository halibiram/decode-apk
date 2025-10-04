.class public final Lcom/google/android/gms/internal/ads/zzgz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Ljava/util/Map;

.field private zzc:J

.field private zzd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzb:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzgz;
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzd:I

    return-object p0
.end method

.method public final zzb(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzb:Ljava/util/Map;

    return-object p0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzgz;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzc:J

    return-object p0
.end method

.method public final zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzgz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgz;->zza:Landroid/net/Uri;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhb;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgz;->zza:Landroid/net/Uri;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhb;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzgz;->zza:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzgz;->zzb:Ljava/util/Map;

    .line 12
    .line 13
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzgz;->zzc:J

    .line 14
    .line 15
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzgz;->zzd:I

    .line 16
    .line 17
    const/4 v15, 0x0

    .line 18
    const/16 v16, 0x0

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    const/4 v7, 0x0

    .line 24
    const-wide/16 v11, -0x1

    .line 25
    .line 26
    const/4 v13, 0x0

    .line 27
    move-object v2, v1

    .line 28
    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzha;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    new-array v3, v3, [J

    .line 38
    .line 39
    fill-array-data v3, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :array_0
    .array-data 8
        -0x1ff030b94fe109b3L    # -5.3312247169455086E154
        0x774f2779f73e7e43L    # 5.0227648980463124E266
        0x74c6392bef2b3e3eL
        0x44eebd9252c1d90dL    # 1.1613437825506885E24
    .end array-data
.end method
