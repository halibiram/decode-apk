.class public final Lcom/google/android/gms/internal/ads/zzase;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzase;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzase;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzase;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzase;->zzb:Lcom/google/android/gms/internal/ads/zzase;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzase;

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
    const-wide v3, -0x3f7c3839902a1785L    # -632.971892996938

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzase;->zze:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v2, v1, [J

    .line 29
    .line 30
    const-wide v3, -0x2844a76565e2fb80L    # -4.208951397723475E114

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    aput-wide v3, v2, v5

    .line 36
    .line 37
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzase;->zzf:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v2, v1, [J

    .line 49
    .line 50
    const-wide v3, 0x606e58216d33a27eL    # 3.2548000841022934E156

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    aput-wide v3, v2, v5

    .line 56
    .line 57
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzase;->zzg:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v2, v1, [J

    .line 69
    .line 70
    const-wide v3, -0x4fcf4ef6eff56ea5L    # -1.44150992051167E-76

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    aput-wide v3, v2, v5

    .line 76
    .line 77
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzase;->zzh:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v2, v1, [J

    .line 89
    .line 90
    const-wide v3, -0x6a14bf22e7abdd0L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    aput-wide v3, v2, v5

    .line 96
    .line 97
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzase;->zzi:Ljava/lang/String;

    .line 105
    .line 106
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v1, v1, [J

    .line 109
    .line 110
    const-wide v2, 0x1adff7705f31296L

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    aput-wide v2, v1, v5

    .line 116
    .line 117
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzase;->zzj:Ljava/lang/String;

    .line 125
    .line 126
    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/ads/zzase;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzase;->zzb:Lcom/google/android/gms/internal/ads/zzase;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzase;->zzb:Lcom/google/android/gms/internal/ads/zzase;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasd;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzasd;-><init>(Lcom/google/android/gms/internal/ads/zzarx;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzase;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzase;-><init>()V

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
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v9, v2, [J

    .line 122
    .line 123
    fill-array-data v9, :array_6

    .line 124
    .line 125
    .line 126
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    const/4 v9, 0x7

    .line 134
    new-array v9, v9, [Ljava/lang/Object;

    .line 135
    .line 136
    const/4 v10, 0x0

    .line 137
    aput-object p1, v9, v10

    .line 138
    .line 139
    aput-object v3, v9, p2

    .line 140
    .line 141
    aput-object v4, v9, v2

    .line 142
    .line 143
    aput-object v5, v9, v1

    .line 144
    .line 145
    aput-object v6, v9, v0

    .line 146
    .line 147
    aput-object v7, v9, p3

    .line 148
    .line 149
    const/4 p1, 0x6

    .line 150
    aput-object v8, v9, p1

    .line 151
    .line 152
    sget-object p1, Lcom/google/android/gms/internal/ads/zzase;->zzb:Lcom/google/android/gms/internal/ads/zzase;

    .line 153
    .line 154
    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005"

    .line 155
    .line 156
    invoke-static {p1, p2, v9}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    return-object p1

    .line 161
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    return-object p1

    .line 166
    nop

    .line 167
    :array_0
    .array-data 8
        0x50e40a7b981c0bc0L    # 4.752554568177019E81
        -0x1be73465ad7c5eaeL    # -1.5331593303221158E174
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
    :array_1
    .array-data 8
        0x6a60228bdaade839L    # 2.529383045008316E204
        -0x13abaffdca39c96aL    # -6.838188024740974E213
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
    :array_2
    .array-data 8
        0x23f032947ec50293L    # 1.39281055544112E-135
        -0x2defcc45e32cda0cL    # -2.014415055218525E87
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
    :array_3
    .array-data 8
        0x55d279b3915bae63L    # 2.6483309812517674E105
        0x73f72cae0a2e3611L    # 4.148082226519374E250
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
    :array_4
    .array-data 8
        0x71553c443e11c11L    # 1.5399906358643498E-274
        0x6910e04e87c1d348L    # 1.261513154419264E198
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
    :array_5
    .array-data 8
        -0x1b0b619d3ed52b19L    # -2.0888084306408537E178
        0x3fb0dc03648f2c48L    # 0.06585713582096375
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
    :array_6
    .array-data 8
        -0x50eec5229a7bcd5aL    # -5.676295183290014E-82
        -0x6434d00b86539719L    # -8.587742090421902E-175
    .end array-data
.end method
