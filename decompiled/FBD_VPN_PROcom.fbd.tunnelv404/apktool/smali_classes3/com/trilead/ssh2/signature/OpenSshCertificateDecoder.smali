.class abstract Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;
.super Lcom/trilead/ssh2/crypto/CertificateDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
    }
.end annotation


# instance fields
.field private final keyAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/CertificateDecoder;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;->keyAlgorithm:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static decryptData([B[BLcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;)[B
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->getKeyLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->getBlockSize()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    new-array v3, v2, [B

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v1, v3, v4}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->createBlockCipher([B[BZ)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    array-length p2, p0

    .line 25
    new-array p2, p2, [B

    .line 26
    .line 27
    :goto_0
    array-length v0, p0

    .line 28
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    div-int/2addr v0, v1

    .line 33
    if-ge v4, v0, :cond_0

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    mul-int v0, v0, v4

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    mul-int v1, v1, v4

    .line 46
    .line 47
    invoke-interface {p1, p0, v0, p2, v1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-object p2
.end method

.method private static generateKayAndIvPbkdf2([B[BIII)[B
    .locals 0

    .line 1
    add-int/2addr p3, p4

    .line 2
    new-array p3, p3, [B

    .line 3
    .line 4
    new-instance p4, Lorg/jbcrypt/BCrypt;

    .line 5
    .line 6
    invoke-direct {p4}, Lorg/jbcrypt/BCrypt;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p4, p0, p1, p2, p3}, Lorg/jbcrypt/BCrypt;->pbkdf([B[BI[B)V

    .line 10
    .line 11
    .line 12
    return-object p3
.end method


# virtual methods
.method public createKeyPair(Lcom/trilead/ssh2/crypto/PEMStructure;)Ljava/security/KeyPair;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createKeyPair(Lcom/trilead/ssh2/crypto/PEMStructure;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 11

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x6

    .line 2
    new-instance v4, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/PEMStructure;->getData()[B

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    const/16 p1, 0xf

    .line 3
    invoke-virtual {v4, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes(I)[B

    move-result-object p1

    .line 4
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x3

    new-array v6, v6, [J

    fill-array-data v6, :array_0

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, p1, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 5
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v6

    .line 8
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v8

    if-ne v8, v1, :cond_7

    .line 9
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 10
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v8

    .line 11
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_1

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz p2, :cond_0

    .line 12
    new-instance v2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v2, v6}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 13
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v5

    .line 14
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    .line 15
    invoke-static {p1}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->getInstance(Ljava/lang/String;)Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    move-result-object p1

    .line 16
    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->getKeyLength()I

    move-result v6

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->getBlockSize()I

    move-result v7

    invoke-static {p2, v5, v2, v6, v7}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;->generateKayAndIvPbkdf2([B[BIII)[B

    move-result-object p2

    invoke-static {v8, p2, p1}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;->decryptData([B[BLcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;)[B

    move-result-object v8

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_3

    invoke-direct {p2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v2, [J

    fill-array-data p2, :array_4

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    :goto_0
    new-instance p1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {p1, v8}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 20
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p2

    .line 21
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 23
    iget-object v2, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;->keyAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;->generateKeyPair(Lcom/trilead/ssh2/packets/TypesReader;)Ljava/security/KeyPair;

    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    const/4 p1, 0x0

    .line 26
    :goto_1
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v2

    if-ge p1, v2, :cond_3

    add-int/2addr p1, v1

    .line 27
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v2

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_5

    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    return-object p2

    .line 29
    :goto_2
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_6

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 30
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_7

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    invoke-static {v1, v0, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v3, [J

    fill-array-data v0, :array_9

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v3, [J

    fill-array-data v0, :array_a

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v3, [J

    fill-array-data v0, :array_b

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        -0x2b3590602b1930b2L
        -0x1ac32100f975ae85L    # -4.67972622294068E179
        0x2fcd962fe1555fd2L    # 1.9962144737773014E-78
    .end array-data

    :array_1
    .array-data 8
        0x3a59764986d40f6aL
        0x3172e27aa161285dL    # 1.7101363501297424E-70
    .end array-data

    :array_2
    .array-data 8
        0x2cd18cddf8722557L    # 8.413659814739943E-93
        0x27a5291e3835d9fcL    # 1.048914377181678E-117
        -0x5c4829c63ea2ee2cL
        -0x42f95b8a46372968L    # -1.005525500727562E-14
        0x2ec2fb5a0d7860c6L    # 1.9542025838645176E-83
        0x57fb2117a2a17164L    # 6.680922139547545E115
        0x3751bf274b773ff0L    # 3.1831570080547994E-42
        -0x5ad6db6a4d595b2dL
    .end array-data

    :array_3
    .array-data 8
        -0x35b86f9ea64f2489L    # -6.887760663013704E49
        -0x3c0e9edcff0375b5L    # -2.0037130536473637E19
    .end array-data

    :array_4
    .array-data 8
        -0x1222823dba2fce0bL    # -1.6656737856009397E221
        -0x785ad45c606c920L
    .end array-data

    :array_5
    .array-data 8
        0x7ae1f488d84e01c2L    # 8.343657955404317E283
        -0x211e0b5b33a4061eL    # -1.1479652753510675E149
        -0x7f55652fe7ec5c30L
        0x31c8257f97bf482L
        -0x3a8d396c7b3be443L    # -3.631746328776377E26
        -0x6e73c432c73e1f5eL    # -3.81381391871073E-224
    .end array-data

    :array_6
    .array-data 8
        -0x3629074dfe5bf732L    # -5.245755532503096E47
        -0x48d02f2389628b37L    # -7.1333634191064566E-43
        -0x73e72c6b97fefea5L
        -0x1de8854e2342d0a1L    # -3.3801997044507944E164
        -0x5856074c1149ec4bL    # -1.287385647224854E-117
    .end array-data

    :array_7
    .array-data 8
        -0x4c6c1536778d2316L    # -3.0986162971145046E-60
        -0x1b8e86f46d46b64cL    # -6.91450041873388E175
        0x5b8ed237013bd959L    # 1.0938479814783147E133
        -0x6b7e4c6aff4a453aL    # -6.73043156420043E-210
    .end array-data

    :array_8
    .array-data 8
        -0x4b025cfc54903696L    # -1.9338897865923639E-53
        0x544771e409c51d31L    # 1.0015594440971838E98
        0xd11a82778702356L
        0x1f8bb876d5d85fc4L
        -0x3b43a14999389538L    # -1.3397339887510273E23
    .end array-data

    :array_9
    .array-data 8
        -0x454132455ba57600L    # -9.953189396407115E-26
        0x6779fae22bbf3849L    # 2.8938542301503083E190
        0x439014e3fe69fdbfL    # 2.897004214951239E17
        -0x5eb8bceb2f1ea829L    # -2.274049306052358E-148
        -0x36244056d36d55bdL    # -6.336677211554439E47
        0x2e3228643a9f07baL    # 3.651102149194778E-86
    .end array-data

    :array_a
    .array-data 8
        -0x7f10f00fb1f8eb31L    # -3.538730180984602E-304
        0x30b1aaeb759b4f61L    # 3.9060697436901635E-74
        0x7a0f577723ec835L
        0x5898ed1a63740333L    # 6.285706577484275E118
        -0x704947234f4cb0ffL    # -5.717052303016409E-233
        0x5fdad3c62f7de6c9L    # 5.620226859897641E153
    .end array-data

    :array_b
    .array-data 8
        -0xe16a299dab5304dL    # -5.2854099480002935E240
        0x1112ac60a3e27b74L    # 1.970631850030576E-226
        -0x44e49a135297e8f6L    # -5.665803107090429E-24
        0x3c9b01ebe8f358d4L    # 9.370110919936611E-17
        -0xc137c1ef5c54688L
        0xfbdffb0c9ea2110L    # 7.547917104570483E-233
    .end array-data
.end method

.method public abstract generateKeyPair(Lcom/trilead/ssh2/packets/TypesReader;)Ljava/security/KeyPair;
.end method

.method public getEndLine()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

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
    return-object v0

    .line 17
    :array_0
    .array-data 8
        -0x22f6828582c782e1L    # -1.5177505436449566E140
        -0x373e5494c59555e7L    # -3.078479352591167E42
        -0x27bb81a7685f40f6L    # -1.6149731258491948E117
        -0x24c4c464ae86e1c4L    # -3.020306663984479E131
        -0x765076c2dbff01d8L
        0x2603ddde810531c2L
    .end array-data
.end method

.method public getStartLine()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

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
    return-object v0

    .line 17
    :array_0
    .array-data 8
        0x393e9ddd078c75dbL    # 5.8965530528156804E-33
        0x570a10b126aff3e2L    # 1.9588876619603132E111
        -0x4efaa366364106f2L
        0x1037e82fbd1b51caL
        -0x4659b771104b13b3L    # -5.493289868199257E-31
        -0xbacbd81e0724034L
    .end array-data
.end method
