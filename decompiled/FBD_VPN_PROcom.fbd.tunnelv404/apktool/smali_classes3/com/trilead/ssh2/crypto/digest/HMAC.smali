.class public final Lcom/trilead/ssh2/crypto/digest/HMAC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/crypto/digest/Digest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field k_xor_ipad:[B

.field k_xor_opad:[B

.field md:Lcom/trilead/ssh2/crypto/digest/Digest;

.field size:I

.field tmp:[B


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 5
    .line 6
    iput p3, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->size:I

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->getDigestLength()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    new-array p3, p3, [B

    .line 13
    .line 14
    iput-object p3, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->tmp:[B

    .line 15
    .line 16
    const/16 p3, 0x40

    .line 17
    .line 18
    new-array v0, p3, [B

    .line 19
    .line 20
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    .line 21
    .line 22
    new-array v0, p3, [B

    .line 23
    .line 24
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->k_xor_opad:[B

    .line 25
    .line 26
    array-length v0, p2

    .line 27
    if-le v0, p3, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->reset()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->tmp:[B

    .line 36
    .line 37
    invoke-interface {p1, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->digest([B)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->tmp:[B

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    .line 43
    .line 44
    array-length v1, p2

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->k_xor_opad:[B

    .line 50
    .line 51
    array-length v1, p2

    .line 52
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    :goto_0
    if-ge v2, p3, :cond_1

    .line 56
    .line 57
    iget-object p2, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    .line 58
    .line 59
    aget-byte v0, p2, v2

    .line 60
    .line 61
    xor-int/lit8 v0, v0, 0x36

    .line 62
    .line 63
    int-to-byte v0, v0

    .line 64
    aput-byte v0, p2, v2

    .line 65
    .line 66
    iget-object p2, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->k_xor_opad:[B

    .line 67
    .line 68
    aget-byte v0, p2, v2

    .line 69
    .line 70
    xor-int/lit8 v0, v0, 0x5c

    .line 71
    .line 72
    int-to-byte v0, v0

    .line 73
    aput-byte v0, p2, v2

    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object p2, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    .line 79
    .line 80
    invoke-interface {p1, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final digest([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/crypto/digest/HMAC;->digest([BI)V

    return-void
.end method

.method public final digest([BI)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->tmp:[B

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->digest([B)V

    .line 3
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->k_xor_opad:[B

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    .line 4
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->tmp:[B

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    .line 5
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->tmp:[B

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->digest([B)V

    .line 6
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->tmp:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    iget-object p2, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    invoke-interface {p1, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    return-void
.end method

.method public final getDigestLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    return-void
.end method

.method public final update([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    return-void
.end method

.method public final update([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([BII)V

    return-void
.end method
