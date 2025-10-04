.class public final Lcom/google/android/gms/internal/ads/zzblt;
.super Lcom/google/android/gms/internal/ads/zzbkw;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkw;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblt;->zza:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzblt;)Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzblt;->zza:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    return-object p0
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/internal/client/zzbu;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroid/content/Context;

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 16
    .line 17
    invoke-direct {v2, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbu;->zzi()Lcom/google/android/gms/ads/internal/client/zzbh;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    instance-of v3, v3, Lcom/google/android/gms/ads/internal/client/zzg;

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbu;->zzi()Lcom/google/android/gms/ads/internal/client/zzbh;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/google/android/gms/ads/internal/client/zzg;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/client/zzg;->zzb()Lcom/google/android/gms/ads/AdListener;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v3, p2

    .line 45
    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v5, v1, [J

    .line 52
    .line 53
    const-wide v6, -0x1af3d72d7107e749L    # -5.7054750771142705E178

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    aput-wide v6, v5, v0

    .line 59
    .line 60
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_2
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbu;->zzj()Lcom/google/android/gms/ads/internal/client/zzcb;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    instance-of v3, v3, Lcom/google/android/gms/internal/ads/zzaze;

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbu;->zzj()Lcom/google/android/gms/ads/internal/client/zzcb;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lcom/google/android/gms/internal/ads/zzaze;

    .line 83
    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaze;->zzb()Lcom/google/android/gms/ads/admanager/AppEventListener;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    goto :goto_3

    .line 91
    :catch_1
    move-exception p2

    .line 92
    goto :goto_4

    .line 93
    :cond_3
    :goto_3
    invoke-virtual {v2, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    .line 96
    goto :goto_5

    .line 97
    :goto_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v1, v1, [J

    .line 100
    .line 101
    const-wide v4, 0x57c2cf23879ad41L

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    aput-wide v4, v1, v0

    .line 107
    .line 108
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcdv;->zza:Landroid/os/Handler;

    .line 119
    .line 120
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbls;

    .line 121
    .line 122
    invoke-direct {v0, p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzbls;-><init>(Lcom/google/android/gms/internal/ads/zzblt;Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lcom/google/android/gms/ads/internal/client/zzbu;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_6
    return-void
.end method
