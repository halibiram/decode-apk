.class public Lcom/journeyapps/barcodescanner/camera/CameraSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x21712889fa68c77bL
        0x4402b5238ecae299L    # 4.313672830923225E19
        -0x4a864d67b7d75501L    # -4.29273343747531E-51
        0x4914413019e629a6L    # 1.129233926338905E44
        0x319b9fbf00205c38L    # 1.0006166120220809E-69
    .end array-data
.end method

.method public constructor <init>(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x3ae92273208eab50L
        -0x6e9b27e41b4716f0L    # -7.039113554790926E-225
        0x7cfa020be35181eL
        0x5f4236285b8200b4L    # 7.45169094332272E150
        0x1307d3382e134430L    # 5.399423960215315E-217
    .end array-data
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public setPreview(Landroid/hardware/Camera;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
