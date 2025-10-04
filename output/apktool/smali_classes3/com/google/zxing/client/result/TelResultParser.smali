.class public final Lcom/google/zxing/client/result/TelResultParser;
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
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/TelResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;
    .locals 5

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

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_1

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    .line 4
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    const/16 v1, 0x3f

    .line 5
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_2

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_1
    new-instance v1, Lcom/google/zxing/client/result/TelParsedResult;

    invoke-direct {v1, p1, v0, v2}, Lcom/google/zxing/client/result/TelParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :array_0
    .array-data 8
        -0x6355ef51b18687a8L
        0x5d1bcab3495134edL    # 3.3095934189061558E140
    .end array-data

    :array_1
    .array-data 8
        0x778d77dfe96e0a7L
        -0x70591bb9b6208496L
    .end array-data

    :array_2
    .array-data 8
        0x4265ffd96c88eac9L    # 7.55894019143337E11
        -0x505c48dbea160f9fL    # -3.325497440072107E-79
    .end array-data

    :array_3
    .array-data 8
        -0x35d144eea346e31bL    # -2.2456508792030236E49
        -0x4ffe5cef43b562b2L    # -1.903948515593726E-77
    .end array-data
.end method
