.class public Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field md:Lcom/trilead/ssh2/crypto/digest/Digest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/digest/Digest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 3
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;

    invoke-static {p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;-><init>(Ljava/security/MessageDigest;)V

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;)V

    return-void
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x6

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        -0x14fea14cf621e67L
        -0x6d43dfaee081c6e6L    # -1.991933343836046E-218
        0x6203c7a2a2c9255dL    # 1.4238036678480342E164
        -0x4744ca7c9bb14692L    # -2.046980368788729E-35
        0x677c4de455f68206L    # 3.1527473147254946E190
        -0x3be093d228b65ed5L    # -1.449110473815702E20
    .end array-data
.end method


# virtual methods
.method public getDigest([B)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest([BI)V

    return-void
.end method

.method public getDigest([BI)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->digest([BI)V

    return-void
.end method

.method public getDigest()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest([B)V

    return-object v0
.end method

.method public getDigestLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->getDigestLength()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateBigInt(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public updateByte(B)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte p1, v0, v1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public updateByteString([B)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public updateBytes([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateUINT32(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 2
    .line 3
    shr-int/lit8 v1, p1, 0x18

    .line 4
    .line 5
    int-to-byte v1, v1

    .line 6
    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 10
    .line 11
    shr-int/lit8 v1, p1, 0x10

    .line 12
    .line 13
    int-to-byte v1, v1

    .line 14
    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 18
    .line 19
    shr-int/lit8 v1, p1, 0x8

    .line 20
    .line 21
    int-to-byte v1, v1

    .line 22
    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 26
    .line 27
    int-to-byte p1, p1

    .line 28
    invoke-interface {v0, p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
