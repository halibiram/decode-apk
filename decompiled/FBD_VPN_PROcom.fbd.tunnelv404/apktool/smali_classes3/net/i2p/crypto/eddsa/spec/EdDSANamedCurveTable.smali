.class public Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ED_25519:Ljava/lang/String; = "Ed25519"

.field public static final ED_25519_CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

.field private static volatile curves:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final ed25519curve:Lnet/i2p/crypto/eddsa/math/Curve;

.field private static final ed25519field:Lnet/i2p/crypto/eddsa/math/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lnet/i2p/crypto/eddsa/math/Field;

    .line 2
    .line 3
    const-string v1, "edffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f"

    .line 4
    .line 5
    invoke-static {v1}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;

    .line 10
    .line 11
    invoke-direct {v2}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v3, 0x100

    .line 15
    .line 16
    invoke-direct {v0, v3, v1, v2}, Lnet/i2p/crypto/eddsa/math/Field;-><init>(I[BLnet/i2p/crypto/eddsa/math/Encoding;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ed25519field:Lnet/i2p/crypto/eddsa/math/Field;

    .line 20
    .line 21
    new-instance v6, Lnet/i2p/crypto/eddsa/math/Curve;

    .line 22
    .line 23
    const-string v1, "a3785913ca4deb75abd841414d0a700098e879777940c78c73fe6f2bee6c0352"

    .line 24
    .line 25
    invoke-static {v1}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "b0a00e4a271beec478e42fad0618432fa7d7fb3d99004d2b0bdfc14f8024832b"

    .line 30
    .line 31
    invoke-static {v2}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/Field;->fromByteArray([B)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v6, v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/Curve;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[BLnet/i2p/crypto/eddsa/math/FieldElement;)V

    .line 40
    .line 41
    .line 42
    sput-object v6, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ed25519curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 43
    .line 44
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    .line 45
    .line 46
    new-instance v8, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519ScalarOps;

    .line 47
    .line 48
    invoke-direct {v8}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519ScalarOps;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "5866666666666666666666666666666666666666666666666666666666666666"

    .line 52
    .line 53
    invoke-static {v1}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-virtual {v6, v1, v2}, Lnet/i2p/crypto/eddsa/math/Curve;->createPoint([BZ)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    const-string v5, "Ed25519"

    .line 63
    .line 64
    const-string v7, "SHA-512"

    .line 65
    .line 66
    move-object v4, v0

    .line 67
    invoke-direct/range {v4 .. v9}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;-><init>(Ljava/lang/String;Lnet/i2p/crypto/eddsa/math/Curve;Ljava/lang/String;Lnet/i2p/crypto/eddsa/math/ScalarOps;Lnet/i2p/crypto/eddsa/math/GroupElement;)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ED_25519_CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    .line 71
    .line 72
    new-instance v1, Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    sput-object v1, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-static {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->defineCurve(Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;)V

    .line 80
    .line 81
    .line 82
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

.method public static defineCurve(Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->putCurve(Ljava/lang/String;Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static defineCurveAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/HashMap;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, p0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->putCurve(Ljava/lang/String;Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;
    .locals 2

    .line 1
    sget-object v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/HashMap;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    .line 14
    .line 15
    return-object p0
.end method

.method private static declared-synchronized putCurve(Ljava/lang/String;Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;)V
    .locals 3

    .line 1
    const-class v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    sget-object v2, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sput-object v1, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p0
.end method
