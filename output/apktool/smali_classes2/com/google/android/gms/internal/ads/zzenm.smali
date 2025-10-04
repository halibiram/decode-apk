.class public final synthetic Lcom/google/android/gms/internal/ads/zzenm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkw;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeiq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeiq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenm;->zza:Lcom/google/android/gms/internal/ads/zzeiq;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbk;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzenm;->zza:Lcom/google/android/gms/internal/ads/zzeiq;

    .line 2
    .line 3
    :try_start_0
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzeiq;->zzb:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p3, Lcom/google/android/gms/internal/ads/zzfif;

    .line 6
    .line 7
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfif;->zzv(Z)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzeiq;->zzb:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfif;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfif;->zzA()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfho; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 p3, 0x5

    .line 22
    new-array p3, p3, [J

    .line 23
    .line 24
    fill-array-data p3, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdkv;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdkv;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p2

    .line 47
    :array_0
    .array-data 8
        -0x4da4c7e25b225ccdL    # -4.038465308214249E-66
        -0x16424a63558124e6L    # -2.2741092272511325E201
        -0x1ff176632b9e768L    # -8.846536640032537E298
        -0x4e932d023f56f2f0L    # -1.3051128207613277E-70
        0x73dbbaa0a74568c5L    # 1.2408258814998212E250
    .end array-data
.end method
