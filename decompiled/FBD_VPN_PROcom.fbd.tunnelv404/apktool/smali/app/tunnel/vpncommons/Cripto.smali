.class public Lapp/tunnel/vpncommons/Cripto;
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

.method public static decrypt(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0, p1, p2}, Lapp/tunnel/vpncommons/Cripto;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static encrypt(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1, p2}, Lapp/tunnel/vpncommons/Cripto;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p0, "DES"

    .line 11
    .line 12
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, -0x1

    .line 26
    const/16 v3, 0x40

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-ne p1, v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Ljavax/crypto/CipherInputStream;

    .line 35
    .line 36
    invoke-direct {p1, p2, p0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 37
    .line 38
    .line 39
    new-array p0, v3, [B

    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eq p2, v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {p3, p0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    const/4 v4, 0x2

    .line 62
    if-ne p1, v4, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    .line 68
    .line 69
    invoke-direct {p1, p3, p0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 70
    .line 71
    .line 72
    new-array p0, v3, [B

    .line 73
    .line 74
    :goto_1
    invoke-virtual {p2, p0}, Ljava/io/InputStream;->read([B)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-eq p3, v2, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1, p0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_2
    return-void
.end method
