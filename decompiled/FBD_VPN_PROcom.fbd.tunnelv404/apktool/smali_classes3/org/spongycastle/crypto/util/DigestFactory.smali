.class public final Lorg/spongycastle/crypto/util/DigestFactory;
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

.method public static createMD5()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static createSHA1()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static createSHA224()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static createSHA256()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static createSHA384()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static createSHA3_224()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    .line 2
    .line 3
    const/16 v1, 0xe0

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static createSHA3_256()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static createSHA3_384()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    .line 2
    .line 3
    const/16 v1, 0x180

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static createSHA3_512()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    .line 2
    .line 3
    const/16 v1, 0x200

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static createSHA512()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static createSHA512_224()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    .line 2
    .line 3
    const/16 v1, 0xe0

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static createSHA512_256()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
