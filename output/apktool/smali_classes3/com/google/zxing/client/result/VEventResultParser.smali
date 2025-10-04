.class public final Lcom/google/zxing/client/result/VEventResultParser;
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

.method private static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 24
    :goto_1
    return-object p0
.end method

.method private static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    new-array v0, p1, [Ljava/lang/String;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, p1, :cond_1

    .line 24
    .line 25
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    aput-object v3, v0, v2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object v0

    .line 43
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method private static stripMailto(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v2, v0, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v0, v0, [J

    .line 27
    .line 28
    fill-array-data v0, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    :cond_0
    const/4 v0, 0x7

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :cond_1
    return-object p0

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        -0x3edc6c00dcaecbe8L    # -641535.5689789085
        0x25a561b6888c204cL
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_1
    .array-data 8
        -0x53c08639f0bdab3L
        0x14d39e0d4a716eb8L    # 2.386845136303039E-208
    .end array-data
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;
    .locals 18

    const/4 v0, 0x2

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-gez v2, :cond_0

    return-object v4

    .line 4
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_1

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_2

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v4

    .line 6
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_3

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_4

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_5

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_6

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 10
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_7

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    if-eqz v12, :cond_2

    const/4 v5, 0x0

    .line 11
    :goto_0
    array-length v13, v12

    if-ge v5, v13, :cond_2

    .line 12
    aget-object v13, v12, v5

    invoke-static {v13}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_2
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_8

    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_9

    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    move-wide v14, v0

    move-wide/from16 v16, v14

    goto :goto_1

    :cond_3
    const/16 v1, 0x3b

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4

    return-object v4

    .line 16
    :cond_4
    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v16, v0

    move-wide v14, v2

    .line 18
    :goto_1
    :try_start_1
    new-instance v0, Lcom/google/zxing/client/result/CalendarParsedResult;

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    return-object v4

    nop

    :array_0
    .array-data 8
        -0x65d9d5edffacde38L
        -0x56d98293b811ea3fL
        -0x7411bbce6a03d65bL    # -3.3025859800083083E-251
    .end array-data

    :array_1
    .array-data 8
        -0x6fd7de9cbf9692acL    # -7.771381483098123E-231
        0x154b123c5aec4c97L
    .end array-data

    :array_2
    .array-data 8
        0x5610b4c064140c29L    # 3.831532698545803E106
        0x6a4b7f62a164f2a8L    # 1.0776602200586297E204
    .end array-data

    :array_3
    .array-data 8
        -0x9cd85e75940043L
        0x1ae78a31c68120ddL
    .end array-data

    :array_4
    .array-data 8
        0x524a2ee0c2693e42L    # 2.6042945027724366E88
        0x2abb3bdf193aca61L    # 7.599602884122797E-103
    .end array-data

    :array_5
    .array-data 8
        -0x4bca8fd073eb9b18L    # -3.4153063652972576E-57
        0x1d3e08fab8338858L    # 7.958498865536239E-168
    .end array-data

    :array_6
    .array-data 8
        0xe439f3e80698ac7L    # 5.885424408241798E-240
        0x5c9afe69e7bc84a9L    # 1.25568906811053E138
        -0x6c9fef85ff430e82L    # -2.330003539015401E-215
    .end array-data

    :array_7
    .array-data 8
        0x62ae6b6149f6f22cL    # 2.2422240935798536E167
        0x2d308a76b8da8b4bL    # 5.075043545933099E-91
    .end array-data

    :array_8
    .array-data 8
        0xaaa5acbfa2657e6L    # 2.74252995627155E-257
        0x530cb2a61426a324L    # 1.169170921797992E92
        -0x51e5ea059f368eb8L    # -1.3113127341751218E-86
    .end array-data

    :array_9
    .array-data 8
        -0x3c1008ce68c1e66L    # -3.020837821995754E290
        -0x6bbd966e7b51e9f0L    # -4.375451753380531E-211
    .end array-data
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VEventResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;

    move-result-object p1

    return-object p1
.end method
