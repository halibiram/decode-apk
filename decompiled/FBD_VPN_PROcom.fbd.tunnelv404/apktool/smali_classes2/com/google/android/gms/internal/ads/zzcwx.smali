.class public final Lcom/google/android/gms/internal/ads/zzcwx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfgy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfgm;

.field private final zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zza:Lcom/google/android/gms/internal/ads/zzfgy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzb:Lcom/google/android/gms/internal/ads/zzfgm;

    if-nez p3, :cond_0

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x7

    new-array p2, p2, [J

    fill-array-data p2, :array_0

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzc:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x1c6801a07c4e9a05L    # -5.795271322701535E171
        0x5ff448378d20398fL    # 1.6996154352662278E154
        0x75caa16355e3d7fbL    # 2.5590827679334377E259
        0x7e0ef0ff7971659cL    # 1.6188464121866257E299
        0x1da494abe4aff03fL    # 6.980291355828476E-166
        0x40e64998775c1ccfL    # 45644.764570289866
        0x5503d693a6ee99f6L    # 3.4712877225463026E101
    .end array-data
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzb:Lcom/google/android/gms/internal/ads/zzfgm;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfgp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zza:Lcom/google/android/gms/internal/ads/zzfgy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgy;->zzb:Lcom/google/android/gms/internal/ads/zzfgx;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgx;->zzb:Lcom/google/android/gms/internal/ads/zzfgp;

    .line 6
    .line 7
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfgy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zza:Lcom/google/android/gms/internal/ads/zzfgy;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzc:Ljava/lang/String;

    return-object v0
.end method
