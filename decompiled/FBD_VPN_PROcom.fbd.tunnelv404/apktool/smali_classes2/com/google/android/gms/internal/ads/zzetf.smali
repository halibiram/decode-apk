.class public final Lcom/google/android/gms/internal/ads/zzetf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgey;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgey;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetf;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzetf;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzete;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzete;-><init>(Lcom/google/android/gms/internal/ads/zzetf;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzetf;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgey;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzetg;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetf;->zzb:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/media/AudioManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzkv:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzq()Lcom/google/android/gms/ads/internal/util/zzab;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/internal/util/zzab;->zzj(Landroid/media/AudioManager;)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    move v9, v1

    .line 72
    move v8, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/4 v1, -0x1

    .line 75
    const/4 v8, -0x1

    .line 76
    const/4 v9, -0x1

    .line 77
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/ads/internal/util/zzac;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzac;->zza()F

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/ads/internal/util/zzac;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzac;->zze()Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    new-instance v0, Lcom/google/android/gms/internal/ads/zzetg;

    .line 102
    .line 103
    move-object v3, v0

    .line 104
    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/zzetg;-><init>(IZZIIIIIFZ)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        0x76199f560c0b1704L    # 7.879092210591142E260
        0x6e65ca1ec5d3f57fL    # 6.301075730168656E223
    .end array-data
.end method
