.class public final Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INDEX_CIPHER_TEXT:I = 0x2

.field private static final INDEX_IV:I = 0x1

.field private static final INDEX_SALT:I

.field private static final SPLITTER:Ljava/lang/String;


# instance fields
.field private final mCipherService:Lcom/tknetwork/tunnel/securepreferences/crypto/CipherService;

.field private final mSalt:[B

.field private final mSecurityConfig:Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;->SPLITTER:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x1a9a35b9ec33ba87L
        0x5fe4ea4c10c5a570L    # 8.763352970121454E153
    .end array-data
.end method

.method private constructor <init>(Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;->mSecurityConfig:Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->getAlgorithm()Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->getInstance(Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;)Lcom/tknetwork/tunnel/securepreferences/crypto/CipherService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;->mCipherService:Lcom/tknetwork/tunnel/securepreferences/crypto/CipherService;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;->getSaltSize()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    new-array p1, p1, [B

    .line 21
    .line 22
    iput-object p1, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;->mSalt:[B

    .line 23
    .line 24
    new-instance v0, Ljava/security/SecureRandom;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private fromBase64(Ljava/lang/String;)[B
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public static initWithSecurityConfig(Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;)Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;
    .locals 1

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;-><init>(Lcom/tknetwork/tunnel/securepreferences/model/SecurityConfig;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private toBase64([B)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method


# virtual methods
.method public decryptFromBase64(Ljava/lang/String;)[B
    .locals 3

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
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    array-length v0, p1

    .line 21
    const/4 v2, 0x3

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    aget-object v0, p1, v0

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;->fromBase64(Ljava/lang/String;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v2, 0x1

    .line 32
    aget-object v2, p1, v2

    .line 33
    .line 34
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;->fromBase64(Ljava/lang/String;)[B

    .line 35
    .line 36
    .line 37
    aget-object p1, p1, v1

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;->fromBase64(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    new-array v1, v1, [J

    .line 49
    .line 50
    fill-array-data v1, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        0x759c016184bdde5aL    # 3.3640154998158443E258
        -0x746e0e3654335df4L    # -6.11891772266783E-253
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x61bded8892e4a722L    # 6.732144279661726E162
        -0x4d00c94bd828110L    # -2.37557311127079E285
        0x217294ecd79a345L
        -0x8a6d4ed7ab3ed1bL    # -8.11538668714217E266
    .end array-data
.end method

.method public encryptToBase64([B)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/Cryptor;->mCipherService:Lcom/tknetwork/tunnel/securepreferences/crypto/CipherService;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherService;->getIVSize()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method
