.class public Lcom/google/android/gms/ads/internal/util/zzab;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/zzaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzc(Lcom/google/android/gms/internal/ads/zzcjk;Lcom/google/android/gms/internal/ads/zzbbp;ZLcom/google/android/gms/internal/ads/zzehs;)Lcom/google/android/gms/internal/ads/zzcjs;
    .locals 0
    .param p4    # Lcom/google/android/gms/internal/ads/zzehs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    throw p1
.end method

.method public zzd(Landroid/app/Activity;Landroid/content/res/Configuration;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zzf(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x7

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 51
    .line 52
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    new-array v2, v2, [J

    .line 56
    .line 57
    fill-array-data v2, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :array_0
    .array-data 8
        0x3a24ee5872b5d401L    # 1.3209341505890483E-28
        -0xf513e467a5508a6L    # -6.11205002205825E234
        0x33ca40584f3ab884L    # 3.267250730625617E-59
        0x1700aa969fb499f4L    # 6.967446422135158E-198
        -0x69cce93982d8f9b2L    # -9.74148851350151E-202
        -0x39ef1142cb9f2535L    # -3.353841917238317E29
        0x3c047d2f0d20f4caL    # 1.3883885899965283E-19
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0xe62fc4f0212eeb1L
        -0x740bd861141aa8a7L    # -4.398468067365353E-251
        0x5ddfd74ae18a48dcL
    .end array-data

    :array_2
    .array-data 8
        -0x64e07df2a38f460aL    # -4.859634852480381E-178
        -0x1b9431d6659a97b4L    # -5.5016812246260456E175
    .end array-data
.end method

.method public zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zzh(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zzi(Landroid/content/Context;Landroid/telephony/TelephonyManager;)I
    .locals 0

    const/16 p1, 0x3e9

    return p1
.end method

.method public zzj(Landroid/media/AudioManager;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zzk(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public zzm(Landroid/content/Context;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    :array_0
    .array-data 8
        0x33710c6ca6b95a8fL    # 6.630830038708582E-61
        0x44560e93f036d09L
    .end array-data
.end method
