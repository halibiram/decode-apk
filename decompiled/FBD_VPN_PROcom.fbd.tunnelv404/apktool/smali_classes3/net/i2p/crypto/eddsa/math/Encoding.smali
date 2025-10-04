.class public abstract Lnet/i2p/crypto/eddsa/math/Encoding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected f:Lnet/i2p/crypto/eddsa/math/Field;


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
.method public abstract decode([B)Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B
.end method

.method public abstract isNegative(Lnet/i2p/crypto/eddsa/math/FieldElement;)Z
.end method

.method public declared-synchronized setField(Lnet/i2p/crypto/eddsa/math/Field;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Encoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/Encoding;->f:Lnet/i2p/crypto/eddsa/math/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "already set"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method
