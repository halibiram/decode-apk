.class public final Lcom/google/android/gms/internal/ads/zzhev;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhev;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzheu;

.field private zzf:Lcom/google/android/gms/internal/ads/zzhad;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzk:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhev;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhev;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhev;->zzb:Lcom/google/android/gms/internal/ads/zzhev;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzhev;

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
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzhev;->zzk:B

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaN()Lcom/google/android/gms/internal/ads/zzhad;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhev;->zzf:Lcom/google/android/gms/internal/ads/zzhad;

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhev;->zzg:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhev;->zzh:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhev;->zzj:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/ads/zzhev;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhev;->zzb:Lcom/google/android/gms/internal/ads/zzhev;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/ads/zzhev;->zzk:B

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhev;->zzb:Lcom/google/android/gms/internal/ads/zzhev;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhes;

    .line 30
    .line 31
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzhes;-><init>(Lcom/google/android/gms/internal/ads/zzhdp;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhev;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhev;-><init>()V

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
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v10, v4, [J

    .line 128
    .line 129
    fill-array-data v10, :array_6

    .line 130
    .line 131
    .line 132
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    const/16 v10, 0x8

    .line 140
    .line 141
    new-array v10, v10, [Ljava/lang/Object;

    .line 142
    .line 143
    aput-object p1, v10, v0

    .line 144
    .line 145
    aput-object p2, v10, p3

    .line 146
    .line 147
    aput-object v5, v10, v4

    .line 148
    .line 149
    const-class p1, Lcom/google/android/gms/internal/ads/zzhen;

    .line 150
    .line 151
    aput-object p1, v10, v3

    .line 152
    .line 153
    aput-object v6, v10, v2

    .line 154
    .line 155
    aput-object v7, v10, v1

    .line 156
    .line 157
    const/4 p1, 0x6

    .line 158
    aput-object v8, v10, p1

    .line 159
    .line 160
    const/4 p1, 0x7

    .line 161
    aput-object v9, v10, p1

    .line 162
    .line 163
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhev;->zzb:Lcom/google/android/gms/internal/ads/zzhev;

    .line 164
    .line 165
    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    .line 166
    .line 167
    invoke-static {p1, p2, v10}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    return-object p1

    .line 172
    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzhev;->zzk:B

    .line 173
    .line 174
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    return-object p1

    .line 179
    :array_0
    .array-data 8
        0x4ce110f06710a833L    # 2.19394200277745E62
        -0x39e35e82d65eb77dL    # -5.670917373250666E29
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
    :array_1
    .array-data 8
        0x690eab669686ea05L    # 1.1462895877015103E198
        0x22e2bc2c6a2e4953L
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_2
    .array-data 8
        -0x47613f3c5be7b570L    # -5.783993668167681E-36
        0x4f7e0cd4661f2e50L    # 8.495033466061966E74
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_3
    .array-data 8
        -0x44b4bf81062f92deL    # -4.5084548704888425E-23
        0x7eda08c3a9b4a96eL    # 1.1158363001815E303
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_4
    .array-data 8
        -0x25b54dab3d1d55aeL    # -9.035750730989244E126
        -0x73ba495491e10d21L
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
    :array_5
    .array-data 8
        0x358c1f570ef9f992L    # 9.395577188048388E-51
        -0x7d96cb2ec3328e33L    # -4.817743723752324E-297
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
    :array_6
    .array-data 8
        0x2bf1e29105465b45L    # 5.23324376448857E-97
        0x79f3fe8409801de3L    # 2.8354374677869714E279
    .end array-data
.end method
