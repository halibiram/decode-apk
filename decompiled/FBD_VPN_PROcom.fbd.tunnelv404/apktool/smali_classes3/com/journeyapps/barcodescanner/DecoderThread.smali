.class public Lcom/journeyapps/barcodescanner/DecoderThread;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DecoderThread"


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private final callback:Landroid/os/Handler$Callback;

.field private cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field private cropRect:Landroid/graphics/Rect;

.field private decoder:Lcom/journeyapps/barcodescanner/Decoder;

.field private handler:Landroid/os/Handler;

.field private final previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

.field private resultHandler:Landroid/os/Handler;

.field private running:Z

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/Decoder;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/DecoderThread$1;-><init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->callback:Landroid/os/Handler$Callback;

    .line 20
    .line 21
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread$2;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/DecoderThread$2;-><init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    .line 27
    .line 28
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic access$000(Lcom/journeyapps/barcodescanner/DecoderThread;Lcom/journeyapps/barcodescanner/SourceData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->decode(Lcom/journeyapps/barcodescanner/SourceData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/journeyapps/barcodescanner/DecoderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/journeyapps/barcodescanner/DecoderThread;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private decode(Lcom/journeyapps/barcodescanner/SourceData;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/SourceData;->setCropRect(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->createSource(Lcom/journeyapps/barcodescanner/SourceData;)Lcom/google/zxing/LuminanceSource;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/journeyapps/barcodescanner/Decoder;->decode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    new-array v2, v2, [J

    .line 46
    .line 47
    fill-array-data v2, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    new-instance v1, Lcom/journeyapps/barcodescanner/BarcodeResult;

    .line 61
    .line 62
    invoke-direct {v1, v0, p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;-><init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/SourceData;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    .line 66
    .line 67
    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_decode_succeeded:I

    .line 68
    .line 69
    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Landroid/os/Bundle;

    .line 74
    .line 75
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode_failed:I

    .line 90
    .line 91
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/Decoder;->getPossibleResultPoints()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->transformResultPoints(Ljava/util/List;Lcom/journeyapps/barcodescanner/SourceData;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    .line 113
    .line 114
    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_possible_result_points:I

    .line 115
    .line 116
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :array_0
    .array-data 8
        0x32487d361d199b9eL    # 1.8167029231511898E-66
        -0x4efd0b2a29ab3154L    # -1.3411169163350689E-72
        0x724c07aef74048e1L    # 3.738090693651668E242
        -0x4e98e803774ab07cL    # -1.0456455490079102E-70
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_1
    .array-data 8
        0x4e21778a5357024dL    # 2.3545407993968435E68
        -0x10dfca8c330b8bf9L    # -1.919895362997311E227
    .end array-data
.end method

.method private requestNextPreview()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->requestPreview(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public createSource(Lcom/journeyapps/barcodescanner/SourceData;)Lcom/google/zxing/LuminanceSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/SourceData;->createSource()Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDecoder()Lcom/journeyapps/barcodescanner/Decoder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-void
.end method

.method public setDecoder(Lcom/journeyapps/barcodescanner/Decoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    .line 5
    .line 6
    sget-object v1, Lcom/journeyapps/barcodescanner/DecoderThread;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->callback:Landroid/os/Handler$Callback;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method
