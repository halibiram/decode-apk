.class final enum Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$2;
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
    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$2;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createBlockCipher([B[BZ)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .locals 1

    .line 1
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/DES;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/DES;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p3, p1}, Lcom/trilead/ssh2/crypto/cipher/DES;->init(Z[B)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .line 10
    .line 11
    invoke-direct {p1, v0, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method
