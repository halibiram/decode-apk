.class public final Lcom/google/android/gms/internal/ads/zzbcv;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbcv;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzben;

.field private zzg:Lcom/google/android/gms/internal/ads/zzben;

.field private zzh:Lcom/google/android/gms/internal/ads/zzben;

.field private zzi:Lcom/google/android/gms/internal/ads/zzhad;

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcv;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzb:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzbcv;

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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaN()Lcom/google/android/gms/internal/ads/zzhad;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->zzi:Lcom/google/android/gms/internal/ads/zzhad;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/ads/zzbcv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzb:Lcom/google/android/gms/internal/ads/zzbcv;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcv;->zzb:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbcu;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbcu;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbcv;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbcv;-><init>()V

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
    const/16 v9, 0x8

    .line 134
    .line 135
    new-array v9, v9, [Ljava/lang/Object;

    .line 136
    .line 137
    const/4 v10, 0x0

    .line 138
    aput-object p1, v9, v10

    .line 139
    .line 140
    aput-object v3, v9, p2

    .line 141
    .line 142
    aput-object v4, v9, v2

    .line 143
    .line 144
    aput-object v5, v9, v1

    .line 145
    .line 146
    aput-object v6, v9, v0

    .line 147
    .line 148
    aput-object v7, v9, p3

    .line 149
    .line 150
    const-class p1, Lcom/google/android/gms/internal/ads/zzben;

    .line 151
    .line 152
    const/4 p2, 0x6

    .line 153
    aput-object p1, v9, p2

    .line 154
    .line 155
    const/4 p1, 0x7

    .line 156
    aput-object v8, v9, p1

    .line 157
    .line 158
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcv;->zzb:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 159
    .line 160
    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u001b\u0006\u1004\u0004"

    .line 161
    .line 162
    invoke-static {p1, p2, v9}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    return-object p1

    .line 172
    nop

    .line 173
    :array_0
    .array-data 8
        -0x6ea4f141af829850L    # -4.568697326510941E-225
        -0x11fb33a430a4564cL    # -9.397539437592142E221
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
    :array_1
    .array-data 8
        0x3431e1482f010899L    # 2.848449561311756E-57
        -0x32058136bf3c020L    # -3.159011416427761E293
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
    :array_2
    .array-data 8
        0x34584ad7ddbd18c9L    # 1.5479982565428988E-56
        -0x51fbf41f955677c5L    # -5.038572403390757E-87
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
    :array_3
    .array-data 8
        0xedb140fbfddf9dcL
        -0x5308c67121ba3776L    # -4.45362858790739E-92
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
    :array_4
    .array-data 8
        -0x158aa2d8f298919L
        -0x729b47fcfacb0a1eL
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_5
    .array-data 8
        -0x389f800518a5b78fL    # -6.85379955176258E35
        -0x2c8982fb390bd8eeL    # -1.1727254128464048E94
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_6
    .array-data 8
        0x5d04a0f7be410534L    # 1.2282917952406527E140
        -0x59bed7a891355e45L
    .end array-data
.end method
