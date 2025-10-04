.class public Lcom/tknetwork/tunnel/securepreferences/crypto/HashSHA;
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

.method public static hashUsingSHA256([B)[B
    .locals 2

    .line 1
    :try_start_0
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
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    new-array v1, v1, [J

    .line 31
    .line 32
    fill-array-data v1, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x37a60d0a2091a216L    # -3.5320035969821027E40
        0x7e653eaaa2c0c493L    # 7.113742694778471E300
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 8
        0x5109e226fe0f4f74L    # 2.455219264190483E82
        -0x6f5d817573c86224L
        0x4a619ac6b018ed80L    # 2.058331464090106E50
    .end array-data
.end method

.method public static hashUsingSHA512([B)[B
    .locals 2

    .line 1
    :try_start_0
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
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    new-array v1, v1, [J

    .line 31
    .line 32
    fill-array-data v1, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x2770dbacf84e1e3bL    # -3.9265696611650604E118
        -0x4b3f2e96371ceb0fL    # -1.371783795464555E-54
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 8
        -0x5020f2f13b8d116eL    # -4.190026978909938E-78
        0x3e3cdb1e252e38acL    # 6.7185444593907995E-9
        -0x1c5566fddd52dffL    # -1.115974353984074E300
    .end array-data
.end method
