.class public final Lcom/google/gson/internal/JavaVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final majorJavaVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->determineMajorJavaVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/google/gson/internal/JavaVersion;->majorJavaVersion:I

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static determineMajorJavaVersion()I
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/google/gson/internal/JavaVersion;->parseMajorJavaVersion(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0

    .line 25
    :array_0
    .array-data 8
        0x75727ff1adcce7abL    # 5.55549683085435E257
        0x74086a91f1748fcaL    # 8.740697082978845E250
        -0x2f3e84f8cbd2c71aL    # -1.03634571543018E81
    .end array-data
.end method

.method private static extractBeginningInt(Ljava/lang/String;)I
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return p0

    .line 38
    :catch_0
    const/4 p0, -0x1

    .line 39
    return p0
.end method

.method public static getMajorJavaVersion()I
    .locals 1

    .line 1
    sget v0, Lcom/google/gson/internal/JavaVersion;->majorJavaVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public static isJava9OrLater()Z
    .locals 2

    .line 1
    sget v0, Lcom/google/gson/internal/JavaVersion;->majorJavaVersion:I

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private static parseDotted(Ljava/lang/String;)I
    .locals 3

    .line 1
    :try_start_0
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
    const/4 v1, 0x3

    .line 17
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x0

    .line 22
    aget-object v0, p0, v0

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    array-length v2, p0

    .line 32
    if-le v2, v1, :cond_0

    .line 33
    .line 34
    aget-object p0, p0, v1

    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return p0

    .line 41
    :cond_0
    return v0

    .line 42
    :catch_0
    const/4 p0, -0x1

    .line 43
    return p0

    .line 44
    nop

    :array_0
    .array-data 8
        -0x4294ca8618195d23L    # -7.733232048920137E-13
        0x359b7554d1cccc49L    # 1.8347410844202837E-50
    .end array-data
.end method

.method public static parseMajorJavaVersion(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/JavaVersion;->parseDotted(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lcom/google/gson/internal/JavaVersion;->extractBeginningInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :cond_0
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x6

    .line 15
    return p0

    .line 16
    :cond_1
    return v0
.end method
