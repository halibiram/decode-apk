.class public final Lcom/google/common/cache/CacheBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/cache/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/CacheBuilder$OneWeigher;,
        Lcom/google/common/cache/CacheBuilder$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_EXPIRATION_NANOS:I = 0x0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_REFRESH_NANOS:I = 0x0

.field static final EMPTY_STATS:Lcom/google/common/cache/CacheStats;

.field static final NULL_STATS_COUNTER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_TICKER:Lcom/google/common/base/Ticker;

.field static final UNSET_INT:I = -0x1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lcom/google/common/cache/LocalCache$Strength;

.field maximumSize:J

.field maximumWeight:J

.field refreshNanos:J

.field removalListener:Lcom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field statsCounterSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field strictParsing:Z

.field ticker:Lcom/google/common/base/Ticker;

.field valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field valueStrength:Lcom/google/common/cache/LocalCache$Strength;

.field weigher:Lcom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Weigher<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/common/cache/CacheBuilder$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lcom/google/common/base/Supplier;

    .line 11
    .line 12
    new-instance v0, Lcom/google/common/cache/CacheStats;

    .line 13
    .line 14
    const-wide/16 v10, 0x0

    .line 15
    .line 16
    const-wide/16 v12, 0x0

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    const-wide/16 v6, 0x0

    .line 23
    .line 24
    const-wide/16 v8, 0x0

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/google/common/cache/CacheBuilder;->EMPTY_STATS:Lcom/google/common/cache/CacheStats;

    .line 31
    .line 32
    new-instance v0, Lcom/google/common/cache/CacheBuilder$2;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$2;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;

    .line 38
    .line 39
    new-instance v0, Lcom/google/common/cache/CacheBuilder$3;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$3;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_TICKER:Lcom/google/common/base/Ticker;

    .line 45
    .line 46
    const-class v0, Lcom/google/common/cache/CacheBuilder;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    .line 57
    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 23
    .line 24
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lcom/google/common/base/Supplier;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    .line 27
    .line 28
    return-void
.end method

.method private checkNonLoadingCache()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v2, 0x7

    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 8
        -0x3e457d8fcd778572L    # -4.4475601853312004E8
        -0x5430b9762dd723fL
        0x43e6453a283a8cc9L    # 1.2838022293462862E19
        0x156e1c6b8426a332L
        0x5db147c773b397b6L    # 2.1072274812486303E143
        0x34c092e8d8187766L    # 1.351868975912138E-54
        0x43447bd91b1b8220L    # 1.1531343854240832E16
    .end array-data
.end method

