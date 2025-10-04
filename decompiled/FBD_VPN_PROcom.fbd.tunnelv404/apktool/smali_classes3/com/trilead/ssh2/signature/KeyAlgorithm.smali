.class public abstract Lcom/trilead/ssh2/signature/KeyAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Ljava/security/PublicKey;",
        "R::",
        "Ljava/security/PrivateKey;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final keyFormat:Ljava/lang/String;

.field private final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final provider:Ljava/security/Provider;

.field private final signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/security/Provider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/security/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Ljava/security/Provider;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->signatureAlgorithm:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->keyFormat:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->keyType:Ljava/lang/Class;

    .line 6
    iput-object p4, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public abstract decodePublicKey([B)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TU;"
        }
    .end annotation
.end method

.method public abstract decodeSignature([B)[B
.end method

.method public abstract encodePublicKey(Ljava/security/PublicKey;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)[B"
        }
    .end annotation
.end method

.method public abstract encodeSignature([B)[B
.end method

.method public generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTR;",
            "Ljava/security/SecureRandom;",
            ")[B"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->provider:Ljava/security/Provider;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->signatureAlgorithm:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->signatureAlgorithm:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object p1

    .line 31
    :goto_1
    new-instance p2, Ljava/io/IOException;

    .line 32
    .line 33
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v0, 0x5

    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    fill-array-data v0, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p2

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0x68d5991e046ff645L    # 1.0090507657903805E197
        -0x305a80aaab32112eL    # -4.8617741661188555E75
        -0x3cffce77577127ddL    # -5.697578300771884E14
        0x1b5061847354c8a0L
        -0x48a0c455cfce8edcL    # -5.602156401254806E-42
    .end array-data
.end method

.method public abstract getCertificateDecoders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/trilead/ssh2/crypto/CertificateDecoder;",
            ">;"
        }
    .end annotation
.end method

.method public getKeyFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->keyFormat:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public supportsKey(Ljava/security/PrivateKey;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->keyType:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public verifySignature([B[BLjava/security/PublicKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BTU;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->provider:Ljava/security/Provider;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->signatureAlgorithm:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->signatureAlgorithm:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    .line 27
    .line 28
    .line 29
    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return p1

    .line 31
    :goto_1
    new-instance p2, Ljava/io/IOException;

    .line 32
    .line 33
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v0, 0x5

    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    fill-array-data v0, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p2

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x3d35be6f8d7e2cffL    # -5.773779723971801E13
        0x76af5069af11e6ccL    # 4.930220376874285E263
        -0xca3a2f016a0fe4L
        -0x54aa485eb855599aL    # -6.205651357383786E-100
        0x7f7b559c09747a0aL    # 1.1996798127405018E306
    .end array-data
.end method
