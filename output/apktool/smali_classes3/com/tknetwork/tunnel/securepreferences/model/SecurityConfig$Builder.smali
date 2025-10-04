.class public Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_AES_KEY_SIZE:I = 0x80

.field private static final DEFAULT_ALGORITHM:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

.field private static final DEFAULT_DIGEST:Lcom/tknetwork/tunnel/securepreferences/model/DigestType;

.field private static final DEFAULT_ITERATIONS:I = 0x3e8

.field private static final DEFAULT_SALT_SIZE:I = 0x20


# instance fields
.field private aesKeySize:I

.field private algorithm:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

.field private digest:Lcom/tknetwork/tunnel/securepreferences/model/DigestType;

.field private iterations:I

.field private final password:[C

.field private saltSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/securepreferences/model/DigestType;->SHA256:Lcom/tknetwork/tunnel/securepreferences/model/DigestType;

    .line 2
    .line 3
    sput-object v0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->DEFAULT_DIGEST:Lcom/tknetwork/tunnel/securepreferences/model/DigestType;

    .line 4
    .line 5
    sget-object v0, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->AES:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 6
    .line 7
    sput-object v0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->DEFAULT_ALGORITHM:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->saltSize:I

    .line 6
    .line 7
    iput v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->iterations:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->digest:Lcom/tknetwork/tunnel/securepreferences/model/DigestType;

    .line 11
    .line 12
    iput v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->aesKeySize:I

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->password:[C

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    new-array v1, v1, [J

    .line 29
    .line 30
    fill-array-data v1, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    nop

    :array_0
    .array-data 8
        -0xda66c02d4b9471L
        0x3297f6f3a7b0579aL    # 5.688950216798576E-65
        0x34f82f30fe2bf005L    # 1.5781019048199108E-53
        -0x6da9f48b0cb0a118L    # -2.439430363379798E-220
    .end array-data
.end method


# virtual methods
.method public build()Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;
    .locals 9

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->iterations:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    move v5, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x3e8

    .line 9
    .line 10
    const/16 v5, 0x3e8

    .line 11
    .line 12
    :goto_0
    iget v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->saltSize:I

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    move v6, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/16 v0, 0x20

    .line 19
    .line 20
    const/16 v6, 0x20

    .line 21
    .line 22
    :goto_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->digest:Lcom/tknetwork/tunnel/securepreferences/model/DigestType;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :goto_2
    move-object v7, v0

    .line 27
    goto :goto_3

    .line 28
    :cond_2
    sget-object v0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->DEFAULT_DIGEST:Lcom/tknetwork/tunnel/securepreferences/model/DigestType;

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :goto_3
    iget v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->aesKeySize:I

    .line 32
    .line 33
    if-eq v0, v1, :cond_3

    .line 34
    .line 35
    move v4, v0

    .line 36
    goto :goto_4

    .line 37
    :cond_3
    const/16 v0, 0x80

    .line 38
    .line 39
    const/16 v4, 0x80

    .line 40
    .line 41
    :goto_4
    iget-object v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->algorithm:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    :goto_5
    move-object v8, v0

    .line 46
    goto :goto_6

    .line 47
    :cond_4
    sget-object v0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->DEFAULT_ALGORITHM:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 48
    .line 49
    goto :goto_5

    .line 50
    :goto_6
    new-instance v0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->password:[C

    .line 53
    .line 54
    move-object v2, v0

    .line 55
    invoke-direct/range {v2 .. v8}, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;-><init>([CIIILcom/tknetwork/tunnel/securepreferences/model/DigestType;Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method

.method public setDigestType(Lcom/tknetwork/tunnel/securepreferences/model/DigestType;)Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->digest:Lcom/tknetwork/tunnel/securepreferences/model/DigestType;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEncryptionAlgorithm(Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;)Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->algorithm:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public setKeySize(I)Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->aesKeySize:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setPbkdf2Iterations(I)Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->iterations:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :array_0
    .array-data 8
        0x191e2fde0fc0965L
        0x52eb9b34c38c813fL    # 2.811748651538106E91
        0x62fd05f9863adb96L    # 6.845811853495053E168
        0x69ab02e36c5b9d62L    # 1.0337900159128595E201
        0x44119dec241b6d14L    # 8.124353982793338E19
        0x373d2d80fb318ce6L    # 1.30837553129055E-42
    .end array-data
.end method

.method public setPbkdf2SaltSize(I)Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    rem-int/lit8 v0, p1, 0x8

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig$Builder;->saltSize:I

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    new-array v1, v1, [J

    .line 18
    .line 19
    fill-array-data v1, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :array_0
    .array-data 8
        0x1c78d95a14572e52L
        0x6380229767e118ecL    # 1.948587105583076E171
        -0x37b84906e092d3edL    # -1.6139414907472845E40
        0x1cfa80e15248e5c3L
    .end array-data
.end method
