.class public final Lcom/google/android/gms/internal/ads/zzceb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I = 0x0

.field private static final zzb:Ljava/lang/Object;

.field private static zzc:Z = false
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static zzd:Z = false
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/common/util/Clock;

.field private static final zzf:Ljava/util/Set;


# instance fields
.field private final zzg:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzceb;->zzb:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/google/android/gms/internal/ads/zzceb;->zze:Lcom/google/android/gms/common/util/Clock;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashSet;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zzceb;->zzf:Ljava/util/Set;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzceb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzceb;->zzk()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 6
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzceb;->zzg:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 8
        -0x27e3c7630c62ec0L
        -0x24668746844d1739L    # -1.8079815326151204E133
        -0xdab03974b30b3afL    # -5.597390751708138E242
    .end array-data
.end method

.method public static synthetic zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v2, v1, [J

    .line 48
    .line 49
    fill-array-data v2, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 64
    .line 65
    .line 66
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v0, v1, [J

    .line 69
    .line 70
    fill-array-data v0, :array_3

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p4, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 88
    .line 89
    .line 90
    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/zzceb;->zzr(Landroid/util/JsonWriter;Ljava/util/Map;)V

    .line 91
    .line 92
    .line 93
    if-eqz p3, :cond_0

    .line 94
    .line 95
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array p1, v1, [J

    .line 98
    .line 99
    fill-array-data p1, :array_4

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p4, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p3}, Lcom/google/android/gms/common/util/Base64Utils;->encode([B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-virtual {p4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :array_0
    .array-data 8
        0x201eae5da9e80453L    # 5.720755558048887E-154
        0x16811612f8aa6435L    # 2.79022395861635E-200
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
        -0x2aa43e21bef03cf2L    # -1.5542315327487919E103
        -0x677ceb1b4ce63e78L
        0x619bd565466fcedbL    # 1.5652607706808423E162
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
    .line 150
    .line 151
    .line 152
    .line 153
    :array_2
    .array-data 8
        -0x21417da40e06fe8dL    # -2.438197738817429E148
        0xa9acda00359f005L
    .end array-data

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
    :array_3
    .array-data 8
        0xbc18cc44be61919L
        -0x38bd91e0083be5a3L    # -1.913898825258758E35
    .end array-data

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
    :array_4
    .array-data 8
        0x15e4fd616d4999a0L
        -0x2523abad4855a71L    # -2.433734122306291E297
    .end array-data
.end method

.method public static synthetic zzb(ILjava/util/Map;Landroid/util/JsonWriter;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v1, v1, [J

    .line 48
    .line 49
    fill-array-data v1, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    int-to-long v1, p0

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 68
    .line 69
    .line 70
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzceb;->zzr(Landroid/util/JsonWriter;Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :array_0
    .array-data 8
        0x42812e0013628d81L    # 2.361158429777688E12
        -0x145b2cbbabfe42c1L    # -3.423240778493174E210
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_1
    .array-data 8
        -0x3322531b04d79f99L    # -1.9074591752744309E62
        -0x2ef371d997c99c5dL    # -2.708664141889609E82
        0x15551d440c739322L    # 6.576579362860238E-206
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_2
    .array-data 8
        0x7f3d340c710ff507L    # 8.01065042285102E304
        0x4d63b8d8564209b0L    # 6.490544973146607E64
    .end array-data
.end method

.method public static zzi()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzceb;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzceb;->zzc:Z

    .line 6
    .line 7
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzceb;->zzd:Z

    .line 8
    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x7

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x69b2137f13c10416L    # -3.054149314116398E-201
        0x6425d614346cc462L    # 2.700383720257353E174
        -0x37766526a820333fL    # -2.788124414429928E41
        -0x763a72ac442bc758L
        0x5cd99451ae5701efL    # 1.90382875062011E139
        0x7b3478fb16b89f5fL    # 3.044307456866578E285
        0x5d08019395669cd4L    # 1.4293897542965891E140
    .end array-data
.end method

.method public static zzj(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzceb;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzceb;->zzc:Z

    .line 6
    .line 7
    sput-boolean p0, Lcom/google/android/gms/internal/ads/zzceb;->zzd:Z

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public static zzk()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzceb;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzceb;->zzc:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzceb;->zzd:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit v0

    .line 18
    return v2

    .line 19
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public static zzl()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzceb;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzceb;->zzc:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method private static declared-synchronized zzm(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const-class v1, Lcom/google/android/gms/internal/ads/zzceb;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    new-array v3, v0, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v2, v3, :cond_0

    .line 28
    .line 29
    add-int/lit16 v3, v2, 0xfa0

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v5, 0x4

    .line 50
    new-array v5, v5, [J

    .line 51
    .line 52
    fill-array-data v5, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    move v2, v3

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v0, v0, [J

    .line 76
    .line 77
    fill-array-data v0, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 92
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p0

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        -0x5c4314b9fb77439eL
        0x4a634832f130293cL    # 2.2544571593996537E50
        -0x27969f72791b7af7L    # -7.999287976221776E117
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
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
        0x260195bb0bd9497aL    # 1.298886963447104E-125
        -0x3608c4e59d494612L    # -2.121997283290443E48
        -0x4c6c548471028edbL    # -3.06014506505036E-60
        0x47499526cf529632L    # 2.656651506554571E35
    .end array-data

    .line 112
    .line 113
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
    :array_2
    .array-data 8
        -0x1bef382017ff782bL    # -1.0375980447861297E174
        -0x261cf2b434fee94cL    # -1.0075517738178917E125
        0x30cd843e2a4b053dL    # 1.3051397349527339E-73
    .end array-data
.end method

.method private final zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcea;)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Ljava/io/StringWriter;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Landroid/util/JsonWriter;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v4, v0, [J

    .line 18
    .line 19
    fill-array-data v4, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lcom/google/android/gms/internal/ads/zzceb;->zze:Lcom/google/android/gms/common/util/Clock;

    .line 34
    .line 35
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    new-array v4, v4, [J

    .line 46
    .line 47
    fill-array-data v4, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 62
    .line 63
    .line 64
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v3, v0, [J

    .line 67
    .line 68
    fill-array-data v3, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v2, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzceb;->zzg:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_0

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 110
    .line 111
    .line 112
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzcea;->zza(Landroid/util/JsonWriter;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/util/JsonWriter;->flush()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :goto_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v0, v0, [J

    .line 128
    .line 129
    fill-array-data v0, :array_3

    .line 130
    .line 131
    .line 132
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :goto_2
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzceb;->zzm(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    nop

    .line 151
    :array_0
    .array-data 8
        -0x6df7fc81d467c002L    # -8.304075163417894E-222
        -0x240d003297495232L    # -8.630859170938748E134
        0x2fb45d3e59b3d7f8L    # 6.869880687034612E-79
    .end array-data

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
    :array_1
    .array-data 8
        0x3b6e304f07312549L    # 1.997720977297638E-22
        -0x3906e2659dcf9ed9L    # -8.150490179182624E33
    .end array-data

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
    :array_2
    .array-data 8
        0x2187ba3bfeac0d12L
        -0x2f60dbdb4c59633eL    # -2.307777840194936E80
        0x7914cc784d864138L    # 1.800248541928099E275
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_3
    .array-data 8
        0x3092c230c2f2be14L    # 1.0368131593237678E-74
        0x2acfdc986cb9e301L
        0x40153b5ffef52806L    # 5.307983382905155
    .end array-data
.end method

.method private final zzo(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdy;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdy;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzceb;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcea;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 8
        -0x29144ef69ffe6d54L    # -5.202782617406872E110
        0x798dd698257dc8edL    # 3.305822294765467E277
        -0x6e66b69435b6a59eL
        0x7e76b4f94944bdd4L
    .end array-data
.end method

.method private final zzp(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 1
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdw;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcdw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 p2, 0x3

    .line 9
    new-array p2, p2, [J

    .line 10
    .line 11
    fill-array-data p2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzceb;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcea;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 8
        -0x4d26212f7c0408c0L    # -9.826153731957151E-64
        -0x3715bf307a712fc0L    # -1.829578679500734E43
        0x6066d6f01f544203L    # 2.4498319183721625E156
    .end array-data
.end method

.method private final zzq(Ljava/util/Map;I)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdz;

    .line 2
    .line 3
    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcdz;-><init>(ILjava/util/Map;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    new-array p2, p2, [J

    .line 10
    .line 11
    fill-array-data p2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzceb;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcea;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 8
        0x2986a6b2d1b0090bL
        -0x6f94a7248b6c9177L
        -0x685890c73f6d28dcL    # -1.00320054500553E-194
        -0x5c77ce6c6ff1ce95L    # -1.625299962157246E-137
    .end array-data
.end method

.method private static zzr(Landroid/util/JsonWriter;Ljava/util/Map;)V
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    new-array v2, v0, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    sget-object v3, Lcom/google/android/gms/internal/ads/zzceb;->zzf:Ljava/util/Set;

    .line 53
    .line 54
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    instance-of v3, v3, Ljava/util/List;

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 91
    .line 92
    .line 93
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v5, v0, [J

    .line 96
    .line 97
    fill-array-data v5, :array_1

    .line 98
    .line 99
    .line 100
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {p0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 112
    .line 113
    .line 114
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v5, v0, [J

    .line 117
    .line 118
    fill-array-data v5, :array_2

    .line 119
    .line 120
    .line 121
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {p0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    instance-of v3, v3, Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v3, :cond_3

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 148
    .line 149
    .line 150
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v4, v0, [J

    .line 153
    .line 154
    fill-array-data v4, :array_3

    .line 155
    .line 156
    .line 157
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v3, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 169
    .line 170
    .line 171
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    new-array v3, v0, [J

    .line 174
    .line 175
    fill-array-data v3, :array_4

    .line 176
    .line 177
    .line 178
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {p0, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    const/16 v0, 0xc

    .line 206
    .line 207
    new-array v0, v0, [J

    .line 208
    .line 209
    fill-array-data v0, :array_5

    .line 210
    .line 211
    .line 212
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    nop

    .line 227
    :array_0
    .array-data 8
        0x3fdd34e1fb9a7543L    # 0.4563527066291792
        -0x442883859d608648L    # -1.9893621162904476E-20
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_1
    .array-data 8
        -0x7aa2fc2a26d116d2L    # -7.804882823263207E-283
        0x42fcd31980af4d10L    # 5.07087864657105E14
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_2
    .array-data 8
        -0x560dec9733e14d23L
        -0x7742841955b5cc69L
    .end array-data

    .line 252
    :array_3
    .array-data 8
        0x2eb0cd97e46340c4L    # 8.649491947577931E-84
        -0x47decf4edc23166bL    # -2.525873306161615E-38
    .end array-data

    :array_4
    .array-data 8
        0x78d47dec29e24acbL    # 1.108556869983861E274
        -0x54ed82f91c116cb9L    # -3.301873832383112E-101
    .end array-data

    :array_5
    .array-data 8
        -0x256f180cd8e491f4L    # -1.8310509172135697E128
        0x263c93d1446712bL
        -0x6e001b1cf282e1edL    # -5.514592399456273E-222
        0x34d984218b24b4beL    # 4.162514042163848E-54
        0x1f10384832f61058L
        0x1303cd5dab03dedfL    # 4.487730907899357E-217
        -0x39ee0cc4d8c805e7L    # -3.5553878298933076E29
        0x4ff84b959d7456a8L    # 1.7582487201641512E77
        0x5bbd6615d35c96b0L    # 8.346939402286187E133
        0x56e47ad2a126c55bL    # 3.847810166483635E110
        -0x6997f3e86f4d34fcL    # -9.817435138547553E-201
        -0x563c8438f9352773L
    .end array-data
.end method


# virtual methods
.method public final zzc(Ljava/net/HttpURLConnection;[B)V
    .locals 3
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzceb;->zzk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    new-instance v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v1, v2, v0, p2}, Lcom/google/android/gms/internal/ads/zzceb;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 1
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzceb;->zzk()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [J

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzceb;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        -0x2ef90085b05995d4L    # -2.1815147271586496E82
        -0x46877f544f59db24L    # -7.550452664663638E-32
    .end array-data
.end method

.method public final zze(Ljava/net/HttpURLConnection;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzceb;->zzk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    move-object v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzceb;->zzq(Ljava/util/Map;I)V

    .line 27
    .line 28
    .line 29
    const/16 v0, 0xc8

    .line 30
    .line 31
    if-lt p2, v0, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x12c

    .line 34
    .line 35
    if-lt p2, v0, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    return-void

    .line 39
    :cond_3
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_3

    .line 44
    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    new-array v0, v0, [J

    .line 58
    .line 59
    fill-array-data v0, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-static {p2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_3
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzceb;->zzo(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :array_0
    .array-data 8
        -0x1eee6fac9fe483deL    # -3.858295755395705E159
        0xc6be98d6bed9c20L
        -0x5f3ec80d2c2cd996L
        0x5a97d14ef9028f1fL    # 2.579623788126049E128
        -0x2db6815551c4d65eL    # -2.5358304817839478E88
        0x7c3d74d8e3822c2bL    # 2.8706220345917863E290
        -0x4cfb20f42c0fe761L    # -6.341907148266671E-63
        0x84f08cb54221983L
    .end array-data
.end method

.method public final zzf(Ljava/util/Map;I)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzceb;->zzk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzceb;->zzq(Ljava/util/Map;I)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0xc8

    .line 12
    .line 13
    if-lt p2, p1, :cond_2

    .line 14
    .line 15
    const/16 p1, 0x12c

    .line 16
    .line 17
    if-lt p2, p1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    return-void

    .line 21
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzceb;->zzo(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final zzg(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzceb;->zzk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzceb;->zzh([B)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public final zzh([B)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdx;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;-><init>([B)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzceb;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcea;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 8
        0x3e517ce1975ab5a0L    # 1.6286798984706745E-8
        -0x76bfb06cae1e118dL    # -4.046785483680073E-264
        0x505bc611e050e65eL    # 1.2863903751997453E79
        -0x6625cfdbcb3db946L    # -3.85199632899879E-184
    .end array-data
.end method
