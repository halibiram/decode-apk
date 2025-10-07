.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x28

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/16 v3, 0x29

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    const/16 v3, 0x30

    .line 43
    .line 44
    if-lt v1, v3, :cond_3

    .line 45
    .line 46
    const/16 v3, 0x39

    .line 47
    .line 48
    if-le v1, v3, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    :goto_1
    return-object v2

    .line 58
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge p1, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x28

    .line 22
    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    invoke-static {p1, p0}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .locals 23

    const/4 v0, 0x2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    .line 4
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v5

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_b

    .line 7
    invoke-static {v4, v5}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v3

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, 0x2

    add-int v4, v19, v4

    .line 9
    invoke-static {v4, v5}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    add-int v4, v20, v4

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    move/from16 v21, v4

    const/16 v4, 0x600

    move-object/from16 v22, v15

    if-eq v0, v4, :cond_8

    const/16 v4, 0x601

    if-eq v0, v4, :cond_7

    const/16 v4, 0x61f

    if-eq v0, v4, :cond_6

    const/16 v4, 0x620

    if-eq v0, v4, :cond_5

    const/16 v4, 0x622

    if-eq v0, v4, :cond_4

    const/16 v4, 0x624

    if-eq v0, v4, :cond_3

    const/16 v4, 0x626

    if-eq v0, v4, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x2

    new-array v15, v4, [J

    fill-array-data v15, :array_0

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x22

    const/16 v4, 0x22

    goto/16 :goto_2

    :pswitch_1
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_1

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x21

    const/16 v4, 0x21

    goto/16 :goto_2

    :pswitch_2
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_2

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x20

    const/16 v4, 0x20

    goto/16 :goto_2

    :pswitch_3
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_3

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x1f

    const/16 v4, 0x1f

    goto/16 :goto_2

    :pswitch_4
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_4

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x1e

    const/16 v4, 0x1e

    goto/16 :goto_2

    :pswitch_5
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_5

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x1d

    const/16 v4, 0x1d

    goto/16 :goto_2

    :pswitch_6
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_6

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x1c

    const/16 v4, 0x1c

    goto/16 :goto_2

    :pswitch_7
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_7

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x1b

    const/16 v4, 0x1b

    goto/16 :goto_2

    :pswitch_8
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_8

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x1a

    const/16 v4, 0x1a

    goto/16 :goto_2

    :pswitch_9
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_9

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x19

    const/16 v4, 0x19

    goto/16 :goto_2

    :pswitch_a
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_a

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x18

    const/16 v4, 0x18

    goto/16 :goto_2

    :pswitch_b
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_b

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x17

    const/16 v4, 0x17

    goto/16 :goto_2

    :pswitch_c
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_c

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x16

    const/16 v4, 0x16

    goto/16 :goto_2

    :pswitch_d
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_d

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x15

    const/16 v4, 0x15

    goto/16 :goto_2

    :pswitch_e
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_e

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x14

    const/16 v4, 0x14

    goto/16 :goto_2

    :pswitch_f
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_f

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x13

    const/16 v4, 0x13

    goto/16 :goto_2

    :pswitch_10
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_10

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x12

    const/16 v4, 0x12

    goto/16 :goto_2

    :pswitch_11
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_11

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x11

    const/16 v4, 0x11

    goto/16 :goto_2

    :pswitch_12
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_12

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x10

    const/16 v4, 0x10

    goto/16 :goto_2

    :pswitch_13
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_13

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0xf

    const/16 v4, 0xf

    goto/16 :goto_2

    :pswitch_14
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_14

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0xe

    const/16 v4, 0xe

    goto/16 :goto_2

    :pswitch_15
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_15

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0xd

    const/16 v4, 0xd

    goto/16 :goto_2

    :pswitch_16
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_16

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0xc

    const/16 v4, 0xc

    goto/16 :goto_2

    :pswitch_17
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_17

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0xb

    const/16 v4, 0xb

    goto/16 :goto_2

    :pswitch_18
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_18

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0xa

    const/16 v4, 0xa

    goto/16 :goto_2

    :pswitch_19
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_19

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x9

    const/16 v4, 0x9

    goto/16 :goto_2

    :pswitch_1a
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_1a

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x8

    const/16 v4, 0x8

    goto/16 :goto_2

    :pswitch_1b
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_1b

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x7

    const/4 v4, 0x7

    goto/16 :goto_2

    :cond_2
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_1c

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x6

    const/4 v4, 0x6

    goto/16 :goto_2

    :cond_3
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_1d

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x5

    const/4 v4, 0x5

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_1e

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v4, 0x4

    goto :goto_2

    :cond_5
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_1f

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v4, 0x3

    goto :goto_2

    :cond_6
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_20

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_7
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_21

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v20, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const/4 v4, 0x2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_22

    invoke-direct {v0, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_4

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 13
    :pswitch_1c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    const/4 v4, 0x3

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const/4 v15, 0x0

    .line 15
    invoke-virtual {v3, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 16
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    :goto_3
    const/4 v0, 0x2

    goto :goto_5

    :pswitch_1d
    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v15, 0x0

    .line 17
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v3

    goto :goto_3

    :pswitch_1e
    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v15, 0x0

    .line 18
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v14, 0x2

    new-array v0, v14, [J

    fill-array-data v0, :array_23

    invoke-direct {v13, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object v14, v0

    move-object/from16 v22, v2

    move-object v13, v3

    goto :goto_3

    :pswitch_1f
    const/4 v4, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    .line 20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v14, [J

    fill-array-data v13, :array_24

    invoke-direct {v0, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :pswitch_20
    const/4 v0, 0x2

    const/4 v15, 0x0

    move-object v12, v3

    goto :goto_5

    :pswitch_21
    const/4 v0, 0x2

    const/4 v15, 0x0

    move-object v11, v3

    goto :goto_5

    :pswitch_22
    const/4 v0, 0x2

    const/4 v15, 0x0

    move-object v10, v3

    goto :goto_5

    :pswitch_23
    const/4 v0, 0x2

    const/4 v15, 0x0

    move-object v9, v3

    goto :goto_5

    :pswitch_24
    const/4 v0, 0x2

    const/4 v15, 0x0

    move-object v8, v3

    goto :goto_5

    :pswitch_25
    const/4 v0, 0x2

    const/4 v15, 0x0

    move-object v6, v3

    goto :goto_5

    :pswitch_26
    const/4 v0, 0x2

    const/4 v15, 0x0

    move-object v7, v3

    :goto_5
    move/from16 v4, v21

    move-object/from16 v15, v22

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v22, v15

    .line 22
    new-instance v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object v4, v0

    move-object/from16 v19, v1

    invoke-direct/range {v4 .. v19}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x17ecde
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17f09f
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x180b24
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x180b43
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :array_0
    .array-data 8
        0x46a2d5943ca400d2L    # 1.9100242428637717E32
        0x5574326cf551298bL    # 4.523606872373685E103
    .end array-data

    :array_1
    .array-data 8
        0x5e6fb8fdd24de832L    # 7.922404191182224E146
        0x33c0b50f8bef055fL    # 2.079391739118009E-59
    .end array-data

    :array_2
    .array-data 8
        -0x6f63c46a1c11a9b8L
        -0x8d2237e2f8b01c6L    # -1.203582074438667E266
    .end array-data

    :array_3
    .array-data 8
        0x276e0dfd5a559d78L    # 9.311150671522468E-119
        -0x2ace2b1595dbe83dL    # -2.496153783552312E102
    .end array-data

    :array_4
    .array-data 8
        0x34d4a30662603272L    # 3.366537718394762E-54
        -0x25a0c2e228360717L    # -2.114616657722647E127
    .end array-data

    :array_5
    .array-data 8
        0xa35c9102c7c5722L
        -0x1c08c2442a4504e0L    # -3.5926514455643977E173
    .end array-data

    :array_6
    .array-data 8
        -0x247cee28dead19feL    # -6.767865398083728E132
        -0x4db0bf62fefadc0dL    # -2.3184315663920658E-66
    .end array-data

    :array_7
    .array-data 8
        -0x1aa1971c8f9b1a15L    # -1.9716501317041282E180
        -0x2aea0964be26c297L    # -7.686281302734892E101
    .end array-data

    :array_8
    .array-data 8
        -0x564e6e4f4cc16452L    # -7.480853278773794E-108
        0x46d4e9600b812fbeL    # 1.6965523136321993E33
    .end array-data

    :array_9
    .array-data 8
        -0x105b9421118b940bL    # -6.192294343280251E229
        -0x4a9ee7b5c31ebc8cL    # -1.4278312317246312E-51
    .end array-data

    :array_a
    .array-data 8
        0x4d65583231915a78L    # 7.024499635453188E64
        0x4e6888df58a231cbL    # 5.291624567890153E69
    .end array-data

    :array_b
    .array-data 8
        0x6d6c8b71ea3d93c7L    # 1.2595414201269013E219
        0x6962919c83b2265cL    # 4.441716666598397E199
    .end array-data

    :array_c
    .array-data 8
        0x5bacde6de2e383ecL    # 4.098243837886929E133
        0xc13d8abbaaea6e6L
    .end array-data

    :array_d
    .array-data 8
        0x49a49caea31d72dbL    # 5.883697235518474E46
        0x4964973ea15a5a60L    # 3.6735213690232354E45
    .end array-data

    :array_e
    .array-data 8
        -0x49a81a80f9409776L    # -6.540251179477554E-47
        -0x3edfc314a9095965L    # -532085.6698505463
    .end array-data

    :array_f
    .array-data 8
        0xad9c58542eb6a69L
        -0x3d9a3d4d882ffdf3L    # -7.476863136000641E11
    .end array-data

    :array_10
    .array-data 8
        -0x2b96c56b31b372c9L    # -4.311076834155971E98
        -0x318ec8482f85fe28L    # -7.4269901796127E69
    .end array-data

    :array_11
    .array-data 8
        -0x16e124a1c089e3e0L    # -2.3065854801774214E198
        0x363ed0d89a4c1956L    # 2.1085029471160195E-47
    .end array-data

    :array_12
    .array-data 8
        -0x56ffe6bf1ac002ebL    # -3.347040535984755E-111
        -0x47fe79cfc1b8c71bL    # -6.437364721728764E-39
    .end array-data

    :array_13
    .array-data 8
        -0x737b9c638e20c329L
        0x3cf51f0f01ae758eL    # 4.689875761534352E-15
    .end array-data

    :array_14
    .array-data 8
        -0x4dd79426821c4060L    # -4.529179473598538E-67
        -0x758738cd0d6c1118L
    .end array-data

    :array_15
    .array-data 8
        0x44077890be132befL    # 5.4120345795758514E19
        -0x2fadb09ae4341d2dL    # -8.48067585882888E78
    .end array-data

    :array_16
    .array-data 8
        -0x969c74ff367998fL
        0xb89a8829f601c44L
    .end array-data

    :array_17
    .array-data 8
        0x4f71cd2f1b8d6fcbL    # 5.032404499429362E74
        0x4128539d6ad9ffcL
    .end array-data

    :array_18
    .array-data 8
        -0x734facd70044515fL    # -1.459259811085843E-247
        -0x30405e5f12b4a89fL    # -1.4307271360367792E76
    .end array-data

    :array_19
    .array-data 8
        -0x3f8035ff3b42e6f5L    # -508.6251876246103
        -0xa1e3998c9bcdcc6L    # -6.83244567791633E259
    .end array-data

    :array_1a
    .array-data 8
        0x1515dbcd0fa8b244L
        -0x2eb55e803478b913L    # -4.041791875410722E83
    .end array-data

    :array_1b
    .array-data 8
        -0x468a2f35acf95562L    # -6.72244683029445E-32
        -0x1aa76817198b69a5L    # -1.5945419675439318E180
    .end array-data

    :array_1c
    .array-data 8
        0x7d75eb265e9e62f5L    # 2.2397918231746257E296
        0x530aa00320016265L    # 1.0847236000801376E92
    .end array-data

    :array_1d
    .array-data 8
        0x4a917522996d14c6L    # 1.632912086108584E51
        -0x7a74ce02fc1cf2dcL
    .end array-data

    :array_1e
    .array-data 8
        0x5a4f60784b5bba0cL    # 1.0619824342882768E127
        -0x40fa3c830b8d3291L    # -4.1510821171010226E-5
    .end array-data

    :array_1f
    .array-data 8
        -0x3075bbadebae1b88L    # -1.4851057693241886E75
        -0x2e03bc4c03da6767L    # -8.785359537562641E86
    .end array-data

    :array_20
    .array-data 8
        -0x24facce19a957d41L    # -2.938985867752268E130
        0x10b6a464dd7d04ccL    # 3.733543611111342E-228
    .end array-data

    :array_21
    .array-data 8
        0x3a45659e92aaff11L    # 5.401349773045884E-28
        0x63cb7b0e65a2695dL    # 5.3100075799838377E172
    .end array-data

    :array_22
    .array-data 8
        0x1a83d06047726f16L    # 5.968759718278022E-181
        -0x33f2c09771951e7dL    # -2.294884004214204E58
    .end array-data

    :array_23
    .array-data 8
        0x7d25460691485e14L    # 6.793373454804803E294
        -0x58d91b9505ad52e2L    # -4.432618536710202E-120
    .end array-data

    :array_24
    .array-data 8
        0x6fb03fb29b38c4abL    # 9.854134991832769E229
        -0x32a4eae862197b80L    # -4.456419882358196E64
    .end array-data
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object p1

    return-object p1
.end method
