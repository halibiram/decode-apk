.class public Lcom/journeyapps/barcodescanner/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private reader:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    instance-of v1, v0, Lcom/google/zxing/MultiFormatReader;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    invoke-interface {v0}, Lcom/google/zxing/Reader;->reset()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    invoke-interface {v0}, Lcom/google/zxing/Reader;->reset()V

    return-object p1

    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    invoke-interface {v0}, Lcom/google/zxing/Reader;->reset()V

    .line 8
    throw p1

    .line 9
    :catch_0
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    invoke-interface {p1}, Lcom/google/zxing/Reader;->reset()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public decode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;->toBitmap(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getPossibleResultPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getReader()Lcom/google/zxing/Reader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    .line 2
    .line 3
    return-object v0
.end method

.method public toBitmap(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    .line 2
    .line 3
    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
