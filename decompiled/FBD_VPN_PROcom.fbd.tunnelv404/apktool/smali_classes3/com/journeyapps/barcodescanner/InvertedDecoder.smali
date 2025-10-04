.class public Lcom/journeyapps/barcodescanner/InvertedDecoder;
.super Lcom/journeyapps/barcodescanner/Decoder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;-><init>(Lcom/google/zxing/Reader;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public toBitmap(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    .line 2
    .line 3
    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
