.class Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/camera/CameraInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$100(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->configure()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$300(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$300(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_prewiew_size_ready:I

    .line 42
    .line 43
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$400(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/Size;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$200(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->access$000()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    const/4 v1, 0x5

    .line 69
    new-array v1, v1, [J

    .line 70
    .line 71
    fill-array-data v1, :array_1

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    :cond_0
    :goto_0
    return-void

    .line 81
    :array_0
    .array-data 8
        0x69b37fb76398bbe4L
        0x2b1459b69b1054acL    # 3.634421764034408E-101
        0x1f6a4ae862c597a9L
        -0x76b92c3198d72522L    # -5.66356195189525E-264
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        -0x6da630622d6f9163L    # -2.856196258663889E-220
        0x5913f529af7fcbddL    # 1.2883921001585737E121
        -0x2fb9930390ce478bL    # -5.193443527525161E78
        -0x234efae1eb73fdc8L    # -3.1669217260481286E138
        -0x25b7c78ff65d8ae9L    # -8.197672631338512E126
    .end array-data
.end method
