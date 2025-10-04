.class final Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/aztec/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CorrectedParameter"
.end annotation


# instance fields
.field private final data:I

.field private final errorsCorrected:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;->data:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;->errorsCorrected:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getData()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;->data:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorsCorrected()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector$CorrectedParameter;->errorsCorrected:I

    .line 2
    .line 3
    return v0
.end method
