.class Lcom/google/common/cache/CacheBuilderSpec$RecordStatsParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordStatsParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p3, 0x0

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
    invoke-static {p3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p1, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    .line 27
    .line 28
    if-nez p3, :cond_1

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    :cond_1
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    new-array v0, v0, [J

    .line 35
    .line 36
    fill-array-data v0, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-static {p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 50
    .line 51
    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x7c50ba9e0ea989b3L    # 6.52116429111073E290
        -0x5c7d2f34222158cbL
        -0x7cff932c5c18f293L    # -3.21471430624081E-294
        0x6932ea2d227c8719L    # 5.655588316901051E198
        -0x8226142e6969486L    # -2.445019146646328E269
    .end array-data

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
    :array_1
    .array-data 8
        0x48994bbbf4e7576cL    # 5.508945407652212E41
        0x15a169f39b83931L
        0x675c5403ddb0c07L
        -0x214018a3e27f3c1aL    # -2.5496443694164393E148
    .end array-data
.end method
