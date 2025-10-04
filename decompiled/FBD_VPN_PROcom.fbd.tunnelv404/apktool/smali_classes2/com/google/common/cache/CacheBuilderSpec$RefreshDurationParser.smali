.class Lcom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;
.super Lcom/google/common/cache/CacheBuilderSpec$DurationParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefreshDurationParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$DurationParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

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
    const/4 v2, 0x5

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
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-wide p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    .line 27
    .line 28
    iput-object p4, p1, Lcom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 8
        0x20ac20feb9a0017cL
        0x191ca66607b3eb6dL
        -0x66b95f9715e1fc13L    # -6.500279296975562E-187
        0x25983da6a74480acL
        -0x645b86cecf3892fcL
    .end array-data
.end method
