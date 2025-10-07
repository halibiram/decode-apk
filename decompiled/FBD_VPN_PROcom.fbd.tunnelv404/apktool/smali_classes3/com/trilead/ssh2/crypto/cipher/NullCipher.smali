.class public Lcom/trilead/ssh2/crypto/cipher/NullCipher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/crypto/cipher/BlockCipher;


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 2
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/NullCipher;->blockSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/NullCipher;->blockSize:I

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/NullCipher;->blockSize:I

    .line 2
    .line 3
    return v0
.end method

.method public init(Z[B)V
    .locals 0

    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/NullCipher;->blockSize:I

    .line 2
    .line 3
    invoke-static {p1, p2, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
