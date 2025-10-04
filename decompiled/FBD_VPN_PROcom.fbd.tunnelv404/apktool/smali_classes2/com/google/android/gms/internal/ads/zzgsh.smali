.class public final Lcom/google/android/gms/internal/ads/zzgsh;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgsh;

.field private static volatile zzd:Lcom/google/android/gms/internal/ads/zzhbl;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgsn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsh;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgsh;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgsh;->zzb:Lcom/google/android/gms/internal/ads/zzgsh;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzgsh;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaU(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgzu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzu;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsh;->zzg:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 7
    .line 8
    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgsg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsh;->zzb:Lcom/google/android/gms/internal/ads/zzgsh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgsg;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzd()Lcom/google/android/gms/internal/ads/zzgsh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsh;->zzb:Lcom/google/android/gms/internal/ads/zzgsh;

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgsh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsh;->zzb:Lcom/google/android/gms/internal/ads/zzgsh;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaG(Lcom/google/android/gms/internal/ads/zzgzu;Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgzu;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgsh;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzh()Lcom/google/android/gms/internal/ads/zzhbl;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsh;->zzb:Lcom/google/android/gms/internal/ads/zzgsh;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzgsh;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhbl;

    .line 10
    .line 11
    return-object v0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzgsh;Lcom/google/android/gms/internal/ads/zzgyl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsh;->zzg:Lcom/google/android/gms/internal/ads/zzgyl;

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzgsh;Lcom/google/android/gms/internal/ads/zzgsn;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsh;->zzh:Lcom/google/android/gms/internal/ads/zzgsn;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgsh;->zze:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgsh;->zze:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgsh;->zzf:I

    return v0
.end method

.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x4

    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x2

    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    if-eq p1, v1, :cond_6

    .line 10
    .line 11
    if-eq p1, v0, :cond_5

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    if-eq p1, p3, :cond_4

    .line 15
    .line 16
    const/4 p3, 0x5

    .line 17
    if-eq p1, p3, :cond_3

    .line 18
    .line 19
    const/4 p3, 0x6

    .line 20
    if-eq p1, p3, :cond_0

    .line 21
    .line 22
    return-object p2

    .line 23
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgsh;->zzd:Lcom/google/android/gms/internal/ads/zzhbl;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzgsh;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgsh;->zzd:Lcom/google/android/gms/internal/ads/zzhbl;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzq;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgsh;->zzb:Lcom/google/android/gms/internal/ads/zzgsh;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgzq;-><init>(Lcom/google/android/gms/internal/ads/zzgzu;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/gms/internal/ads/zzgsh;->zzd:Lcom/google/android/gms/internal/ads/zzhbl;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    monitor-exit p2

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1

    .line 50
    :cond_2
    :goto_2
    return-object p1

    .line 51
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgsh;->zzb:Lcom/google/android/gms/internal/ads/zzgsh;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgsg;

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgsg;-><init>(Lcom/google/android/gms/internal/ads/zzgsf;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgsh;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgsh;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v2, v1, [J

    .line 69
    .line 70
    fill-array-data v2, :array_0

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v3, v1, [J

    .line 83
    .line 84
    fill-array-data v3, :array_1

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v4, v1, [J

    .line 97
    .line 98
    fill-array-data v4, :array_2

    .line 99
    .line 100
    .line 101
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v5, v1, [J

    .line 111
    .line 112
    fill-array-data v5, :array_3

    .line 113
    .line 114
    .line 115
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    new-array p3, p3, [Ljava/lang/Object;

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    aput-object p1, p3, v5

    .line 126
    .line 127
    aput-object v2, p3, p2

    .line 128
    .line 129
    aput-object v3, p3, v1

    .line 130
    .line 131
    aput-object v4, p3, v0

    .line 132
    .line 133
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgsh;->zzb:Lcom/google/android/gms/internal/ads/zzgsh;

    .line 134
    .line 135
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\u1009\u0000"

    .line 136
    .line 137
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    return-object p1

    .line 147
    :array_0
    .array-data 8
        0x6373677a44afd4d4L    # 1.1716921155289843E171
        0x2f793eba02ffe962L    # 5.322761184170061E-80
    .end array-data

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
    :array_1
    .array-data 8
        0x6cc66cb60ed80250L    # 9.663014686133256E215
        0x197f79cef775ffd3L
    .end array-data

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
    :array_2
    .array-data 8
        -0x6980e7feba42c019L    # -2.538845483249564E-200
        -0x38b21d7d2c84937bL    # -3.103415971592191E35
    .end array-data

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
    .line 182
    .line 183
    :array_3
    .array-data 8
        0x29848babd7fa5d1fL
        -0x6a000bd1d0182117L
    .end array-data
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgsn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsh;->zzh:Lcom/google/android/gms/internal/ads/zzgsn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsn;->zze()Lcom/google/android/gms/internal/ads/zzgsn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgyl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsh;->zzg:Lcom/google/android/gms/internal/ads/zzgyl;

    return-object v0
.end method
