.class final Lnet/i2p/crypto/eddsa/math/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EIGHT:[B

.field public static final FIVE:[B

.field public static final FOUR:[B

.field public static final ONE:[B

.field public static final TWO:[B

.field public static final ZERO:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 2
    .line 3
    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->ZERO:[B

    .line 8
    .line 9
    const-string v0, "0100000000000000000000000000000000000000000000000000000000000000"

    .line 10
    .line 11
    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->ONE:[B

    .line 16
    .line 17
    const-string v0, "0200000000000000000000000000000000000000000000000000000000000000"

    .line 18
    .line 19
    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->TWO:[B

    .line 24
    .line 25
    const-string v0, "0400000000000000000000000000000000000000000000000000000000000000"

    .line 26
    .line 27
    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->FOUR:[B

    .line 32
    .line 33
    const-string v0, "0500000000000000000000000000000000000000000000000000000000000000"

    .line 34
    .line 35
    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->FIVE:[B

    .line 40
    .line 41
    const-string v0, "0800000000000000000000000000000000000000000000000000000000000000"

    .line 42
    .line 43
    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->EIGHT:[B

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
