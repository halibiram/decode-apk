.class Lcom/google/common/cache/CacheBuilderSpec$MaximumSizeParser;
.super Lcom/google/common/cache/CacheBuilderSpec$LongParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaximumSizeParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$LongParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public parseLong(Lcom/google/common/cache/CacheBuilderSpec;J)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

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
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v4, 0x5

    .line 13
    new-array v4, v4, [J

    .line 14
    .line 15
    fill-array-data v4, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    .line 26
    .line 27
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    new-array v2, v2, [J

    .line 39
    .line 40
    fill-array-data v2, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    .line 51
    .line 52
    invoke-static {v1, v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x3a15abd2331e930aL    # -6.518701048058999E28
        -0x336f81bc7acae7d8L    # -6.625894780189129E60
        -0x182dc7d2101a1a33L    # -1.2988306721901217E192
        -0x7092f204de6137eeL
        -0x572acc329b24c209L    # -5.510178637242514E-112
    .end array-data

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
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 8
        -0x3a2cc625bf6546c9L    # -2.3800618503829917E28
        0x54bb065a0a05d59L
        -0x6d54a113c7bfbaf4L    # -9.692158865802129E-219
        0x5012008356352209L    # 5.211224145549562E77
        0x2a84c1ca46bd9c7cL    # 7.240289607204343E-104
        0x38854427f455d8dbL    # 1.999867096138836E-36
    .end array-data
.end method
