.class public final Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;
.super Landroidx/camera/core/processing/OpenGlRenderer;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DualOpenGlRenderer"


# instance fields
.field private mPrimaryExternalTextureId:I

.field private final mPrimaryLayoutSettings:Landroidx/camera/core/LayoutSettings;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mSecondaryExternalTextureId:I

.field private final mSecondaryLayoutSettings:Landroidx/camera/core/LayoutSettings;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;)V
    .locals 1
    .param p1    # Landroidx/camera/core/LayoutSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/LayoutSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/processing/OpenGlRenderer;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mPrimaryExternalTextureId:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mSecondaryExternalTextureId:I

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mPrimaryLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mSecondaryLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 12
    .line 13
    return-void
.end method

.method private static getTransformMatrix(Landroid/util/Size;Landroid/util/Size;Landroidx/camera/core/LayoutSettings;)[F
    .locals 7
    .param p0    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/LayoutSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/processing/util/GLUtils;->create4x4IdentityMatrix()[F

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static {}, Landroidx/camera/core/processing/util/GLUtils;->create4x4IdentityMatrix()[F

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-static {}, Landroidx/camera/core/processing/util/GLUtils;->create4x4IdentityMatrix()[F

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    div-float/2addr v0, v1

    .line 24
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    int-to-float p0, p0

    .line 29
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    int-to-float p1, p1

    .line 34
    div-float/2addr p0, p1

    .line 35
    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {v2, v1, v0, p0, p1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroidx/camera/core/LayoutSettings;->getOffsetX()F

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-virtual {p2}, Landroidx/camera/core/LayoutSettings;->getWidth()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    div-float/2addr p0, p1

    .line 50
    invoke-virtual {p2}, Landroidx/camera/core/LayoutSettings;->getOffsetY()F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p2}, Landroidx/camera/core/LayoutSettings;->getHeight()F

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    div-float/2addr p1, p2

    .line 59
    const/4 p2, 0x0

    .line 60
    invoke-static {v4, v1, p0, p1, p2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 61
    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    move-object v0, v6

    .line 66
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 67
    .line 68
    .line 69
    return-object v6
.end method

.method private renderInternal(Landroidx/camera/core/processing/util/OutputSurface;Landroidx/camera/core/SurfaceOutput;Landroid/graphics/SurfaceTexture;Landroidx/camera/core/LayoutSettings;IZ)V
    .locals 2
    .param p1    # Landroidx/camera/core/processing/util/OutputSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/SurfaceOutput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/LayoutSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p5}, Landroidx/camera/core/processing/OpenGlRenderer;->useAndConfigureProgramWithTexture(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result p5

    .line 8
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v1, v1, p5, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v1, v1, p5, v0}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 25
    .line 26
    .line 27
    const/16 p5, 0x10

    .line 28
    .line 29
    new-array v0, p5, [F

    .line 30
    .line 31
    invoke-virtual {p3, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 32
    .line 33
    .line 34
    new-array p3, p5, [F

    .line 35
    .line 36
    invoke-interface {p2, p3, v0, p6}, Landroidx/camera/core/SurfaceOutput;->updateTransformMatrix([F[FZ)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mCurrentProgram:Landroidx/camera/core/processing/util/GLUtils$Program2D;

    .line 40
    .line 41
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroidx/camera/core/processing/util/GLUtils$Program2D;

    .line 46
    .line 47
    instance-of p5, p2, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;

    .line 48
    .line 49
    if-eqz p5, :cond_0

    .line 50
    .line 51
    move-object p5, p2

    .line 52
    check-cast p5, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;

    .line 53
    .line 54
    invoke-virtual {p5, p3}, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->updateTextureMatrix([F)V

    .line 55
    .line 56
    .line 57
    :cond_0
    new-instance p3, Landroid/util/Size;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result p5

    .line 63
    int-to-float p5, p5

    .line 64
    invoke-virtual {p4}, Landroidx/camera/core/LayoutSettings;->getWidth()F

    .line 65
    .line 66
    .line 67
    move-result p6

    .line 68
    mul-float p6, p6, p5

    .line 69
    .line 70
    float-to-int p5, p6

    .line 71
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result p6

    .line 75
    int-to-float p6, p6

    .line 76
    invoke-virtual {p4}, Landroidx/camera/core/LayoutSettings;->getHeight()F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    mul-float v0, v0, p6

    .line 81
    .line 82
    float-to-int p6, v0

    .line 83
    invoke-direct {p3, p5, p6}, Landroid/util/Size;-><init>(II)V

    .line 84
    .line 85
    .line 86
    new-instance p5, Landroid/util/Size;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result p6

    .line 92
    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->getHeight()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-direct {p5, p6, p1}, Landroid/util/Size;-><init>(II)V

    .line 97
    .line 98
    .line 99
    invoke-static {p3, p5, p4}, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->getTransformMatrix(Landroid/util/Size;Landroid/util/Size;Landroidx/camera/core/LayoutSettings;)[F

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p2, p1}, Landroidx/camera/core/processing/util/GLUtils$Program2D;->updateTransformMatrix([F)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p4}, Landroidx/camera/core/LayoutSettings;->getAlpha()F

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {p2, p1}, Landroidx/camera/core/processing/util/GLUtils$Program2D;->updateAlpha(F)V

    .line 111
    .line 112
    .line 113
    const/16 p1, 0xbe2

    .line 114
    .line 115
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 116
    .line 117
    .line 118
    const/16 p2, 0x302

    .line 119
    .line 120
    const/4 p3, 0x1

    .line 121
    const/16 p4, 0x303

    .line 122
    .line 123
    invoke-static {p2, p4, p3, p4}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    .line 124
    .line 125
    .line 126
    const/4 p2, 0x5

    .line 127
    const/4 p3, 0x4

    .line 128
    invoke-static {p2, v1, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 129
    .line 130
    .line 131
    const-string p2, "glDrawArrays"

    .line 132
    .line 133
    invoke-static {p2}, Landroidx/camera/core/processing/util/GLUtils;->checkGlErrorOrThrow(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 137
    .line 138
    .line 139
    return-void
.end method


# virtual methods
.method public getTextureName(Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/camera/core/processing/util/GLUtils;->checkInitializedOrThrow(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mGlThread:Ljava/lang/Thread;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/camera/core/processing/util/GLUtils;->checkGlThreadOrThrow(Ljava/lang/Thread;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mPrimaryExternalTextureId:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget p1, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mSecondaryExternalTextureId:I

    .line 18
    .line 19
    :goto_0
    return p1
.end method

.method public init(Landroidx/camera/core/DynamicRange;Ljava/util/Map;)Landroidx/camera/core/processing/util/GraphicDeviceInfo;
    .locals 0
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/DynamicRange;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/processing/util/GLUtils$InputFormat;",
            "Landroidx/camera/core/processing/ShaderProvider;",
            ">;)",
            "Landroidx/camera/core/processing/util/GraphicDeviceInfo;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/camera/core/processing/OpenGlRenderer;->init(Landroidx/camera/core/DynamicRange;Ljava/util/Map;)Landroidx/camera/core/processing/util/GraphicDeviceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Landroidx/camera/core/processing/util/GLUtils;->createTexture()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iput p2, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mPrimaryExternalTextureId:I

    .line 10
    .line 11
    invoke-static {}, Landroidx/camera/core/processing/util/GLUtils;->createTexture()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iput p2, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mSecondaryExternalTextureId:I

    .line 16
    .line 17
    return-object p1
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/camera/core/processing/OpenGlRenderer;->release()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mPrimaryExternalTextureId:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mSecondaryExternalTextureId:I

    .line 8
    .line 9
    return-void
.end method

.method public render(JLandroid/view/Surface;Landroidx/camera/core/SurfaceOutput;Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture;)V
    .locals 9
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/SurfaceOutput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/camera/core/processing/util/GLUtils;->checkInitializedOrThrow(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mGlThread:Ljava/lang/Thread;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/camera/core/processing/util/GLUtils;->checkGlThreadOrThrow(Ljava/lang/Thread;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p3}, Landroidx/camera/core/processing/OpenGlRenderer;->getOutSurfaceOrThrow(Landroid/view/Surface;)Landroidx/camera/core/processing/util/OutputSurface;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Landroidx/camera/core/processing/util/GLUtils;->NO_OUTPUT_SURFACE:Landroidx/camera/core/processing/util/OutputSurface;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p3}, Landroidx/camera/core/processing/OpenGlRenderer;->createOutputSurfaceInternal(Landroid/view/Surface;)Landroidx/camera/core/processing/util/OutputSurface;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mOutputSurfaceMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mCurrentSurface:Landroid/view/Surface;

    .line 33
    .line 34
    if-eq p3, v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/camera/core/processing/util/OutputSurface;->getEglSurface()Landroid/opengl/EGLSurface;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Landroidx/camera/core/processing/OpenGlRenderer;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 41
    .line 42
    .line 43
    iput-object p3, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mCurrentSurface:Landroid/view/Surface;

    .line 44
    .line 45
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-static {v2, v2, v2, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x4000

    .line 52
    .line 53
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 54
    .line 55
    .line 56
    iget-object v6, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mPrimaryLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 57
    .line 58
    iget v7, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mPrimaryExternalTextureId:I

    .line 59
    .line 60
    const/4 v8, 0x1

    .line 61
    move-object v2, p0

    .line 62
    move-object v3, v0

    .line 63
    move-object v4, p4

    .line 64
    move-object v5, p5

    .line 65
    invoke-direct/range {v2 .. v8}, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->renderInternal(Landroidx/camera/core/processing/util/OutputSurface;Landroidx/camera/core/SurfaceOutput;Landroid/graphics/SurfaceTexture;Landroidx/camera/core/LayoutSettings;IZ)V

    .line 66
    .line 67
    .line 68
    iget-object v6, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mSecondaryLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 69
    .line 70
    iget v7, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mSecondaryExternalTextureId:I

    .line 71
    .line 72
    move-object v5, p6

    .line 73
    invoke-direct/range {v2 .. v8}, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->renderInternal(Landroidx/camera/core/processing/util/OutputSurface;Landroidx/camera/core/SurfaceOutput;Landroid/graphics/SurfaceTexture;Landroidx/camera/core/LayoutSettings;IZ)V

    .line 74
    .line 75
    .line 76
    iget-object p4, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/camera/core/processing/util/OutputSurface;->getEglSurface()Landroid/opengl/EGLSurface;

    .line 79
    .line 80
    .line 81
    move-result-object p5

    .line 82
    invoke-static {p4, p5, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Landroidx/camera/core/processing/OpenGlRenderer;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/camera/core/processing/util/OutputSurface;->getEglSurface()Landroid/opengl/EGLSurface;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string p2, "Failed to swap buffers with EGL error: 0x"

    .line 100
    .line 101
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string p2, "DualOpenGlRenderer"

    .line 120
    .line 121
    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p3, p1}, Landroidx/camera/core/processing/OpenGlRenderer;->removeOutputSurfaceInternal(Landroid/view/Surface;Z)V

    .line 126
    .line 127
    .line 128
    :cond_3
    return-void
.end method
