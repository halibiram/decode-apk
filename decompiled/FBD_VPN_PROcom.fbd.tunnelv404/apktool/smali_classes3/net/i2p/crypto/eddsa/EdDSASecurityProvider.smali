.class public Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;
.super Ljava/security/Provider;
.source "SourceFile"


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String; = "EdDSA"

.field private static final serialVersionUID:J = 0x10cae1f85a1b8853L


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-string v2, "str4d EdDSA security provider wrapper"

    .line 7
    .line 8
    const-string v3, "EdDSA"

    .line 9
    .line 10
    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider$1;-><init>(Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public setup()V
    .locals 2

    .line 1
    const-string v0, "KeyFactory.EdDSA"

    .line 2
    .line 3
    const-string v1, "net.i2p.crypto.eddsa.KeyFactory"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    const-string v0, "KeyPairGenerator.EdDSA"

    .line 9
    .line 10
    const-string v1, "net.i2p.crypto.eddsa.KeyPairGenerator"

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v0, "Signature.NONEwithEdDSA"

    .line 16
    .line 17
    const-string v1, "net.i2p.crypto.eddsa.EdDSAEngine"

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v0, "Alg.Alias.KeyFactory.1.3.101.112"

    .line 23
    .line 24
    const-string v1, "EdDSA"

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v0, "Alg.Alias.KeyFactory.OID.1.3.101.112"

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v0, "Alg.Alias.KeyPairGenerator.1.3.101.112"

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v0, "Alg.Alias.KeyPairGenerator.OID.1.3.101.112"

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string v0, "Alg.Alias.Signature.1.3.101.112"

    .line 45
    .line 46
    const-string v1, "NONEwithEdDSA"

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string v0, "Alg.Alias.Signature.OID.1.3.101.112"

    .line 52
    .line 53
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    return-void
.end method
