.class public Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;
    }
.end annotation


# instance fields
.field private final iPBKDF2_Iterations:I

.field private final iSaltSize:I

.field private final keySize:I

.field private final mAlgorithm:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

.field private final mDigestType:Lcom/tknetwork/tunnel/securepreferences/model/DigestType;

.field private final mPassword:[C


# direct methods
.method public constructor <init>([CIIILcom/tknetwork/tunnel/securepreferences/model/DigestType;Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->mPassword:[C

    .line 10
    .line 11
    iput p3, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->iPBKDF2_Iterations:I

    .line 12
    .line 13
    iput-object p5, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->mDigestType:Lcom/tknetwork/tunnel/securepreferences/model/DigestType;

    .line 14
    .line 15
    iput p4, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->iSaltSize:I

    .line 16
    .line 17
    iput-object p6, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->mAlgorithm:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 18
    .line 19
    invoke-virtual {p6}, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->getKeySizes()[I

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    array-length p3, p1

    .line 24
    const/4 p4, 0x0

    .line 25
    :goto_0
    if-ge p4, p3, :cond_1

    .line 26
    .line 27
    aget p5, p1, p4

    .line 28
    .line 29
    if-ne p2, p5, :cond_0

    .line 30
    .line 31
    iput p2, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->keySize:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 p3, 0x7

    .line 42
    new-array p3, p3, [J

    .line 43
    .line 44
    fill-array-data p3, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x55cd4fec1fe7e716L
        -0x8498ae4cdb0a355L    # -4.634432042874947E268
        -0x74c18d9338525ff0L
        0xb89376d3d0a554aL
        -0x55577b8a89460f34L
        0x38e6f17834ece1b1L    # 1.3808460569315184E-34
        0x3530534dee7cdb75L    # 1.7044521129252697E-52
    .end array-data
.end method


# virtual methods
.method public getAlgorithm()Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->mAlgorithm:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDigestType()Lcom/tknetwork/tunnel/securepreferences/model/DigestType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->mDigestType:Lcom/tknetwork/tunnel/securepreferences/model/DigestType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->keySize:I

    .line 2
    .line 3
    return v0
.end method

.method public getPBKDF2Iterations()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->iPBKDF2_Iterations:I

    .line 2
    .line 3
    return v0
.end method

.method public getPassword()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->mPassword:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public getSaltSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->iSaltSize:I

    .line 2
    .line 3
    return v0
.end method
