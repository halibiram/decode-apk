.class public final Lcom/google/common/base/Throwables;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final JAVA_LANG_ACCESS_CLASSNAME:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field

.field static final SHARED_SECRETS_CLASSNAME:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final getStackTraceDepthMethod:Ljava/lang/reflect/Method;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private static final getStackTraceElementMethod:Ljava/lang/reflect/Method;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private static final jla:Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/common/base/Throwables;->JAVA_LANG_ACCESS_CLASSNAME:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    fill-array-data v1, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/google/common/base/Throwables;->SHARED_SECRETS_CLASSNAME:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/common/base/Throwables;->getJLA()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/google/common/base/Throwables;->jla:Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    move-object v2, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/google/common/base/Throwables;->getGetMethod()Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_0
    sput-object v2, Lcom/google/common/base/Throwables;->getStackTraceElementMethod:Ljava/lang/reflect/Method;

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {v0}, Lcom/google/common/base/Throwables;->getSizeMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_1
    sput-object v1, Lcom/google/common/base/Throwables;->getStackTraceDepthMethod:Ljava/lang/reflect/Method;

    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 8
        0x2bba345475c840cL
        0x7f16de84645feccdL    # 1.5682913810532006E304
        -0x7583cd812f3ca979L
        -0x7dea2b4f1ec25c57L    # -1.303930481617216E-298
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        -0x39127faedaf4c62cL    # -4.786849571014303E33
        -0x366fd7d75ec564eaL    # -2.305985537398037E46
        -0x4435d24f4c93002eL    # -1.1087016472121363E-20
        0x714744d3a49f20c6L    # 4.735017611302525E237
    .end array-data
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

.method public static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/Throwables;->getStackTraceElementMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/Throwables;->jla:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/common/base/Throwables;->invokeAccessibleNonThrowingMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/Throwables;->getStackTraceDepthMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getCausalChain(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    move-object v1, p0

    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    if-eq p0, v1, :cond_1

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_0
    xor-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v2, 0x5

    .line 41
    new-array v2, v2, [J

    .line 42
    .line 43
    fill-array-data v2, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_2
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x6610319ea0f51db9L    # -9.356729588658119E-184
        0x5994504548948023L    # 3.357099555722537E123
        0x730b1ea2076acdadL    # 1.4813944496193434E246
        -0x3613f5ab3f359245L    # -1.2806570565628747E48
        0x231b5a1de075ec8cL    # 1.435527115579129E-139
    .end array-data
.end method

.method public static getCauseAs(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX;>;)TX;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method private static getGetMethod()Ljava/lang/reflect/Method;
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x2

    .line 17
    new-array v1, v1, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v2, Ljava/lang/Throwable;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    aput-object v2, v1, v3

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/google/common/base/Throwables;->getJlaMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x58cf3f17d6eafbe0L    # -6.48796331831302E-120
        -0x3ea5e53a0a7597fbL    # -6843159.836572652
        -0x68c213a54541db39L    # -1.0007641563933905E-196
        0x12d6fbd64548dc67L    # 6.510941828646634E-218
    .end array-data
.end method

.method private static getJLA()Ljava/lang/Object;
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    new-array v3, v0, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v0, v0, [J

    .line 25
    .line 26
    fill-array-data v0, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    return-object v1

    .line 48
    :goto_0
    throw v0

    .line 49
    :array_0
    .array-data 8
        0x568dc3e6ab2ba5eeL    # 8.738116255337992E108
        0x16046a2f8cd96dd8L
        -0x559419729b7d1b41L
        -0x5ddb38bef241fe05L
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
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
        -0x41ae377e9c9dfce9L    # -1.656191824699669E-8
        -0x7b6ef9e47fc22419L    # -1.118000769514456E-286
        -0x2d8956508202a9fdL    # -1.8033206359673052E89
        0x2904357f14a8ae92L    # 4.201610554096842E-111
    .end array-data
.end method

.method private static varargs getJlaMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x4

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    return-object v0

    .line 30
    :goto_0
    throw p0

    .line 31
    :array_0
    .array-data 8
        -0x3869f82ba0fc7932L    # -7.320917345970182E36
        -0x4c16429342c898cfL    # -1.2814403427365812E-58
        0x4ddfd986ee6a00a4L    # 1.3416665960829063E67
        0x6ad8f0de93b5cfa5L    # 5.004596855535451E206
    .end array-data
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v0, p0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    if-eq v2, v0, :cond_1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    move-object v0, p0

    .line 19
    :cond_0
    xor-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    move-object p0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    new-array v1, v1, [J

    .line 29
    .line 30
    fill-array-data v1, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p0, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_2
    return-object p0

    .line 45
    :array_0
    .array-data 8
        0x3448732668b21f6dL    # 7.79015725888461E-57
        0x54e7ef0599d81990L    # 1.0469791441408784E101
        -0x7ccc2586a8dc04e7L    # -3.108561264992693E-293
        0x179172d86c0a85fL
        -0x392e575478715ce6L    # -1.4326575215188985E33
    .end array-data
.end method

.method private static getSizeMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x4

    .line 7
    new-array v4, v4, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-array v4, v1, [Ljava/lang/Class;

    .line 20
    .line 21
    const-class v5, Ljava/lang/Throwable;

    .line 22
    .line 23
    aput-object v5, v4, v0

    .line 24
    .line 25
    invoke-static {v3, v4}, Lcom/google/common/base/Throwables;->getJlaMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_0
    new-instance v4, Ljava/lang/Throwable;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 35
    .line 36
    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v4, v1, v0

    .line 40
    .line 41
    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return-object v3

    .line 45
    :catch_0
    return-object v2

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x4b5510221cf0ff43L    # 8.06974625749925E54
        0xd969f8a29567697L
        0x3607435be5c608b6L    # 1.9896591629775283E-48
        0x4282abfeacbbcb33L    # 2.5662401800894E12
    .end array-data
.end method

.method public static getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/PrintWriter;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static varargs invokeAccessibleNonThrowingMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    throw p0

    .line 16
    :catch_1
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method private static jlaStackTrace(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/base/Throwables$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/common/base/Throwables$1;-><init>(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static lazyStackTrace(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/base/Throwables;->lazyStackTraceIsLazy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/common/base/Throwables;->jlaStackTrace(Ljava/lang/Throwable;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    return-object p0
.end method

.method public static lazyStackTraceIsLazy()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/base/Throwables;->getStackTraceElementMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/common/base/Throwables;->getStackTraceDepthMethod:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    throw v0
.end method

.method public static propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX;>;)V^TX;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/google/common/base/Throwables;->throwIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static propagateIfPossible(Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX;>;)V^TX;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 3
    invoke-static {p0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X1:",
            "Ljava/lang/Throwable;",
            "X2:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX1;>;",
            "Ljava/lang/Class<",
            "TX2;>;)V^TX1;^TX2;"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0, p1}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 6
    invoke-static {p0, p2}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    return-void
.end method

.method public static throwIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX;>;)V^TX;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Throwable;

    .line 16
    .line 17
    throw p0
.end method

.method public static throwIfUnchecked(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    instance-of v0, p0, Ljava/lang/Error;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p0, Ljava/lang/Error;

    .line 14
    .line 15
    throw p0

    .line 16
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    throw p0
.end method
