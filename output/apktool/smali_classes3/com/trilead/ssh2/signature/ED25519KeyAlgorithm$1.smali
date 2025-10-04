.class Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm$1;
.super Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;->getCertificateDecoders()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm$1;->this$0:Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;

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
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v3, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    .line 29
    .line 30
    invoke-direct {v3, v2, v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/16 v5, 0x20

    .line 37
    .line 38
    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v2, p1, v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v0, v1, [J

    .line 48
    .line 49
    fill-array-data v0, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;

    .line 60
    .line 61
    invoke-direct {v0}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v1, Ljava/security/KeyPair;

    .line 77
    .line 78
    invoke-direct {v1, v0, p1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 79
    .line 80
    .line 81
    return-object v1

    .line 82
    nop

    .line 83
    :array_0
    .array-data 8
        -0x26117b19c6703fd4L    # -1.6139886644623504E125
        0x60fc0ab412ca03f2L    # 1.540010824481397E159
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_1
    .array-data 8
        -0x4bb91452147a4b93L    # -7.302931679286525E-57
        -0x5d310a3c23c0c22fL    # -5.077772890228978E-141
    .end array-data
.end method
