.class public final enum Lcom/google/android/gms/ads/AdFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/ads/AdFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum BANNER:Lcom/google/android/gms/ads/AdFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum NATIVE:Lcom/google/android/gms/ads/AdFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum REWARDED:Lcom/google/android/gms/ads/AdFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum REWARDED_INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/android/gms/ads/AdFormat;


# instance fields
.field private final zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdFormat;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/ads/AdFormat;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/gms/ads/AdFormat;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    new-array v6, v5, [J

    .line 30
    .line 31
    fill-array-data v6, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v6, 0x1

    .line 42
    invoke-direct {v1, v4, v6, v6}, Lcom/google/android/gms/ads/AdFormat;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    .line 46
    .line 47
    new-instance v4, Lcom/google/android/gms/ads/AdFormat;

    .line 48
    .line 49
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v8, v2, [J

    .line 52
    .line 53
    fill-array-data v8, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-direct {v4, v7, v2, v2}, Lcom/google/android/gms/ads/AdFormat;-><init>(Ljava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    .line 67
    .line 68
    new-instance v7, Lcom/google/android/gms/ads/AdFormat;

    .line 69
    .line 70
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/4 v9, 0x4

    .line 73
    new-array v10, v9, [J

    .line 74
    .line 75
    fill-array-data v10, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-direct {v7, v8, v5, v5}, Lcom/google/android/gms/ads/AdFormat;-><init>(Ljava/lang/String;II)V

    .line 86
    .line 87
    .line 88
    sput-object v7, Lcom/google/android/gms/ads/AdFormat;->REWARDED_INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    .line 89
    .line 90
    new-instance v8, Lcom/google/android/gms/ads/AdFormat;

    .line 91
    .line 92
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v11, v2, [J

    .line 95
    .line 96
    fill-array-data v11, :array_4

    .line 97
    .line 98
    .line 99
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-direct {v8, v10, v9, v9}, Lcom/google/android/gms/ads/AdFormat;-><init>(Ljava/lang/String;II)V

    .line 107
    .line 108
    .line 109
    sput-object v8, Lcom/google/android/gms/ads/AdFormat;->NATIVE:Lcom/google/android/gms/ads/AdFormat;

    .line 110
    .line 111
    new-instance v10, Lcom/google/android/gms/ads/AdFormat;

    .line 112
    .line 113
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v12, v5, [J

    .line 116
    .line 117
    fill-array-data v12, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    const/4 v12, 0x5

    .line 128
    const/4 v13, 0x6

    .line 129
    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/gms/ads/AdFormat;-><init>(Ljava/lang/String;II)V

    .line 130
    .line 131
    .line 132
    sput-object v10, Lcom/google/android/gms/ads/AdFormat;->APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;

    .line 133
    .line 134
    new-array v11, v13, [Lcom/google/android/gms/ads/AdFormat;

    .line 135
    .line 136
    aput-object v0, v11, v3

    .line 137
    .line 138
    aput-object v1, v11, v6

    .line 139
    .line 140
    aput-object v4, v11, v2

    .line 141
    .line 142
    aput-object v7, v11, v5

    .line 143
    .line 144
    aput-object v8, v11, v9

    .line 145
    .line 146
    aput-object v10, v11, v12

    .line 147
    .line 148
    sput-object v11, Lcom/google/android/gms/ads/AdFormat;->zza:[Lcom/google/android/gms/ads/AdFormat;

    .line 149
    .line 150
    return-void

    .line 151
    :array_0
    .array-data 8
        0x7972ba7dc74f7241L    # 1.0374772921327237E277
        -0x51ad0fefc6384233L    # -1.5231741610393014E-85
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
    :array_1
    .array-data 8
        0x72f4afb8d0053948L    # 5.649912035628857E245
        -0x2f11e886d1313708L    # -7.1360102076149445E81
        0x6b97f6f315738123L    # 1.96964528573403E210
    .end array-data

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
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_2
    .array-data 8
        0x8c32cc67d8b4cdeL
        -0x889f629fd8e3fd1L    # -2.842475024271062E267
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
    :array_3
    .array-data 8
        -0x11189dd9103cb03fL    # -1.7310696527904802E226
        0x20d912192e1f6889L    # 1.91473457661736E-150
        -0x2df98251e7233d6L    # -5.238899944713885E294
        -0x31019d271e871dcaL    # -3.355476886175711E72
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
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_4
    .array-data 8
        0x3712e2feba6f5a12L    # 2.117272223043958E-43
        0x16bb4bd2db4dae7dL    # 3.566028835389502E-199
    .end array-data

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
    .line 222
    .line 223
    :array_5
    .array-data 8
        0x324a4942f1db74f3L    # 1.9500170434626414E-66
        -0xc8b99bbfb569f4eL
        0x1f5da304db729a59L
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/ads/AdFormat;->zzb:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/ads/AdFormat;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/ads/AdFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/ads/AdFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/ads/AdFormat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/AdFormat;->zza:[Lcom/google/android/gms/ads/AdFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/ads/AdFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/ads/AdFormat;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/AdFormat;->zzb:I

    return v0
.end method
