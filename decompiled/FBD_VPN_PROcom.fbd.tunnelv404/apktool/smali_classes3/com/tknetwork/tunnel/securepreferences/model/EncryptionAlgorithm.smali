.class public final enum Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

.field public static final enum AES:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

.field public static final enum TripleDES:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;


# instance fields
.field private final keySizesInBits:[I


# direct methods
.method private static synthetic $values()[Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 3
    .line 4
    sget-object v1, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->AES:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->TripleDES:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/16 v2, 0xc4

    .line 19
    .line 20
    const/16 v3, 0x100

    .line 21
    .line 22
    const/16 v4, 0x80

    .line 23
    .line 24
    filled-new-array {v4, v2, v3}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v0, v1, v3, v2}, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;-><init>(Ljava/lang/String;I[I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->AES:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 33
    .line 34
    new-instance v0, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 35
    .line 36
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    new-array v2, v2, [J

    .line 40
    .line 41
    fill-array-data v2, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/16 v2, 0xc0

    .line 52
    .line 53
    filled-new-array {v4, v2}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-direct {v0, v1, v3, v2}, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;-><init>(Ljava/lang/String;I[I)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->TripleDES:Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 62
    .line 63
    invoke-static {}, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->$values()[Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->$VALUES:[Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        0x3a032384a3f1d55cL    # 3.0195611753859967E-29
        0x1dcf30984302eac6L
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_1
    .array-data 8
        0x43d2119942c31cefL    # 5.2079611172285143E18
        -0xab8ddc6646151d0L    # -8.683828922432138E256
        0x50f94118f59c1d11L    # 1.1977714342121634E82
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->keySizesInBits:[I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;
    .locals 1

    .line 1
    const-class v0, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->$VALUES:[Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getKeySizes()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;->keySizesInBits:[I

    .line 2
    .line 3
    return-object v0
.end method
