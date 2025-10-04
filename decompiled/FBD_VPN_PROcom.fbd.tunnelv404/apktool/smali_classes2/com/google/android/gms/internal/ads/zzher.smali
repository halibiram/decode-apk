.class public final Lcom/google/android/gms/internal/ads/zzher;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzher;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzheq;

.field private zzf:Lcom/google/android/gms/internal/ads/zzhad;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzi:I

.field private zzj:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzher;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzher;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzher;->zzb:Lcom/google/android/gms/internal/ads/zzher;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzher;

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
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzher;->zzj:B

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaN()Lcom/google/android/gms/internal/ads/zzhad;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzher;->zzf:Lcom/google/android/gms/internal/ads/zzhad;

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzher;->zzg:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzher;->zzh:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 18
    .line 19
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzheo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzher;->zzb:Lcom/google/android/gms/internal/ads/zzher;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzheo;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zzher;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzher;->zzb:Lcom/google/android/gms/internal/ads/zzher;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzher;Lcom/google/android/gms/internal/ads/zzhen;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzher;->zzf:Lcom/google/android/gms/internal/ads/zzhad;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhad;->zzc()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaO(Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzhad;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzher;->zzf:Lcom/google/android/gms/internal/ads/zzhad;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzher;->zzf:Lcom/google/android/gms/internal/ads/zzhad;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    if-eq p1, v4, :cond_4

    .line 12
    .line 13
    if-eq p1, v3, :cond_3

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eq p1, v2, :cond_2

    .line 17
    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/ads/zzher;->zzj:B

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzher;->zzb:Lcom/google/android/gms/internal/ads/zzher;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzheo;

    .line 30
    .line 31
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzheo;-><init>(Lcom/google/android/gms/internal/ads/zzhdp;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzher;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzher;-><init>()V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array p2, v4, [J

    .line 44
    .line 45
    fill-array-data p2, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v5, v4, [J

    .line 58
    .line 59
    fill-array-data v5, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {p2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v6, v4, [J

    .line 72
    .line 73
    fill-array-data v6, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v7, v4, [J

    .line 86
    .line 87
    fill-array-data v7, :array_3

    .line 88
    .line 89
    .line 90
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v8, v4, [J

    .line 100
    .line 101
    fill-array-data v8, :array_4

    .line 102
    .line 103
    .line 104
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v9, v4, [J

    .line 114
    .line 115
    fill-array-data v9, :array_5

    .line 116
    .line 117
    .line 118
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    const/4 v9, 0x7

    .line 126
    new-array v9, v9, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object p1, v9, v0

    .line 129
    .line 130
    aput-object p2, v9, p3

    .line 131
    .line 132
    aput-object v5, v9, v4

    .line 133
    .line 134
    const-class p1, Lcom/google/android/gms/internal/ads/zzhen;

    .line 135
    .line 136
    aput-object p1, v9, v3

    .line 137
    .line 138
    aput-object v6, v9, v2

    .line 139
    .line 140
    aput-object v7, v9, v1

    .line 141
    .line 142
    const/4 p1, 0x6

    .line 143
    aput-object v8, v9, p1

    .line 144
    .line 145
    sget-object p1, Lcom/google/android/gms/internal/ads/zzher;->zzb:Lcom/google/android/gms/internal/ads/zzher;

    .line 146
    .line 147
    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003"

    .line 148
    .line 149
    invoke-static {p1, p2, v9}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1

    .line 154
    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzher;->zzj:B

    .line 155
    .line 156
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    return-object p1

    .line 161
    :array_0
    .array-data 8
        -0x664dfda562d79002L    # -6.622423884070784E-185
        0x31cdbbcbdfac7a30L    # 8.616248155801936E-69
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
    :array_1
    .array-data 8
        0x4ede05e1193d0f8aL    # 8.288435831408093E71
        -0x2233608624685a8dL    # -6.980754883488135E143
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
    :array_2
    .array-data 8
        -0x6dba5d0405e58e04L    # -1.197135624136041E-220
        -0x63fc3f2a1b83ac19L    # -9.983236807538529E-174
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
    :array_3
    .array-data 8
        -0x3846249e7823b5e2L    # -3.436979106435182E37
        0x5e8568ac22a1ed7bL    # 2.1386601412785457E147
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
    :array_4
    .array-data 8
        -0x6ef149cd8e0d9d9eL    # -1.620530587603367E-226
        0x17fcba768172d000L
    .end array-data

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_5
    .array-data 8
        -0x31bee9b8843a367eL    # -9.21330740718142E68
        0x43f7c5ee346689ebL    # 2.7408594273765863E19
    .end array-data
.end method
