.class public Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;,
        Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;
    }
.end annotation


# instance fields
.field private barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

.field private statusView:Landroid/widget/TextView;

.field private torchListener:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;

.field private viewFinder:Lcom/journeyapps/barcodescanner/ViewfinderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)Lcom/journeyapps/barcodescanner/ViewfinderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->viewFinder:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 2
    .line 3
    return-object p0
.end method

.method private initialize()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/client/android/R$styleable;->zxing_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lcom/google/zxing/client/android/R$styleable;->zxing_view_zxing_scanner_layout:I

    sget v2, Lcom/google/zxing/client/android/R$layout;->zxing_barcode_scanner:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget v0, Lcom/google/zxing/client/android/R$id;->zxing_barcode_surface:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->initializeAttributes(Landroid/util/AttributeSet;)V

    .line 7
    sget p1, Lcom/google/zxing/client/android/R$id;->zxing_viewfinder_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/journeyapps/barcodescanner/ViewfinderView;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->viewFinder:Lcom/journeyapps/barcodescanner/ViewfinderView;

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->setCameraPreview(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    .line 9
    sget p1, Lcom/google/zxing/client/android/R$id;->zxing_status_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->statusView:Landroid/widget/TextView;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x10

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xf

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x58eb20c642569c9cL    # -2.020716021986654E-120
        -0x381ef3f1b638ade9L    # -1.8127578631778448E38
        -0x513e4a37748e7594L
        -0x2e50124f9342e9f3L    # -3.1013225906911427E85
        -0x385087745cef91f9L    # -2.0915987833283372E37
        -0x71e8575dd5a036dL    # -1.891099836301569E274
        -0x58b3a4b5f34889d2L
        0x599b1632dd64641bL    # 4.4764584309072255E123
        -0x3bbd6ef738dc2351L    # -6.849844304378508E20
        0x58f07b34e477c62aL    # 2.659923280577999E120
        -0x41d09715809f4031L    # -3.6565852524895107E-9
        0x25b1b163277b6d35L    # 4.08395862190483E-127
        0x5b76b11cd1f4c9caL    # 4.026687599158732E132
        0x3fd59b748189c2eeL    # 0.3376132264157111
        -0x52cec9604196944aL    # -5.281379169559076E-91
        -0x1407d7a89ebed0f3L    # -1.2707217127133952E212
    .end array-data

    :array_1
    .array-data 8
        -0x5b62ae6b8d4d4257L
        0x522e9b2bb44147a3L    # 7.610571210756219E87
        0x1f0d9a8f88c8a5e6L
        -0x4afe1614572b3c63L    # -2.337853736060649E-53
        -0x6297cd4eddd8992L    # -7.981367993545468E278
        -0xe4116145de94764L    # -8.0520836987467E239
        -0x796e21f1b87fb4f1L    # -5.039709330003627E-277
        0x65dea30f57637818L    # 5.085140511805614E182
        -0x76559bebd9a77a2L    # -9.010399909807113E272
        -0x6023f3244f87f858L
        -0x1ff7884ae221ec3L    # -8.648050464479085E298
        0x3321000da8b4cd50L    # 2.066260873517095E-62
        -0x61e3714bcbb0108fL
        0x5ecc6bf41b720285L    # 4.5427394854941054E148
        -0x75dee22301eebac2L    # -6.957810645818688E-260
    .end array-data
.end method


# virtual methods
.method public changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public decodeContinuous(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    new-instance v1, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;-><init>(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeContinuous(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public decodeSingle(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    new-instance v1, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;-><init>(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeSingle(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;
    .locals 1

    .line 1
    sget v0, Lcom/google/zxing/client/android/R$id;->zxing_barcode_surface:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 8
    .line 9
    return-object v0
.end method

.method public getCameraSettings()Lcom/journeyapps/barcodescanner/camera/CameraSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getCameraSettings()Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDecoderFactory()Lcom/journeyapps/barcodescanner/DecoderFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->getDecoderFactory()Lcom/journeyapps/barcodescanner/DecoderFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->statusView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewFinder()Lcom/journeyapps/barcodescanner/ViewfinderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->viewFinder:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 2
    .line 3
    return-object v0
.end method

.method public initializeFromIntent(Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/zxing/client/android/DecodeHintManager;->parseDecodeHints(Landroid/content/Intent;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    new-array v5, v4, [J

    .line 18
    .line 19
    fill-array-data v5, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v5, v4, [J

    .line 38
    .line 39
    fill-array-data v5, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v5, -0x1

    .line 50
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ltz v3, :cond_0

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->setRequestedCameraId(I)V

    .line 57
    .line 58
    .line 59
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v5, v4, [J

    .line 62
    .line 63
    fill-array-data v5, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const/4 v5, 0x0

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v6, v4, [J

    .line 83
    .line 84
    fill-array-data v6, :array_3

    .line 85
    .line 86
    .line 87
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_1

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchOn()V

    .line 101
    .line 102
    .line 103
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v6, v4, [J

    .line 106
    .line 107
    fill-array-data v6, :array_4

    .line 108
    .line 109
    .line 110
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eqz v3, :cond_2

    .line 122
    .line 123
    invoke-virtual {p0, v3}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setStatusText(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v6, v4, [J

    .line 129
    .line 130
    fill-array-data v6, :array_5

    .line 131
    .line 132
    .line 133
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v4, v4, [J

    .line 147
    .line 148
    fill-array-data v4, :array_6

    .line 149
    .line 150
    .line 151
    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance v4, Lcom/google/zxing/MultiFormatReader;

    .line 163
    .line 164
    invoke-direct {v4}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 168
    .line 169
    .line 170
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 171
    .line 172
    invoke-virtual {v4, v2}, Lcom/journeyapps/barcodescanner/CameraPreview;->setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 173
    .line 174
    .line 175
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 176
    .line 177
    new-instance v4, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;

    .line 178
    .line 179
    invoke-direct {v4, v0, v1, p1, v3}, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v4}, Lcom/journeyapps/barcodescanner/BarcodeView;->setDecoderFactory(Lcom/journeyapps/barcodescanner/DecoderFactory;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    nop

    .line 187
    :array_0
    .array-data 8
        0xf8101782b190189L    # 5.348461936637886E-234
        0x1f9b65657a0815cbL    # 1.995403289193465E-156
        0x3035a7d45f77b313L    # 1.8702127620487993E-76
    .end array-data

    :array_1
    .array-data 8
        -0x5586ce5c31c7710L    # -6.846847114097562E282
        0x77a57ff1f71986e7L    # 2.2184022037636798E268
        0x63c371405d2a7c96L    # 3.756791968801438E172
    .end array-data

    :array_2
    .array-data 8
        0x43ec1746e0234967L    # 1.6193315888039672E19
        -0xf38fe5053d3af59L    # -1.828768883185251E235
        -0x86e08301f8fd083L    # -9.269926199248298E267
    .end array-data

    :array_3
    .array-data 8
        0x39e93ea468cdfe10L    # 9.95727694354642E-30
        0x46e91e1ab2a0eac1L    # 4.07556278020544E33
        -0x42f951ee57ee9938L    # -1.0071924146724413E-14
    .end array-data

    :array_4
    .array-data 8
        0x3a015c7685d4027dL    # 2.739111788494994E-29
        -0x513bb971666150c4L    # -2.0873977532295E-83
        -0xbd7a07a049aed58L    # -3.490099808812358E251
    .end array-data

    :array_5
    .array-data 8
        -0x53de62f82ad456c5L    # -4.123012094941054E-96
        -0x400d67cb746dd6ebL    # -1.1621594860067195
        -0x737527ad57313084L    # -2.9995573974594797E-248
    .end array-data

    :array_6
    .array-data 8
        0xb5b5255df94723dL
        -0x412b3e99f2175d2L    # -8.92220544165661E288
        -0x1df17497d282593eL    # -2.1986773603822143E164
    .end array-data
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/16 v0, 0x19

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x1b

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x50

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_0
    return v1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchOff()V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchOn()V

    .line 29
    .line 30
    .line 31
    return v1
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pauseAndWait()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->pauseAndWait()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->resume()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDecoderFactory(Lcom/journeyapps/barcodescanner/DecoderFactory;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/BarcodeView;->setDecoderFactory(Lcom/journeyapps/barcodescanner/DecoderFactory;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->statusView:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTorchListener(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->torchListener:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTorchOff()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->setTorch(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->torchListener:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;->onTorchOff()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setTorchOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->barcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->setTorch(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->torchListener:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;->onTorchOn()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
