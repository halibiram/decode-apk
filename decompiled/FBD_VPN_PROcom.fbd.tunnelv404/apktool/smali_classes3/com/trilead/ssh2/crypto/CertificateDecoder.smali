.class public abstract Lcom/trilead/ssh2/crypto/CertificateDecoder;
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


# virtual methods
.method public abstract createKeyPair(Lcom/trilead/ssh2/crypto/PEMStructure;)Ljava/security/KeyPair;
.end method

.method public createKeyPair(Lcom/trilead/ssh2/crypto/PEMStructure;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/CertificateDecoder;->createKeyPair(Lcom/trilead/ssh2/crypto/PEMStructure;)Ljava/security/KeyPair;

    move-result-object p1

    return-object p1
.end method

.method public abstract getEndLine()Ljava/lang/String;
.end method

.method public abstract getStartLine()Ljava/lang/String;
.end method
