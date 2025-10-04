.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/common/ECIInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoECIInput"
.end annotation


# instance fields
.field input:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getECIValue(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public haveNCharacters(II)Z
    .locals 0

    .line 1
    add-int/2addr p1, p2

    .line 2
    iget-object p2, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-gt p1, p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public isECI(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
