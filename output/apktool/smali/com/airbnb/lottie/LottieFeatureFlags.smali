.class Lcom/airbnb/lottie/LottieFeatureFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final enabledFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/airbnb/lottie/LottieFeatureFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/LottieFeatureFlags;->enabledFlags:Ljava/util/HashSet;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public enableFlag(Lcom/airbnb/lottie/LottieFeatureFlag;Z)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    iget v1, p1, Lcom/airbnb/lottie/LottieFeatureFlag;->minRequiredSdkVersion:I

    .line 7
    .line 8
    if-ge p2, v1, :cond_0

    .line 9
    .line 10
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    new-array v1, v1, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget p1, p1, Lcom/airbnb/lottie/LottieFeatureFlag;->minRequiredSdkVersion:I

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v2, 0x2

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object v1, v2, v0

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    aput-object p1, v2, v1

    .line 42
    .line 43
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return v0

    .line 51
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/LottieFeatureFlags;->enabledFlags:Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_1
    iget-object p2, p0, Lcom/airbnb/lottie/LottieFeatureFlags;->enabledFlags:Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :array_0
    .array-data 8
        0x39d93a4638bea29cL    # 4.97527354795915E-30
        -0x44bd58affb531c28L    # -3.0859734202291904E-23
        0xa5ab7db18ed0748L
        -0x63beffea9bc30895L
        -0x498fe919c8b10871L    # -1.761415783017195E-46
    .end array-data
.end method

.method public isFlagEnabled(Lcom/airbnb/lottie/LottieFeatureFlag;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieFeatureFlags;->enabledFlags:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
