.class public Lcom/trilead/ssh2/crypto/KeyMaterial;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enc_key_client_to_server:[B

.field public enc_key_server_to_client:[B

.field public initial_iv_client_to_server:[B

.field public initial_iv_server_to_client:[B

.field public integrity_key_client_to_server:[B

.field public integrity_key_server_to_client:[B


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

.method private static calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B
    .locals 7

    .line 1
    new-array v0, p5, [B

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigestLength()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int v2, p5, v1

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    sub-int/2addr v2, v3

    .line 11
    div-int/2addr v2, v1

    .line 12
    new-array v4, v2, [[B

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->reset()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p3}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByte(B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p4}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const/4 p4, 0x0

    .line 34
    aput-object p3, v4, p4

    .line 35
    .line 36
    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    aget-object v5, v4, p4

    .line 41
    .line 42
    invoke-static {v5, p4, v0, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    sub-int/2addr p5, p3

    .line 46
    :goto_0
    if-ge v3, v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    :goto_1
    if-ge v5, v3, :cond_0

    .line 56
    .line 57
    aget-object v6, v4, v5

    .line 58
    .line 59
    invoke-virtual {p0, v6}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    aput-object v5, v4, v3

    .line 70
    .line 71
    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    aget-object v6, v4, v3

    .line 76
    .line 77
    invoke-static {v6, p4, v0, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    sub-int/2addr p5, v5

    .line 81
    add-int/2addr p3, v5

    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    return-object v0
.end method

.method public static create(Ljava/lang/String;[BLjava/math/BigInteger;[BIIIIII)Lcom/trilead/ssh2/crypto/KeyMaterial;
    .locals 8

    .line 1
    new-instance v0, Lcom/trilead/ssh2/crypto/KeyMaterial;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/KeyMaterial;-><init>()V

    .line 2
    new-instance v7, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;

    move-object v1, p0

    invoke-direct {v7, p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x41

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    move v6, p5

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_client_to_server:[B

    const/16 v4, 0x42

    move-object v1, v7

    move/from16 v6, p8

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_server_to_client:[B

    const/16 v4, 0x43

    move-object v1, v7

    move v6, p4

    .line 5
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_client_to_server:[B

    const/16 v4, 0x44

    move-object v1, v7

    move v6, p7

    .line 6
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_server_to_client:[B

    const/16 v4, 0x45

    move-object v1, v7

    move v6, p6

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_client_to_server:[B

    const/16 v4, 0x46

    move-object v1, v7

    move/from16 v6, p9

    .line 8
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_server_to_client:[B

    return-object v0
.end method
