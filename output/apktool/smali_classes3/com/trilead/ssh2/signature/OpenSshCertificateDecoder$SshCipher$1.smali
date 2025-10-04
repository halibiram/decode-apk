.class final enum Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$1;
.super Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const/16 v3, 0x18

    const/16 v4, 0x8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$1;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createBlockCipher([B[BZ)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .locals 2

    .line 1
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
    invoke-static {v0, p3, p1, p2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :array_0
    .array-data 8
        -0x655a632ac92f853eL
        0x4fa6eacbe9ad64faL    # 5.18286611821327E75
    .end array-data
.end method
