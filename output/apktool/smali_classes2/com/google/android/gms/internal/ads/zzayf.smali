.class public final Lcom/google/android/gms/internal/ads/zzayf;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzayf;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:J

.field private zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzayf;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzayf;->zzb:Lcom/google/android/gms/internal/ads/zzayf;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzayf;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaU(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgzu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzu;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [J

    .line 8
    .line 9
    const-wide v3, 0x64a510dabd23aa9eL    # 6.669084279213395E176

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-wide v3, v2, v5

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zze:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v1, v1, [J

    .line 29
    .line 30
    const-wide v2, -0x16ea46f129ada069L    # -1.6238077890288262E198

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    aput-wide v2, v1, v5

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzf:Ljava/lang/String;

    .line 45
    .line 46
    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzaye;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayf;->zzb:Lcom/google/android/gms/internal/ads/zzayf;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaye;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzf()Lcom/google/android/gms/internal/ads/zzayf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayf;->zzb:Lcom/google/android/gms/internal/ads/zzayf;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/ads/zzayf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayf;->zzb:Lcom/google/android/gms/internal/ads/zzayf;

    return-object v0
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzgyl;)Lcom/google/android/gms/internal/ads/zzayf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayf;->zzb:Lcom/google/android/gms/internal/ads/zzayf;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaE(Lcom/google/android/gms/internal/ads/zzgzu;Lcom/google/android/gms/internal/ads/zzgyl;)Lcom/google/android/gms/internal/ads/zzgzu;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzayf;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzayf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayf;->zzb:Lcom/google/android/gms/internal/ads/zzayf;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaG(Lcom/google/android/gms/internal/ads/zzgzu;Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgzu;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzayf;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/ads/zzayf;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzd:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzd:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayf;->zze:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/ads/zzayf;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzi:J

    return-void
.end method

.method public static synthetic zzn(Lcom/google/android/gms/internal/ads/zzayf;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzd:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzd:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzf:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzo(Lcom/google/android/gms/internal/ads/zzayf;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzg:J

    return-void
.end method

.method public static synthetic zzp(Lcom/google/android/gms/internal/ads/zzayf;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzh:J

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzh:J

    return-wide v0
.end method

.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x5

    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x3

    .line 5
    const/4 v2, 0x2

    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    if-eq p1, v2, :cond_3

    .line 11
    .line 12
    if-eq p1, v1, :cond_2

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    if-eq p1, p3, :cond_0

    .line 18
    .line 19
    return-object p2

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzayf;->zzb:Lcom/google/android/gms/internal/ads/zzayf;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaye;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaye;-><init>(Lcom/google/android/gms/internal/ads/zzayd;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayf;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzayf;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v3, v2, [J

    .line 38
    .line 39
    fill-array-data v3, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v4, v2, [J

    .line 52
    .line 53
    fill-array-data v4, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v5, v2, [J

    .line 66
    .line 67
    fill-array-data v5, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v6, v2, [J

    .line 80
    .line 81
    fill-array-data v6, :array_3

    .line 82
    .line 83
    .line 84
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v7, v2, [J

    .line 94
    .line 95
    fill-array-data v7, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v8, v2, [J

    .line 108
    .line 109
    fill-array-data v8, :array_5

    .line 110
    .line 111
    .line 112
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    const/4 v8, 0x6

    .line 120
    new-array v8, v8, [Ljava/lang/Object;

    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    aput-object p1, v8, v9

    .line 124
    .line 125
    aput-object v3, v8, p2

    .line 126
    .line 127
    aput-object v4, v8, v2

    .line 128
    .line 129
    aput-object v5, v8, v1

    .line 130
    .line 131
    aput-object v6, v8, v0

    .line 132
    .line 133
    aput-object v7, v8, p3

    .line 134
    .line 135
    sget-object p1, Lcom/google/android/gms/internal/ads/zzayf;->zzb:Lcom/google/android/gms/internal/ads/zzayf;

    .line 136
    .line 137
    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1003\u0002\u0004\u1003\u0003\u0005\u1003\u0004"

    .line 138
    .line 139
    invoke-static {p1, p2, v8}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    return-object p1

    .line 149
    :array_0
    .array-data 8
        0x33562417a85377adL    # 2.1528702195714993E-61
        0x644b898336ac1608L    # 1.3621552889989557E175
    .end array-data

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
    :array_1
    .array-data 8
        -0x2e86cb69b9c24fd9L    # -3.060361342121991E84
        0x1765dcdfab4ba953L    # 5.849494990036803E-196
    .end array-data

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
        0x392091000325ca5eL
        -0x3475da9ee3af530fL    # -8.013729679121777E55
    .end array-data

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
    .line 184
    .line 185
    :array_3
    .array-data 8
        -0x7a70e0aca49603f3L    # -6.697406707510897E-282
        0x1b3fffde500e94b7L
    .end array-data

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
    .line 196
    .line 197
    :array_4
    .array-data 8
        -0x56c5ca1c440f9d2bL    # -4.35950323335042E-110
        0x7aea960112de3575L    # 1.2354300922700246E284
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_5
    .array-data 8
        -0x7054b0271e543140L    # -3.435938106339877E-233
        -0x61b19aad61f7b152L
    .end array-data
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzg:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzi:J

    return-wide v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayf;->zze:Ljava/lang/String;

    return-object v0
.end method
