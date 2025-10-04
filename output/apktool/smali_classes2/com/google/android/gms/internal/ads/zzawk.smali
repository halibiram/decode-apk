.class public final Lcom/google/android/gms/internal/ads/zzawk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:J

.field private zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzh:J

    return-void
.end method

.method private static zzl(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/view/WindowManager;

    .line 21
    .line 22
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-object v0

    .line 39
    :array_0
    .array-data 8
        -0x3a82567c85f85a7eL    # -5.7374966433730636E26
        -0x7809f118ba59787dL
    .end array-data
.end method

.method private static zzm(Landroid/view/View;)Z
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v7, v1, [J

    .line 17
    .line 18
    fill-array-data v7, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    check-cast p0, Landroid/view/ViewGroup;

    .line 35
    .line 36
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v6, 0x0

    .line 59
    invoke-virtual {v5, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v7, v3, [J

    .line 74
    .line 75
    fill-array-data v7, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v7, v0, [J

    .line 105
    .line 106
    fill-array-data v7, :array_3

    .line 107
    .line 108
    .line 109
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    new-array v7, v2, [Ljava/lang/Class;

    .line 117
    .line 118
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 119
    .line 120
    aput-object v8, v7, v4

    .line 121
    .line 122
    invoke-virtual {p0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    new-array v5, v2, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v1, v5, v4

    .line 129
    .line 130
    invoke-virtual {p0, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Ljava/lang/String;

    .line 135
    .line 136
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v0, v0, [J

    .line 139
    .line 140
    fill-array-data v0, :array_4

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_2

    .line 155
    .line 156
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v1, v3, [J

    .line 159
    .line 160
    fill-array-data v1, :array_5

    .line 161
    .line 162
    .line 163
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_2

    .line 175
    .line 176
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v1, v3, [J

    .line 179
    .line 180
    fill-array-data v1, :array_6

    .line 181
    .line 182
    .line 183
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    if-eqz p0, :cond_1

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_1
    return v4

    .line 198
    :cond_2
    :goto_0
    return v2

    .line 199
    :catch_0
    return v4

    .line 200
    nop

    .line 201
    :array_0
    .array-data 8
        -0xa8b9cb4c647ee6fL    # -6.122490063967237E257
        -0x792142d1e8fd6c8dL
        0x2bf0c4404ef16ecbL    # 4.905989007046596E-97
        0x2216d573e14fc9f9L
    .end array-data

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
    :array_1
    .array-data 8
        -0x82e62ff9fe85afbL    # -1.453906747744261E269
        0x2449200f0ec445b9L    # 6.913563882097371E-134
        -0x4cebb1206eed8cfL    # -2.567967593435036E285
        -0x204f88bf58f83cfeL    # -8.623855064225455E152
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
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_2
    .array-data 8
        -0x626846bc57272d46L    # -4.02313511073008E-166
        0x7759069716347226L    # 8.069435493180384E266
    .end array-data

    :array_3
    .array-data 8
        -0x405dd0ff684c10a1L    # -0.03551484920350733
        0x6fef10a0f9f79925L    # 1.5071533343984337E231
        0x3ac25a10283c1e46L    # 1.1859578626701193E-25
    .end array-data

    :array_4
    .array-data 8
        0x1b9481f489675f32L    # 8.097261682862025E-176
        -0x107fb830e7eef0edL    # -1.234168780740917E229
        0x10a94bb59616a7eL
    .end array-data

    :array_5
    .array-data 8
        -0x25f0d0fb482cc895L    # -6.596527477599508E125
        -0xae5a4cf8f38787bL
    .end array-data

    :array_6
    .array-data 8
        0x56447ef00cc6be62L    # 3.760576356736699E107
        0x5d68f2aa78a245ceL    # 9.506971847892346E141
    .end array-data
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzg:J

    return-wide v0
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zze:J

    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zza:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzc:J

    return-wide v0
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzh:J

    return-wide v0
.end method

.method public final zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzf:J

    return-wide v0
.end method

.method public final zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzb:J

    return-wide v0
.end method

.method public final zzh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzd:J

    return-wide v0
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzg:J

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzh:J

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzg:J

    .line 10
    .line 11
    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zza:J

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzb:J

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zza:J

    .line 10
    .line 11
    return-void
.end method

.method public final zzk(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzc:J

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzd:J

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzc:J

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zze:J

    .line 12
    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzf:J

    .line 20
    .line 21
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawk;->zzl(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 26
    .line 27
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 28
    .line 29
    mul-int v0, v0, v1

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 39
    .line 40
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 49
    .line 50
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    mul-int p1, p1, v1

    .line 55
    .line 56
    add-int v1, p1, p1

    .line 57
    .line 58
    if-lt v1, v0, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    if-nez p1, :cond_3

    .line 62
    .line 63
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzawk;->zzm(Landroid/view/View;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    :goto_0
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzawk;->zzc:J

    .line 70
    .line 71
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzawk;->zze:J

    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    :goto_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzawk;->zze:J

    .line 75
    .line 76
    return-void
.end method
