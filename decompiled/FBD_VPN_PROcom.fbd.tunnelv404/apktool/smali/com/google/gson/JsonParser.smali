.class public final Lcom/google/gson/JsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parseReader(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 8
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getStrictness()Lcom/google/gson/Strictness;

    move-result-object v2

    .line 9
    sget-object v3, Lcom/google/gson/Strictness;->LEGACY_STRICT:Lcom/google/gson/Strictness;

    if-ne v2, v3, :cond_0

    .line 10
    sget-object v3, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->setStrictness(Lcom/google/gson/Strictness;)V

    .line 11
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p0, v2}, Lcom/google/gson/stream/JsonReader;->setStrictness(Lcom/google/gson/Strictness;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 13
    :try_start_1
    new-instance v4, Lcom/google/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    .line 14
    new-instance v4, Lcom/google/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/gson/stream/JsonReader;->setStrictness(Lcom/google/gson/Strictness;)V

    .line 16
    throw v0

    nop

    :array_0
    .array-data 8
        -0x5f3909d1a2faa10aL    # -8.768295514974135E-151
        -0x424124db568598daL
        0x5eff499fd027cb0eL    # 4.000645272526744E149
        -0x2f3bfe184f8f98f1L    # -1.1861521699863528E81
        0xb4afbd41c7607a9L
    .end array-data

    :array_1
    .array-data 8
        0x1150d979d6b5bfe1L
        -0x6681453ba9fb090dL    # -7.062508879952357E-186
    .end array-data

    :array_2
    .array-data 8
        -0x61bb014ca1381fc5L    # -7.291664385357134E-163
        0x7191c12ceb1acd14L    # 1.1561315759025793E239
        -0x29e2387ee3a3735dL    # -6.829881504109139E106
        -0x6a83a3dff0eac446L    # -3.533353688391681E-205
        -0x6db33c94def74d19L    # -1.591448921971992E-220
    .end array-data

    :array_3
    .array-data 8
        0x2a0d67b6091047b0L
        0x785cbef2facf6bdeL
    .end array-data
.end method

.method public static parseReader(Ljava/io/Reader;)Lcom/google/gson/JsonElement;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 2
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseReader(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/google/gson/JsonSyntaxException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    return-object p0

    .line 5
    :goto_1
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :goto_2
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :goto_3
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :array_0
    .array-data 8
        -0x138f78f61bfae47L
        -0x304496b04aff4f09L    # -1.2398515971334465E76
        -0x54f36ffb42516b79L
        0x3fc86c83c20d94b2L    # 0.1908116052174243
        -0x71269ba606198423L
        -0x34f4efec68a6fca6L    # -3.240126460614336E53
    .end array-data
.end method

.method public static parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringReader;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseReader(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        imports = {
            "com.google.gson.JsonParser"
        }
        replacement = "JsonParser.parseReader(json)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseReader(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        imports = {
            "com.google.gson.JsonParser"
        }
        replacement = "JsonParser.parseReader(json)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseReader(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        imports = {
            "com.google.gson.JsonParser"
        }
        replacement = "JsonParser.parseString(json)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
