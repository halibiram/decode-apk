.class Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$1;
.super Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;->getCertificateDecoders()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$1;->this$0:Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;

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
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v4, Ljava/security/spec/DSAPrivateKeySpec;

    .line 22
    .line 23
    invoke-direct {v4, p1, v0, v1, v2}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/security/spec/DSAPublicKeySpec;

    .line 27
    .line 28
    invoke-direct {p1, v3, v0, v1, v2}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    new-array v1, v1, [J

    .line 35
    .line 36
    fill-array-data v1, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Ljava/security/KeyPair;

    .line 59
    .line 60
    invoke-direct {v0, p1, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        0x17e1d4ed43aa28dbL
        0x126ef8a4f63205cfL    # 6.854442729534789E-220
    .end array-data
.end method
