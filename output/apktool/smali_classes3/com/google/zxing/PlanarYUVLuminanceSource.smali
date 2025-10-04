.class public final Lcom/google/zxing/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "SourceFile"


# static fields
.field private static final THUMBNAIL_SCALE_FACTOR:I = 0x2


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 2
    .line 3
    .line 4
    add-int v0, p4, p6

    .line 5
    .line 6
    if-gt v0, p2, :cond_1

    .line 7
    .line 8
    add-int v0, p5, p7

    .line 9
    .line 10
    if-gt v0, p3, :cond_1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 13
    .line 14
    iput p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 15
    .line 16
    iput p3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 17
    .line 18
    iput p4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 19
    .line 20
    iput p5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    .line 21
    .line 22
    if-eqz p8, :cond_0

    .line 23
    .line 24
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/PlanarYUVLuminanceSource;->reverseHorizontal(II)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 p3, 0x7

    .line 33
    new-array p3, p3, [J

    .line 34
    .line 35
    fill-array-data p3, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :array_0
    .array-data 8
        0x2af1a8d81ce79917L    # 7.884625104251611E-102
        0x182c31c3a39441dcL
        0x662305a05d4058baL    # 1.0103295328234586E184
        0x4615ebc09fba5be6L    # 4.341883145397301E29
        0x41068948e88ff783L    # 184617.11355584496
        0x36e87ecaaff1559dL    # 3.432519861489803E-44
        -0x2ab54c9468370387L    # -7.475388986070154E102
    .end array-data
.end method

.method private reverseHorizontal(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 6
    .line 7
    mul-int v1, v1, v2

    .line 8
    .line 9
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 10
    .line 11
    add-int/2addr v1, v2

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, p2, :cond_1

    .line 14
    .line 15
    div-int/lit8 v3, p1, 0x2

    .line 16
    .line 17
    add-int/2addr v3, v1

    .line 18
    add-int v4, v1, p1

    .line 19
    .line 20
    add-int/lit8 v4, v4, -0x1

    .line 21
    .line 22
    move v5, v1

    .line 23
    :goto_1
    if-ge v5, v3, :cond_0

    .line 24
    .line 25
    aget-byte v6, v0, v5

    .line 26
    .line 27
    aget-byte v7, v0, v4

    .line 28
    .line 29
    aput-byte v7, v0, v5

    .line 30
    .line 31
    aput-byte v6, v0, v4

    .line 32
    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    add-int/lit8 v4, v4, -0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 41
    .line 42
    add-int/2addr v1, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 10

    .line 1
    new-instance v9, Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 6
    .line 7
    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 8
    .line 9
    iget v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 10
    .line 11
    add-int v4, v0, p1

    .line 12
    .line 13
    iget p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    .line 14
    .line 15
    add-int v5, p1, p2

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    move-object v0, v9

    .line 19
    move v6, p3

    .line 20
    move v7, p4

    .line 21
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 22
    .line 23
    .line 24
    return-object v9
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
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

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
    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    .line 25
    .line 26
    mul-int v5, v5, v2

    .line 27
    .line 28
    iget v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 29
    .line 30
    add-int/2addr v5, v6

    .line 31
    const/4 v6, 0x0

    .line 32
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

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
    iget-object v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 45
    .line 46
    invoke-static {v3, v5, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

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
    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    .line 21
    .line 22
    add-int/2addr p1, v1

    .line 23
    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 24
    .line 25
    mul-int p1, p1, v1

    .line 26
    .line 27
    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 28
    .line 29
    add-int/2addr p1, v1

    .line 30
    iget-object v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

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
        -0xdf9538f3d9001e0L    # -1.88984828163819E241
        0x739d6bc70334c097L    # 8.228372538911308E248
        -0x37877813d69b2923L    # -1.3355918091456333E41
        0x4d6b7674c45c459aL    # 9.03800592774873E64
        -0x5e1afd3a9cad3867L
        -0x78117410d5089f41L
    .end array-data
.end method

.method public getThumbnailHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    return v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    return v0
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public renderThumbnail()[I
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    mul-int v2, v0, v1

    .line 14
    .line 15
    new-array v2, v2, [I

    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 18
    .line 19
    iget v4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    .line 20
    .line 21
    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 22
    .line 23
    mul-int v4, v4, v5

    .line 24
    .line 25
    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 26
    .line 27
    add-int/2addr v4, v5

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    :goto_0
    if-ge v6, v1, :cond_1

    .line 31
    .line 32
    mul-int v7, v6, v0

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    :goto_1
    if-ge v8, v0, :cond_0

    .line 36
    .line 37
    mul-int/lit8 v9, v8, 0x2

    .line 38
    .line 39
    add-int/2addr v9, v4

    .line 40
    aget-byte v9, v3, v9

    .line 41
    .line 42
    and-int/lit16 v9, v9, 0xff

    .line 43
    .line 44
    add-int v10, v7, v8

    .line 45
    .line 46
    const v11, 0x10101

    .line 47
    .line 48
    .line 49
    mul-int v9, v9, v11

    .line 50
    .line 51
    const/high16 v11, -0x1000000

    .line 52
    .line 53
    or-int/2addr v9, v11

    .line 54
    aput v9, v2, v10

    .line 55
    .line 56
    add-int/lit8 v8, v8, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 60
    .line 61
    mul-int/lit8 v7, v7, 0x2

    .line 62
    .line 63
    add-int/2addr v4, v7

    .line 64
    add-int/lit8 v6, v6, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-object v2
.end method
