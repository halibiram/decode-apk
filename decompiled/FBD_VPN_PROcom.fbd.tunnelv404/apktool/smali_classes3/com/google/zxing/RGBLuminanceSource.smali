.class public final Lcom/google/zxing/RGBLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "SourceFile"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final luminances:[B

.field private final top:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 2
    iput p1, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 3
    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 5
    iput v0, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    mul-int p1, p1, p2

    .line 6
    new-array p2, p1, [B

    iput-object p2, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    :goto_0
    if-ge v0, p1, :cond_0

    .line 7
    aget p2, p3, v0

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x7

    and-int/lit16 v2, v2, 0x1fe

    and-int/lit16 p2, p2, 0xff

    .line 8
    iget-object v3, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x4

    int-to-byte p2, v1

    aput-byte p2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>([BIIIIII)V
    .locals 0

    .line 9
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_0

    add-int/2addr p7, p5

    if-gt p7, p3, :cond_0

    .line 10
    iput-object p1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 11
    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 12
    iput p3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    .line 13
    iput p4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 14
    iput p5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x7

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x7f125d2475fdff7dL    # -3.376263691484049E-304
        0x777b66ba7817c22cL    # 3.5341669544841177E267
        0x3624603cf90d7348L    # 6.970888657108829E-48
        -0x283f72dbf12478dbL    # -5.09496612835669E114
        0x158275c7d37ca25cL    # 4.599880492686132E-205
        -0x7ef304613b879ddbL
        -0x5bec9a6fffb0e092L    # -6.671606742212635E-135
    .end array-data
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/zxing/RGBLuminanceSource;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 6
    .line 7
    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    .line 8
    .line 9
    iget v0, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 10
    .line 11
    add-int v4, v0, p1

    .line 12
    .line 13
    iget p1, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    .line 14
    .line 15
    add-int v5, p1, p2

    .line 16
    .line 17
    move-object v0, v8

    .line 18
    move v6, p3

    .line 19
    move v7, p4

    .line 20
    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/RGBLuminanceSource;-><init>([BIIIIII)V

    .line 21
    .line 22
    .line 23
    return-object v8
.end method

.method public getMatrix()[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    mul-int v3, v0, v1

    .line 21
    .line 22
    new-array v4, v3, [B

    .line 23
    .line 24
    iget v5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    .line 25
    .line 26
    mul-int v5, v5, v2

    .line 27
    .line 28
    iget v6, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 29
    .line 30
    add-int/2addr v5, v6

    .line 31
    const/4 v6, 0x0

    .line 32
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 35
    .line 36
    invoke-static {v0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    return-object v4

    .line 40
    :cond_1
    :goto_0
    if-ge v6, v1, :cond_2

    .line 41
    .line 42
    mul-int v2, v6, v0

    .line 43
    .line 44
    iget-object v3, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 45
    .line 46
    invoke-static {v3, v5, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 50
    .line 51
    add-int/2addr v5, v2

    .line 52
    add-int/lit8 v6, v6, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object v4
.end method

.method public getRow(I[B)[B
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    array-length v1, p2

    .line 16
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    :cond_0
    new-array p2, v0, [B

    .line 19
    .line 20
    :cond_1
    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    .line 21
    .line 22
    add-int/2addr p1, v1

    .line 23
    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 24
    .line 25
    mul-int p1, p1, v1

    .line 26
    .line 27
    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 28
    .line 29
    add-int/2addr p1, v1

    .line 30
    iget-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v2, 0x6

    .line 47
    new-array v2, v2, [J

    .line 48
    .line 49
    fill-array-data v2, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p2

    .line 63
    :array_0
    .array-data 8
        0x64335cede92d45beL    # 4.789059857615617E174
        -0x2c213bbf5254548eL    # -1.026829440432357E96
        -0x26c5f16926f89f35L    # -6.728565732518969E121
        0x487d4b9a934b65eaL    # 1.5949893346552261E41
        0x7d1caf11e23707f0L    # 4.579873380737058E294
        -0xfeef950dc5ba5ccL    # -6.608335920169905E231
    .end array-data
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
