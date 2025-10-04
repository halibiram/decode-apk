.class final Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MinimalEncoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;,
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final A:Ljava/lang/String; = " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u00ff"

.field static final B:Ljava/lang/String;

.field private static final CODE_SHIFT:I = 0x62


# instance fields
.field private memoizedCost:[[I

.field private minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xe

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->B:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x11de8acb482f03c7L
        0x285b73530833981fL
        0x2c624e6524748111L    # 6.85630783435751E-95
        -0x2088ef386a682af2L    # -7.550253972899064E151
        -0x703d380bb401e1d6L
        0x2025e4e5f6d16b01L    # 8.164695559705332E-154
        0x4d88d282e8c2b463L    # 3.267617940390295E65
        -0xc6691a91b6734ccL    # -7.112464343518694E248
        0x642e3e154706abc9L    # 3.7399463380399375E174
        0x1b28efac8ea9525bL    # 7.692071454936007E-178
        0x66df38b824f3d349L    # 3.3961895148046773E187
        0x2c277fd388bb0b66L    # 5.500810891893375E-96
        0x23dd7ac8ea92dd17L    # 6.337295686721759E-136
        0x68611872ec227d45L    # 6.239777591755833E194
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/zxing/oned/Code128Writer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;Ljava/lang/String;)[Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/String;)[Z

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static addPattern(Ljava/util/Collection;I[I[II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[I>;I[I[II)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    aget p4, p3, p0

    .line 12
    .line 13
    add-int/lit8 p4, p4, 0x1

    .line 14
    .line 15
    aput p4, p3, p0

    .line 16
    .line 17
    :cond_0
    aget p4, p2, p0

    .line 18
    .line 19
    aget p3, p3, p0

    .line 20
    .line 21
    mul-int p1, p1, p3

    .line 22
    .line 23
    add-int/2addr p1, p4

    .line 24
    aput p1, p2, p0

    .line 25
    .line 26
    return-void
.end method

.method private canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z
    .locals 8

    .line 1
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset:[I

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    aget p2, v1, p2

    .line 12
    .line 13
    const/16 v1, 0xf4

    .line 14
    .line 15
    const/16 v2, 0xf3

    .line 16
    .line 17
    const/16 v3, 0xf2

    .line 18
    .line 19
    const/16 v4, 0xf1

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x1

    .line 23
    if-eq p2, v6, :cond_6

    .line 24
    .line 25
    const/4 v7, 0x2

    .line 26
    if-eq p2, v7, :cond_3

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq p2, v1, :cond_0

    .line 30
    .line 31
    return v5

    .line 32
    :cond_0
    if-eq v0, v4, :cond_1

    .line 33
    .line 34
    add-int/2addr p3, v6

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-ge p3, p2, :cond_2

    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->isDigit(C)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->isDigit(C)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    :cond_1
    const/4 v5, 0x1

    .line 58
    :cond_2
    return v5

    .line 59
    :cond_3
    if-eq v0, v4, :cond_4

    .line 60
    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    .line 63
    if-eq v0, v2, :cond_4

    .line 64
    .line 65
    if-eq v0, v1, :cond_4

    .line 66
    .line 67
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/16 p2, 0xe

    .line 70
    .line 71
    new-array p2, p2, [J

    .line 72
    .line 73
    fill-array-data p2, :array_0

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-ltz p1, :cond_5

    .line 88
    .line 89
    :cond_4
    const/4 v5, 0x1

    .line 90
    :cond_5
    return v5

    .line 91
    :cond_6
    if-eq v0, v4, :cond_7

    .line 92
    .line 93
    if-eq v0, v3, :cond_7

    .line 94
    .line 95
    if-eq v0, v2, :cond_7

    .line 96
    .line 97
    if-eq v0, v1, :cond_7

    .line 98
    .line 99
    const-string p1, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u00ff"

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ltz p1, :cond_8

    .line 106
    .line 107
    :cond_7
    const/4 v5, 0x1

    .line 108
    :cond_8
    return v5

    .line 109
    :array_0
    .array-data 8
        -0x1178b80f51c81ddeL    # -2.6929526720439804E224
        0x133368d6897fb4edL    # 3.518989713378684E-216
        -0x3bec9e5a744579abL    # -8.938108025663791E19
        -0x2e7264249bb8870bL    # -7.190015819951724E84
        -0x53fb286719c74e2aL    # -1.219704079291155E-96
        0x574b906f298f8699L    # 3.314467253360307E112
        0x3585998abd3019deL    # 7.216388957522034E-51
        0x5c53590e799f8b37L    # 5.625114530176435E136
        0x14a4d9c733aa1a2aL    # 3.171126559270488E-209
        -0x31a6c5fbe706472bL    # -2.7204338609365724E69
        -0x41224775d2e55095L    # -7.086004829719729E-6
        -0x302bbbbf0868138fL    # -3.6667403835770807E76
        -0x46712693f98c8b10L    # -1.901235182762404E-31
        0x7d13000ea20d5715L    # 3.033712921326871E294
    .end array-data
.end method

.method private encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 29
    iget-object v3, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    aget v3, v3, p3

    if-lez v3, :cond_0

    return v3

    .line 30
    :cond_0
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    add-int/lit8 v4, p3, 0x1

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v4, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 32
    :goto_0
    new-array v6, v0, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    aput-object v7, v6, v1

    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    aput-object v7, v6, v2

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    :goto_1
    if-gt v1, v2, :cond_7

    .line 33
    aget-object v9, v6, v1

    invoke-direct {p0, p1, v9, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 34
    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 35
    aget-object v10, v6, v1

    if-eq p2, v10, :cond_2

    .line 36
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    move-result-object v9

    const/4 v10, 0x2

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    if-nez v5, :cond_3

    .line 37
    aget-object v11, v6, v1

    invoke-direct {p0, p1, v11, v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v11

    add-int/2addr v10, v11

    :cond_3
    if-ge v10, v8, :cond_4

    move-object v3, v9

    move v8, v10

    :cond_4
    add-int/lit8 v9, v1, 0x1

    .line 38
    rem-int/2addr v9, v0

    aget-object v9, v6, v9

    if-ne p2, v9, :cond_6

    .line 39
    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-nez v5, :cond_5

    .line 40
    invoke-direct {p0, p1, p2, v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v10

    add-int/2addr v10, v0

    goto :goto_3

    :cond_5
    const/4 v10, 0x2

    :goto_3
    if-ge v10, v8, :cond_6

    move-object v3, v9

    move v8, v10

    :cond_6
    add-int/2addr v1, v2

    goto :goto_1

    .line 41
    :cond_7
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-direct {p0, p1, v1, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 42
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-eq p2, v1, :cond_8

    .line 43
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    const/4 v5, 0x2

    goto :goto_4

    :cond_8
    const/4 v5, 0x1

    .line 44
    :goto_4
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v9, 0xf1

    if-ne v6, v9, :cond_9

    const/4 v0, 0x1

    :cond_9
    add-int/2addr v0, p3

    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 46
    invoke-direct {p0, p1, v1, v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v0

    add-int/2addr v5, v0

    :cond_a
    if-ge v5, v8, :cond_b

    move-object v3, v4

    move v8, v5

    :cond_b
    if-eq v8, v7, :cond_c

    .line 47
    iget-object p1, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p1, p1, v0

    aput v8, p1, p3

    .line 48
    iget-object p1, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p1, p1, p2

    aput-object v3, p1, p3

    return v8

    .line 49
    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 8
        -0x2c52e05f64870ed6L    # -1.2149904946849642E95
        -0x776723f7b21313caL
        -0xf7ee4173efc94f0L    # -8.499860335130823E233
        -0xe1e4bf088f00b3fL    # -3.6889458285982774E240
        0x7d8e795b7650fe28L    # 6.2281053267039735E296
        0x4f92cdf30b37db2eL    # 2.126378087395597E75
    .end array-data
.end method

.method private encode(Ljava/lang/String;)[Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v2, 0x0

    const/4 v6, 0x4

    aput v6, v4, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v7, v3, [I

    aput v4, v7, v5

    aput v6, v7, v2

    const-class v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    iput-object v4, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 3
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5
    filled-new-array {v2}, [I

    move-result-object v8

    .line 6
    filled-new-array {v5}, [I

    move-result-object v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_10

    .line 8
    iget-object v12, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget-object v12, v12, v13

    aget-object v12, v12, v11

    .line 9
    sget-object v13, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    const/16 v14, 0x65

    const/16 v15, 0x64

    if-eq v13, v5, :cond_5

    if-eq v13, v3, :cond_3

    const/4 v3, 0x3

    if-eq v13, v3, :cond_1

    if-eq v13, v6, :cond_0

    goto :goto_5

    :cond_0
    const/16 v3, 0x62

    .line 10
    invoke-static {v7, v3, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_5

    .line 11
    :cond_1
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_2

    const/16 v4, 0x69

    goto :goto_1

    :cond_2
    const/16 v4, 0x63

    .line 12
    :goto_1
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    :goto_2
    move-object v4, v3

    goto :goto_5

    .line 13
    :cond_3
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_4

    const/16 v4, 0x68

    goto :goto_3

    :cond_4
    const/16 v4, 0x64

    .line 14
    :goto_3
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_2

    .line 15
    :cond_5
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_6

    const/16 v4, 0x67

    goto :goto_4

    :cond_6
    const/16 v4, 0x65

    .line 16
    :goto_4
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_2

    .line 17
    :goto_5
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    const/16 v13, 0x66

    if-ne v4, v3, :cond_8

    .line 18
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v12, 0xf1

    if-ne v3, v12, :cond_7

    .line 19
    invoke-static {v7, v13, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v11, 0x2

    .line 20
    invoke-virtual {v1, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v7, v3, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    add-int/lit8 v3, v11, 0x1

    if-ge v3, v10, :cond_f

    move v11, v3

    goto :goto_7

    .line 21
    :cond_8
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 22
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v14, v3, -0x20

    goto :goto_6

    .line 23
    :pswitch_0
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_9

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_b

    :cond_9
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_a

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_a

    goto :goto_6

    :cond_a
    const/16 v14, 0x64

    goto :goto_6

    :pswitch_1
    const/16 v14, 0x60

    goto :goto_6

    :pswitch_2
    const/16 v14, 0x61

    goto :goto_6

    :pswitch_3
    const/16 v14, 0x66

    .line 24
    :cond_b
    :goto_6
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_c

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_d

    :cond_c
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_e

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_e

    :cond_d
    if-gez v14, :cond_e

    add-int/lit8 v14, v14, 0x60

    .line 25
    :cond_e
    invoke-static {v7, v14, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    :cond_f
    :goto_7
    add-int/2addr v11, v5

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    .line 26
    iput-object v1, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    .line 27
    iput-object v1, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 28
    aget v1, v8, v2

    invoke-static {v7, v1}, Lcom/google/zxing/oned/Code128Writer;->produceResult(Ljava/util/Collection;I)[Z

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
