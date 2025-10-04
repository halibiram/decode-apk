.class public Lcom/journeyapps/barcodescanner/Size;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/journeyapps/barcodescanner/Size;",
        ">;"
    }
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 5
    .line 6
    iput p2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/journeyapps/barcodescanner/Size;)I
    .locals 2
    .param p1    # Lcom/journeyapps/barcodescanner/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int v0, v0, v1

    .line 3
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int v1, v1, p1

    if-ge v1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-le v1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    .line 20
    .line 21
    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 22
    .line 23
    iget v3, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 28
    .line 29
    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 30
    .line 31
    if-ne v2, p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    .line 36
    :cond_3
    :goto_1
    return v1
.end method

.method public fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 2
    .line 3
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 8
    .line 9
    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 10
    .line 11
    if-gt v0, p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public rotate()Lcom/journeyapps/barcodescanner/Size;
    .locals 3

    .line 1
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    .line 2
    .line 3
    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 4
    .line 5
    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public scale(II)Lcom/journeyapps/barcodescanner/Size;
    .locals 3

    .line 1
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    .line 2
    .line 3
    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 4
    .line 5
    mul-int v1, v1, p1

    .line 6
    .line 7
    div-int/2addr v1, p2

    .line 8
    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 9
    .line 10
    mul-int v2, v2, p1

    .line 11
    .line 12
    div-int/2addr v2, p2

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public scaleCrop(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .locals 5

    .line 1
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 2
    .line 3
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 4
    .line 5
    mul-int v2, v0, v1

    .line 6
    .line 7
    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 8
    .line 9
    iget v3, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 10
    .line 11
    mul-int v4, p1, v3

    .line 12
    .line 13
    if-gt v2, v4, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/journeyapps/barcodescanner/Size;

    .line 16
    .line 17
    mul-int v3, v3, p1

    .line 18
    .line 19
    div-int/2addr v3, v0

    .line 20
    invoke-direct {v1, p1, v3}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    new-instance p1, Lcom/journeyapps/barcodescanner/Size;

    .line 25
    .line 26
    mul-int v0, v0, v1

    .line 27
    .line 28
    div-int/2addr v0, v3

    .line 29
    invoke-direct {p1, v0, v1}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method public scaleFit(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .locals 5

    .line 1
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 2
    .line 3
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 4
    .line 5
    mul-int v2, v0, v1

    .line 6
    .line 7
    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 8
    .line 9
    iget v3, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 10
    .line 11
    mul-int v4, p1, v3

    .line 12
    .line 13
    if-lt v2, v4, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/journeyapps/barcodescanner/Size;

    .line 16
    .line 17
    mul-int v3, v3, p1

    .line 18
    .line 19
    div-int/2addr v3, v0

    .line 20
    invoke-direct {v1, p1, v3}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    new-instance p1, Lcom/journeyapps/barcodescanner/Size;

    .line 25
    .line 26
    mul-int v0, v0, v1

    .line 27
    .line 28
    div-int/2addr v0, v3

    .line 29
    invoke-direct {p1, v0, v1}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :array_0
    .array-data 8
        0x71d7b3ff95ff82afL    # 2.4695740230385056E240
        -0x7fef7d604ec9ae57L
    .end array-data
.end method
