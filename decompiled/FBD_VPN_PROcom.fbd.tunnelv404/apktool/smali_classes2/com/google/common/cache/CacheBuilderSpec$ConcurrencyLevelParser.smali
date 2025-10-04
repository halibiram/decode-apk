.class Lcom/google/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;
.super Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConcurrencyLevelParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public parseInteger(Lcom/google/common/cache/CacheBuilderSpec;I)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

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
    iget-object v2, p1, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 8
        -0x4890e456e1b4b6e1L    # -1.1159465395109537E-41
        0xaeb3a6b174e77ecL
        -0x5c996b305fb3020cL    # -3.792458238893088E-138
        -0x6652c39423de62e5L    # -5.375401865361007E-185
        0x3f7461b2ad8a0cd8L    # 0.004975984535693111
        0x302761832dc63789L    # 1.0096073071022989E-76
    .end array-data
.end method
