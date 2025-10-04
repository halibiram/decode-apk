.class public final Lcom/google/zxing/common/reedsolomon/GenericGF;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;


# instance fields
.field private final expTable:[I

.field private final generatorBase:I

.field private final logTable:[I

.field private final one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

.field private final primitive:I

.field private final size:I

.field private final zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 2
    .line 3
    const/16 v1, 0x1069

    .line 4
    .line 5
    const/16 v2, 0x1000

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 12
    .line 13
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 14
    .line 15
    const/16 v1, 0x409

    .line 16
    .line 17
    const/16 v2, 0x400

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 23
    .line 24
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 25
    .line 26
    const/16 v1, 0x43

    .line 27
    .line 28
    const/16 v2, 0x40

    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 34
    .line 35
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 36
    .line 37
    const/16 v2, 0x13

    .line 38
    .line 39
    const/16 v4, 0x10

    .line 40
    .line 41
    invoke-direct {v1, v2, v4, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 45
    .line 46
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    const/16 v4, 0x11d

    .line 50
    .line 51
    const/16 v5, 0x100

    .line 52
    .line 53
    invoke-direct {v1, v4, v5, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 54
    .line 55
    .line 56
    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 57
    .line 58
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 59
    .line 60
    const/16 v2, 0x12d

    .line 61
    .line 62
    invoke-direct {v1, v2, v5, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 63
    .line 64
    .line 65
    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 66
    .line 67
    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 68
    .line 69
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 70
    .line 71
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->primitive:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    .line 9
    .line 10
    new-array p3, p2, [I

    .line 11
    .line 12
    iput-object p3, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 13
    .line 14
    new-array p3, p2, [I

    .line 15
    .line 16
    iput-object p3, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 17
    .line 18
    const/4 p3, 0x1

    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    :goto_0
    if-ge v1, p2, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 25
    .line 26
    aput v2, v3, v1

    .line 27
    .line 28
    mul-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    if-lt v2, p2, :cond_0

    .line 31
    .line 32
    xor-int/2addr v2, p1

    .line 33
    add-int/lit8 v3, p2, -0x1

    .line 34
    .line 35
    and-int/2addr v2, v3

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    :goto_1
    add-int/lit8 v1, p2, -0x1

    .line 41
    .line 42
    if-ge p1, v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 47
    .line 48
    aget v2, v2, p1

    .line 49
    .line 50
    aput p1, v1, v2

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 56
    .line 57
    filled-new-array {v0}, [I

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p0, p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 65
    .line 66
    new-instance p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 67
    .line 68
    filled-new-array {p3}, [I

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p0, p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 76
    .line 77
    return-void
.end method

.method public static addOrSubtract(II)I
    .locals 0

    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    new-array p1, p1, [I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    aput p2, p1, v0

    .line 14
    .line 15
    new-instance p2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 16
    .line 17
    invoke-direct {p2, p0, p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 18
    .line 19
    .line 20
    return-object p2

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public exp(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public getGeneratorBase()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    .line 2
    .line 3
    return v0
.end method

.method public getOne()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 2
    .line 3
    return-object v0
.end method

.method public inverse(I)I
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 8
    .line 9
    aget p1, v2, p1

    .line 10
    .line 11
    sub-int/2addr v1, p1

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    aget p1, v0, v1

    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public log(I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public multiply(II)I
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 9
    .line 10
    aget p1, v1, p1

    .line 11
    .line 12
    aget p2, v1, p2

    .line 13
    .line 14
    add-int/2addr p1, p2

    .line 15
    iget p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 16
    .line 17
    add-int/lit8 p2, p2, -0x1

    .line 18
    .line 19
    rem-int/2addr p1, p2

    .line 20
    aget p1, v0, p1

    .line 21
    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return p1
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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->primitive:I

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x2c

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 39
    .line 40
    const/16 v2, 0x29

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :array_0
    .array-data 8
        0x7c2e616a19295fd9L    # 1.480338788619451E290
        0x2be8fd8ec837374fL    # 3.6561639173668697E-97
    .end array-data
.end method
