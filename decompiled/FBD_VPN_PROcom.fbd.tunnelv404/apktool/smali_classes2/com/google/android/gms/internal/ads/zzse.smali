.class public final Lcom/google/android/gms/internal/ads/zzse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsq;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzfxu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfxu;

.field private zzd:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzsc;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzsd;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzse;->zzb:Lcom/google/android/gms/internal/ads/zzfxu;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzse;->zzc:Lcom/google/android/gms/internal/ads/zzfxu;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzse;->zzd:Z

    return-void
.end method

.method public static synthetic zza(I)Landroid/os/HandlerThread;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzsg;->zzd(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static synthetic zzb(I)Landroid/os/HandlerThread;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzsg;->zze(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzsp;)Lcom/google/android/gms/internal/ads/zzsg;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzsp;->zza:Lcom/google/android/gms/internal/ads/zzsv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsv;->zza:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    new-array v4, v4, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget v3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 37
    .line 38
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzse;->zzd:Z

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzsp;->zzc:Lcom/google/android/gms/internal/ads/zzam;

    .line 50
    .line 51
    sget v3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 52
    .line 53
    const/16 v4, 0x22

    .line 54
    .line 55
    if-ge v3, v4, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcb;->zzh(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    new-instance v2, Lcom/google/android/gms/internal/ads/zztq;

    .line 67
    .line 68
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zztq;-><init>(Landroid/media/MediaCodec;)V

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x4

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzsk;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzse;->zzc:Lcom/google/android/gms/internal/ads/zzfxu;

    .line 78
    .line 79
    check-cast v3, Lcom/google/android/gms/internal/ads/zzsd;

    .line 80
    .line 81
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzsd;->zza:I

    .line 82
    .line 83
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzse;->zzb(I)Landroid/os/HandlerThread;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzsk;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzsg;

    .line 92
    .line 93
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzse;->zzb:Lcom/google/android/gms/internal/ads/zzfxu;

    .line 94
    .line 95
    check-cast v5, Lcom/google/android/gms/internal/ads/zzsc;

    .line 96
    .line 97
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzsc;->zza:I

    .line 98
    .line 99
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzse;->zza(I)Landroid/os/HandlerThread;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-direct {v4, v0, v5, v2, v1}, Lcom/google/android/gms/internal/ads/zzsg;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzsf;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    .line 105
    .line 106
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 107
    .line 108
    .line 109
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzsp;->zzb:Landroid/media/MediaFormat;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsp;->zzd:Landroid/view/Surface;

    .line 112
    .line 113
    invoke-static {v4, v2, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzsg;->zzh(Lcom/google/android/gms/internal/ads/zzsg;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    .line 115
    .line 116
    return-object v4

    .line 117
    :catch_1
    move-exception p1

    .line 118
    move-object v1, v4

    .line 119
    goto :goto_2

    .line 120
    :catch_2
    move-exception p1

    .line 121
    move-object v0, v1

    .line 122
    :goto_2
    if-nez v1, :cond_2

    .line 123
    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsg;->zzl()V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_3
    throw p1

    .line 134
    nop

    .line 135
    :array_0
    .array-data 8
        0x3e09f2dec6fc7eadL    # 7.552069091377801E-10
        -0x5ed7e3c6aa34ed69L    # -5.892422323567164E-149
        0x6168c47d17add3eaL    # 1.7410468639020728E161
    .end array-data
.end method

.method public final zzd(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzse;->zzd:Z

    return-void
.end method
