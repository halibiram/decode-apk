.class public final enum Lcom/airbnb/lottie/LottieFeatureFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/LottieFeatureFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/LottieFeatureFlag;

.field public static final enum MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;


# instance fields
.field public final minRequiredSdkVersion:I


# direct methods
.method private static synthetic $values()[Lcom/airbnb/lottie/LottieFeatureFlag;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 3
    .line 4
    sget-object v1, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/airbnb/lottie/LottieFeatureFlag;

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
    const/16 v3, 0x13

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/lottie/LottieFeatureFlag;-><init>(Ljava/lang/String;II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 25
    .line 26
    invoke-static {}, Lcom/airbnb/lottie/LottieFeatureFlag;->$values()[Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/airbnb/lottie/LottieFeatureFlag;->$VALUES:[Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 8
        0x1309f207a263fd8eL    # 5.879954843311019E-217
        -0x4b1d84a56644c9a6L    # -6.029985311954789E-54
        0x1d8495dd79cd57caL
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/airbnb/lottie/LottieFeatureFlag;->minRequiredSdkVersion:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/LottieFeatureFlag;
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/LottieFeatureFlag;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieFeatureFlag;->$VALUES:[Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/LottieFeatureFlag;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 8
    .line 9
    return-object v0
.end method
