.class public final enum Lcom/airbnb/lottie/AsyncUpdates;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/AsyncUpdates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/AsyncUpdates;

.field public static final enum AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

.field public static final enum DISABLED:Lcom/airbnb/lottie/AsyncUpdates;

.field public static final enum ENABLED:Lcom/airbnb/lottie/AsyncUpdates;


# direct methods
.method private static synthetic $values()[Lcom/airbnb/lottie/AsyncUpdates;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/airbnb/lottie/AsyncUpdates;

    .line 3
    .line 4
    sget-object v1, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/airbnb/lottie/AsyncUpdates;->ENABLED:Lcom/airbnb/lottie/AsyncUpdates;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/airbnb/lottie/AsyncUpdates;->DISABLED:Lcom/airbnb/lottie/AsyncUpdates;

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
    new-instance v0, Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

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
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/AsyncUpdates;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    .line 23
    .line 24
    new-instance v0, Lcom/airbnb/lottie/AsyncUpdates;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    new-array v3, v2, [J

    .line 30
    .line 31
    fill-array-data v3, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/AsyncUpdates;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/airbnb/lottie/AsyncUpdates;->ENABLED:Lcom/airbnb/lottie/AsyncUpdates;

    .line 46
    .line 47
    new-instance v0, Lcom/airbnb/lottie/AsyncUpdates;

    .line 48
    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v3, v2, [J

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
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/AsyncUpdates;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/airbnb/lottie/AsyncUpdates;->DISABLED:Lcom/airbnb/lottie/AsyncUpdates;

    .line 67
    .line 68
    invoke-static {}, Lcom/airbnb/lottie/AsyncUpdates;->$values()[Lcom/airbnb/lottie/AsyncUpdates;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/airbnb/lottie/AsyncUpdates;->$VALUES:[Lcom/airbnb/lottie/AsyncUpdates;

    .line 73
    .line 74
    return-void

    .line 75
    :array_0
    .array-data 8
        -0x6d956fa97c71a1bbL
        -0x124a57eeaf334163L    # -3.057914922070599E220
        -0x17565656804c7736L    # -1.4986846615535866E196
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0x68ac4ca79ed8ce60L
        -0x666ede9fb819adb9L
    .end array-data

    :array_2
    .array-data 8
        0x2844593bb4fd815L
        0x7f1edb02865f38d7L    # 2.1159642640741614E304
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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/AsyncUpdates;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->$VALUES:[Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/AsyncUpdates;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/AsyncUpdates;

    .line 8
    .line 9
    return-object v0
.end method
