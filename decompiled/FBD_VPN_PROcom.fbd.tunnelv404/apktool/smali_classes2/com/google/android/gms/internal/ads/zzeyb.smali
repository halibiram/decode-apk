.class public final Lcom/google/android/gms/internal/ads/zzeyb;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeya;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeya;-><init>(Lcom/google/android/gms/internal/ads/zzeyb;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zza:Lcom/google/android/gms/internal/ads/zzgey;

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

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzexz;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzb:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzb:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v3, 0x6

    .line 40
    new-array v3, v3, [J

    .line 41
    .line 42
    fill-array-data v3, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzt;->zzz(Landroid/content/Context;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, -0x1

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzb:Landroid/content/Context;

    .line 60
    .line 61
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/4 v4, 0x3

    .line 64
    new-array v4, v4, [J

    .line 65
    .line 66
    fill-array-data v4, :array_2

    .line 67
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
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_0

    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    move v9, v3

    .line 101
    move v3, v1

    .line 102
    move v1, v9

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const/4 v3, -0x1

    .line 105
    :goto_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    move v6, v0

    .line 110
    move v7, v1

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    const/4 v0, 0x0

    .line 113
    const/4 v3, -0x2

    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v7, -0x1

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyb;->zzb:Landroid/content/Context;

    .line 117
    .line 118
    new-instance v8, Lcom/google/android/gms/internal/ads/zzexz;

    .line 119
    .line 120
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzq()Lcom/google/android/gms/ads/internal/util/zzab;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzab;->zzm(Landroid/content/Context;)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    move-object v1, v8

    .line 129
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzexz;-><init>(Ljava/lang/String;IIIZI)V

    .line 130
    .line 131
    .line 132
    return-object v8

    .line 133
    :array_0
    .array-data 8
        -0x348167f29b116b5bL    # -4.6885098665220003E55
        0x6a88a6ecf3d7cadaL    # 1.545824403790499E205
    .end array-data

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
    :array_1
    .array-data 8
        -0x10de3237c32ea0a1L    # -2.1088240421180348E227
        0x6102b7ad2c410d1bL    # 2.0558680829237958E159
        -0x62cf3d3905fceea1L    # -4.44118058300552E-168
        0x4e2f5caa1db43eedL    # 4.227585295957439E68
        0x1405aa2c9984c99cL    # 3.217707833896158E-212
        0x69d03e6f2919e43aL    # 4.973555664856212E201
    .end array-data

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
    :array_2
    .array-data 8
        0x230b216793e620d1L    # 7.119501895621329E-140
        -0x5e8f25e9ba4adf41L
        -0x71166393c0ad8b03L    # -7.866117156422376E-237
    .end array-data
.end method
