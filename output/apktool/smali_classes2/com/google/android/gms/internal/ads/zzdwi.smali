.class public final Lcom/google/android/gms/internal/ads/zzdwi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdwa;

.field private final zzc:Lcom/google/android/gms/common/util/Clock;

.field private final zzd:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwa;Ljava/util/Set;Lcom/google/android/gms/common/util/Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzb:Lcom/google/android/gms/internal/ads/zzdwa;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zza:Ljava/util/Map;

    .line 12
    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzd:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lcom/google/android/gms/internal/ads/zzdwh;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzd:Ljava/util/Map;

    .line 37
    .line 38
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Lcom/google/android/gms/internal/ads/zzdwh;)Lcom/google/android/gms/internal/ads/zzflg;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 47
    .line 48
    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzflg;Z)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzd:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/zzdwh;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zzb(Lcom/google/android/gms/internal/ads/zzdwh;)Lcom/google/android/gms/internal/ads/zzflg;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zza:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v2, p2, :cond_0

    .line 24
    .line 25
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v2, v0, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v2, v0, [J

    .line 43
    .line 44
    fill-array-data v2, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zza:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    sub-long/2addr v4, v1

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzb:Lcom/google/android/gms/internal/ads/zzdwa;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzd:Ljava/util/Map;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdwa;->zza()Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdwh;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->zzc(Lcom/google/android/gms/internal/ads/zzdwh;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v0, v0, [J

    .line 102
    .line 103
    fill-array-data v0, :array_2

    .line 104
    .line 105
    .line 106
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    :cond_1
    return-void

    .line 125
    :array_0
    .array-data 8
        0x2dea26dc80a886a8L
        -0x13f46256259a6679L    # -2.9052649006946427E212
    .end array-data

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
    :array_1
    .array-data 8
        -0x7cb1bfceb2b68380L    # -9.473062593865471E-293
        0x52aeff2eaf3e7674L    # 1.9731752867642902E90
    .end array-data

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
    :array_2
    .array-data 8
        -0x5358a328b8e65954L    # -1.4000180778424913E-93
        -0x63fe241717d8d440L    # -9.025893359697998E-174
    .end array-data
.end method


# virtual methods
.method public final zzbL(Lcom/google/android/gms/internal/ads/zzflg;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzbM(Lcom/google/android/gms/internal/ads/zzflg;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const/4 p3, 0x2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zza:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zza:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Long;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    sub-long/2addr v2, v0

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzb:Lcom/google/android/gms/internal/ads/zzdwa;

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwa;->zza()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v3, p3, [J

    .line 50
    .line 51
    fill-array-data v3, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array p3, p3, [J

    .line 64
    .line 65
    fill-array-data p3, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v3, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzd:Ljava/util/Map;

    .line 87
    .line 88
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_1

    .line 93
    .line 94
    const/4 p2, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdwi;->zze(Lcom/google/android/gms/internal/ads/zzflg;Z)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void

    .line 99
    :array_0
    .array-data 8
        0x3377efe01ca3a46bL    # 9.310025015937646E-61
        -0x4828fd686606881eL    # -1.0565731576722955E-39
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_1
    .array-data 8
        0x2627815b05ef28dfL    # 6.944764401827691E-125
        -0x739c6bbbfb35a71cL    # -5.469249225158214E-249
    .end array-data
.end method

.method public final zzbN(Lcom/google/android/gms/internal/ads/zzflg;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zza:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzflg;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zza:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zza:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Long;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    sub-long/2addr v3, v1

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzb:Lcom/google/android/gms/internal/ads/zzdwa;

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdwa;->zza()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v4, v0, [J

    .line 50
    .line 51
    fill-array-data v4, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v0, v0, [J

    .line 64
    .line 65
    fill-array-data v0, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwi;->zzd:Ljava/util/Map;

    .line 87
    .line 88
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_1

    .line 93
    .line 94
    const/4 p2, 0x1

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdwi;->zze(Lcom/google/android/gms/internal/ads/zzflg;Z)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void

    .line 99
    :array_0
    .array-data 8
        -0x572929ea239aa7eaL    # -5.934809882608591E-112
        0x9aa192be2e0c44eL
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_1
    .array-data 8
        -0x3f03c2c9bf565317L    # -115667.3907868151
        -0x1dc031f379f76b8aL    # -1.8315188101442224E165
    .end array-data
.end method
