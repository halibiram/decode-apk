.class public final Lcom/google/android/gms/internal/ads/zzbvy;
.super Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/List;

.field private zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbjf;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zza:Ljava/util/List;

    .line 12
    .line 13
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjf;->zzg()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zzb:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v2

    .line 21
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v4, v1, [J

    .line 24
    .line 25
    const-wide v5, -0x37640a1224ef55c8L    # -6.089292661347936E41

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    aput-wide v5, v4, v0

    .line 31
    .line 32
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v3, v1, [J

    .line 45
    .line 46
    const-wide v4, 0x4d0c88c6c6ce7266L    # 1.4672904020163533E63

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    aput-wide v4, v3, v0

    .line 52
    .line 53
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zzb:Ljava/lang/String;

    .line 61
    .line 62
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjf;->zzh()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    instance-of v3, v2, Landroid/os/IBinder;

    .line 81
    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    check-cast v2, Landroid/os/IBinder;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbjl;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbjm;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_2

    .line 91
    :catch_1
    move-exception p1

    .line 92
    goto :goto_3

    .line 93
    :cond_1
    const/4 v2, 0x0

    .line 94
    :goto_2
    if-eqz v2, :cond_0

    .line 95
    .line 96
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zza:Ljava/util/List;

    .line 97
    .line 98
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbwa;

    .line 99
    .line 100
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzbwa;-><init>(Lcom/google/android/gms/internal/ads/zzbjm;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    return-void

    .line 108
    :goto_3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v1, v1, [J

    .line 111
    .line 112
    const-wide v3, -0x274630d5ae6a3bd5L    # -2.603355683823314E119

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    aput-wide v3, v1, v0

    .line 118
    .line 119
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zza:Ljava/util/List;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zzb:Ljava/lang/String;

    return-object v0
.end method
