.class public final Lcom/google/zxing/common/ECIStringBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentBytes:Ljava/lang/StringBuilder;

.field private currentCharset:Ljava/nio/charset/Charset;

.field private result:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    return-void
.end method

.method private encodeCurrentBytesIfAny()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lez v0, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    new-instance v2, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    .line 82
    .line 83
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    new-instance v2, Ljava/lang/String;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public append(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public append(I)V
    .locals 0

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public appendCharacters(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/common/ECIStringBuilder;->encodeCurrentBytesIfAny()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public appendECI(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/common/ECIStringBuilder;->encodeCurrentBytesIfAny()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/zxing/common/CharacterSetECI;->getCharset()Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/common/ECIStringBuilder;->encodeCurrentBytesIfAny()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    const-wide v2, 0x118544d3c801d492L    # 2.873011607535864E-224

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-wide v2, v1, v4

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    return-object v0
.end method
