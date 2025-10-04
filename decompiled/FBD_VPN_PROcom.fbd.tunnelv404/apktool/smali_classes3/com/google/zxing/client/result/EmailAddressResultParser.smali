.class public final Lcom/google/zxing/client/result/EmailAddressResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SourceFile"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;


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
    sput-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    return-void

    .line 23
    :array_0
    .array-data 8
        -0x17030fbdbcd5de4aL    # -5.4079585640615564E197
        0x6215ed153d3afc88L    # 3.1565970479546653E164
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 11

    .line 2
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_1

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 5
    :cond_1
    new-instance v0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct {v0, p1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x7

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3f

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_3
    :try_start_0
    invoke-static {v0}, Lcom/google/zxing/client/result/ResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 11
    sget-object v3, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 12
    :goto_1
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_8

    if-nez v0, :cond_5

    .line 13
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 14
    sget-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_5
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_3

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 16
    sget-object v4, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v2

    .line 17
    :goto_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_4

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 18
    sget-object v2, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 19
    :cond_7
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_5

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 20
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_6

    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v10, p1

    move-object v6, v0

    move-object v8, v2

    move-object v7, v3

    move-object v9, v4

    goto :goto_3

    :cond_8
    move-object v6, v0

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 21
    :goto_3
    new-instance p1, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catch_0
    return-object v2

    nop

    :array_0
    .array-data 8
        0x5c5157bf3cad6301L    # 5.042156343640637E136
        0x4335b427a8f689aeL    # 6.10905694237739E15
    .end array-data

    :array_1
    .array-data 8
        -0x59cd6fcd333cc555L
        0x7700b6164d33abe2L    # 1.6838982901305686E265
    .end array-data

    :array_2
    .array-data 8
        0x616e9464325e8cffL    # 2.149612916848043E161
        0x2a18ee4dddc02f31L    # 6.793898705212538E-106
    .end array-data

    :array_3
    .array-data 8
        0x412a9020a7d173d9L    # 870416.327769871
        0x23fe0da78d360aaaL    # 2.584250886754156E-135
    .end array-data

    :array_4
    .array-data 8
        0x5d02a82783d36cefL    # 1.1108780603555913E140
        0x3ba336563917c404L    # 2.034176427067852E-21
    .end array-data

    :array_5
    .array-data 8
        -0x69a57a4f6b0942b6L    # -5.413932930003208E-201
        -0x3e54898bb5c711a1L    # -2.3037392511119363E8
    .end array-data

    :array_6
    .array-data 8
        -0x74cfde69814916aaL    # -8.594694085394582E-255
        0x264e646a878860b4L
    .end array-data
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object p1

    return-object p1
.end method
