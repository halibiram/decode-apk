.class public Lcom/trilead/ssh2/signature/RSAPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->d:Ljava/math/BigInteger;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->d:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPublicKey()Lcom/trilead/ssh2/signature/RSAPublicKey;
    .locals 3

    .line 1
    new-instance v0, Lcom/trilead/ssh2/signature/RSAPublicKey;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/signature/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public toJCEKeyPair()Ljava/security/KeyPair;
    .locals 6

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
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/security/KeyPair;

    .line 21
    .line 22
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getE()Ljava/math/BigInteger;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v3, Ljava/security/spec/RSAPrivateKeySpec;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getD()Ljava/math/BigInteger;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-direct {v3, v4, v5}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        0x4c05d948cb12054cL    # 1.7143366646074365E58
        -0x78d5a1fde59c4256L    # -3.807836520960207E-274
    .end array-data
.end method
