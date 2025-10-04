.class Lcom/trilead/ssh2/signature/RSAKeyAlgorithm$1;
.super Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;->getCertificateDecoders()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/signature/RSAKeyAlgorithm$1;->this$0:Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public generateKeyPair(Lcom/trilead/ssh2/packets/TypesReader;)Ljava/security/KeyPair;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance p1, Ljava/security/spec/RSAPublicKeySpec;

    .line 22
    .line 23
    invoke-direct {p1, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 24
    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    if-nez v8, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    new-instance v9, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 54
    .line 55
    move-object v0, v9

    .line 56
    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    new-instance v9, Ljava/security/spec/RSAPrivateKeySpec;

    .line 61
    .line 62
    invoke-direct {v9, v1, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    new-array v1, v1, [J

    .line 69
    .line 70
    fill-array-data v1, :array_0

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Ljava/security/KeyPair;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, v9}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {v1, p1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 95
    .line 96
    .line 97
    return-object v1

    .line 98
    nop

    .line 99
    :array_0
    .array-data 8
        0x5e3af75ea220fb3eL    # 8.418196965913522E145
        0x244b87c4a4714b79L    # 7.575365305660255E-134
    .end array-data
.end method
