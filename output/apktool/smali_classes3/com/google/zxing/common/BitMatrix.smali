.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private bits:[I

.field private height:I

.field private rowSize:I

.field private width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 3
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 4
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/lit8 p1, p1, 0x1f

    .line 5
    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int p1, p1, p2

    .line 6
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        -0x61933febcb852f47L
        0x15e75e86a051262cL    # 3.72681261145343E-203
        -0x62aa4b55e0ec2f1eL
        -0x6c3ab81678f3432aL    # -1.975437158499131E-213
        0x682327f824514ceL
        -0x3ca7f4d80b2acd2eL    # -2.7070662721194824E16
    .end array-data
.end method

.method private constructor <init>(III[I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 10
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 11
    iput p3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 12
    iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    return-void
.end method

.method private buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 6
    .line 7
    add-int/lit8 v2, v2, 0x1

    .line 8
    .line 9
    mul-int v2, v2, v1

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 17
    .line 18
    if-ge v2, v3, :cond_2

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_1
    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 22
    .line 23
    if-ge v3, v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    move-object v4, p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    move-object v4, p2

    .line 34
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/common/BitMatrix;
    .locals 12

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p0, :cond_d

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_7

    .line 9
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-eq v10, v11, :cond_3

    .line 10
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    .line 13
    aput-boolean v1, v2, v6

    :goto_1
    add-int/2addr v6, v1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    .line 16
    aput-boolean v4, v2, v6

    goto :goto_1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    if-le v6, v7, :cond_6

    if-ne v8, v3, :cond_4

    sub-int v8, v6, v7

    goto :goto_3

    :cond_4
    sub-int v7, v6, v7

    if-ne v7, v8, :cond_5

    :goto_3
    add-int/2addr v9, v1

    move v7, v6

    goto :goto_4

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v0, [J

    fill-array-data p2, :array_1

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    add-int/2addr v5, v1

    goto :goto_0

    :cond_7
    if-le v6, v7, :cond_a

    if-ne v8, v3, :cond_8

    sub-int v8, v6, v7

    goto :goto_5

    :cond_8
    sub-int p0, v6, v7

    if-ne p0, v8, :cond_9

    :goto_5
    add-int/2addr v9, v1

    goto :goto_6

    .line 20
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v0, [J

    fill-array-data p2, :array_2

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_a
    :goto_6
    new-instance p0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {p0, v8, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    :goto_7
    if-ge v4, v6, :cond_c

    .line 22
    aget-boolean p1, v2, v4

    if-eqz p1, :cond_b

    .line 23
    rem-int p1, v4, v8

    div-int p2, v4, v8

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_b
    add-int/2addr v4, v1

    goto :goto_7

    :cond_c
    return-object p0

    .line 24
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    nop

    :array_0
    .array-data 8
        -0x4586d348c7b7c775L    # -5.083984263003206E-27
        -0x68b8dae401637f55L
        0x4c3847e52ba74495L    # 1.5241330675880496E59
        -0x3730f44b36709150L    # -5.408928555041524E42
        -0x59fc9b4f7d72ed02L
    .end array-data

    :array_1
    .array-data 8
        -0x17b4a21e4f05fb7L
        -0x5df8c96a9fa3ac2fL    # -9.294957789266513E-145
        -0x4c4901823d7a2e99L    # -1.4309267569611952E-59
        0x5a5aa3125b789e13L    # 1.803115221736087E127
    .end array-data

    :array_2
    .array-data 8
        -0x614eb8d342b8a17bL    # -7.680976879161519E-161
        -0x7dcac48e5e0f3159L
        -0x30ec57c29be8fc22L    # -8.682810678623461E72
        0x609c228c1f118f59L    # 2.414259286565898E157
    .end array-data
.end method

.method public static parse([[Z)Lcom/google/zxing/common/BitMatrix;
    .locals 8

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    .line 2
    aget-object v2, p0, v1

    array-length v2, v2

    .line 3
    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v3, v2, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 4
    aget-object v5, p0, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    .line 5
    aget-boolean v7, v5, v6

    if-eqz v7, :cond_0

    .line 6
    invoke-virtual {v3, v6, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 9
    .line 10
    aput v1, v3, v2

    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitMatrix;
    .locals 5

    .line 2
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/zxing/common/BitMatrix;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/zxing/common/BitMatrix;

    .line 8
    .line 9
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 10
    .line 11
    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 16
    .line 17
    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 22
    .line 23
    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 28
    .line 29
    iget-object p1, p1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 30
    .line 31
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_1
    return v1
.end method

.method public flip()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v3, v2, v1

    not-int v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flip(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr v0, p2

    .line 2
    iget-object p2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, p2, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    xor-int/2addr p1, v1

    aput p1, p2, v0

    return-void
.end method

.method public get(II)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 2
    .line 3
    mul-int p2, p2, v0

    .line 4
    .line 5
    div-int/lit8 v0, p1, 0x20

    .line 6
    .line 7
    add-int/2addr v0, p2

    .line 8
    iget-object p2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 9
    .line 10
    aget p2, p2, v0

    .line 11
    .line 12
    and-int/lit8 p1, p1, 0x1f

    .line 13
    .line 14
    ushr-int p1, p2, p1

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    and-int/2addr p1, p2

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    :goto_0
    return p2
.end method

.method public getBottomRightOnBit()[I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    :goto_0
    if-ltz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 9
    .line 10
    aget v1, v1, v0

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-gez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_1
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 22
    .line 23
    div-int v2, v0, v1

    .line 24
    .line 25
    rem-int v1, v0, v1

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0x20

    .line 28
    .line 29
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 30
    .line 31
    aget v0, v3, v0

    .line 32
    .line 33
    const/16 v3, 0x1f

    .line 34
    .line 35
    :goto_1
    ushr-int v4, v0, v3

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    add-int/lit8 v3, v3, -0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    add-int/2addr v1, v3

    .line 43
    filled-new-array {v1, v2}, [I

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method public getEnclosingRectangle()[I
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, -0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    :goto_0
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 10
    .line 11
    if-ge v5, v6, :cond_7

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_1
    iget v7, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 15
    .line 16
    if-ge v6, v7, :cond_6

    .line 17
    .line 18
    iget-object v8, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 19
    .line 20
    mul-int v7, v7, v5

    .line 21
    .line 22
    add-int/2addr v7, v6

    .line 23
    aget v7, v8, v7

    .line 24
    .line 25
    if-eqz v7, :cond_5

    .line 26
    .line 27
    if-ge v5, v1, :cond_0

    .line 28
    .line 29
    move v1, v5

    .line 30
    :cond_0
    if-le v5, v4, :cond_1

    .line 31
    .line 32
    move v4, v5

    .line 33
    :cond_1
    mul-int/lit8 v8, v6, 0x20

    .line 34
    .line 35
    if-ge v8, v0, :cond_3

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    :goto_2
    rsub-int/lit8 v10, v9, 0x1f

    .line 39
    .line 40
    shl-int v10, v7, v10

    .line 41
    .line 42
    if-nez v10, :cond_2

    .line 43
    .line 44
    add-int/lit8 v9, v9, 0x1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    add-int/2addr v9, v8

    .line 48
    if-ge v9, v0, :cond_3

    .line 49
    .line 50
    move v0, v9

    .line 51
    :cond_3
    add-int/lit8 v9, v8, 0x1f

    .line 52
    .line 53
    if-le v9, v2, :cond_5

    .line 54
    .line 55
    const/16 v9, 0x1f

    .line 56
    .line 57
    :goto_3
    ushr-int v10, v7, v9

    .line 58
    .line 59
    if-nez v10, :cond_4

    .line 60
    .line 61
    add-int/lit8 v9, v9, -0x1

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    add-int/2addr v8, v9

    .line 65
    if-le v8, v2, :cond_5

    .line 66
    .line 67
    move v2, v8

    .line 68
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_7
    if-lt v2, v0, :cond_9

    .line 75
    .line 76
    if-ge v4, v1, :cond_8

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_8
    sub-int/2addr v2, v0

    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    sub-int/2addr v4, v1

    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    filled-new-array {v0, v1, v2, v4}, [I

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0

    .line 90
    :cond_9
    :goto_4
    const/4 v0, 0x0

    .line 91
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 4

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    .line 17
    .line 18
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 19
    .line 20
    invoke-direct {p2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 21
    .line 22
    .line 23
    :goto_1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 24
    .line 25
    mul-int p1, p1, v0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_2
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 29
    .line 30
    if-ge v0, v1, :cond_2

    .line 31
    .line 32
    mul-int/lit8 v1, v0, 0x20

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 35
    .line 36
    add-int v3, p1, v0

    .line 37
    .line 38
    aget v2, v2, v3

    .line 39
    .line 40
    invoke-virtual {p2, v1, v2}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    return-object p2
.end method

.method public getRowSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getTopLeftOnBit()[I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_0

    .line 7
    .line 8
    aget v3, v2, v1

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    array-length v3, v2

    .line 16
    if-ne v1, v3, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return-object v0

    .line 20
    :cond_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 21
    .line 22
    div-int v4, v1, v3

    .line 23
    .line 24
    rem-int v3, v1, v3

    .line 25
    .line 26
    mul-int/lit8 v3, v3, 0x20

    .line 27
    .line 28
    aget v1, v2, v1

    .line 29
    .line 30
    :goto_1
    rsub-int/lit8 v2, v0, 0x1f

    .line 31
    .line 32
    shl-int v2, v1, v2

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    add-int/2addr v3, v0

    .line 40
    filled-new-array {v3, v4}, [I

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 2
    .line 3
    mul-int/lit8 v1, v0, 0x1f

    .line 4
    .line 5
    add-int/2addr v1, v0

    .line 6
    mul-int/lit8 v1, v1, 0x1f

    .line 7
    .line 8
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 9
    .line 10
    add-int/2addr v1, v0

    .line 11
    mul-int/lit8 v1, v1, 0x1f

    .line 12
    .line 13
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 14
    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public rotate(I)V
    .locals 2

    .line 1
    rem-int/lit16 p1, p1, 0x168

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x5a

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0xb4

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x10e

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->rotate90()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->rotate180()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v1, 0x7

    .line 29
    new-array v1, v1, [J

    .line 30
    .line 31
    fill-array-data v1, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->rotate180()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->rotate90()V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void

    .line 53
    :array_0
    .array-data 8
        0x51766b1fbc8feebaL    # 2.721976954846813E84
        0x2fb9132bd7422ca0L    # 8.459021748017702E-79
        0x18d5a85e558947f9L    # 4.860879478641166E-189
        0x4d18fc6a5b8354afL    # 2.569660836939238E63
        0x4a7c828f47a22083L    # 6.666785582748325E50
        0x53a49b062a4d33efL    # 8.596331066433864E94
        0x4aae06122406ed22L    # 5.616602574894694E51
    .end array-data
.end method

.method public rotate180()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/zxing/common/BitArray;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/zxing/common/BitArray;

    .line 9
    .line 10
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    div-int/lit8 v2, v2, 0x2

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v3, v0}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 29
    .line 30
    add-int/lit8 v4, v4, -0x1

    .line 31
    .line 32
    sub-int/2addr v4, v3

    .line 33
    invoke-virtual {p0, v4, v1}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v4, v0}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public rotate90()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 4
    .line 5
    add-int/lit8 v2, v0, 0x1f

    .line 6
    .line 7
    div-int/lit8 v2, v2, 0x20

    .line 8
    .line 9
    mul-int v3, v2, v1

    .line 10
    .line 11
    new-array v3, v3, [I

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_0
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 16
    .line 17
    if-ge v5, v6, :cond_2

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    :goto_1
    iget v7, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 21
    .line 22
    if-ge v6, v7, :cond_1

    .line 23
    .line 24
    iget v7, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 25
    .line 26
    mul-int v7, v7, v5

    .line 27
    .line 28
    div-int/lit8 v8, v6, 0x20

    .line 29
    .line 30
    add-int/2addr v8, v7

    .line 31
    iget-object v7, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 32
    .line 33
    aget v7, v7, v8

    .line 34
    .line 35
    and-int/lit8 v8, v6, 0x1f

    .line 36
    .line 37
    ushr-int/2addr v7, v8

    .line 38
    const/4 v8, 0x1

    .line 39
    and-int/2addr v7, v8

    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    add-int/lit8 v7, v1, -0x1

    .line 43
    .line 44
    sub-int/2addr v7, v6

    .line 45
    mul-int v7, v7, v2

    .line 46
    .line 47
    div-int/lit8 v9, v5, 0x20

    .line 48
    .line 49
    add-int/2addr v9, v7

    .line 50
    aget v7, v3, v9

    .line 51
    .line 52
    and-int/lit8 v10, v5, 0x1f

    .line 53
    .line 54
    shl-int/2addr v8, v10

    .line 55
    or-int/2addr v7, v8

    .line 56
    aput v7, v3, v9

    .line 57
    .line 58
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 65
    .line 66
    iput v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 67
    .line 68
    iput v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 69
    .line 70
    iput-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 71
    .line 72
    return-void
.end method

.method public set(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 2
    .line 3
    mul-int p2, p2, v0

    .line 4
    .line 5
    div-int/lit8 v0, p1, 0x20

    .line 6
    .line 7
    add-int/2addr v0, p2

    .line 8
    iget-object p2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 9
    .line 10
    aget v1, p2, v0

    .line 11
    .line 12
    and-int/lit8 p1, p1, 0x1f

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    shl-int p1, v2, p1

    .line 16
    .line 17
    or-int/2addr p1, v1

    .line 18
    aput p1, p2, v0

    .line 19
    .line 20
    return-void
.end method

.method public setRegion(IIII)V
    .locals 7

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p2, :cond_4

    .line 4
    .line 5
    if-ltz p1, :cond_4

    .line 6
    .line 7
    if-lt p4, v1, :cond_3

    .line 8
    .line 9
    if-lt p3, v1, :cond_3

    .line 10
    .line 11
    add-int/2addr p3, p1

    .line 12
    add-int/2addr p4, p2

    .line 13
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 14
    .line 15
    if-gt p4, v2, :cond_2

    .line 16
    .line 17
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 18
    .line 19
    if-gt p3, v2, :cond_2

    .line 20
    .line 21
    :goto_0
    if-ge p2, p4, :cond_1

    .line 22
    .line 23
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 24
    .line 25
    mul-int v0, v0, p2

    .line 26
    .line 27
    move v2, p1

    .line 28
    :goto_1
    if-ge v2, p3, :cond_0

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 31
    .line 32
    div-int/lit8 v4, v2, 0x20

    .line 33
    .line 34
    add-int/2addr v4, v0

    .line 35
    aget v5, v3, v4

    .line 36
    .line 37
    and-int/lit8 v6, v2, 0x1f

    .line 38
    .line 39
    shl-int v6, v1, v6

    .line 40
    .line 41
    or-int/2addr v5, v6

    .line 42
    aput v5, v3, v4

    .line 43
    .line 44
    add-int/2addr v2, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/2addr p2, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array p3, v0, [J

    .line 54
    .line 55
    fill-array-data p3, :array_0

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array p3, v0, [J

    .line 74
    .line 75
    fill-array-data p3, :array_1

    .line 76
    .line 77
    .line 78
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    const/4 p3, 0x5

    .line 94
    new-array p3, p3, [J

    .line 95
    .line 96
    fill-array-data p3, :array_2

    .line 97
    .line 98
    .line 99
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    nop

    .line 111
    :array_0
    .array-data 8
        -0x661904f84f182966L
        0x43e65b069b69471aL    # 1.2887108450168394E19
        -0x525574d19f7bb4b3L    # -1.0424431071623399E-88
        0x47fb9a266ddaa7ccL    # 5.870327846001973E38
        0x36952dd8a9c2814cL    # 9.274444519662862E-46
        -0x25dc95311babd31L
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
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
    :array_1
    .array-data 8
        -0x5fbd31d3b347021L    # -5.722248954915464E279
        0x7b7d23bd5401c671L    # 6.932974289475988E286
        0x6a22ee62f1b3dd5dL    # 1.854834526932045E203
        0x7904430c42dc9453L    # 8.768924914520072E274
        -0x7ea32324f9a16dd1L    # -4.208831837198759E-302
        0x613bfb0efa4c1993L    # 2.4586473638200273E160
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_2
    .array-data 8
        0x7c2bfc31c0e060b2L    # 1.3636196010300315E290
        0xc62a5353b52a179L
        0x1d8e7f01ed0d9bdaL    # 2.585812550771264E-166
        -0x7cad4268921fe9a3L
        -0x5677395fc9ff71a7L
    .end array-data
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 6
    .line 7
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 8
    .line 9
    mul-int p1, p1, v1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        0x40ae302a736c0dc3L    # 3864.082911850624
        -0x4c3123f6199b5f25L    # -3.8407860429777206E-59
    .end array-data

    :array_1
    .array-data 8
        0x5e52ad8ec98e8629L    # 2.332315783583429E146
        -0x6544f1efbdb53316L
    .end array-data
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 8
        0x1a8c3701c90a6ab0L
        -0x2ec62e8c2a0265ecL    # -1.9592251182994698E83
    .end array-data
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unset(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 2
    .line 3
    mul-int p2, p2, v0

    .line 4
    .line 5
    div-int/lit8 v0, p1, 0x20

    .line 6
    .line 7
    add-int/2addr v0, p2

    .line 8
    iget-object p2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 9
    .line 10
    aget v1, p2, v0

    .line 11
    .line 12
    and-int/lit8 p1, p1, 0x1f

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    shl-int p1, v2, p1

    .line 16
    .line 17
    not-int p1, p1

    .line 18
    and-int/2addr p1, v1

    .line 19
    aput p1, p2, v0

    .line 20
    .line 21
    return-void
.end method

.method public xor(Lcom/google/zxing/common/BitMatrix;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 2
    .line 3
    iget v1, p1, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 8
    .line 9
    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_2

    .line 12
    .line 13
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 14
    .line 15
    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    new-instance v1, Lcom/google/zxing/common/BitArray;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 27
    .line 28
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 31
    .line 32
    mul-int v3, v3, v2

    .line 33
    .line 34
    invoke-virtual {p1, v2, v1}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v5, 0x0

    .line 43
    :goto_1
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 44
    .line 45
    if-ge v5, v6, :cond_0

    .line 46
    .line 47
    iget-object v6, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 48
    .line 49
    add-int v7, v3, v5

    .line 50
    .line 51
    aget v8, v6, v7

    .line 52
    .line 53
    aget v9, v4, v5

    .line 54
    .line 55
    xor-int/2addr v8, v9

    .line 56
    aput v8, v6, v7

    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v1, 0x6

    .line 70
    new-array v1, v1, [J

    .line 71
    .line 72
    fill-array-data v1, :array_0

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    nop

    .line 87
    :array_0
    .array-data 8
        0x3e298cac3fc53a92L    # 2.974353650670065E-9
        -0x2b4a87ff92202d0eL    # -1.1739388330508161E100
        -0x34cde2cfe386f8e9L    # -1.734977986259011E54
        0x3380f9032a60fe64L    # 1.320267496698358E-60
        0xc17dcef31a0f279L
        -0x4cc6b6249a85a233L    # -6.147294788300751E-62
    .end array-data
.end method
