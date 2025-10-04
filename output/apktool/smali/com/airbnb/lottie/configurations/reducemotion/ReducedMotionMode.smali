.class public final enum Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

.field public static final enum REDUCED_MOTION:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

.field public static final enum STANDARD_MOTION:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;


# direct methods
.method private static synthetic $values()[Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 3
    .line 4
    sget-object v1, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->STANDARD_MOTION:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->REDUCED_MOTION:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

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
    new-instance v0, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

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
    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->STANDARD_MOTION:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 23
    .line 24
    new-instance v0, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

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
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->REDUCED_MOTION:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 45
    .line 46
    invoke-static {}, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->$values()[Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->$VALUES:[Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        -0x348b9a5e4f06ff3cL    # -3.1258309192258033E55
        -0x46c300e0a23d4221L    # -5.5845366994708084E-33
        0x2cfefab59f525a82L
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
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 8
        -0x6fee5c65731fb44eL
        -0x76e445930f140367L    # -8.599355255459847E-265
        0x2e6334551ba1693bL    # 3.0892461462473093E-85
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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->$VALUES:[Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 8
    .line 9
    return-object v0
.end method
