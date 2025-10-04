.class Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;
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
    name = "ValueStrengthParser"
.end annotation


# instance fields
.field private final strength:Lcom/google/common/cache/LocalCache$Strength;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$Strength;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;->strength:Lcom/google/common/cache/LocalCache$Strength;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

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
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v3, 0x5

    .line 11
    new-array v3, v3, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {p3, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p1, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 27
    .line 28
    if-nez p3, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_1
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    new-array v1, v1, [J

    .line 35
    .line 36
    fill-array-data v1, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    iget-object v1, p1, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 47
    .line 48
    invoke-static {v0, p3, p2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;->strength:Lcom/google/common/cache/LocalCache$Strength;

    .line 52
    .line 53
    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x7cbb8cadfbd6890cL    # 6.873057755761774E292
        0x4444567b367f7cb4L    # 7.503330318095383E20
        0x685235c08a7cb2c8L    # 3.323276123484546E194
        0xaac605b172e3efbL
        -0x7984e10c9de12ee0L    # -1.912441342824754E-277
    .end array-data

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
    .line 80
    .line 81
    :array_1
    .array-data 8
        0x66dbc33273e4b0fdL    # 3.0199219136784496E187
        -0xd655b8c88091922L
        0x321bc67d6199a85dL    # 2.575612538201203E-67
        0x769620cb9b72ba69L    # 1.741969258579742E263
    .end array-data
.end method
