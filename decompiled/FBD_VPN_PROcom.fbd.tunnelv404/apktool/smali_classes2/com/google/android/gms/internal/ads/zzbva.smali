.class final Lcom/google/android/gms/internal/ads/zzbva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbum;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbtb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbve;Lcom/google/android/gms/internal/ads/zzbum;Lcom/google/android/gms/internal/ads/zzbtb;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbva;->zza:Lcom/google/android/gms/internal/ads/zzbum;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbva;->zzb:Lcom/google/android/gms/internal/ads/zzbtb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbva;->zza:Lcom/google/android/gms/internal/ads/zzbum;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zza()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbum;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, 0x1ad7ecaab03cc2b6L    # 2.306243136247038E-179

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 3

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbva;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x32d33400dec3589cL    # 7.293788017888945E-64
        -0x680868958f030213L    # -3.231749995981353E-193
        -0x24bc9955f02ef8adL    # -4.303412373791047E131
    .end array-data
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    check-cast p1, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbva;->zza:Lcom/google/android/gms/internal/ads/zzbum;

    .line 28
    .line 29
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v4, 0x4

    .line 32
    new-array v4, v4, [J

    .line 33
    .line 34
    fill-array-data v4, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbum;->zze(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v2

    .line 49
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v1, v1, [J

    .line 52
    .line 53
    const-wide v4, -0x2e89eec7364694a5L    # -2.6793377711599503E84

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    aput-wide v4, v1, v0

    .line 59
    .line 60
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbva;->zza:Lcom/google/android/gms/internal/ads/zzbum;

    .line 72
    .line 73
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbua;

    .line 74
    .line 75
    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzbua;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbum;->zzg(Lcom/google/android/gms/internal/ads/zzbtk;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_1
    move-exception p1

    .line 83
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v1, v1, [J

    .line 86
    .line 87
    const-wide v3, -0x461a84d20add2fc9L    # -8.472827608366177E-30

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    aput-wide v3, v1, v0

    .line 93
    .line 94
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbva;->zzb:Lcom/google/android/gms/internal/ads/zzbtb;

    .line 105
    .line 106
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvf;

    .line 107
    .line 108
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbvf;-><init>(Lcom/google/android/gms/internal/ads/zzbtb;)V

    .line 109
    .line 110
    .line 111
    move-object p1, v0

    .line 112
    :goto_1
    return-object p1

    .line 113
    :array_0
    .array-data 8
        0xa5841feb81fe560L
        -0x75fbdabab3d70f67L
        0x4dd59184b65e672cL    # 9.085683703246831E66
        -0x1858ba0f396957f4L    # -2.0738792322123343E191
        0x788dd8edbda92c6L
        0x777cdd73515da9c1L    # 3.7229597723690018E267
        0x3187ca3aa8365becL    # 4.308684414899057E-70
        -0x765f48f115d3c06aL
        -0x5e216524f7510304L
        -0x21d49e3db05b85feL    # -4.2739658365110276E145
        0x5057f4f9130fff35L    # 1.1096089855984702E79
        0x6c88cad52e30074fL    # 6.677040547169125E214
        -0x67be600269c2cc14L    # -7.726111814147847E-192
        0x195309fa312cecc0L
        0x16314a7973c806d6L    # 8.823906703884587E-202
        0x2fb26afaa9612f2aL    # 6.213280433271652E-79
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_1
    .array-data 8
        0x1db9a9540c1ca94bL    # 1.7406978581999152E-165
        0x2136c7012df08654L
        -0x1efe0bc758637d2dL    # -1.972008079843004E159
        0x21b05b2dcb7172bcL
    .end array-data
.end method
