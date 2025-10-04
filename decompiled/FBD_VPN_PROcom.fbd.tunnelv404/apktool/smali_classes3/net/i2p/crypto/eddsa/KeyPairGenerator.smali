.class public final Lnet/i2p/crypto/eddsa/KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "SourceFile"


# static fields
.field private static final DEFAULT_KEYSIZE:I = 0x100

.field private static final edParameters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

.field private initialized:Z

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParameters:Ljava/util/Hashtable;

    .line 7
    .line 8
    const/16 v1, 0x100

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;

    .line 15
    .line 16
    const-string v3, "Ed25519"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createNamedCurveSpec(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;
    .locals 2

    .line 1
    invoke-static {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 9
    .line 10
    const-string v1, "unknown curve name: "

    .line 11
    .line 12
    invoke-static {v1, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x100

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 16
    .line 17
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    div-int/lit8 v0, v0, 0x8

    .line 30
    .line 31
    new-array v0, v0, [B

    .line 32
    .line 33
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    .line 39
    .line 40
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 41
    .line 42
    invoke-direct {v1, v0, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    .line 46
    .line 47
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 52
    .line 53
    invoke-direct {v0, v2, v3}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>(Lnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Ljava/security/KeyPair;

    .line 57
    .line 58
    new-instance v3, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 69
    .line 70
    .line 71
    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParameters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "key type not configurable."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "unknown key type."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1

    .line 5
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->createNamedCurveSpec(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 9
    :goto_0
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialized:Z

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a EdDSAParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
