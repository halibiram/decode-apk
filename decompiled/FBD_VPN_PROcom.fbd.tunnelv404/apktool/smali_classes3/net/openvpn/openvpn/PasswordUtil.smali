.class public Lnet/openvpn/openvpn/PasswordUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PasswordUtil"


# instance fields
.field private cipherName:Ljava/lang/String;

.field private ivParms:Ljavax/crypto/spec/IvParameterSpec;

.field private mSettings:Landroid/content/SharedPreferences;

.field private prefPrefix:Ljava/lang/String;

.field private salt:[B

.field private secret:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "pwdv1"

    .line 5
    .line 6
    iput-object v0, p0, Lnet/openvpn/openvpn/PasswordUtil;->prefPrefix:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lnet/openvpn/openvpn/PasswordUtil;->mSettings:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/PasswordUtil;->regenerate(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private check_salt()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnet/openvpn/openvpn/PasswordUtil;->get_salt()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lnet/openvpn/openvpn/PasswordUtil;->salt:[B

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lnet/openvpn/openvpn/PasswordUtil;->regenerate(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private de(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lnet/openvpn/openvpn/PasswordUtil;->check_salt()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lnet/openvpn/openvpn/PasswordUtil;->secret:Ljavax/crypto/SecretKey;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lnet/openvpn/openvpn/PasswordUtil;->prefPrefix:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lnet/openvpn/openvpn/PasswordUtil;->cipherName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lnet/openvpn/openvpn/PasswordUtil;->secret:Ljavax/crypto/SecretKey;

    .line 26
    .line 27
    iget-object v2, p0, Lnet/openvpn/openvpn/PasswordUtil;->ivParms:Ljavax/crypto/spec/IvParameterSpec;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "UTF-8"

    .line 40
    .line 41
    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :catch_0
    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/PasswordUtil;->regenerate(Z)V

    .line 47
    .line 48
    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method private en(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lnet/openvpn/openvpn/PasswordUtil;->check_salt()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lnet/openvpn/openvpn/PasswordUtil;->secret:Ljavax/crypto/SecretKey;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lnet/openvpn/openvpn/PasswordUtil;->prefPrefix:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_0
    iget-object v1, p0, Lnet/openvpn/openvpn/PasswordUtil;->cipherName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lnet/openvpn/openvpn/PasswordUtil;->secret:Ljavax/crypto/SecretKey;

    .line 22
    .line 23
    iget-object v3, p0, Lnet/openvpn/openvpn/PasswordUtil;->ivParms:Ljavax/crypto/spec/IvParameterSpec;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "UTF-8"

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-object p1

    .line 44
    :catch_0
    invoke-virtual {p0, v0}, Lnet/openvpn/openvpn/PasswordUtil;->regenerate(Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method private generate_salt()V
    .locals 4

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    new-instance v1, Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lnet/openvpn/openvpn/PasswordUtil;->mSettings:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "settings"

    .line 20
    .line 21
    const-string v3, "entropy"

    .line 22
    .line 23
    invoke-direct {p0, v2, v3}, Lnet/openvpn/openvpn/PasswordUtil;->key_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private get_salt()[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lnet/openvpn/openvpn/PasswordUtil;->mSettings:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v2, "settings"

    .line 5
    .line 6
    const-string v3, "entropy"

    .line 7
    .line 8
    invoke-direct {p0, v2, v3}, Lnet/openvpn/openvpn/PasswordUtil;->key_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    :cond_0
    return-object v0
.end method

.method private key_prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lnet/openvpn/openvpn/PasswordUtil;->prefPrefix:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    iget-object p1, p0, Lnet/openvpn/openvpn/PasswordUtil;->prefPrefix:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private key_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/PasswordUtil;->prefPrefix:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, "."

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lnet/openvpn/openvpn/PasswordUtil;->mSettings:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lnet/openvpn/openvpn/PasswordUtil;->key_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lnet/openvpn/openvpn/PasswordUtil;->de(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/PasswordUtil;->regenerate(Z)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-object v0
.end method

.method public regenerate(Z)V
    .locals 8

    .line 1
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 2
    .line 3
    iput-object v0, p0, Lnet/openvpn/openvpn/PasswordUtil;->cipherName:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const-string v2, "It was a bright cold day in April, and the clocks were striking thirteen. Winston Smith, his chin nuzzled into his breast in an effort to escape the vile wind, slipped quickly through the glass doors of Victory Mansions, though not quickly enough to prevent a swirl of gritty dust from entering along with him."

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput-object v3, p0, Lnet/openvpn/openvpn/PasswordUtil;->salt:[B

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lnet/openvpn/openvpn/PasswordUtil;->get_salt()[B

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iput-object v4, p0, Lnet/openvpn/openvpn/PasswordUtil;->salt:[B

    .line 24
    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lnet/openvpn/openvpn/PasswordUtil;->salt:[B

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0, v3}, Lnet/openvpn/openvpn/PasswordUtil;->remove(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lnet/openvpn/openvpn/PasswordUtil;->generate_salt()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lnet/openvpn/openvpn/PasswordUtil;->get_salt()[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lnet/openvpn/openvpn/PasswordUtil;->salt:[B

    .line 42
    .line 43
    :cond_2
    iget-object p1, p0, Lnet/openvpn/openvpn/PasswordUtil;->salt:[B

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    :try_start_0
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 48
    .line 49
    const-string v4, "PBKDF2WithHmacSHA1"

    .line 50
    .line 51
    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v6, p0, Lnet/openvpn/openvpn/PasswordUtil;->salt:[B

    .line 62
    .line 63
    const/16 v7, 0x80

    .line 64
    .line 65
    invoke-direct {v5, v2, v6, v0, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Lnet/openvpn/openvpn/PasswordUtil;->cipherName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {p1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lnet/openvpn/openvpn/PasswordUtil;->secret:Ljavax/crypto/SecretKey;

    .line 82
    .line 83
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    .line 84
    .line 85
    invoke-direct {p1, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lnet/openvpn/openvpn/PasswordUtil;->ivParms:Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    return-void

    .line 91
    :catch_0
    :cond_3
    iput-object v3, p0, Lnet/openvpn/openvpn/PasswordUtil;->secret:Ljavax/crypto/SecretKey;

    .line 92
    .line 93
    iput-object v3, p0, Lnet/openvpn/openvpn/PasswordUtil;->prefPrefix:Ljava/lang/String;

    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :array_0
    .array-data 1
        -0x2at
        -0x1ft
        -0x75t
        0x65t
        0x19t
        0x77t
        0x7ft
        0x25t
        0x79t
        -0x36t
        0x2et
        0x31t
        -0x23t
        -0x30t
        -0x48t
        0x61t
    .end array-data
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lnet/openvpn/openvpn/PasswordUtil;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lnet/openvpn/openvpn/PasswordUtil;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-direct {p0, p1}, Lnet/openvpn/openvpn/PasswordUtil;->key_prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/PasswordUtil;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2}, Lnet/openvpn/openvpn/PasswordUtil;->key_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/PasswordUtil;->mSettings:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1, p2}, Lnet/openvpn/openvpn/PasswordUtil;->key_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p3}, Lnet/openvpn/openvpn/PasswordUtil;->en(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
