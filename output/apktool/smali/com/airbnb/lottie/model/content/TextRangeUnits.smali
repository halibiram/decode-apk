.class public final enum Lcom/airbnb/lottie/model/content/TextRangeUnits;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/TextRangeUnits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/TextRangeUnits;

.field public static final enum INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

.field public static final enum PERCENT:Lcom/airbnb/lottie/model/content/TextRangeUnits;


# direct methods
.method private static synthetic $values()[Lcom/airbnb/lottie/model/content/TextRangeUnits;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 3
    .line 4
    sget-object v1, Lcom/airbnb/lottie/model/content/TextRangeUnits;->PERCENT:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

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
    .locals 4

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/content/TextRangeUnits;

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
    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/model/content/TextRangeUnits;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/airbnb/lottie/model/content/TextRangeUnits;->PERCENT:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 23
    .line 24
    new-instance v0, Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v2, v2, [J

    .line 29
    .line 30
    fill-array-data v2, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/TextRangeUnits;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 45
    .line 46
    invoke-static {}, Lcom/airbnb/lottie/model/content/TextRangeUnits;->$values()[Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/airbnb/lottie/model/content/TextRangeUnits;->$VALUES:[Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        -0x1f81b8e2c83f617cL    # -6.495340595277649E156
        -0x76d470e694c8a52cL
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x3f2fc88a88f9fdccL    # 2.4248782255041482E-4
        0x5feeb4634f9b0803L    # 1.2865060017863018E154
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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/TextRangeUnits;
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/TextRangeUnits;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/content/TextRangeUnits;->$VALUES:[Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/TextRangeUnits;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 8
    .line 9
    return-object v0
.end method
