.class public Lcom/trilead/ssh2/util/Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parseTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-ge v2, v4, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, p1, :cond_0

    .line 16
    .line 17
    add-int/2addr v3, v0

    .line 18
    :cond_0
    add-int/2addr v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    new-array v2, v3, [Ljava/lang/String;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_1
    if-ge v4, v3, :cond_4

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-lt v5, v6, :cond_2

    .line 31
    .line 32
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v7, v0, [J

    .line 35
    .line 36
    const-wide v8, -0xad05407bf3f3cefL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    aput-wide v8, v7, v1

    .line 42
    .line 43
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    aput-object v6, v2, v4

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(II)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const/4 v7, -0x1

    .line 58
    if-ne v6, v7, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    :cond_3
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    aput-object v5, v2, v4

    .line 69
    .line 70
    add-int/lit8 v5, v6, 0x1

    .line 71
    .line 72
    :goto_2
    add-int/2addr v4, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    return-object v2
.end method
