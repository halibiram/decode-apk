.class public final Lcom/google/android/gms/internal/ads/zzdvz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhhd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzdvz;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvy;->zza()Lcom/google/android/gms/internal/ads/zzdvz;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwh;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

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
    sget-object v2, Lcom/google/android/gms/internal/ads/zzflg;->zzA:Lcom/google/android/gms/internal/ads/zzflg;

    .line 19
    .line 20
    sget-object v3, Lcom/google/android/gms/internal/ads/zzflg;->zzd:Lcom/google/android/gms/internal/ads/zzflg;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdwh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzflg;Lcom/google/android/gms/internal/ads/zzflg;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        0x7e4a4d69d025c203L    # 2.2018159000649825E300
        -0x4fd560584a6221d2L    # -1.1496317653620265E-76
        0x50716ab5625d78feL    # 3.226769851510537E79
    .end array-data
.end method