.method private checkWeightWithWeigher()V
    .locals 8

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const-wide/16 v4, -0x1

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-wide v6, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 11
    .line 12
    cmp-long v1, v6, v4

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v0, v0, [J

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-boolean v1, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget-wide v6, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 40
    .line 41
    cmp-long v1, v6, v4

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    :cond_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v0, v0, [J

    .line 49
    .line 50
    fill-array-data v0, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 65
    .line 66
    cmp-long v2, v0, v4

    .line 67
    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    .line 71
    .line 72
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 73
    .line 74
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v3, 0x7

    .line 77
    new-array v3, v3, [J

    .line 78
    .line 79
    fill-array-data v3, :array_2

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_0
    return-void

    .line 93
    :array_0
    .array-data 8
        0x742cd46e57516a4cL    # 4.128270602635037E251
        0x711dcb6889015ba8L    # 7.578681245469431E236
        0xceb8c91651b3462L
        0x28b2256c1ddd68e6L    # 1.178981168508881E-112
        0x4e2a10c7a1be16b2L    # 3.513628668872856E68
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        -0x3d0a04795318aebbL    # -3.867206472471243E14
        0x2ea5fb020ea2fa54L    # 5.657294515795272E-84
        0xf33ec09d3551711L
        -0x14689c2b9a774770L    # -1.9224119776656018E210
        -0x4863264482a21510L    # -8.279692355508377E-41
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_2
    .array-data 8
        0xb3e6803a61dc588L
        0xd3ebb75f9827335L
        0x32d2865d6385e156L    # 7.036163473762857E-64
        0x11fda9cd2ea28bL
        0x7d2e9d0f9b1b6871L    # 9.775951358274187E294
        -0x1ca4be6ed941a2aaL    # -4.1145430726528035E170
        -0x6cd436c8ebde1dc7L
    .end array-data
.end method

.method public static from(Lcom/google/common/cache/CacheBuilderSpec;)Lcom/google/common/cache/CacheBuilder;
    .locals 0
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheBuilderSpec;",
            ")",
            "Lcom/google/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilderSpec;->toCacheBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->lenientParsing()Lcom/google/common/cache/CacheBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilder;
    .locals 0
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/common/cache/CacheBuilderSpec;->parse(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/cache/CacheBuilder;->from(Lcom/google/common/cache/CacheBuilderSpec;)Lcom/google/common/cache/CacheBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder()Lcom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/cache/CacheBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/common/cache/Cache;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/Cache<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 4
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkNonLoadingCache()V

    .line 5
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalManualCache;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lcom/google/common/cache/CacheBuilder;)V

    return-object v0
.end method

.method public build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK1;TV1;>;)",
            "Lcom/google/common/cache/LoadingCache<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 2
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalLoadingCache;

    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/LocalCache$LocalLoadingCache;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lcom/google/common/cache/CacheBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v4, 0x6

    .line 14
    new-array v4, v4, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v4, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 27
    .line 28
    invoke-static {v0, v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    if-lez p1, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    :cond_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 35
    .line 36
    .line 37
    iput p1, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 38
    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x2e9533a5f3d26750L    # -1.6268788978508214E84
        -0x3651a3926ebd1bc4L    # -8.666546817600194E46
        0x3042fc8c389daac0L    # 3.2794148080575094E-76
        0x3733fa914a6c710fL    # 8.9587945526245E-43
        -0x75058159307bacc6L    # -8.822735077429559E-256
        -0x60d84800bc51457bL    # -1.349658473978391E-158
    .end array-data
.end method

.method public expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x1

    .line 7
    cmp-long v6, v0, v2

    .line 8
    .line 9
    if-nez v6, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x7

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
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 30
    .line 31
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    cmp-long v2, p1, v0

    .line 37
    .line 38
    if-ltz v2, :cond_1

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v1, 0x6

    .line 44
    new-array v1, v1, [J

    .line 45
    .line 46
    fill-array-data v1, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v4, v0, p1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 64
    .line 65
    return-object p0

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x6071686c77afce8aL    # 3.734429565071025E156
        0x10b50a38e9751a97L    # 3.469345921950469E-228
        -0x5740cbdf5259c98L
        0x126d537b83f40e3bL
        0x68e3f9b5b7ef4a7fL    # 1.8664797976830414E197
        0x60a153ce4800faadL    # 2.9737215997889663E157
        -0x2f7d6f1722097711L    # -6.879366710141506E79
    .end array-data

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
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
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
    :array_1
    .array-data 8
        0x324d4b9a3f43a838L
        0x1d66ed146b645760L
        0x2fd682e53f491b36L    # 3.037679252729477E-78
        -0x6dcf2844388e70ddL    # -4.659455166693654E-221
        -0x4107621a2ffdd2b6L    # -2.347639838311031E-5
        -0x548bb3d4a38c9a79L    # -2.319982845180964E-99
    .end array-data
.end method

.method public expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x1

    .line 7
    cmp-long v6, v0, v2

    .line 8
    .line 9
    if-nez v6, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x7

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
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 30
    .line 31
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    cmp-long v2, p1, v0

    .line 37
    .line 38
    if-ltz v2, :cond_1

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v1, 0x6

    .line 44
    new-array v1, v1, [J

    .line 45
    .line 46
    fill-array-data v1, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v4, v0, p1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 64
    .line 65
    return-object p0

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x4ad983b0ba0680d4L
        -0x3d908f40496bb3fdL    # -1.0802847878743754E12
        -0x4732ebfe98d5c8b5L    # -4.3751931948628357E-35
        -0x75d85b2432548234L    # -9.611126964459668E-260
        0x66d0fb820525509dL    # 1.847301291992322E187
        -0x53bf42bb33539d55L    # -1.5673626071352435E-95
        -0x380a6aa2600b7c4eL    # -4.590294252871913E38
    .end array-data

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
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
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
    :array_1
    .array-data 8
        -0x6da53b3bf374949aL
        0xe34785c72af92dL
        0x320a6f8178c057c0L    # 1.2256872044993768E-67
        -0x677cfa4903e5a0d9L
        0x3c2bcd3e9d689a4dL    # 7.535675826074122E-19
        -0x17b99f4e7646d349L    # -2.0419393707521722E194
    .end array-data
.end method

.method public getConcurrencyLevel()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    :cond_0
    return v0
.end method

.method public getExpireAfterAccessNanos()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    :cond_0
    return-wide v0
.end method

.method public getExpireAfterWriteNanos()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    :cond_0
    return-wide v0
.end method

.method public getInitialCapacity()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    :cond_0
    return v0
.end method

.method public getKeyEquivalence()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->getKeyStrength()Lcom/google/common/cache/LocalCache$Strength;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/common/base/Equivalence;

    .line 16
    .line 17
    return-object v0
.end method

.method public getKeyStrength()Lcom/google/common/cache/LocalCache$Strength;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    .line 10
    .line 11
    return-object v0
.end method

.method public getMaximumWeight()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_2

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 24
    .line 25
    :goto_0
    return-wide v0

    .line 26
    :cond_2
    :goto_1
    return-wide v2
.end method

.method public getRefreshNanos()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    :cond_0
    return-wide v0
.end method

.method public getRemovalListener()Lcom/google/common/cache/RemovalListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/RemovalListener<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/common/cache/RemovalListener;

    .line 10
    .line 11
    return-object v0
.end method

.method public getStatsCounterSupplier()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier<",
            "+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTicker(Z)Lcom/google/common/base/Ticker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lcom/google/common/cache/CacheBuilder;->NULL_TICKER:Lcom/google/common/base/Ticker;

    .line 14
    .line 15
    :goto_0
    return-object p1
.end method

.method public getValueEquivalence()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->getValueStrength()Lcom/google/common/cache/LocalCache$Strength;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/common/base/Equivalence;

    .line 16
    .line 17
    return-object v0
.end method

.method public getValueStrength()Lcom/google/common/cache/LocalCache$Strength;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    .line 10
    .line 11
    return-object v0
.end method

.method public getWeigher()Lcom/google/common/cache/Weigher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/Weigher<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/common/cache/Weigher;

    .line 10
    .line 11
    return-object v0
.end method

.method public initialCapacity(I)Lcom/google/common/cache/CacheBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v4, 0x6

    .line 14
    new-array v4, v4, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v4, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 27
    .line 28
    invoke-static {v0, v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    if-ltz p1, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    :cond_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 35
    .line 36
    .line 37
    iput p1, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 38
    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x1a66d119b54eebL
        0x1abb25603a7b12bbL    # 6.541968364465038E-180
        -0x4762290eb30b5f7bL    # -5.61220865602016E-36
        -0x2296997f7aff4fa6L    # -9.679401533076081E141
        0x134d604a7cfe6fd2L
        0x33aa02bef891e6b6L    # 8.093257415483749E-60
    .end array-data
.end method

.method public isRecordingStats()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/google/common/base/Equivalence;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 35
    .line 36
    return-object p0

    .line 37
    :array_0
    .array-data 8
        -0x3d8f8607deb7e041L    # -1.1322525011219841E12
        -0x5422f5d3acb6adcfL    # -2.1242915425788925E-97
        -0x1710b3fb1ba5aa10L    # -2.924348913107083E197
        0x528b81fa123a73ceL    # 4.377673391388701E89
        -0x5f8f852d40d7a2fdL    # -1.966588820567468E-152
        -0x2e064be0c03ef021L    # -7.989374028597708E86
    .end array-data
.end method

.method public lenientParsing()Lcom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public maximumSize(J)Lcom/google/common/cache/CacheBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    const-wide/16 v5, -0x1

    .line 7
    .line 8
    cmp-long v7, v1, v5

    .line 9
    .line 10
    if-nez v7, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v7, v0, [J

    .line 18
    .line 19
    fill-array-data v7, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-wide v7, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 30
    .line 31
    invoke-static {v1, v2, v7, v8}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 35
    .line 36
    cmp-long v7, v1, v5

    .line 37
    .line 38
    if-nez v7, :cond_1

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v5, v0, [J

    .line 46
    .line 47
    fill-array-data v5, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 58
    .line 59
    invoke-static {v1, v2, v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/4 v1, 0x0

    .line 69
    :goto_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v5, 0x7

    .line 72
    new-array v5, v5, [J

    .line 73
    .line 74
    fill-array-data v5, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const-wide/16 v1, 0x0

    .line 88
    .line 89
    cmp-long v5, p1, v1

    .line 90
    .line 91
    if-ltz v5, :cond_3

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    :cond_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v0, v0, [J

    .line 97
    .line 98
    fill-array-data v0, :array_3

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v3, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 112
    .line 113
    return-object p0

    .line 114
    nop

    .line 115
    :array_0
    .array-data 8
        0x78195fb21f2e1ed0L    # 3.351211485219512E270
        0x4819aad43faab4d0L    # 2.1835324976393645E39
        0x6c07aed9828f2ef2L    # 2.4915166485453635E212
        -0x10746a1e81d43fecL    # -2.09115939264702E229
        0x5e67ee9e10f0deabL    # 5.976799728244882E146
        -0x1ded2f051aaa596dL    # -2.7088972560471146E164
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        0x2628c63633c6daf0L    # 7.319688158743467E-125
        0x5dad81415e9dfed3L    # 1.7989627028662498E143
        0x15b1d4dd2855237aL    # 3.554600654953028E-204
        0x2030318bcda5c3adL    # 1.207769350802165E-153
        -0x8cba5bc157edef9L    # -1.640650428636552E266
        0x60f2487e10dea90L
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_2
    .array-data 8
        -0x683a08fdccb8283L
        -0x575609d8c5561087L    # -8.433775181093279E-113
        0x6bbee0ec733aae01L    # 1.0151604639233477E211
        -0x44b38bfaebd2dc12L    # -4.707187494038026E-23
        0x2a55abc35adbb046L    # 9.448861001418307E-105
        0x7241047415abc2d3L    # 2.26944488426503E242
        0x278f49398adaeebcL
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_3
    .array-data 8
        -0x701bd6ae66b8d602L    # -4.058205796437024E-232
        0x4fe7c3442927838cL    # 8.598560898654081E76
        0x19294351c625930aL
        0x9fc3c31fd4621acL
        -0x3b4ffac753ae1535L    # -7.565418117531386E22
        -0x58e12cd218ba3d34L
    .end array-data
.end method

.method public maximumWeight(J)Lcom/google/common/cache/CacheBuilder;
    .locals 9
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    const-wide/16 v5, -0x1

    .line 7
    .line 8
    cmp-long v7, v1, v5

    .line 9
    .line 10
    if-nez v7, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v7, v0, [J

    .line 18
    .line 19
    fill-array-data v7, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-wide v7, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 30
    .line 31
    invoke-static {v1, v2, v7, v8}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 35
    .line 36
    cmp-long v7, v1, v5

    .line 37
    .line 38
    if-nez v7, :cond_1

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v5, v0, [J

    .line 46
    .line 47
    fill-array-data v5, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 58
    .line 59
    invoke-static {v1, v2, v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v1, 0x0

    .line 63
    .line 64
    cmp-long v5, p1, v1

    .line 65
    .line 66
    if-ltz v5, :cond_2

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    :cond_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v0, v0, [J

    .line 72
    .line 73
    fill-array-data v0, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v3, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 87
    .line 88
    return-object p0

    .line 89
    :array_0
    .array-data 8
        -0x6ab881a72cceaf3L
        -0x1d20d10f323e019L    # -6.267689168309346E299
        0x5dc80dd26894f003L    # 5.866446415805919E143
        0x147dcf9d3430573eL    # 5.667342640672914E-210
        -0xf8a7d52439c7f1bL    # -5.343261401042009E233
        0x774b57828d341c02L    # 4.408124490077478E266
    .end array-data

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
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        0x41e69e450b20cd0cL    # 3.03576892102503E9
        -0x7ff918c1e5e52870L    # -9.60020820158081E-309
        -0x31569576b0ac6095L    # -8.77079367167661E70
        0x36083356c586abd3L    # 2.069835414581429E-48
        -0x6eacebffee01aa3eL    # -3.221357809580801E-225
        -0x2f57648dd5b30d38L    # -3.64713004254624E80
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_2
    .array-data 8
        0x16eea42fdfbf5924L
        0x18fb06a2fef7150dL
        0x4315b4b9cbba08abL    # 1.5274211477099948E15
        0x356cf276fd17eb03L    # 2.4177769532732883E-51
        0x6549a49754815a3L
        0x152a7416f1b18b67L
    .end array-data
.end method

.method public recordStats()Lcom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    .line 4
    .line 5
    return-object p0
.end method

.method public refreshAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .locals 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 6
    .line 7
    const-wide/16 v3, -0x1

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    cmp-long v7, v1, v3

    .line 12
    .line 13
    if-nez v7, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v3, v0, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 33
    .line 34
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    cmp-long v3, p1, v1

    .line 40
    .line 41
    if-lez v3, :cond_1

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v5, v0, p1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 66
    .line 67
    return-object p0

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x6eddc5ee6b793788L    # 1.1020513515999685E226
        0x5674731f240fc7c1L    # 3.001686061267422E108
        0xc6cc3802bb9c080L
        -0x118c52048abb42c5L    # -1.1381865776536595E224
        0x221be8ca46712415L
    .end array-data

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
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_1
    .array-data 8
        0x7c8b3824e98774acL    # 8.488344149049206E291
        -0x6db270198e3cb5f4L
        -0x2e2ac7c9a7576f55L    # -1.648904661308173E86
        0x16805b7ef94da5eeL    # 2.671205689912614E-200
        0xe6731bc8d4874e6L
    .end array-data
.end method

.method public removalListener(Lcom/google/common/cache/RemovalListener;)Lcom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/RemovalListener<",
            "-TK1;-TV1;>;)",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/common/cache/RemovalListener;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 18
    .line 19
    return-object p0
.end method

.method public setKeyStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$Strength;",
            ")",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/google/common/cache/LocalCache$Strength;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 35
    .line 36
    return-object p0

    .line 37
    :array_0
    .array-data 8
        -0x1fc74ef2acfbe5a1L    # -3.310603584937749E155
        -0x4014136cd8b907e4L    # -0.8726287619717854
        0x634b8327aeb8b02L
        -0x54363a6d27708314L    # -9.426179321539465E-98
        -0x52e74d9e15cd4960L    # -1.8943583079127998E-91
        0x11d541d578de9b64L    # 9.18858277113028E-223
    .end array-data
.end method

.method public setValueStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$Strength;",
            ")",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/google/common/cache/LocalCache$Strength;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 35
    .line 36
    return-object p0

    .line 37
    :array_0
    .array-data 8
        0x11bea8a345b02a27L    # 3.313122908125921E-223
        0x5adf2621bd34f1aeL    # 5.397859755921602E129
        -0x771641bc9e562df9L    # -9.979680379893624E-266
        -0x5d7031690c97b398L    # -3.26042821849721E-142
        -0x586bb5b19e11edbfL    # -5.028857030715556E-118
        0x76bf132fcf71714eL    # 9.785130757338766E263
    .end array-data
.end method

.method public softValues()Lcom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->SOFT:Lcom/google/common/cache/LocalCache$Strength;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CacheBuilder;->setValueStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public ticker(Lcom/google/common/base/Ticker;)Lcom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Ticker;",
            ")",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/common/base/Ticker;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    .line 18
    .line 19
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v3, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    if-eq v3, v4, :cond_0

    .line 11
    .line 12
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v5, v1, [J

    .line 15
    .line 16
    fill-array-data v5, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget v5, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 27
    .line 28
    invoke-virtual {v2, v3, v5}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 29
    .line 30
    .line 31
    :cond_0
    iget v3, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 32
    .line 33
    if-eq v3, v4, :cond_1

    .line 34
    .line 35
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v4, v1, [J

    .line 38
    .line 39
    fill-array-data v4, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget v4, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 50
    .line 51
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 55
    .line 56
    const-wide/16 v5, -0x1

    .line 57
    .line 58
    cmp-long v7, v3, v5

    .line 59
    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v4, v1, [J

    .line 65
    .line 66
    fill-array-data v4, :array_2

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-wide v7, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 77
    .line 78
    invoke-virtual {v2, v3, v7, v8}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 82
    .line 83
    cmp-long v7, v3, v5

    .line 84
    .line 85
    if-eqz v7, :cond_3

    .line 86
    .line 87
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v4, v1, [J

    .line 90
    .line 91
    fill-array-data v4, :array_3

    .line 92
    .line 93
    .line 94
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-wide v7, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 102
    .line 103
    invoke-virtual {v2, v3, v7, v8}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 107
    .line 108
    const/16 v7, 0x16

    .line 109
    .line 110
    cmp-long v8, v3, v5

    .line 111
    .line 112
    if-eqz v8, :cond_4

    .line 113
    .line 114
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v4, v1, [J

    .line 117
    .line 118
    fill-array-data v4, :array_4

    .line 119
    .line 120
    .line 121
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iget-wide v8, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 129
    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v9, v0, [J

    .line 141
    .line 142
    fill-array-data v9, :array_5

    .line 143
    .line 144
    .line 145
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 160
    .line 161
    .line 162
    :cond_4
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 163
    .line 164
    cmp-long v8, v3, v5

    .line 165
    .line 166
    if-eqz v8, :cond_5

    .line 167
    .line 168
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    const/4 v4, 0x4

    .line 171
    new-array v4, v4, [J

    .line 172
    .line 173
    fill-array-data v4, :array_6

    .line 174
    .line 175
    .line 176
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 184
    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    new-array v0, v0, [J

    .line 196
    .line 197
    fill-array-data v0, :array_7

    .line 198
    .line 199
    .line 200
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v2, v3, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 215
    .line 216
    .line 217
    :cond_5
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 218
    .line 219
    if-eqz v0, :cond_6

    .line 220
    .line 221
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 222
    .line 223
    new-array v3, v1, [J

    .line 224
    .line 225
    fill-array-data v3, :array_8

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget-object v3, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 236
    .line 237
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v2, v0, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 246
    .line 247
    .line 248
    :cond_6
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 249
    .line 250
    if-eqz v0, :cond_7

    .line 251
    .line 252
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 253
    .line 254
    new-array v3, v1, [J

    .line 255
    .line 256
    fill-array-data v3, :array_9

    .line 257
    .line 258
    .line 259
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    iget-object v3, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v2, v0, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 277
    .line 278
    .line 279
    :cond_7
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 280
    .line 281
    if-eqz v0, :cond_8

    .line 282
    .line 283
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 284
    .line 285
    new-array v3, v1, [J

    .line 286
    .line 287
    fill-array-data v3, :array_a

    .line 288
    .line 289
    .line 290
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v2, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 298
    .line 299
    .line 300
    :cond_8
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 301
    .line 302
    if-eqz v0, :cond_9

    .line 303
    .line 304
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 305
    .line 306
    new-array v3, v1, [J

    .line 307
    .line 308
    fill-array-data v3, :array_b

    .line 309
    .line 310
    .line 311
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v2, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 319
    .line 320
    .line 321
    :cond_9
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 322
    .line 323
    if-eqz v0, :cond_a

    .line 324
    .line 325
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 326
    .line 327
    new-array v1, v1, [J

    .line 328
    .line 329
    fill-array-data v1, :array_c

    .line 330
    .line 331
    .line 332
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v2, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 340
    .line 341
    .line 342
    :cond_a
    invoke-virtual {v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    return-object v0

    .line 347
    :array_0
    .array-data 8
        0x3cc2004e4cfbfa8L
        -0x9985d97e906d9aL
        0x6bd006d073e41f28L    # 2.1075547490599685E211
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :array_1
    .array-data 8
        -0x1f0f0060070d196L
        -0x1162d82caf798a18L    # -6.744943119683235E224
        -0x79add9df5b6fc843L
    .end array-data

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_2
    .array-data 8
        -0x6d77248e8738ffe5L
        0x53fb8feba9afb61dL    # 3.679529989816243E96
        -0x7b8739a643ab8ebL
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :array_3
    .array-data 8
        -0x3d0872525b0d4b5bL    # -4.143563375358183E14
        0x7b7588c554cbe5b4L    # 5.123489643467775E286
        0x1f52c68456646b85L    # 8.546982072110398E-158
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_4
    .array-data 8
        0x1b6081a4b7fa3383L    # 8.1467696402182E-177
        0x741abb21e13b5c43L    # 1.9138653288382316E251
        0x3f1647fb6eba2be0L    # 8.499595758786017E-5
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_5
    .array-data 8
        -0x4bbb70595270c64fL    # -6.551156224861973E-57
        0x5dc303757b27020dL    # 4.637140746241133E143
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :array_6
    .array-data 8
        -0x2305321ad49b3c8fL    # -7.979985837774896E139
        -0x7123c093894db363L
        0x596c2a7118d2c910L    # 5.818488256354016E122
        0x20ad82e11abac76L
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_7
    .array-data 8
        0x433f6a422838c7a0L    # 8.842556653225888E15
        0x12469dac1759980fL
    .end array-data

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :array_8
    .array-data 8
        0x66a7f3275d8aba33L    # 3.256488707625664E186
        0x5269e64cd4e6516eL    # 1.0304382236976994E89
        -0x3d5563ee8d803068L    # -1.4628804968423797E13
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_9
    .array-data 8
        -0x767ef7aa6c6edf42L    # -6.761353059831397E-263
        0x663910d673e250deL    # 2.662676796299313E184
        0x12bef5db7e6de94eL    # 2.192650667685991E-218
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    :array_a
    .array-data 8
        0x537bbaf5cd1363b8L    # 1.446083724141709E94
        -0x6561a6ea338a2d83L
        0x4df7f0a23458f263L    # 4.033877814991228E67
    .end array-data

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_b
    .array-data 8
        0x13ddd63e670c5dddL
        -0x4243091578d32427L    # -2.6343073944837823E-11
        -0x197855e3607ca02L    # -8.196716446870465E300
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :array_c
    .array-data 8
        0x612476795c626cfdL    # 8.990266127604591E159
        -0x4f23dd67b7de7284L    # -2.4881129265647743E-73
        0x711ba2207cb60eL
    .end array-data
.end method

.method public valueEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/google/common/base/Equivalence;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 35
    .line 36
    return-object p0

    .line 37
    :array_0
    .array-data 8
        -0xd876ea0a7118690L
        0x528d1ea82675d52eL    # 4.634217580537808E89
        -0x5b9c2c8efb76b074L
        0x2bf6e7a5de543a60L    # 6.702075643732227E-97
        0x7d79f66c169c4887L    # 2.653039476176069E296
        -0x449721f8910bd665L    # -1.6455799369268074E-22
    .end array-data
.end method

.method public weakKeys()Lcom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CacheBuilder;->setKeyStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public weakValues()Lcom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CacheBuilder;->setValueStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public weigher(Lcom/google/common/cache/Weigher;)Lcom/google/common/cache/CacheBuilder;
    .locals 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/Weigher<",
            "-TK1;-TV1;>;)",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 18
    .line 19
    const-wide/16 v5, -0x1

    .line 20
    .line 21
    cmp-long v0, v3, v5

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x7

    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 42
    .line 43
    invoke-static {v1, v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/google/common/cache/Weigher;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    .line 53
    .line 54
    return-object p0

    .line 55
    :array_0
    .array-data 8
        0x3a87b4b29ed70f80L    # 9.574716779394359E-27
        0x73063f40bc17c5b3L    # 1.2152329067687161E246
        0x245dd56838bc3229L
        0x4edbce868cc8c5bfL    # 7.676602805566009E71
        -0x29dcfa99ec425e4fL    # -8.724968178092132E106
        0x7bbf8cc03d504d07L    # 1.201026520675997E288
        -0x2b96c286ac500b9dL    # -4.3130076732165137E98
    .end array-data
.end method
