.class public final Lcom/trilead/ssh2/signature/KeyAlgorithmManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final supportedAlgorithms:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/trilead/ssh2/signature/KeyAlgorithm<",
            "Ljava/security/PublicKey;",
            "Ljava/security/PrivateKey;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->buildSupportAlgorithmsList()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->supportedAlgorithms:Ljava/util/Collection;

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static buildSupportAlgorithmsList()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/trilead/ssh2/signature/KeyAlgorithm<",
            "Ljava/security/PublicKey;",
            "Ljava/security/PrivateKey;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    new-array v2, v2, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp521;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp521;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp384;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp384;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp256;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp256;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :catch_0
    new-instance v1, Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;

    .line 57
    .line 58
    invoke-direct {v1}, Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;

    .line 65
    .line 66
    invoke-direct {v1}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :array_0
    .array-data 8
        -0x7b40e79c9d3fbf43L    # -8.168426606119092E-286
        0x24b064a0c5c60c47L    # 5.773809068652822E-132
    .end array-data
.end method

.method public static getSupportedAlgorithms()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/trilead/ssh2/signature/KeyAlgorithm<",
            "Ljava/security/PublicKey;",
            "Ljava/security/PrivateKey;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->supportedAlgorithms:Ljava/util/Collection;

    .line 2
    .line 3
    return-object v0
.end method
