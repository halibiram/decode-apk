.class public final Lcom/google/zxing/client/result/WifiResultParser;
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


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 14

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

    if-nez v0, :cond_0

    return-object v2

    .line 4
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_1

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-static {v0, p1, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 6
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v8

    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_5

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v6, v0

    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_6

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_7

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    .line 12
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v1, [J

    fill-array-data v9, :array_8

    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v1, [J

    fill-array-data v9, :array_9

    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v13, v2

    :goto_0
    const/4 v9, 0x0

    goto :goto_2

    .line 13
    :cond_4
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object v13, v0

    move v9, v2

    goto :goto_2

    :cond_5
    move-object v13, v0

    goto :goto_0

    .line 14
    :goto_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_a

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v10

    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_b

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v11

    .line 16
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_c

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v12

    .line 17
    new-instance p1, Lcom/google/zxing/client/result/WifiParsedResult;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_6
    :goto_3
    return-object v2

    :array_0
    .array-data 8
        -0x631adfd238d02e3bL
        -0x2744a53aedb272c5L    # -2.759231794664526E119
    .end array-data

    :array_1
    .array-data 8
        -0x5cff26aeeaee427cL    # -4.421436674448741E-140
        0x473244048e843958L    # 9.484090832604567E34
    .end array-data

    :array_2
    .array-data 8
        0x6ef1e05724828c90L    # 2.646763350383487E226
        -0x3a2923a204ac5b2aL    # -2.8300310850510627E28
    .end array-data

    :array_3
    .array-data 8
        -0x45fd97a4e1f436c5L    # -2.9042135644276193E-29
        -0x317df1c1dc9f36b7L    # -1.5576927176418515E70
    .end array-data

    :array_4
    .array-data 8
        -0x6c24cad85c4ed5f5L    # -5.051192141380751E-213
        -0x7bf77764d60fc24aL    # -3.1468480111738E-289
    .end array-data

    :array_5
    .array-data 8
        0x2490abe204aafe7fL    # 1.467960752869657E-132
        -0x6553a8342da1610L    # -1.186417816136769E278
    .end array-data

    :array_6
    .array-data 8
        0x7861779974866903L    # 7.382254770499965E271
        -0x16c165c8f747313L    # -5.334144004446787E301
    .end array-data

    :array_7
    .array-data 8
        0x659804158c4f4110L    # 2.491364354624307E181
        -0x3b3ffa9c64105510L    # -1.5131455008046293E23
    .end array-data

    :array_8
    .array-data 8
        0x5421a9182de2e173L    # 1.8861326433074628E97
        0x48cfab053c7ee601L    # 5.51735221775929E42
    .end array-data

    :array_9
    .array-data 8
        -0x178a97d7962bd131L    # -1.562680927089762E195
        0x7f9378a0e3aa7668L    # 3.418286280585898E306
    .end array-data

    :array_a
    .array-data 8
        -0x67548a6e57a3f780L
        -0x837b786123fad44L    # -1.002237067808916E269
    .end array-data

    :array_b
    .array-data 8
        0x7866bcf68884d701L    # 9.609946655415276E271
        0xd429e53bcc1b519L    # 8.52113433394078E-245
    .end array-data

    :array_c
    .array-data 8
        0x65b0e868f5f6f246L    # 7.015939334553486E181
        -0x366c5622f8f3d774L    # -2.8064726199383345E46
    .end array-data
.end method
