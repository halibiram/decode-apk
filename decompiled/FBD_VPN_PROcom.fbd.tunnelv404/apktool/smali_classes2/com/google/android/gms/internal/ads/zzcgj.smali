.class public final Lcom/google/android/gms/internal/ads/zzcgj;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/google/android/gms/internal/ads/zzcgh;


# static fields
.field private static final zza:[F


# instance fields
.field private volatile zzA:Z

.field private volatile zzB:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgi;

.field private final zzc:[F

.field private final zzd:[F

.field private final zze:[F

.field private final zzf:[F

.field private final zzg:[F

.field private final zzh:[F

.field private final zzi:[F

.field private zzj:F

.field private zzk:F

.field private zzl:F

.field private zzm:I

.field private zzn:I

.field private zzo:Landroid/graphics/SurfaceTexture;

.field private zzp:Landroid/graphics/SurfaceTexture;

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private final zzt:Ljava/nio/FloatBuffer;

.field private final zzu:Ljava/util/concurrent/CountDownLatch;

.field private final zzv:Ljava/lang/Object;

.field private zzw:Ljavax/microedition/khronos/egl/EGL10;

.field private zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private zzy:Ljavax/microedition/khronos/egl/EGLContext;

.field private zzz:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcgj;->zza:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcgj;->zza:[F

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    const/16 v1, 0x30

    .line 23
    .line 24
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzt:Ljava/nio/FloatBuffer;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x9

    .line 51
    .line 52
    new-array v1, v0, [F

    .line 53
    .line 54
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzc:[F

    .line 55
    .line 56
    new-array v1, v0, [F

    .line 57
    .line 58
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzd:[F

    .line 59
    .line 60
    new-array v1, v0, [F

    .line 61
    .line 62
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zze:[F

    .line 63
    .line 64
    new-array v1, v0, [F

    .line 65
    .line 66
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzf:[F

    .line 67
    .line 68
    new-array v1, v0, [F

    .line 69
    .line 70
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzg:[F

    .line 71
    .line 72
    new-array v1, v0, [F

    .line 73
    .line 74
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzh:[F

    .line 75
    .line 76
    new-array v0, v0, [F

    .line 77
    .line 78
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzi:[F

    .line 79
    .line 80
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 81
    .line 82
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzj:F

    .line 83
    .line 84
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgi;

    .line 85
    .line 86
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgi;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzb:Lcom/google/android/gms/internal/ads/zzcgi;

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcgi;->zzb(Lcom/google/android/gms/internal/ads/zzcgh;)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzu:Ljava/util/concurrent/CountDownLatch;

    .line 101
    .line 102
    new-instance p1, Ljava/lang/Object;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzv:Ljava/lang/Object;

    .line 108
    .line 109
    return-void

    .line 110
    nop

    .line 111
    :array_0
    .array-data 8
        0x5f84d5d5d232f63L
        0x7729227174d58fd2L    # 1.0130647264871595E266
        0x7755a3d4d76036f9L    # 6.977707476717755E266
        -0xec3b81b67301539L    # -2.8774565892203206E237
    .end array-data
.end method

.method private static final zzh(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    new-array v0, v0, [J

    .line 25
    .line 26
    fill-array-data v0, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        0x6ae477fcde5b01cbL    # 8.214428359710226E206
        0x19267b36d66784d2L
        0x52073e2c39b1990bL    # 1.444901939395191E87
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 8
        -0x6fe58aff590148f9L    # -4.260343459906035E-231
        -0x795f1825231b1534L    # -9.536888897401711E-277
        0x2864c0dff5192b06L
        -0x4858f9a8145eb01fL    # -1.3215575055242434E-40
    .end array-data
.end method

.method private static final zzi([F[F[F)V
    .locals 19

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    aget v2, p2, v0

    .line 5
    .line 6
    mul-float v1, v1, v2

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aget v3, p1, v2

    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    aget v5, p2, v4

    .line 13
    .line 14
    mul-float v6, v3, v5

    .line 15
    .line 16
    const/4 v7, 0x2

    .line 17
    aget v8, p1, v7

    .line 18
    .line 19
    const/4 v9, 0x6

    .line 20
    aget v10, p2, v9

    .line 21
    .line 22
    mul-float v11, v8, v10

    .line 23
    .line 24
    add-float/2addr v1, v6

    .line 25
    add-float/2addr v1, v11

    .line 26
    aput v1, p0, v0

    .line 27
    .line 28
    aget v1, p1, v0

    .line 29
    .line 30
    aget v6, p2, v2

    .line 31
    .line 32
    mul-float v6, v6, v1

    .line 33
    .line 34
    const/4 v11, 0x4

    .line 35
    aget v12, p2, v11

    .line 36
    .line 37
    mul-float v3, v3, v12

    .line 38
    .line 39
    const/4 v13, 0x7

    .line 40
    aget v14, p2, v13

    .line 41
    .line 42
    mul-float v15, v8, v14

    .line 43
    .line 44
    add-float/2addr v6, v3

    .line 45
    add-float/2addr v6, v15

    .line 46
    aput v6, p0, v2

    .line 47
    .line 48
    aget v3, p2, v7

    .line 49
    .line 50
    mul-float v1, v1, v3

    .line 51
    .line 52
    aget v3, p1, v2

    .line 53
    .line 54
    const/4 v6, 0x5

    .line 55
    aget v15, p2, v6

    .line 56
    .line 57
    mul-float v3, v3, v15

    .line 58
    .line 59
    const/16 v16, 0x8

    .line 60
    .line 61
    aget v17, p2, v16

    .line 62
    .line 63
    mul-float v8, v8, v17

    .line 64
    .line 65
    add-float/2addr v1, v3

    .line 66
    add-float/2addr v1, v8

    .line 67
    aput v1, p0, v7

    .line 68
    .line 69
    aget v1, p1, v4

    .line 70
    .line 71
    aget v0, p2, v0

    .line 72
    .line 73
    mul-float v1, v1, v0

    .line 74
    .line 75
    aget v3, p1, v11

    .line 76
    .line 77
    mul-float v5, v5, v3

    .line 78
    .line 79
    aget v8, p1, v6

    .line 80
    .line 81
    mul-float v18, v8, v10

    .line 82
    .line 83
    add-float/2addr v1, v5

    .line 84
    add-float v1, v1, v18

    .line 85
    .line 86
    aput v1, p0, v4

    .line 87
    .line 88
    aget v1, p1, v4

    .line 89
    .line 90
    aget v2, p2, v2

    .line 91
    .line 92
    mul-float v5, v1, v2

    .line 93
    .line 94
    mul-float v3, v3, v12

    .line 95
    .line 96
    mul-float v12, v8, v14

    .line 97
    .line 98
    add-float/2addr v5, v3

    .line 99
    add-float/2addr v5, v12

    .line 100
    aput v5, p0, v11

    .line 101
    .line 102
    aget v3, p2, v7

    .line 103
    .line 104
    mul-float v1, v1, v3

    .line 105
    .line 106
    aget v5, p1, v11

    .line 107
    .line 108
    mul-float v5, v5, v15

    .line 109
    .line 110
    mul-float v8, v8, v17

    .line 111
    .line 112
    add-float/2addr v1, v5

    .line 113
    add-float/2addr v1, v8

    .line 114
    aput v1, p0, v6

    .line 115
    .line 116
    aget v1, p1, v9

    .line 117
    .line 118
    mul-float v1, v1, v0

    .line 119
    .line 120
    aget v0, p1, v13

    .line 121
    .line 122
    aget v4, p2, v4

    .line 123
    .line 124
    mul-float v4, v4, v0

    .line 125
    .line 126
    aget v5, p1, v16

    .line 127
    .line 128
    mul-float v10, v10, v5

    .line 129
    .line 130
    add-float/2addr v1, v4

    .line 131
    add-float/2addr v1, v10

    .line 132
    aput v1, p0, v9

    .line 133
    .line 134
    aget v1, p1, v9

    .line 135
    .line 136
    mul-float v2, v2, v1

    .line 137
    .line 138
    aget v4, p2, v11

    .line 139
    .line 140
    mul-float v0, v0, v4

    .line 141
    .line 142
    add-float/2addr v0, v2

    .line 143
    mul-float v14, v14, v5

    .line 144
    .line 145
    add-float/2addr v14, v0

    .line 146
    aput v14, p0, v13

    .line 147
    .line 148
    mul-float v1, v1, v3

    .line 149
    .line 150
    aget v0, p1, v13

    .line 151
    .line 152
    aget v2, p2, v6

    .line 153
    .line 154
    mul-float v0, v0, v2

    .line 155
    .line 156
    mul-float v5, v5, v17

    .line 157
    .line 158
    add-float/2addr v1, v0

    .line 159
    add-float/2addr v1, v5

    .line 160
    aput v1, p0, v16

    .line 161
    .line 162
    return-void
.end method

.method private static final zzj([FF)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    aput v1, p0, v0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    aput v1, p0, v0

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    aput v1, p0, v0

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    aput v1, p0, v0

    .line 15
    .line 16
    float-to-double v2, p1

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    double-to-float p1, v4

    .line 22
    const/4 v0, 0x4

    .line 23
    aput p1, p0, v0

    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    neg-double v4, v4

    .line 30
    double-to-float p1, v4

    .line 31
    const/4 v0, 0x5

    .line 32
    aput p1, p0, v0

    .line 33
    .line 34
    const/4 p1, 0x6

    .line 35
    aput v1, p0, p1

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    double-to-float p1, v0

    .line 42
    const/4 v0, 0x7

    .line 43
    aput p1, p0, v0

    .line 44
    .line 45
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    double-to-float p1, v0

    .line 50
    const/16 v0, 0x8

    .line 51
    .line 52
    aput p1, p0, v0

    .line 53
    .line 54
    return-void
.end method

.method private static final zzk([FF)V
    .locals 5

    .line 1
    float-to-double v0, p1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide v2

    .line 6
    double-to-float p1, v2

    .line 7
    const/4 v2, 0x0

    .line 8
    aput p1, p0, v2

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    neg-double v2, v2

    .line 15
    double-to-float p1, v2

    .line 16
    const/4 v2, 0x1

    .line 17
    aput p1, p0, v2

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    const/4 v2, 0x0

    .line 21
    aput v2, p0, p1

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    double-to-float p1, v3

    .line 28
    const/4 v3, 0x3

    .line 29
    aput p1, p0, v3

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    double-to-float p1, v0

    .line 36
    const/4 v0, 0x4

    .line 37
    aput p1, p0, v0

    .line 38
    .line 39
    const/4 p1, 0x5

    .line 40
    aput v2, p0, p1

    .line 41
    .line 42
    const/4 p1, 0x6

    .line 43
    aput v2, p0, p1

    .line 44
    .line 45
    const/4 p1, 0x7

    .line 46
    aput v2, p0, p1

    .line 47
    .line 48
    const/16 p1, 0x8

    .line 49
    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    .line 52
    aput v0, p0, p1

    .line 53
    .line 54
    return-void
.end method

.method private static final zzl(ILjava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v1, v2, [J

    .line 32
    .line 33
    fill-array-data v1, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v1, v2, [J

    .line 52
    .line 53
    fill-array-data v1, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    new-array p1, p1, [I

    .line 68
    .line 69
    const v1, 0x8b81

    .line 70
    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-static {p0, v1, p1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v4, v2, [J

    .line 79
    .line 80
    fill-array-data v4, :array_3

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    aget p1, p1, v3

    .line 94
    .line 95
    if-nez p1, :cond_0

    .line 96
    .line 97
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    const/4 v1, 0x5

    .line 100
    new-array v1, v1, [J

    .line 101
    .line 102
    fill-array-data v1, :array_4

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    const/4 v1, 0x2

    .line 114
    new-array v1, v1, [J

    .line 115
    .line 116
    fill-array-data v1, :array_5

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v1, v0, [J

    .line 128
    .line 129
    fill-array-data v1, :array_6

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v0, v0, [J

    .line 144
    .line 145
    fill-array-data v0, :array_7

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 155
    .line 156
    .line 157
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array p1, v2, [J

    .line 160
    .line 161
    fill-array-data p1, :array_8

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return v3

    .line 175
    :cond_0
    return p0

    .line 176
    nop

    .line 177
    :array_0
    .array-data 8
        0x65114d114718da15L    # 7.010835460649936E178
        0x5455ac8579b722d4L    # 1.8518077741127398E98
        -0x1478df086d6ce794L    # -9.504727633964887E209
    .end array-data

    .line 178
    .line 179
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
    .line 192
    .line 193
    :array_1
    .array-data 8
        0x59498cfd1a8967ebL    # 1.3195677529239515E122
        0x4eb11f78c5b68b6cL    # 1.1817816505155882E71
        -0x56f01b8747d43b12L    # -6.63070526472686E-111
    .end array-data

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
    :array_2
    .array-data 8
        -0x9072ac1e63b9997L
        -0x1b5539676ead3ad7L    # -8.476749862836429E176
        -0x6d20e59745a70f32L    # -8.811050080067447E-218
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
    .line 222
    .line 223
    .line 224
    .line 225
    :array_3
    .array-data 8
        -0x6faa686d8608c1afL    # -5.563111672581731E-230
        0x5d74eb1860821eecL
        0x7e2d8ae466d8995eL    # 6.182635560166602E299
    .end array-data

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
    .line 239
    .line 240
    .line 241
    :array_4
    .array-data 8
        0x6e8a51b88e65a42bL    # 3.0443868697416823E224
        0x1a3848e060ab6413L    # 2.28609834535775E-182
        -0x7932f4193c9750aL
        0x28fd774d7b4a617eL
        -0x597e280ddf290b4dL    # -3.374059681929099E-123
    .end array-data

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
    .line 252
    :array_5
    .array-data 8
        0x24b0c11dca030698L    # 5.90105647970587E-132
        -0x6eeeb9e6424cd700L
    .end array-data

    :array_6
    .array-data 8
        -0x690e91360e1a9e12L    # -3.643923371337949E-198
        -0x7b928b1ffe86a42eL
        -0x1c9673725688e5a8L    # -7.713688326536463E170
        0x52eedd9bd0e15600L
    .end array-data

    :array_7
    .array-data 8
        0x3cd490e4bc4cd34eL    # 1.1416417937374788E-15
        0x73642d4a7434a344L    # 7.053769490879043E247
        -0x2967323ae2b072b8L    # -1.456318865753713E109
        -0x66dad02729f51672L
    .end array-data

    :array_8
    .array-data 8
        0x2fc202f4b6b2e72dL    # 1.215240248496434E-78
        -0x712016ae5dea1c54L
        0x2bd7643a4f1d5f18L    # 1.7111172092219442E-97
    .end array-data
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzs:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzs:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzv:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzv:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    monitor-exit p1

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v0, 0x3038

    .line 4
    .line 5
    const/16 v3, 0x10

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x5

    .line 10
    const/4 v8, 0x2

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, 0x4

    .line 13
    const/4 v11, 0x3

    .line 14
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzp:Landroid/graphics/SurfaceTexture;

    .line 15
    .line 16
    if-eqz v12, :cond_18

    .line 17
    .line 18
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    .line 19
    .line 20
    .line 21
    move-result-object v12

    .line 22
    check-cast v12, Ljavax/microedition/khronos/egl/EGL10;

    .line 23
    .line 24
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 25
    .line 26
    sget-object v13, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-interface {v12, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 29
    .line 30
    .line 31
    move-result-object v12

    .line 32
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 33
    .line 34
    sget-object v13, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 35
    .line 36
    const/4 v14, 0x0

    .line 37
    if-ne v12, v13, :cond_1

    .line 38
    .line 39
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_1
    new-array v13, v8, [I

    .line 43
    .line 44
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 45
    .line 46
    invoke-interface {v15, v12, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    if-nez v12, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-array v12, v5, [I

    .line 54
    .line 55
    new-array v13, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 56
    .line 57
    const/16 v15, 0xb

    .line 58
    .line 59
    new-array v15, v15, [I

    .line 60
    .line 61
    fill-array-data v15, :array_0

    .line 62
    .line 63
    .line 64
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 65
    .line 66
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 67
    .line 68
    const/16 v19, 0x1

    .line 69
    .line 70
    move-object/from16 v17, v15

    .line 71
    .line 72
    move-object v15, v7

    .line 73
    move-object/from16 v16, v2

    .line 74
    .line 75
    move-object/from16 v18, v13

    .line 76
    .line 77
    move-object/from16 v20, v12

    .line 78
    .line 79
    invoke-interface/range {v15 .. v20}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_4

    .line 84
    .line 85
    :cond_3
    move-object v2, v14

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    aget v2, v12, v4

    .line 88
    .line 89
    if-lez v2, :cond_3

    .line 90
    .line 91
    aget-object v2, v13, v4

    .line 92
    .line 93
    :goto_1
    if-nez v2, :cond_5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    const/16 v7, 0x3098

    .line 97
    .line 98
    filled-new-array {v7, v8, v0}, [I

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 103
    .line 104
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 105
    .line 106
    sget-object v13, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 107
    .line 108
    invoke-interface {v7, v12, v2, v13, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzy:Ljavax/microedition/khronos/egl/EGLContext;

    .line 113
    .line 114
    if-eqz v0, :cond_0

    .line 115
    .line 116
    if-ne v0, v13, :cond_6

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 120
    .line 121
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 122
    .line 123
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzp:Landroid/graphics/SurfaceTexture;

    .line 124
    .line 125
    invoke-interface {v0, v7, v2, v12, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzz:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 130
    .line 131
    if-eqz v0, :cond_0

    .line 132
    .line 133
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 134
    .line 135
    if-ne v0, v2, :cond_7

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_7
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 139
    .line 140
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 141
    .line 142
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzy:Ljavax/microedition/khronos/egl/EGLContext;

    .line 143
    .line 144
    invoke-interface {v2, v7, v0, v0, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_8

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_8
    const/4 v0, 0x1

    .line 152
    :goto_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzbj:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 153
    .line 154
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    check-cast v7, Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbfu;->zzm()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_9

    .line 173
    .line 174
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Ljava/lang/String;

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    new-array v3, v3, [J

    .line 188
    .line 189
    fill-array-data v3, :array_1

    .line 190
    .line 191
    .line 192
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    :goto_3
    const v3, 0x8b31

    .line 200
    .line 201
    .line 202
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzl(ILjava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-nez v2, :cond_a

    .line 207
    .line 208
    :goto_4
    const/4 v12, 0x0

    .line 209
    goto/16 :goto_6

    .line 210
    .line 211
    :cond_a
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzbk:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 212
    .line 213
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    check-cast v7, Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbfu;->zzm()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-nez v7, :cond_b

    .line 232
    .line 233
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v3, Ljava/lang/String;

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_b
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 245
    .line 246
    const/16 v7, 0x3c

    .line 247
    .line 248
    new-array v7, v7, [J

    .line 249
    .line 250
    fill-array-data v7, :array_2

    .line 251
    .line 252
    .line 253
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    :goto_5
    const v7, 0x8b30

    .line 261
    .line 262
    .line 263
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzl(ILjava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-nez v3, :cond_c

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_c
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 271
    .line 272
    new-array v12, v11, [J

    .line 273
    .line 274
    fill-array-data v12, :array_3

    .line 275
    .line 276
    .line 277
    invoke-direct {v7, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    if-eqz v12, :cond_e

    .line 292
    .line 293
    invoke-static {v12, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 294
    .line 295
    .line 296
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 297
    .line 298
    new-array v7, v11, [J

    .line 299
    .line 300
    fill-array-data v7, :array_4

    .line 301
    .line 302
    .line 303
    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-static {v12, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 314
    .line 315
    .line 316
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 317
    .line 318
    new-array v3, v11, [J

    .line 319
    .line 320
    fill-array-data v3, :array_5

    .line 321
    .line 322
    .line 323
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-static {v12}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 334
    .line 335
    .line 336
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 337
    .line 338
    new-array v3, v11, [J

    .line 339
    .line 340
    fill-array-data v3, :array_6

    .line 341
    .line 342
    .line 343
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    new-array v2, v5, [I

    .line 354
    .line 355
    const v3, 0x8b82

    .line 356
    .line 357
    .line 358
    invoke-static {v12, v3, v2, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 359
    .line 360
    .line 361
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 362
    .line 363
    new-array v7, v11, [J

    .line 364
    .line 365
    fill-array-data v7, :array_7

    .line 366
    .line 367
    .line 368
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    aget v2, v2, v4

    .line 379
    .line 380
    if-eq v2, v5, :cond_d

    .line 381
    .line 382
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 383
    .line 384
    new-array v3, v10, [J

    .line 385
    .line 386
    fill-array-data v3, :array_8

    .line 387
    .line 388
    .line 389
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 396
    .line 397
    new-array v3, v10, [J

    .line 398
    .line 399
    fill-array-data v3, :array_9

    .line 400
    .line 401
    .line 402
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    invoke-static {v12}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 412
    .line 413
    new-array v3, v10, [J

    .line 414
    .line 415
    fill-array-data v3, :array_a

    .line 416
    .line 417
    .line 418
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    invoke-static {v12}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 425
    .line 426
    .line 427
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 428
    .line 429
    new-array v3, v11, [J

    .line 430
    .line 431
    fill-array-data v3, :array_b

    .line 432
    .line 433
    .line 434
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_4

    .line 445
    .line 446
    :cond_d
    invoke-static {v12}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 447
    .line 448
    .line 449
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 450
    .line 451
    new-array v3, v11, [J

    .line 452
    .line 453
    fill-array-data v3, :array_c

    .line 454
    .line 455
    .line 456
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    :cond_e
    :goto_6
    iput v12, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzq:I

    .line 467
    .line 468
    invoke-static {v12}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 469
    .line 470
    .line 471
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 472
    .line 473
    new-array v3, v11, [J

    .line 474
    .line 475
    fill-array-data v3, :array_d

    .line 476
    .line 477
    .line 478
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzq:I

    .line 489
    .line 490
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 491
    .line 492
    new-array v7, v11, [J

    .line 493
    .line 494
    fill-array-data v7, :array_e

    .line 495
    .line 496
    .line 497
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    const/16 v19, 0xc

    .line 509
    .line 510
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzt:Ljava/nio/FloatBuffer;

    .line 511
    .line 512
    const/16 v16, 0x3

    .line 513
    .line 514
    const/16 v17, 0x1406

    .line 515
    .line 516
    const/16 v18, 0x0

    .line 517
    .line 518
    move v15, v2

    .line 519
    move-object/from16 v20, v3

    .line 520
    .line 521
    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 522
    .line 523
    .line 524
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 525
    .line 526
    new-array v7, v10, [J

    .line 527
    .line 528
    fill-array-data v7, :array_f

    .line 529
    .line 530
    .line 531
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 542
    .line 543
    .line 544
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 545
    .line 546
    new-array v3, v10, [J

    .line 547
    .line 548
    fill-array-data v3, :array_10

    .line 549
    .line 550
    .line 551
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    new-array v2, v5, [I

    .line 562
    .line 563
    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 564
    .line 565
    .line 566
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 567
    .line 568
    new-array v7, v11, [J

    .line 569
    .line 570
    fill-array-data v7, :array_11

    .line 571
    .line 572
    .line 573
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    aget v2, v2, v4

    .line 584
    .line 585
    const v3, 0x8d65

    .line 586
    .line 587
    .line 588
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 589
    .line 590
    .line 591
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 592
    .line 593
    new-array v12, v11, [J

    .line 594
    .line 595
    fill-array-data v12, :array_12

    .line 596
    .line 597
    .line 598
    invoke-direct {v7, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v7

    .line 605
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    const/16 v7, 0x2800

    .line 609
    .line 610
    const/16 v12, 0x2601

    .line 611
    .line 612
    invoke-static {v3, v7, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 613
    .line 614
    .line 615
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 616
    .line 617
    new-array v13, v11, [J

    .line 618
    .line 619
    fill-array-data v13, :array_13

    .line 620
    .line 621
    .line 622
    invoke-direct {v7, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v7

    .line 629
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    const/16 v7, 0x2801

    .line 633
    .line 634
    invoke-static {v3, v7, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 635
    .line 636
    .line 637
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 638
    .line 639
    new-array v12, v11, [J

    .line 640
    .line 641
    fill-array-data v12, :array_14

    .line 642
    .line 643
    .line 644
    invoke-direct {v7, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v7

    .line 651
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    const/16 v7, 0x2802

    .line 655
    .line 656
    const v12, 0x812f

    .line 657
    .line 658
    .line 659
    invoke-static {v3, v7, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 660
    .line 661
    .line 662
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 663
    .line 664
    new-array v13, v11, [J

    .line 665
    .line 666
    fill-array-data v13, :array_15

    .line 667
    .line 668
    .line 669
    invoke-direct {v7, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    const/16 v7, 0x2803

    .line 680
    .line 681
    invoke-static {v3, v7, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 682
    .line 683
    .line 684
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 685
    .line 686
    new-array v7, v11, [J

    .line 687
    .line 688
    fill-array-data v7, :array_16

    .line 689
    .line 690
    .line 691
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v3

    .line 698
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzq:I

    .line 702
    .line 703
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 704
    .line 705
    new-array v12, v8, [J

    .line 706
    .line 707
    fill-array-data v12, :array_17

    .line 708
    .line 709
    .line 710
    invoke-direct {v7, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v7

    .line 717
    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 718
    .line 719
    .line 720
    move-result v3

    .line 721
    iput v3, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzr:I

    .line 722
    .line 723
    const/16 v7, 0x9

    .line 724
    .line 725
    new-array v7, v7, [F

    .line 726
    .line 727
    fill-array-data v7, :array_18

    .line 728
    .line 729
    .line 730
    invoke-static {v3, v5, v4, v7, v4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 731
    .line 732
    .line 733
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzq:I

    .line 734
    .line 735
    if-eqz v0, :cond_17

    .line 736
    .line 737
    if-nez v3, :cond_f

    .line 738
    .line 739
    goto/16 :goto_10

    .line 740
    .line 741
    :cond_f
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 742
    .line 743
    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 744
    .line 745
    .line 746
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzo:Landroid/graphics/SurfaceTexture;

    .line 747
    .line 748
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 749
    .line 750
    .line 751
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzu:Ljava/util/concurrent/CountDownLatch;

    .line 752
    .line 753
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 754
    .line 755
    .line 756
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzb:Lcom/google/android/gms/internal/ads/zzcgi;

    .line 757
    .line 758
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgi;->zzc()V

    .line 759
    .line 760
    .line 761
    :try_start_0
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzA:Z

    .line 762
    .line 763
    :goto_7
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzB:Z

    .line 764
    .line 765
    if-eqz v0, :cond_10

    .line 766
    .line 767
    goto/16 :goto_e

    .line 768
    .line 769
    :cond_10
    :goto_8
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzs:I

    .line 770
    .line 771
    if-lez v0, :cond_11

    .line 772
    .line 773
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzo:Landroid/graphics/SurfaceTexture;

    .line 774
    .line 775
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 776
    .line 777
    .line 778
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzs:I

    .line 779
    .line 780
    add-int/lit8 v0, v0, -0x1

    .line 781
    .line 782
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzs:I

    .line 783
    .line 784
    goto :goto_8

    .line 785
    :catchall_0
    move-exception v0

    .line 786
    goto/16 :goto_d

    .line 787
    .line 788
    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzb:Lcom/google/android/gms/internal/ads/zzcgi;

    .line 789
    .line 790
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzc:[F

    .line 791
    .line 792
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcgi;->zze([F)Z

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    const v2, -0x4036f025

    .line 797
    .line 798
    .line 799
    if-eqz v0, :cond_13

    .line 800
    .line 801
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzj:F

    .line 802
    .line 803
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    if-eqz v0, :cond_12

    .line 808
    .line 809
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzc:[F

    .line 810
    .line 811
    new-array v3, v11, [F

    .line 812
    .line 813
    fill-array-data v3, :array_19

    .line 814
    .line 815
    .line 816
    aget v7, v0, v4

    .line 817
    .line 818
    aget v12, v3, v4

    .line 819
    .line 820
    mul-float v7, v7, v12

    .line 821
    .line 822
    aget v13, v0, v5

    .line 823
    .line 824
    aget v3, v3, v5

    .line 825
    .line 826
    mul-float v13, v13, v3

    .line 827
    .line 828
    add-float/2addr v7, v13

    .line 829
    aget v13, v0, v8

    .line 830
    .line 831
    mul-float v13, v13, v9

    .line 832
    .line 833
    add-float/2addr v13, v7

    .line 834
    aget v7, v0, v11

    .line 835
    .line 836
    mul-float v7, v7, v12

    .line 837
    .line 838
    aget v15, v0, v10

    .line 839
    .line 840
    mul-float v15, v15, v3

    .line 841
    .line 842
    add-float/2addr v7, v15

    .line 843
    aget v15, v0, v6

    .line 844
    .line 845
    mul-float v15, v15, v9

    .line 846
    .line 847
    add-float/2addr v15, v7

    .line 848
    const/4 v7, 0x6

    .line 849
    aget v7, v0, v7

    .line 850
    .line 851
    mul-float v7, v7, v12

    .line 852
    .line 853
    const/4 v12, 0x7

    .line 854
    aget v16, v0, v12

    .line 855
    .line 856
    mul-float v16, v16, v3

    .line 857
    .line 858
    add-float v7, v7, v16

    .line 859
    .line 860
    const/16 v3, 0x8

    .line 861
    .line 862
    aget v0, v0, v3

    .line 863
    .line 864
    mul-float v0, v0, v9

    .line 865
    .line 866
    add-float/2addr v0, v7

    .line 867
    new-array v3, v11, [F

    .line 868
    .line 869
    aput v13, v3, v4

    .line 870
    .line 871
    aput v15, v3, v5

    .line 872
    .line 873
    aput v0, v3, v8

    .line 874
    .line 875
    aget v0, v3, v5

    .line 876
    .line 877
    float-to-double v12, v0

    .line 878
    aget v0, v3, v4

    .line 879
    .line 880
    float-to-double v14, v0

    .line 881
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 882
    .line 883
    .line 884
    move-result-wide v12

    .line 885
    double-to-float v0, v12

    .line 886
    add-float/2addr v0, v2

    .line 887
    neg-float v0, v0

    .line 888
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzj:F

    .line 889
    .line 890
    :cond_12
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzh:[F

    .line 891
    .line 892
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzj:F

    .line 893
    .line 894
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzk:F

    .line 895
    .line 896
    add-float/2addr v2, v7

    .line 897
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzk([FF)V

    .line 898
    .line 899
    .line 900
    goto :goto_9

    .line 901
    :cond_13
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzc:[F

    .line 902
    .line 903
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzj([FF)V

    .line 904
    .line 905
    .line 906
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzh:[F

    .line 907
    .line 908
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzk:F

    .line 909
    .line 910
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzk([FF)V

    .line 911
    .line 912
    .line 913
    :goto_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzd:[F

    .line 914
    .line 915
    const v2, 0x3fc90fdb

    .line 916
    .line 917
    .line 918
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzj([FF)V

    .line 919
    .line 920
    .line 921
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zze:[F

    .line 922
    .line 923
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzh:[F

    .line 924
    .line 925
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzd:[F

    .line 926
    .line 927
    invoke-static {v0, v2, v7}, Lcom/google/android/gms/internal/ads/zzcgj;->zzi([F[F[F)V

    .line 928
    .line 929
    .line 930
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzf:[F

    .line 931
    .line 932
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzc:[F

    .line 933
    .line 934
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zze:[F

    .line 935
    .line 936
    invoke-static {v0, v2, v7}, Lcom/google/android/gms/internal/ads/zzcgj;->zzi([F[F[F)V

    .line 937
    .line 938
    .line 939
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzg:[F

    .line 940
    .line 941
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzl:F

    .line 942
    .line 943
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzj([FF)V

    .line 944
    .line 945
    .line 946
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzi:[F

    .line 947
    .line 948
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzg:[F

    .line 949
    .line 950
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzf:[F

    .line 951
    .line 952
    invoke-static {v0, v2, v7}, Lcom/google/android/gms/internal/ads/zzcgj;->zzi([F[F[F)V

    .line 953
    .line 954
    .line 955
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzr:I

    .line 956
    .line 957
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzi:[F

    .line 958
    .line 959
    invoke-static {v0, v5, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 960
    .line 961
    .line 962
    invoke-static {v6, v4, v10}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 963
    .line 964
    .line 965
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 966
    .line 967
    new-array v2, v11, [J

    .line 968
    .line 969
    fill-array-data v2, :array_1a

    .line 970
    .line 971
    .line 972
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 983
    .line 984
    .line 985
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 986
    .line 987
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 988
    .line 989
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzz:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 990
    .line 991
    invoke-interface {v0, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 992
    .line 993
    .line 994
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzA:Z

    .line 995
    .line 996
    if-eqz v0, :cond_15

    .line 997
    .line 998
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzn:I

    .line 999
    .line 1000
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzm:I

    .line 1001
    .line 1002
    invoke-static {v4, v4, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1003
    .line 1004
    .line 1005
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1006
    .line 1007
    new-array v2, v8, [J

    .line 1008
    .line 1009
    fill-array-data v2, :array_1b

    .line 1010
    .line 1011
    .line 1012
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzh(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzq:I

    .line 1023
    .line 1024
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 1025
    .line 1026
    new-array v7, v8, [J

    .line 1027
    .line 1028
    fill-array-data v7, :array_1c

    .line 1029
    .line 1030
    .line 1031
    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v2

    .line 1038
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzq:I

    .line 1043
    .line 1044
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 1045
    .line 1046
    new-array v12, v8, [J

    .line 1047
    .line 1048
    fill-array-data v12, :array_1d

    .line 1049
    .line 1050
    .line 1051
    invoke-direct {v7, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v7

    .line 1058
    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 1059
    .line 1060
    .line 1061
    move-result v2

    .line 1062
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzn:I

    .line 1063
    .line 1064
    iget v12, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzm:I

    .line 1065
    .line 1066
    const v13, 0x3f5f66f3

    .line 1067
    .line 1068
    .line 1069
    if-le v7, v12, :cond_14

    .line 1070
    .line 1071
    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1072
    .line 1073
    .line 1074
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzm:I

    .line 1075
    .line 1076
    int-to-float v0, v0

    .line 1077
    mul-float v0, v0, v13

    .line 1078
    .line 1079
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzn:I

    .line 1080
    .line 1081
    int-to-float v7, v7

    .line 1082
    div-float/2addr v0, v7

    .line 1083
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1084
    .line 1085
    .line 1086
    goto :goto_a

    .line 1087
    :cond_14
    int-to-float v7, v7

    .line 1088
    mul-float v7, v7, v13

    .line 1089
    .line 1090
    int-to-float v12, v12

    .line 1091
    div-float/2addr v7, v12

    .line 1092
    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1093
    .line 1094
    .line 1095
    invoke-static {v2, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1096
    .line 1097
    .line 1098
    :goto_a
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzA:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    .line 1100
    :cond_15
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzv:Ljava/lang/Object;

    .line 1101
    .line 1102
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    :try_start_2
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzB:Z

    .line 1104
    .line 1105
    if-nez v0, :cond_16

    .line 1106
    .line 1107
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzA:Z

    .line 1108
    .line 1109
    if-nez v0, :cond_16

    .line 1110
    .line 1111
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzs:I

    .line 1112
    .line 1113
    if-nez v0, :cond_16

    .line 1114
    .line 1115
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzv:Ljava/lang/Object;

    .line 1116
    .line 1117
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1118
    .line 1119
    .line 1120
    goto :goto_b

    .line 1121
    :catchall_1
    move-exception v0

    .line 1122
    goto :goto_c

    .line 1123
    :cond_16
    :goto_b
    monitor-exit v2

    .line 1124
    :catch_0
    const/4 v14, 0x0

    .line 1125
    goto/16 :goto_7

    .line 1126
    .line 1127
    :goto_c
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1128
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1129
    :goto_d
    :try_start_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 1130
    .line 1131
    new-array v4, v6, [J

    .line 1132
    .line 1133
    fill-array-data v4, :array_1e

    .line 1134
    .line 1135
    .line 1136
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v2

    .line 1143
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1144
    .line 1145
    .line 1146
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 1151
    .line 1152
    new-array v5, v6, [J

    .line 1153
    .line 1154
    fill-array-data v5, :array_1f

    .line 1155
    .line 1156
    .line 1157
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v4

    .line 1164
    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    goto :goto_e

    .line 1168
    :catchall_2
    move-exception v0

    .line 1169
    goto :goto_f

    .line 1170
    :catch_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1171
    .line 1172
    const/4 v2, 0x7

    .line 1173
    new-array v2, v2, [J

    .line 1174
    .line 1175
    fill-array-data v2, :array_20

    .line 1176
    .line 1177
    .line 1178
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1186
    .line 1187
    .line 1188
    :goto_e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzb:Lcom/google/android/gms/internal/ads/zzcgi;

    .line 1189
    .line 1190
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgi;->zzd()V

    .line 1191
    .line 1192
    .line 1193
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzo:Landroid/graphics/SurfaceTexture;

    .line 1194
    .line 1195
    const/4 v2, 0x0

    .line 1196
    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1197
    .line 1198
    .line 1199
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzo:Landroid/graphics/SurfaceTexture;

    .line 1200
    .line 1201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzg()Z

    .line 1202
    .line 1203
    .line 1204
    return-void

    .line 1205
    :goto_f
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzb:Lcom/google/android/gms/internal/ads/zzcgi;

    .line 1206
    .line 1207
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcgi;->zzd()V

    .line 1208
    .line 1209
    .line 1210
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzo:Landroid/graphics/SurfaceTexture;

    .line 1211
    .line 1212
    const/4 v3, 0x0

    .line 1213
    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1214
    .line 1215
    .line 1216
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzo:Landroid/graphics/SurfaceTexture;

    .line 1217
    .line 1218
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzg()Z

    .line 1219
    .line 1220
    .line 1221
    throw v0

    .line 1222
    :cond_17
    :goto_10
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 1223
    .line 1224
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 1225
    .line 1226
    .line 1227
    move-result v0

    .line 1228
    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v0

    .line 1232
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v0

    .line 1236
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 1237
    .line 1238
    new-array v3, v6, [J

    .line 1239
    .line 1240
    fill-array-data v3, :array_21

    .line 1241
    .line 1242
    .line 1243
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v2

    .line 1250
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v0

    .line 1254
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 1255
    .line 1256
    .line 1257
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v2

    .line 1261
    new-instance v3, Ljava/lang/Throwable;

    .line 1262
    .line 1263
    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1267
    .line 1268
    new-array v4, v6, [J

    .line 1269
    .line 1270
    fill-array-data v4, :array_22

    .line 1271
    .line 1272
    .line 1273
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v0

    .line 1280
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzg()Z

    .line 1284
    .line 1285
    .line 1286
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzu:Ljava/util/concurrent/CountDownLatch;

    .line 1287
    .line 1288
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1289
    .line 1290
    .line 1291
    return-void

    .line 1292
    :cond_18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1293
    .line 1294
    const/16 v2, 0x8

    .line 1295
    .line 1296
    new-array v2, v2, [J

    .line 1297
    .line 1298
    fill-array-data v2, :array_23

    .line 1299
    .line 1300
    .line 1301
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 1309
    .line 1310
    .line 1311
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcgj;->zzu:Ljava/util/concurrent/CountDownLatch;

    .line 1312
    .line 1313
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1314
    .line 1315
    .line 1316
    return-void

    .line 1317
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x10
        0x3038
    .end array-data

    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    :array_1
    .array-data 8
        -0x42adba3e05469e77L    # -2.596677168840619E-13
        0x4b382cd9e14a6c70L    # 2.3155240977796542E54
        -0x45bdb42049732d8bL    # -4.618656235401113E-28
        -0x9e76362fb72cacbL    # -7.568313721949653E260
        0x216b80f870033b8fL
        0x4df876b2815b942eL    # 4.12211877031977E67
        0x27075b22680cf5eeL
        -0x3428b9d8e2c2fb7aL    # -2.282710645576717E57
        0x684b8764c4b16276L    # 2.511977728826784E194
        -0x2e5b7818c3b24938L    # -1.9942343303407386E85
        -0x2f6386b70fa5d6bcL    # -2.1101038241036525E80
        0x5f5e415d80f848b8L    # 2.4759380723995068E151
        -0x3cc7bf3e0991716bL    # -6.826601248362133E15
        0x59a80d517ac83dbfL    # 7.949867188623141E123
        0x25971b7bb42dc08L
        -0xaa66917082e304cL
    .end array-data

    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    :array_2
    .array-data 8
        0x5c1ff1a7d9ce1d57L    # 5.8045281375693555E135
        0x2fd733760e87b834L    # 3.1307487608274125E-78
        0x79ba95e98f8a6225L    # 2.356364097648959E278
        -0x5009556445f1ed78L    # -1.2234449073411101E-77
        0x4b14dede6e1658e9L    # 4.997511422464962E53
        -0x653a9f7c92207765L    # -1.030337401822725E-179
        -0x1a857300241876ffL    # -6.885804452206112E180
        -0x5c51197aa23dd135L    # -8.303421838796885E-137
        0x79a1b0cf4967a86fL    # 7.839892781024E277
        0x62cc9ba9df6a5213L    # 8.434823946370256E167
        0x47baade2ffb27404L    # 3.546279932991479E37
        0x712dfa3c17547896L    # 1.525041697845735E237
        -0x743cbf993bd17fbdL    # -5.251698044376148E-252
        -0x3e34449de73291cdL    # -9.305303536049255E8
        -0x7cd95a8ac4968726L
        0x4b7acea4944a350fL    # 4.1081912593718167E55
        -0xd7bcf240b7763b8L    # -4.308253468421442E243
        -0x1610b4ebd1dca6d5L    # -1.916276385537277E202
        -0x3debac370530a38cL    # -2.1826256563840286E10
        -0x2403c482aa01413fL    # -1.2825242470579123E135
        0x40812cf991c2d392L    # 549.6218600483719
        0xe6aa6722ca23c75L
        -0x5582ca223c78ab66L    # -5.09447267910173E-104
        0x81ddd4adb3c503fL
        -0x4f263a9fdb83dcedL    # -2.279041893162221E-73
        0x4123e6d9c4bc08c9L    # 652140.884247088
        -0x3ec28dc459b6a564L    # -1929787.6495567923
        0x31730c9c59fb31f5L    # 1.7250399189955843E-70
        0x2c91022585ef7313L    # 5.096176266191616E-94
        0x332b5c6255ec5b11L    # 3.3255301981412726E-62
        0x60813d523d1f37b6L    # 7.396620448508006E156
        -0x5326c3a9f96e7e58L    # -1.2098080988474323E-92
        -0x3600684e02bd856dL    # -2.8857861035989023E48
        0x4bb1b551c992ab22L    # 4.34205743218677E56
        -0x7574225dac5fe2ecL    # -7.249442144984343E-258
        -0x466758976a8b242eL    # -3.038832670049732E-31
        -0x5ce9c24ff64d598eL
        0x4bf06b62fdb8a70dL    # 6.441671349734071E57
        0x277541403a113e2dL
        0x5497875564a38ff5L    # 3.2164406029696553E99
        0x2b6733dc16d73fc2L    # 1.3260126503852423E-99
        -0x693637c2622b1b54L
        -0x31c9c89da0530ea4L    # -5.989514713254329E68
        0x1d47e73a8e6e0caeL
        0x1ea40f3344f5530dL    # 4.45871536431914E-161
        0x461b769e3b657ae0L    # 5.439677274537882E29
        0x61ca34535e351809L    # 1.1789132356699156E163
        -0x3e0e700a394aa7e7L    # -4.714355819334008E9
        -0x58c44a6ec280abaL    # -7.163467240997199E281
        -0x69cbea4a971ea9caL
        -0x4bcb2e43c203984dL    # -3.3167024328485274E-57
        0x1a35942bc22783f9L
        -0x38052043c7a7b58aL    # -5.7154604235149384E38
        0x4ae8d1ac79a717dL
        0x455a7e07513532edL    # 1.2810889786267894E26
        -0x73f5b678f6d8dafcL
        -0x2fc79db46b2cc0c9L    # -2.8234703415402725E78
        0x2293e3028dd02568L    # 4.077050004460166E-142
        0xf181e59e1e7af2eL
        -0x5434d17aeb305b07L    # -9.941875561460666E-98
    .end array-data

    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    :array_3
    .array-data 8
        -0x44059b752bf8c7f8L    # -8.942209274606908E-20
        0x3aad4e2c38aedd1fL    # 4.73453662298692E-26
        -0x17791bdbcbea79c3L    # -3.3420684048039873E195
    .end array-data

    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    :array_4
    .array-data 8
        -0x32ea8593718b3359L    # -2.2089066968350953E63
        -0x433832efee75239eL    # -6.606111889805041E-16
        0x664b9e8ac6fde219L    # 5.8678649039402785E184
    .end array-data

    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    :array_5
    .array-data 8
        0x7413c2eb037e313eL    # 1.4148619840319782E251
        0x12ed71d4bcc3890L
        0x652c1a398bb15bd1L    # 2.277568646467357E179
    .end array-data

    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    :array_6
    .array-data 8
        0x474a479b9c042b32L    # 2.7290419610731143E35
        0x257f29660c348423L
        -0xe18f7258aac204aL    # -4.7998417071407405E240
    .end array-data

    .line 1704
    :array_7
    .array-data 8
        0x43bb3ff59119594bL    # 1.96355796610117094E18
        -0x22ae90eba5b4c529L    # -3.3217935485203444E141
        -0x3eee771cfe45eb14L    # -287288.75168640795
    .end array-data

    :array_8
    .array-data 8
        0x3bfbf49413d8f6fL
        0x273fd32b52e167bfL
        -0x4abbab4c72d76970L    # -4.24528264020082E-52
        -0x237d5cdcfd8444b9L    # -4.334808692047441E137
    .end array-data

    :array_9
    .array-data 8
        -0x46aa84db9bd4682cL    # -1.6548378971599932E-32
        0x772ddbc71f37dc8fL    # 1.2034672557044089E266
        0x413a77f35cd14977L    # 1734643.3625684658
        0x5e5f0f0f25d20a24L    # 3.8783136625094675E146
    .end array-data

    :array_a
    .array-data 8
        0x173b5bbdc168733L
        -0x4037e8316dffa042L    # -0.1882265293977507
        -0x396fc517fe10573dL    # -8.229639748680428E31
        -0x10c5c0531cfc39d3L    # -6.218205415092669E227
    .end array-data

    :array_b
    .array-data 8
        -0x370c82db045455beL    # -2.716348620039525E43
        -0x30ff71ab0fe8df9fL    # -3.6564863672102666E72
        0x2391f28c126334b5L
    .end array-data

    :array_c
    .array-data 8
        0x7aa30b840ee9fce9L    # 5.531291588075858E282
        0x580570ca76c1bbb8L    # 1.0560027932182248E116
        -0x7c4853d2c4f99e0eL    # -9.488761220254775E-291
    .end array-data

    :array_d
    .array-data 8
        -0x4a5708a90d07fcc6L    # -3.3364349713140067E-50
        0x36bb06577268d520L    # 4.733721408711673E-45
        -0xbff50eeb9d66caaL    # -5.972592338800751E250
    .end array-data

    :array_e
    .array-data 8
        0x2204874f8d9d7a04L    # 8.219975642007696E-145
        -0x729f53265d2316deL
        -0x70a60f84044227f7L    # -1.019772227836249E-234
    .end array-data

    :array_f
    .array-data 8
        0x7c2d5610722d2636L    # 1.4294518415226198E290
        0x5de2a756c45e7a3fL    # 1.819751879153577E144
        -0x4d4a13b09693a224L    # -2.0817215522241105E-64
        -0x220466212a4dfc2L
    .end array-data

    :array_10
    .array-data 8
        0x57ff91255d63f75fL    # 7.773763746170624E115
        -0x357859e6f8292adeL    # -1.106009226498791E51
        -0x61dcfc2c0c34f1b4L
        -0x6450b4c72cf1fca0L    # -2.47121958019986E-175
    .end array-data

    :array_11
    .array-data 8
        0x5781a5bab11db2beL    # 3.395225458071708E113
        -0x39b62fe370388c02L    # -4.0902229476001293E30
        0x710c561db9607ffbL    # 3.603886881355313E236
    .end array-data

    :array_12
    .array-data 8
        -0x52e8ee14af2c5ae0L
        0x31f75d364c3cacc3L    # 5.416393728709911E-68
        0x5a1bd090e2d5ce58L    # 1.1767731574589679E126
    .end array-data

    :array_13
    .array-data 8
        -0x3eb9e2c86fd9b5eL    # -4.96575717405286E289
        -0x243e6f786fa2c537L    # -9.973912962000401E133
        0x4ccb9b45e0f9a5dfL    # 8.872398277479348E61
    .end array-data

    :array_14
    .array-data 8
        0x1e401b920fdfd65eL    # 5.594300860370409E-163
        0x38f2cb7da85f345aL    # 2.2623521254718905E-34
        -0x65f808f2c06edf4cL
    .end array-data

    :array_15
    .array-data 8
        -0x65564463c42f4833L
        0x339fb9e5392f746fL    # 4.9358085139864445E-60
        -0xa681924d12bfd0bL    # -2.871088485568385E258
    .end array-data

    :array_16
    .array-data 8
        -0x6c1ce706871c55b0L    # -7.09105544391234E-213
        0x154dd35f6c2ca13aL
        -0x4b788949a9351616L    # -1.1961555896067606E-55
    .end array-data

    :array_17
    .array-data 8
        -0x2d4b1bf5c3c719a7L    # -2.6597045520081507E90
        0x552f54162a88ded1L    # 2.1927425249005302E102
    .end array-data

    :array_18
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1a
    .array-data 8
        0x2310da33bf039f64L    # 8.844688548323604E-140
        0x77794e411808a3e4L    # 3.2638800656504065E267
        -0x18dab55d232443a5L    # -7.411302301603558E188
    .end array-data

    :array_1b
    .array-data 8
        -0x58444d35f94243f5L    # -2.745973279168123E-117
        -0x11b46b6d1e5f8fdbL    # -1.9939158841428968E223
    .end array-data

    :array_1c
    .array-data 8
        0x78c29f20d9b8d5d4L    # 5.03689564365321E273
        -0x2f8f1e59ef7be097L    # -3.1275795669296155E79
    .end array-data

    :array_1d
    .array-data 8
        -0x261a507a37337fL    # -7.27425558629271E307
        0x109786ff61a22e45L    # 9.698755868592904E-229
    .end array-data

    :array_1e
    .array-data 8
        0x6388400daf896421L    # 2.9286200610367445E171
        -0x6b1b17d5d1c4d5ccL    # -5.087477650867665E-208
        0x1eb04a9d4cd0980L
        -0xbe9d50c7ccfec60L
        0x4923b7c2a9529efdL    # 2.1986097347265046E44
    .end array-data

    :array_1f
    .array-data 8
        -0x5c7a57ff50a6b121L
        0x74d5168dfe81cb54L    # 6.184347533660617E254
        0x53b4a0bc92b8716bL    # 1.7211280742096358E95
        0x4dd959ee5e068788L    # 1.0679211238306097E67
        0x71b4e630b84bc5f4L    # 5.443595309442289E239
    .end array-data

    :array_20
    .array-data 8
        -0x11789f6f2bce7e47L    # -2.7040795488630393E224
        0x73e1738f633eded8L    # 1.5618411216600147E250
        -0x5278805fc8513e4L    # -5.685204554267126E283
        -0x1b03740dcf760462L    # -2.8919635700295408E178
        0x7754f6dfdaa0bd2dL    # 6.75985911018152E266
        -0x6642f7c78b1c887dL
        0x27185b231c06f49bL    # 2.358021650504553E-120
    .end array-data

    :array_21
    .array-data 8
        -0x7a1e163fc5e6b278L
        -0x466dd3b226493733L    # -2.2400029457362443E-31
        -0x4ad38b0ba3384faeL    # -1.4855170754271074E-52
        0xe3396bfdfa8f0a4L
        0x6f90a0d6373e4b46L    # 2.521063277288115E229
    .end array-data

    :array_22
    .array-data 8
        -0x73b744bf6cb532cfL    # -1.727122948713453E-249
        -0x19478d088395522cL    # -6.648750065116325E186
        0x556c7ef1d4a72bd8L    # 3.1911745950642283E103
        -0x49e8e0c90df2e31eL    # -3.9551669942384356E-48
        -0x2fe8848986246eceL    # -6.797654654546213E77
    .end array-data

    :array_23
    .array-data 8
        0x787100d0acca5127L    # 1.437230269809295E272
        -0x1c1911d23671235cL    # -1.7723067545981208E173
        0x41ec1780a7e31b7fL    # 3.7704184950971065E9
        -0x4a697edb689f782cL    # -1.503728469337187E-50
        0x5f0fda3166020f52L    # 8.145708819366978E149
        0x2c5ddedd901bb3fdL    # 5.593773329063934E-95
        0x584984cab6665507L    # 2.0109773811249256E117
        -0x3404bd0b04b944d4L    # -1.069522041982599E58
    .end array-data
.end method

.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzv:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzv:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public final zzb()Landroid/graphics/SurfaceTexture;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzp:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzu:Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzo:Landroid/graphics/SurfaceTexture;

    .line 13
    .line 14
    return-object v0
.end method

.method public final zzc(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzv:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzn:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzm:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzA:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzv:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public final zzd(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzn:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzm:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzp:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzv:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzB:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzp:Landroid/graphics/SurfaceTexture;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzv:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public final zzf(FF)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzn:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzm:I

    if-gt v0, v1, :cond_0

    move v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzk:F

    const v2, 0x3fdf66f3

    mul-float p1, p1, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzk:F

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzl:F

    mul-float p2, p2, v2

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzl:F

    const p2, -0x4036f025

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzl:F

    const p1, -0x4036f025

    :cond_1
    const p2, 0x3fc90fdb

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzl:F

    :cond_2
    return-void
.end method

.method public final zzg()Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzz:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 8
    .line 9
    if-eq v0, v3, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 14
    .line 15
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 16
    .line 17
    invoke-interface {v0, v1, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzz:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 26
    .line 27
    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    or-int/2addr v1, v0

    .line 32
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzz:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzy:Ljavax/microedition/khronos/egl/EGLContext;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 41
    .line 42
    invoke-interface {v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    or-int/2addr v1, v0

    .line 47
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzy:Ljavax/microedition/khronos/egl/EGLContext;

    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzw:Ljavax/microedition/khronos/egl/EGL10;

    .line 54
    .line 55
    invoke-interface {v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    or-int/2addr v0, v1

    .line 60
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgj;->zzx:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 61
    .line 62
    return v0

    .line 63
    :cond_2
    return v1
.end method
