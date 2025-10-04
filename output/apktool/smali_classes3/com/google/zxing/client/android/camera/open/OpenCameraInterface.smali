.class public final Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_REQUESTED_CAMERA:I = -0x1

.field private static final TAG:Ljava/lang/String; = "com.google.zxing.client.android.camera.open.OpenCameraInterface"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCameraId(I)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, -0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    if-ltz p0, :cond_1

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-nez v4, :cond_3

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    :goto_1
    if-ge p0, v1, :cond_3

    .line 34
    .line 35
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    .line 36
    .line 37
    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 41
    .line 42
    .line 43
    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 44
    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    add-int/2addr p0, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_2
    if-ge p0, v1, :cond_4

    .line 51
    .line 52
    return p0

    .line 53
    :cond_4
    if-eqz v4, :cond_5

    .line 54
    .line 55
    return v2

    .line 56
    :cond_5
    return v3

    .line 57
    :array_0
    .array-data 8
        0x28cd924415cabd01L
        -0x3bdd77999b890e4bL    # -1.7093502351278935E20
        -0x342b5d5ceeeb9b54L    # -2.0239044037225072E57
    .end array-data
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->getCameraId(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
