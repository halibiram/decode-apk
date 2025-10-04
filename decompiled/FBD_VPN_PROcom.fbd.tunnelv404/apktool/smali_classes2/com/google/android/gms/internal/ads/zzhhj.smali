.class public final Lcom/google/android/gms/internal/ads/zzhhj;
.super Lcom/google/android/gms/internal/ads/zzhgy;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzhhi;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhgy;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhhm;)Lcom/google/android/gms/internal/ads/zzhhj;
    .locals 1

    .line 1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhgy;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhhm;)Lcom/google/android/gms/internal/ads/zzhgy;

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x5b22f96c76cbc3a1L    # 1.0521899570579346E131
        -0x2d7d093f37622a88L    # -3.017976880436397E89
    .end array-data
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhhk;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhk;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhgy;->zza:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhhk;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhhi;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
