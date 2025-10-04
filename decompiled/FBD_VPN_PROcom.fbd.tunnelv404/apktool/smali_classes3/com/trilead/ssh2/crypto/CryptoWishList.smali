.class public Lcom/trilead/ssh2/crypto/CryptoWishList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public c2s_enc_algos:[Ljava/lang/String;

.field public c2s_mac_algos:[Ljava/lang/String;

.field public kexAlgorithms:[Ljava/lang/String;

.field public s2c_enc_algos:[Ljava/lang/String;

.field public s2c_mac_algos:[Ljava/lang/String;

.field public serverHostKeyAlgorithms:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/trilead/ssh2/transport/KexManager;->getDefaultKexAlgorithmList()[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->kexAlgorithms:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, Lcom/trilead/ssh2/transport/KexManager;->getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->getMacs()[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->getMacs()[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method
