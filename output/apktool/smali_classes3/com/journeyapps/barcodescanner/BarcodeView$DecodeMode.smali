.class final enum Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/BarcodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecodeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field public static final enum CONTINUOUS:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field public static final enum NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field public static final enum SINGLE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;


# direct methods
.method private static synthetic $values()[Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 3
    .line 4
    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->SINGLE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v3}, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 23
    .line 24
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v3, v2, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-direct {v0, v1, v3}, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->SINGLE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 45
    .line 46
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 47
    .line 48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    new-array v3, v3, [J

    .line 52
    .line 53
    fill-array-data v3, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 67
    .line 68
    invoke-static {}, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->$values()[Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->$VALUES:[Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 73
    .line 74
    return-void

    .line 75
    :array_0
    .array-data 8
        -0x4838b970c689eba8L    # -5.343820950818868E-40
        0x712411706303f75fL    # 1.0209237775931156E237
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 8
        -0x7d6df47ee933e069L
        0x2c66505545a7306bL    # 8.357279617700367E-95
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_2
    .array-data 8
        0x3ccc665d1123ad74L
        0x636fef8f933be9c1L    # 9.641956066678978E170
        -0x260fa4a92c47181aL    # -1.7300409690241966E125
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .locals 1

    .line 1
    const-class v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->$VALUES:[Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 8
    .line 9
    return-object v0
.end method
