.class public final Lcom/google/android/gms/internal/ads/zzfpn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Landroid/app/UiModeManager;


# direct methods
.method public static zza()Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpn;->zza:Landroid/app/UiModeManager;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfoj;->zzc:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfoj;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfoj;->zzb:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfoj;->zzc:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 25
    .line 26
    return-object v0
.end method

.method public static zzb(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/app/UiModeManager;

    .line 23
    .line 24
    sput-object p0, Lcom/google/android/gms/internal/ads/zzfpn;->zza:Landroid/app/UiModeManager;

    .line 25
    .line 26
    :cond_0
    return-void

    :array_0
    .array-data 8
        -0x731991fa2c71deeaL    # -1.603978357739278E-246
        -0x387f9b30f0eba117L    # -2.723884658990871E36
    .end array-data
.end method
