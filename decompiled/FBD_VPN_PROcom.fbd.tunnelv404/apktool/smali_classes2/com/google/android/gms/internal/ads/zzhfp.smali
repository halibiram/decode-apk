.class public final Lcom/google/android/gms/internal/ads/zzhfp;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhfp;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzher;

.field private zzh:Lcom/google/android/gms/internal/ads/zzhev;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzgzz;

.field private zzk:Ljava/lang/String;

.field private zzl:I

.field private zzm:Lcom/google/android/gms/internal/ads/zzhad;

.field private zzn:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhfp;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfp;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzhfp;

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
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzn:B

    .line 6
    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [J

    .line 11
    .line 12
    const-wide v3, 0x76c2773799769b41L    # 1.1629252631891825E264

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    aput-wide v3, v2, v5

    .line 19
    .line 20
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzf:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaJ()Lcom/google/android/gms/internal/ads/zzgzz;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzj:Lcom/google/android/gms/internal/ads/zzgzz;

    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    const-wide v2, 0x204e36521a4a05c5L    # 4.506656188024309E-153

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    aput-wide v2, v1, v5

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzk:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaN()Lcom/google/android/gms/internal/ads/zzhad;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzm:Lcom/google/android/gms/internal/ads/zzhad;

    .line 60
    .line 61
    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzhfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfp;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhfo;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzd()Lcom/google/android/gms/internal/ads/zzhfp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfp;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    return-object v0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzhfp;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zze:I

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzhfp;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzd:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzd:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzf:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzhfp;Lcom/google/android/gms/internal/ads/zzher;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzg:Lcom/google/android/gms/internal/ads/zzher;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzd:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzd:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzhfp;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzm:Lcom/google/android/gms/internal/ads/zzhad;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzm:Lcom/google/android/gms/internal/ads/zzhad;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzm:Lcom/google/android/gms/internal/ads/zzhad;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzhfp;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzl:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzd:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzm:Lcom/google/android/gms/internal/ads/zzhad;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x5

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    add-int/lit8 v7, p1, -0x1

    .line 10
    .line 11
    if-eqz v7, :cond_5

    .line 12
    .line 13
    if-eq v7, v6, :cond_4

    .line 14
    .line 15
    if-eq v7, v5, :cond_3

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eq v7, v4, :cond_2

    .line 19
    .line 20
    if-eq v7, v3, :cond_1

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :cond_0
    iput-byte v1, v0, Lcom/google/android/gms/internal/ads/zzhfp;->zzn:B

    .line 26
    .line 27
    return-object v5

    .line 28
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhfp;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhfo;

    .line 32
    .line 33
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzhfo;-><init>(Lcom/google/android/gms/internal/ads/zzhdp;)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhfp;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhfp;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_4
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v8, v6, [J

    .line 46
    .line 47
    fill-array-data v8, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v9, v6, [J

    .line 60
    .line 61
    fill-array-data v9, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v10, v6, [J

    .line 74
    .line 75
    fill-array-data v10, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    new-array v11, v6, [J

    .line 88
    .line 89
    fill-array-data v11, :array_3

    .line 90
    .line 91
    .line 92
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v12, v6, [J

    .line 102
    .line 103
    fill-array-data v12, :array_4

    .line 104
    .line 105
    .line 106
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v13, v6, [J

    .line 116
    .line 117
    fill-array-data v13, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v14, v6, [J

    .line 130
    .line 131
    fill-array-data v14, :array_6

    .line 132
    .line 133
    .line 134
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v15, v6, [J

    .line 144
    .line 145
    fill-array-data v15, :array_7

    .line 146
    .line 147
    .line 148
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v3, v6, [J

    .line 158
    .line 159
    fill-array-data v3, :array_8

    .line 160
    .line 161
    .line 162
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    new-array v4, v6, [J

    .line 172
    .line 173
    fill-array-data v4, :array_9

    .line 174
    .line 175
    .line 176
    invoke-direct {v15, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    const/16 v15, 0xb

    .line 184
    .line 185
    new-array v15, v15, [Ljava/lang/Object;

    .line 186
    .line 187
    aput-object v7, v15, v2

    .line 188
    .line 189
    aput-object v8, v15, v1

    .line 190
    .line 191
    aput-object v9, v15, v6

    .line 192
    .line 193
    aput-object v10, v15, v5

    .line 194
    .line 195
    const/4 v1, 0x4

    .line 196
    aput-object v11, v15, v1

    .line 197
    .line 198
    const/4 v1, 0x5

    .line 199
    aput-object v12, v15, v1

    .line 200
    .line 201
    const/4 v1, 0x6

    .line 202
    aput-object v13, v15, v1

    .line 203
    .line 204
    const/4 v1, 0x7

    .line 205
    aput-object v14, v15, v1

    .line 206
    .line 207
    const/16 v1, 0x8

    .line 208
    .line 209
    aput-object v3, v15, v1

    .line 210
    .line 211
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhfm;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 212
    .line 213
    const/16 v2, 0x9

    .line 214
    .line 215
    aput-object v1, v15, v2

    .line 216
    .line 217
    const/16 v1, 0xa

    .line 218
    .line 219
    aput-object v4, v15, v1

    .line 220
    .line 221
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhfp;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 222
    .line 223
    const-string v2, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u180c\u0006\t\u001a"

    .line 224
    .line 225
    invoke-static {v1, v2, v15}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    return-object v1

    .line 230
    :cond_5
    iget-byte v1, v0, Lcom/google/android/gms/internal/ads/zzhfp;->zzn:B

    .line 231
    .line 232
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    return-object v1

    .line 237
    :array_0
    .array-data 8
        -0x324109578605bbe6L    # -3.2608380115892203E66
        -0x1ddd8db23b0212ebL    # -5.31130941246075E164
    .end array-data

    .line 238
    .line 239
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
    :array_1
    .array-data 8
        -0x27bd5bc249efa243L    # -1.4690302483610632E117
        0x394348180c374b57L    # 7.42700868783083E-33
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_2
    .array-data 8
        0x568d8b62750bd15L
        0x514ef20017a07178L    # 4.6966014601361404E83
    .end array-data

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_3
    .array-data 8
        -0x660e38ec47d907f8L
        -0x7a7409873aa789a2L    # -6.017476768793216E-282
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_4
    .array-data 8
        -0x543672492214b6b4L    # -9.346371236723325E-98
        0xa8a4208a58785f6L
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_5
    .array-data 8
        0x7019453e8b3f182fL    # 9.808221521732678E231
        -0x496a5d760ce0554bL    # -9.474055185011803E-46
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_6
    .array-data 8
        0x3f56b225506b2532L    # 0.0013852466960762697
        0x95a26e90e3e1d64L
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_7
    .array-data 8
        0x44a1b74b9b36cb34L    # 4.1830716191346715E22
        -0x25b841517a7dd04bL    # -8.036697672950057E126
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_8
    .array-data 8
        0x3f22b293a039b00L
        -0x198634dbfea807acL    # -4.3839735859235706E185
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_9
    .array-data 8
        0x382ca2bbdb9f0d5L
        -0x6f44c0bcef980c73L    # -4.492870004979989E-228
    .end array-data
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfp;->zzf:Ljava/lang/String;

    return-object v0
.end method
