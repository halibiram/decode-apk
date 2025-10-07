.class public Lcom/trilead/ssh2/crypto/cipher/DESede;
.super Lcom/trilead/ssh2/crypto/cipher/DES;
.source "SourceFile"


# instance fields
.field private encrypt:Z

.field private key1:[I

.field private key2:[I

.field private key3:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/DES;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    .line 8
    .line 9
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
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
    return-object v0

    .line 17
    :array_0
    .array-data 8
        -0x6ad8e1107783b8e6L    # -9.001950956606342E-207
        0x1439bd3d7c30b12aL
    .end array-data
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(Z[B)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/crypto/cipher/DES;->generateWorkingKey(Z[BI)[I

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    .line 7
    .line 8
    xor-int/lit8 v0, p1, 0x1

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0, p2, v1}, Lcom/trilead/ssh2/crypto/cipher/DES;->generateWorkingKey(Z[BI)[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    .line 17
    .line 18
    const/16 v0, 0x10

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/crypto/cipher/DES;->generateWorkingKey(Z[BI)[I

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->encrypt:Z

    .line 27
    .line 28
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    .line 2
    .line 3
    if-eqz v1, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->encrypt:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    move v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move v5, p4

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DES;->desFunc([I[BI[BI)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    .line 18
    .line 19
    move-object v2, p3

    .line 20
    move v3, p4

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DES;->desFunc([I[BI[BI)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    .line 25
    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DES;->desFunc([I[BI[BI)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    .line 31
    .line 32
    move-object v0, p0

    .line 33
    move-object v2, p1

    .line 34
    move v3, p2

    .line 35
    move-object v4, p3

    .line 36
    move v5, p4

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DES;->desFunc([I[BI[BI)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    .line 41
    .line 42
    move-object v2, p3

    .line 43
    move v3, p4

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DES;->desFunc([I[BI[BI)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    .line 48
    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DES;->desFunc([I[BI[BI)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    new-array v2, v2, [J

    .line 59
    .line 60
    fill-array-data v2, :array_0

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        -0x1c0aea2871011009L    # -3.2594004768143766E173
        -0x79ad28de0bc4bb09L
        0x458df209dbbdd591L    # 1.1584589859975055E27
        0x7ae9689ca4deca54L    # 1.1807211748763904E284
        -0x5031e8ed52ff42b6L    # -2.030182995861136E-78
    .end array-data
.end method
