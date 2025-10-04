.class public final synthetic Lcom/google/android/gms/internal/ads/zzbqh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzckx;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbqs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbqs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqh;->zza:Lcom/google/android/gms/internal/ads/zzbqs;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqh;->zza:Lcom/google/android/gms/internal/ads/zzbqs;

    .line 10
    .line 11
    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzbqs;->zzc:J

    .line 12
    .line 13
    sub-long/2addr v0, v8

    .line 14
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzbqs;->zzb:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v4, 0x7

    .line 40
    new-array v4, v4, [J

    .line 41
    .line 42
    fill-array-data v4, :array_0

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    new-array v3, v3, [J

    .line 62
    .line 63
    fill-array-data v3, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzt;->zza:Lcom/google/android/gms/internal/ads/zzftt;

    .line 84
    .line 85
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqo;

    .line 86
    .line 87
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzbqs;->zza:Lcom/google/android/gms/internal/ads/zzbrj;

    .line 88
    .line 89
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzbqs;->zzd:Lcom/google/android/gms/internal/ads/zzbri;

    .line 90
    .line 91
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzbqs;->zze:Lcom/google/android/gms/internal/ads/zzbqe;

    .line 92
    .line 93
    move-object v3, v1

    .line 94
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbqo;-><init>(Lcom/google/android/gms/internal/ads/zzbrj;Lcom/google/android/gms/internal/ads/zzbri;Lcom/google/android/gms/internal/ads/zzbqe;Ljava/util/ArrayList;J)V

    .line 95
    .line 96
    .line 97
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzc:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 98
    .line 99
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    int-to-long v2, v2

    .line 114
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        -0x71b4d327d69080a2L    # -8.150904183466582E-240
        -0x6485891e48f91cf1L
        -0x3509353d59eb4a82L    # -1.3644018880201176E53
        -0x6c31e71e53921769L    # -2.793824254968378E-213
        0x4bf8d2e67d0d478L
        -0x740cef9c9dd44581L    # -4.160428181413289E-251
        0x5f68c4e971a4efd1L    # 4.0539612162664227E151
    .end array-data

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
    :array_1
    .array-data 8
        0x1f501ffc95d1804dL    # 7.340414774879596E-158
        0x308818654f36cf7aL    # 6.658913165604032E-75
    .end array-data
.end method
