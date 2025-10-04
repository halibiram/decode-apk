.class public final Lcom/google/android/gms/internal/ads/zzbwa;
.super Lcom/google/android/gms/ads/nativead/NativeAd$Image;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbjm;

.field private final zzb:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:D


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbjm;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zza:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    move-object p1, v2

    .line 25
    goto :goto_2

    .line 26
    :goto_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v4, v1, [J

    .line 29
    .line 30
    const-wide v5, -0x12370b5114403d38L    # -7.047551083549415E220

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    aput-wide v5, v4, v0

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
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzb:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zza:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjm;->zze()Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    goto :goto_3

    .line 57
    :catch_1
    move-exception p1

    .line 58
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v4, v1, [J

    .line 61
    .line 62
    const-wide v5, -0x5e8726183fd04549L

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    aput-wide v5, v4, v0

    .line 68
    .line 69
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :goto_3
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzc:Landroid/net/Uri;

    .line 80
    .line 81
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zza:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 82
    .line 83
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzb()D

    .line 84
    .line 85
    .line 86
    move-result-wide v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    goto :goto_4

    .line 88
    :catch_2
    move-exception p1

    .line 89
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v3, v1, [J

    .line 92
    .line 93
    const-wide v4, -0x73693c6f9047cd3fL    # -5.087104783491116E-248

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    aput-wide v4, v3, v0

    .line 99
    .line 100
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 111
    .line 112
    :goto_4
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzd:D

    .line 113
    .line 114
    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zza:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 115
    .line 116
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzd()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :catch_3
    move-exception p1

    .line 121
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v3, v1, [J

    .line 124
    .line 125
    const-wide v4, -0x709ff774c1231f04L

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    aput-wide v4, v3, v0

    .line 131
    .line 132
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :goto_5
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zza:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 143
    .line 144
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzc()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :catch_4
    move-exception p1

    .line 149
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v1, v1, [J

    .line 152
    .line 153
    const-wide v3, -0x6592b1ea05a466f3L

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    aput-wide v3, v1, v0

    .line 159
    .line 160
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getScale()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzd:D

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzc:Landroid/net/Uri;

    return-object v0
.end method
