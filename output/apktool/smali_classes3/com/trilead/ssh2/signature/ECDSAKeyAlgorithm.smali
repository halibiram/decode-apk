.class public abstract Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.super Lcom/trilead/ssh2/signature/KeyAlgorithm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;,
        Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;,
        Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp521;,
        Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp384;,
        Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp256;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/trilead/ssh2/signature/KeyAlgorithm<",
        "Ljava/security/interfaces/ECPublicKey;",
        "Ljava/security/interfaces/ECPrivateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANS1_INTEGER:B = 0x2t

.field private static final ANS1_ZERO:B

.field private static final ECDSA_SHA2_PREFIX:Ljava/lang/String;


# instance fields
.field private final curveName:Ljava/lang/String;

.field private final ecParameterSpec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->ECDSA_SHA2_PREFIX:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x6ac58bf6222f958bL    # 2.1617641227508713E206
        -0x5a457c128278d86L    # -2.510176836605368E281
        0x407304369fffa828L    # 304.26333618036233
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 3
    invoke-static {v1, v0, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    const-class v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/signature/KeyAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 5
    iput-object p2, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->curveName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :array_0
    .array-data 8
        -0x18f732f779a1cde1L    # -2.1582161942041826E188
        0x23c3097b0784a7f6L    # 2.046214923273423E-136
        0x46856bd967040472L    # 5.4309412231396685E31
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/ECParameterSpec;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    return-void
.end method

.method private static decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/lit8 p1, p1, 0x7

    .line 10
    .line 11
    div-int/lit8 p1, p1, 0x8

    .line 12
    .line 13
    array-length v0, p0

    .line 14
    mul-int/lit8 v1, p1, 0x2

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    add-int/2addr v1, v2

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    aget-byte v1, p0, v0

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    if-ne v1, v3, :cond_1

    .line 25
    .line 26
    array-length v1, p0

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-array v1, p1, [B

    .line 31
    .line 32
    invoke-static {p0, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    new-array v3, p1, [B

    .line 36
    .line 37
    add-int/lit8 v4, p1, 0x1

    .line 38
    .line 39
    invoke-static {p0, v4, v3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Ljava/security/spec/ECPoint;

    .line 43
    .line 44
    new-instance p1, Ljava/math/BigInteger;

    .line 45
    .line 46
    invoke-direct {p1, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/math/BigInteger;

    .line 50
    .line 51
    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 55
    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method private static encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/lit8 p1, p1, 0x7

    .line 10
    .line 11
    div-int/lit8 p1, p1, 0x8

    .line 12
    .line 13
    mul-int/lit8 v0, p1, 0x2

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    new-array v0, v0, [B

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    const/4 v2, 0x0

    .line 21
    aput-byte v1, v0, v2

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->removeLeadingZeroes([B)[B

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    add-int/lit8 v3, p1, 0x1

    .line 36
    .line 37
    array-length v4, v1

    .line 38
    sub-int v4, v3, v4

    .line 39
    .line 40
    array-length v5, v1

    .line 41
    invoke-static {v1, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->removeLeadingZeroes([B)[B

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    add-int/2addr v3, p1

    .line 57
    array-length p1, p0

    .line 58
    sub-int/2addr v3, p1

    .line 59
    array-length p1, p0

    .line 60
    invoke-static {p0, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method private static removeLeadingZeroes([B)[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    :goto_0
    array-length v3, p0

    .line 10
    sub-int/2addr v3, v1

    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    aget-byte v3, p0, v2

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    array-length v1, p0

    .line 21
    sub-int/2addr v1, v2

    .line 22
    new-array v3, v1, [B

    .line 23
    .line 24
    invoke-static {p0, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    return-object v3
.end method

.method private static writeLength(ILjava/io/OutputStream;)V
    .locals 2

    .line 1
    const/16 v0, 0x7f

    .line 2
    .line 3
    if-gt p0, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    move v1, p0

    .line 11
    :goto_0
    if-eqz v1, :cond_1

    .line 12
    .line 13
    ushr-int/lit8 v1, v1, 0x8

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    or-int/lit16 v1, v0, 0x80

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    mul-int/lit8 v0, v0, 0x8

    .line 26
    .line 27
    :goto_1
    if-ltz v0, :cond_2

    .line 28
    .line 29
    shr-int v1, p0, v0

    .line 30
    .line 31
    int-to-byte v1, v1

    .line 32
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x8

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    return-void
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic decodePublicKey([B)Ljava/security/PublicKey;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->decodePublicKey([B)Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePublicKey([B)Ljava/security/interfaces/ECPublicKey;
    .locals 3

    const/4 v0, 0x4

    .line 2
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 3
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    .line 7
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->getEcParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    :try_start_0
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v0, p1, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 11
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x5

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 14
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x3c7fc6d380af71f1L    # 2.7561863186489648E-17
        -0x443417334ab1d0eaL    # -1.182007948805081E-20
    .end array-data

    :array_1
    .array-data 8
        0x2a2a92493aade887L
        -0x11db914ab75c4d8fL    # -3.692898200067954E222
        -0x75df4c41d068c95dL    # -6.789305793967415E-260
        0x15efdba5721a2904L    # 5.080557271769883E-203
        0x2849ad3aa3e2ee76L
    .end array-data

    :array_2
    .array-data 8
        -0x36285ad33b9b3c9cL    # -5.399612418262724E47
        0x5f47e6e55b2b909eL    # 9.780047091341125E150
        0x356e4a05ace80a5cL    # 2.5298677754100477E-51
        0x3ce8e2a4e571fbe1L    # 2.7628264806410617E-15
    .end array-data

    :array_3
    .array-data 8
        -0x14b6778279066194L    # -6.558003904685732E208
        0x10222caff0fe2e59L    # 5.853252127145443E-231
        0x645f1c023e6a3f83L    # 3.0777210705508595E175
        0x25551be470caaebcL    # 7.61322364563537E-129
        -0x3e23f6fd970252a1L    # -1.8814099559637067E9
        -0x34a728797f3f1d5cL    # -9.517523750756934E54
    .end array-data

    :array_4
    .array-data 8
        0x20a4bb0ee9edc7eL
        -0x2ed2c15e089ddbL
        -0x29f4c5dd3cca45c0L    # -3.122264998106E106
        0x61df9ed2d39ccb1L
    .end array-data
.end method

.method public decodeSignature([B)[B
    .locals 7

    .line 1
    const/4 v0, 0x6

    .line 2
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_5

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_4

    .line 30
    .line 31
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    array-length v2, p1

    .line 53
    array-length v3, v1

    .line 54
    const/4 v4, 0x0

    .line 55
    aget-byte v5, p1, v4

    .line 56
    .line 57
    and-int/lit16 v5, v5, 0x80

    .line 58
    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    :cond_0
    aget-byte v5, v1, v4

    .line 64
    .line 65
    and-int/lit16 v5, v5, 0x80

    .line 66
    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    :cond_1
    add-int/2addr v0, v2

    .line 72
    add-int/2addr v0, v3

    .line 73
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 74
    .line 75
    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 76
    .line 77
    .line 78
    const/16 v6, 0x30

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 81
    .line 82
    .line 83
    const/4 v6, 0x2

    .line 84
    sub-int/2addr v0, v6

    .line 85
    invoke-static {v0, v5}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->writeLength(ILjava/io/OutputStream;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v5}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->writeLength(ILjava/io/OutputStream;)V

    .line 92
    .line 93
    .line 94
    array-length v0, p1

    .line 95
    if-eq v2, v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {v5, p1}, Ljava/io/OutputStream;->write([B)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v3, v5}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->writeLength(ILjava/io/OutputStream;)V

    .line 107
    .line 108
    .line 109
    array-length p1, v1

    .line 110
    if-eq v3, p1, :cond_3

    .line 111
    .line 112
    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 124
    .line 125
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v0, v0, [J

    .line 128
    .line 129
    fill-array-data v0, :array_0

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    const/4 v3, 0x5

    .line 153
    new-array v3, v3, [J

    .line 154
    .line 155
    fill-array-data v3, :array_1

    .line 156
    .line 157
    .line 158
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :array_0
    .array-data 8
        -0x3c884d15eef3c75bL    # -1.0673028547920136E17
        -0x28dac1ca43295ab8L    # -6.385933777014922E111
        0x5a04b0ca913692daL    # 4.376844362426639E125
        0x1a2c72b14512b413L
        -0x33ad72d29a618967L    # -4.657979573641722E59
        -0x4d845b1f727fc71aL    # -1.6405997678944606E-65
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 8
        -0x415ffb72744e41f9L    # -4.773671870138433E-7
        -0x44192c6ac5607d02L    # -3.8669588032325553E-20
        0x4924b451df025f8bL    # 2.308614873701077E44
        0x47ca6336da3a2e7bL    # 7.015015563853422E37
        0x45e592832be8b1adL    # 5.341046252718885E28
    .end array-data
.end method

.method public bridge synthetic encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 0

    .line 1
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->encodePublicKey(Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Ljava/security/interfaces/ECPublicKey;)[B
    .locals 3

    .line 2
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object p1

    .line 3
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->getCurveName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 6
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 7
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public encodeSignature([B)[B
    .locals 3

    .line 1
    new-instance v0, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    .line 2
    .line 3
    new-instance v1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    array-length v1, p1

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, p1, v2, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public getCurveName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->curveName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEcParameterSpec()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public supportsKey(Ljava/security/PrivateKey;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->supportsKey(Ljava/security/PrivateKey;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->getEcParameterSpec()Ljava/security/spec/ECParameterSpec;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ne p1, v0, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    :cond_1
    return v1
.end method
