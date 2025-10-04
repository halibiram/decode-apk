.class public Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;
.super Landroidx/camera/core/processing/util/GLUtils$Program2D;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/processing/util/GLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamplerShaderProgram"
.end annotation


# instance fields
.field private mSamplerLoc:I

.field private mTexCoordLoc:I

.field private mTexMatrixLoc:I


# direct methods
.method public constructor <init>(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/ShaderProvider;)V
    .locals 0
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/processing/ShaderProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->is10BitHdr()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/camera/core/processing/util/GLUtils;->HDR_VERTEX_SHADER:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/camera/core/processing/util/GLUtils;->DEFAULT_VERTEX_SHADER:Ljava/lang/String;

    .line 3
    :goto_0
    invoke-static {p2}, Landroidx/camera/core/processing/util/GLUtils;->access$000(Landroidx/camera/core/processing/ShaderProvider;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/processing/util/GLUtils$Program2D;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->mSamplerLoc:I

    .line 6
    iput p1, p0, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->mTexMatrixLoc:I

    .line 7
    iput p1, p0, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->mTexCoordLoc:I

    .line 8
    invoke-direct {p0}, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->loadLocations()V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/util/GLUtils$InputFormat;)V
    .locals 0
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/processing/util/GLUtils$InputFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p2}, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->resolveDefaultShaderProvider(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/util/GLUtils$InputFormat;)Landroidx/camera/core/processing/ShaderProvider;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;-><init>(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/ShaderProvider;)V

    return-void
.end method

.method private loadLocations()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/camera/core/processing/util/GLUtils$Program2D;->access$100(Landroidx/camera/core/processing/util/GLUtils$Program2D;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/camera/core/processing/util/GLUtils$Program2D;->mProgramHandle:I

    .line 5
    .line 6
    const-string v1, "sTexture"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->mSamplerLoc:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroidx/camera/core/processing/util/GLUtils;->checkLocationOrThrow(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Landroidx/camera/core/processing/util/GLUtils$Program2D;->mProgramHandle:I

    .line 18
    .line 19
    const-string v1, "aTextureCoord"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->mTexCoordLoc:I

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/camera/core/processing/util/GLUtils;->checkLocationOrThrow(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Landroidx/camera/core/processing/util/GLUtils$Program2D;->mProgramHandle:I

    .line 31
    .line 32
    const-string v1, "uTexMatrix"

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->mTexMatrixLoc:I

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroidx/camera/core/processing/util/GLUtils;->checkLocationOrThrow(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private static resolveDefaultShaderProvider(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/util/GLUtils$InputFormat;)Landroidx/camera/core/processing/ShaderProvider;
    .locals 2
    .param p0    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/processing/util/GLUtils$InputFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->is10BitHdr()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    sget-object p0, Landroidx/camera/core/processing/util/GLUtils$InputFormat;->UNKNOWN:Landroidx/camera/core/processing/util/GLUtils$InputFormat;

    .line 8
    .line 9
    if-eq p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "No default sampler shader available for"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Landroidx/camera/core/processing/util/GLUtils$InputFormat;->YUV:Landroidx/camera/core/processing/util/GLUtils$InputFormat;

    .line 32
    .line 33
    if-ne p1, p0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Landroidx/camera/core/processing/util/GLUtils;->access$200()Landroidx/camera/core/processing/ShaderProvider;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    invoke-static {}, Landroidx/camera/core/processing/util/GLUtils;->access$300()Landroidx/camera/core/processing/ShaderProvider;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    invoke-static {}, Landroidx/camera/core/processing/util/GLUtils;->access$400()Landroidx/camera/core/processing/ShaderProvider;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method


# virtual methods
.method public updateTextureMatrix([F)V
    .locals 3
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->mTexMatrixLoc:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 6
    .line 7
    .line 8
    const-string p1, "glUniformMatrix4fv"

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/camera/core/processing/util/GLUtils;->checkGlErrorOrThrow(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public use()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/camera/core/processing/util/GLUtils$Program2D;->use()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->mSamplerLoc:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->mTexCoordLoc:I

    .line 11
    .line 12
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "glEnableVertexAttribArray"

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/camera/core/processing/util/GLUtils;->checkGlErrorOrThrow(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->mTexCoordLoc:I

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    sget-object v6, Landroidx/camera/core/processing/util/GLUtils;->TEX_BUF:Ljava/nio/FloatBuffer;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    const/16 v3, 0x1406

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "glVertexAttribPointer"

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/camera/core/processing/util/GLUtils;->checkGlErrorOrThrow(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
