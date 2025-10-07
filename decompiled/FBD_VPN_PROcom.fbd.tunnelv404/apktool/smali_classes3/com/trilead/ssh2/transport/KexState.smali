.class public Lcom/trilead/ssh2/transport/KexState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public H:[B

.field public K:Ljava/math/BigInteger;

.field public dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

.field public dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

.field public dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

.field private hashAlgorithm:Ljava/lang/String;

.field public hostkey:[B

.field public localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

.field public np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

.field public remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/trilead/ssh2/transport/KexState;->state:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexState;->hashAlgorithm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setHashAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexState;->hashAlgorithm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
