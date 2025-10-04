.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cachedGenerators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/common/reedsolomon/GenericGFPoly;",
            ">;"
        }
    .end annotation
.end field

.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 12
    .line 13
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    filled-new-array {v2}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, p1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_0
    if-gt v2, p1, :cond_0

    .line 25
    .line 26
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 29
    .line 30
    add-int/lit8 v5, v2, -0x1

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    add-int/2addr v6, v5

    .line 37
    invoke-virtual {v4, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->exp(I)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    filled-new-array {v1, v5}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {v3, v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 67
    .line 68
    return-object p1
.end method


# virtual methods
.method public encode([II)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    sub-int/2addr v1, p2

    .line 6
    if-lez v1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-array v3, v1, [I

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {p1, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 21
    .line 22
    invoke-direct {v5, v6, v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, p2, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->divide(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    aget-object v2, v2, v0

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficients()[I

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    array-length v3, v2

    .line 40
    sub-int/2addr p2, v3

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-ge v3, p2, :cond_0

    .line 43
    .line 44
    add-int v5, v1, v3

    .line 45
    .line 46
    aput v4, p1, v5

    .line 47
    .line 48
    add-int/2addr v3, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    add-int/2addr v1, p2

    .line 51
    array-length p2, v2

    .line 52
    invoke-static {v2, v4, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_0

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    const/4 v0, 0x5

    .line 82
    new-array v0, v0, [J

    .line 83
    .line 84
    fill-array-data v0, :array_1

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    nop

    .line 99
    :array_0
    .array-data 8
        -0x3221edf91ab27ef1L    # -1.266713840619848E67
        -0x57d13b6c44bf949bL
        0x3a1a54158126d8d0L    # 8.307794948505222E-29
        0x1296bf98c79e32a7L
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 8
        0x411b5a044ea61671L    # 448129.07680544915
        0x1e4817035bd50585L    # 8.366566388343707E-163
        -0x1c925cbacd81bc77L    # -8.94814782051193E170
        0x44593abb3aee4780L    # 1.8616025716506388E21
        -0x31df58a9369d7efeL    # -2.244910006719539E68
    .end array-data
.end method
