.class public abstract Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final NUMERIC:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->NUMERIC:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    return-void

    .line 23
    :array_0
    .array-data 8
        0x2bf3bcf385d756baL    # 5.7754595800916E-97
        0x1d70da224e58e16aL
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static appendPattern([ZI[IZ)I
    .locals 7

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    aget v4, p2, v2

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    :goto_1
    if-ge v5, v4, :cond_0

    .line 11
    .line 12
    add-int/lit8 v6, p1, 0x1

    .line 13
    .line 14
    aput-boolean p3, p0, p1

    .line 15
    .line 16
    add-int/lit8 v5, v5, 0x1

    .line 17
    .line 18
    move p1, v6

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/2addr v3, v4

    .line 21
    xor-int/lit8 p3, p3, 0x1

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v3
.end method

.method public static checkNumeric(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->NUMERIC:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    new-array v1, v1, [J

    .line 20
    .line 21
    fill-array-data v1, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :array_0
    .array-data 8
        -0x52357a24234b77c0L    # -4.166506455535252E-88
        0x1de72a6b32d79de9L
        -0x2a7ea730781dcdd3L    # -7.770533080311368E103
        0x6179e4b1ce45f66L
        -0x6ada5302e4308262L    # -8.439308503753773E-207
        -0x30960fae71dfe7daL    # -3.6663835572734113E74
    .end array-data
.end method

.method private static renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    add-int/2addr p3, v0

    .line 3
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    div-int p3, p1, p3

    .line 13
    .line 14
    mul-int v1, v0, p3

    .line 15
    .line 16
    sub-int v1, p1, v1

    .line 17
    .line 18
    div-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    .line 21
    .line 22
    invoke-direct {v2, p1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v0, :cond_1

    .line 28
    .line 29
    aget-boolean v4, p0, v3

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2, v1, p1, p3, p2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    add-int/2addr v1, p3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-ltz p3, :cond_3

    if-ltz p4, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->getSupportedWriteFormats()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    new-array p5, v0, [J

    fill-array-data p5, :array_0

    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    new-array p5, v0, [J

    fill-array-data p5, :array_1

    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->getDefaultMargin()I

    move-result p2

    if-eqz p5, :cond_2

    .line 8
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Ljava/util/Map;)[Z

    move-result-object p1

    .line 11
    invoke-static {p1, p3, p4, p2}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {p5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x4

    new-array p3, p3, [J

    fill-array-data p3, :array_3

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x3e09d9a46a640e27L    # -5.945801049746545E9
        0x25a37c80c7ddc330L
        0x7f44cac1955b0249L    # 1.1406758132864614E305
    .end array-data

    :array_1
    .array-data 8
        0x4dfd90d271a8ba45L    # 4.981812468625122E67
        0x74638fb3299cf1fdL    # 4.481719842597048E252
        -0x4233483ddb1c3bebL    # -5.223738508698485E-11
    .end array-data

    :array_2
    .array-data 8
        -0xa04067226a70cd3L
        0x41fe40b7f2b6d891L    # 8.120925995427873E9
        0xf1d9b033ed842bcL    # 7.274381545727285E-236
        0x77f742e4f10d568dL    # 7.680512924443443E269
        -0x3188b8adcfdf66d5L    # -1.0041436099744103E70
        -0x63246a3641556792L
    .end array-data

    :array_3
    .array-data 8
        0x64a6657210234083L    # 7.090276959338997E176
        -0x463d3a5102fce5a8L    # -1.8510819697295418E-30
        0x6e30ab5a0ad6e519L    # 6.025530423148851E222
        0x3a4a3cd7adbca541L    # 6.623318063308758E-28
    .end array-data
.end method

.method public abstract encode(Ljava/lang/String;)[Z
.end method

.method public encode(Ljava/lang/String;Ljava/util/Map;)[Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)[Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;)[Z

    move-result-object p1

    return-object p1
.end method

.method public getDefaultMargin()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getSupportedWriteFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
