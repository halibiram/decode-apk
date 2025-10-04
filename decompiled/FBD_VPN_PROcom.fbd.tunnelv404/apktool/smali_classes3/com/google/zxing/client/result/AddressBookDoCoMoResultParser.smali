.class public final Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static parseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x2c

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v2, v0, 0x1

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x20

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_0
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 24

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    .line 4
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_1

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    const/4 v4, 0x0

    .line 5
    aget-object v1, v1, v4

    invoke-static {v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_2

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 7
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v2, [J

    fill-array-data v7, :array_3

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 8
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v2, [J

    fill-array-data v7, :array_4

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 9
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v2, [J

    fill-array-data v7, :array_5

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v4}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 10
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_6

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 11
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_7

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v6}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    .line 12
    invoke-static {v4, v5}, Lcom/google/zxing/client/result/ResultParser;->isStringOfDigits(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v20, v3

    goto :goto_0

    :cond_2
    move-object/from16 v20, v4

    .line 13
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_8

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_9

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v6}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 15
    new-instance v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-object v7, v0

    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v7 .. v23}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :array_0
    .array-data 8
        -0x1ffd88e6227cd606L    # -3.0947296269341595E154
        0x113578035be71a88L    # 9.062563367039927E-226
    .end array-data

    :array_1
    .array-data 8
        -0x32b61dfdec042ef5L    # -2.1295169050922842E64
        -0x77fb4b505220dcadL    # -4.899209728504085E-270
    .end array-data

    :array_2
    .array-data 8
        -0x4b7a7054f7ad54f9L    # -1.0991673244339436E-55
        -0x3bfc77f785cf17aeL    # -4.503629454249101E19
    .end array-data

    :array_3
    .array-data 8
        0x5870e65bc48b6c20L    # 1.065420019721279E118
        0x76ad89535cdf31b8L    # 4.650334573306381E263
    .end array-data

    :array_4
    .array-data 8
        -0x5d32e2c7b558cc04L
        0x6b65df99bb462545L    # 2.2472121961286372E209
    .end array-data

    :array_5
    .array-data 8
        -0x6d40320fbfb104bdL
        -0x3d3f046171ebf3bfL    # -3.734576589416851E13
    .end array-data

    :array_6
    .array-data 8
        0x57fbaace0773ae4dL    # 6.813396451782144E115
        0x653011e389cdf12L
    .end array-data

    :array_7
    .array-data 8
        -0x45a9c5750c356ecL
        0x636bce9e79b4035bL    # 8.395437747101456E170
    .end array-data

    :array_8
    .array-data 8
        0x421173b69b755eceL    # 1.8738947805342583E10
        0x66df4e99f01ba8c5L    # 3.405487406668527E187
    .end array-data

    :array_9
    .array-data 8
        -0x3ffa2b4a10404b57L    # -2.728862641370672
        0x33c021858225b859L    # 2.0076621477674973E-59
    .end array-data
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
