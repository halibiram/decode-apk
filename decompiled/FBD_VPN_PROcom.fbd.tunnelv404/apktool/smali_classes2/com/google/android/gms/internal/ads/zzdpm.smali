.class public final Lcom/google/android/gms/internal/ads/zzdpm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/zzbq;

.field private final zzb:Lcom/google/android/gms/common/util/Clock;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzbq;Lcom/google/android/gms/common/util/Clock;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpm;->zza:Lcom/google/android/gms/ads/internal/util/zzbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpm;->zzb:Lcom/google/android/gms/common/util/Clock;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpm;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zzc([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpm;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 3
    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    array-length v3, p1

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {p1, v4, v3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpm;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 15
    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v5

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sub-long/2addr v5, v1

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-ne v3, v7, :cond_0

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v8, 0x4

    .line 58
    new-array v8, v8, [J

    .line 59
    .line 60
    fill-array-data v8, :array_0

    .line 61
    .line 62
    .line 63
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v7, v0, [J

    .line 79
    .line 80
    fill-array-data v7, :array_1

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v1, v0, [J

    .line 99
    .line 100
    fill-array-data v1, :array_2

    .line 101
    .line 102
    .line 103
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v0, v0, [J

    .line 119
    .line 120
    fill-array-data v0, :array_3

    .line 121
    .line 122
    .line 123
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    const/4 v0, 0x3

    .line 139
    new-array v0, v0, [J

    .line 140
    .line 141
    fill-array-data v0, :array_4

    .line 142
    .line 143
    .line 144
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_1
    return-object p1

    .line 165
    :array_0
    .array-data 8
        0x23a35949823774a0L    # 5.199307711438906E-137
        -0x5d3170c77afef463L
        0x741c0c912388cd66L    # 2.0082379581754958E251
        0x7640f67cf58ce712L    # 4.172966739623848E261
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
        0x3b1095a40167b320L    # 3.429601201759848E-24
        -0x48503a0d98ff4158L    # -1.8236939644365792E-40
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
        -0x501f02a21fa47cdbL    # -4.585188472836226E-78
        -0x23fccbee9f648f85L    # -1.7447209505422343E135
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
        -0x19871259a53f6c7eL    # -4.236920846824594E185
        -0x3393f6ac9365477bL    # -1.4079001472244155E60
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
        -0xe55f0fb39781fd6L    # -3.3937415061297267E239
        -0x5b3a7e239e859c2eL    # -1.515015829057094E-131
        -0x4c6f715b94d5300L
    .end array-data
.end method


# virtual methods
.method public final synthetic zza(DZLcom/google/android/gms/internal/ads/zzapw;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzapw;->zzb:[B

    .line 2
    .line 3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/high16 v1, 0x4064000000000000L    # 160.0

    .line 9
    .line 10
    mul-double p1, p1, v1

    .line 11
    .line 12
    double-to-int p1, p1

    .line 13
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 20
    .line 21
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzgg:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 41
    .line 42
    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzc([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 47
    .line 48
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 49
    .line 50
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 51
    .line 52
    mul-int p2, p2, p3

    .line 53
    .line 54
    if-lez p2, :cond_1

    .line 55
    .line 56
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgc;->zzgh:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 57
    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    add-int/lit8 p2, p2, -0x1

    .line 73
    .line 74
    div-int/2addr p2, p3

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    rsub-int/lit8 p2, p2, 0x21

    .line 80
    .line 81
    div-int/lit8 p2, p2, 0x2

    .line 82
    .line 83
    shl-int/2addr p1, p2

    .line 84
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 85
    .line 86
    :cond_1
    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzc([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1
.end method

.method public final zzb(Ljava/lang/String;DZ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpm;->zza:Lcom/google/android/gms/ads/internal/util/zzbq;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzbq;->zza(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpl;

    .line 8
    .line 9
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdpl;-><init>(Lcom/google/android/gms/internal/ads/zzdpm;DZ)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpm;->zzc:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgen;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfws;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
