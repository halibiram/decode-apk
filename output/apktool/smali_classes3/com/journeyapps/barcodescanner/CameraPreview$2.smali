.class Lcom/journeyapps/barcodescanner/CameraPreview$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$200()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/16 p2, 0x8

    .line 9
    .line 10
    new-array p2, p2, [J

    .line 11
    .line 12
    fill-array-data p2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 23
    .line 24
    new-instance p2, Lcom/journeyapps/barcodescanner/Size;

    .line 25
    .line 26
    invoke-direct {p2, p3, p4}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$002(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$100(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x26a32def363ff178L
        -0xf94fb502860685dL    # -3.3557129768865662E233
        0x44ebdd20f4c6b7bfL    # 1.05266400175333E24
        -0x7e62e12b5104384aL    # -6.794260120219775E-301
        0x50f92d584033a547L    # 1.1941118913597365E82
        0x7161bca737508ac3L    # 1.4437265868590427E238
        -0x612f23702528df7dL
        -0x1b2442f4ccbc6a00L    # -7.025216007228568E177
    .end array-data
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$002(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    .line 5
    .line 6
    .line 7
    return-void
.end method
