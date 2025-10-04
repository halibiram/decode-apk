.class final Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/aztec/decoder/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CorrectedBitsResult"
.end annotation


# instance fields
.field private final correctBits:[Z

.field private final ecLevel:I

.field private final errorsCorrected:I


# direct methods
.method public constructor <init>([ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->correctBits:[Z

    .line 5
    .line 6
    iput p2, p0, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->errorsCorrected:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->ecLevel:I

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic access$000(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->correctBits:[Z

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->ecLevel:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->errorsCorrected:I

    .line 2
    .line 3
    return p0
.end method
