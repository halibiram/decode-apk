.class final Lcom/google/common/collect/Cut$BelowAll;
.super Lcom/google/common/collect/Cut;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BelowAll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Cut<",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/Cut$BelowAll;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/Cut$BelowAll;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/collect/Cut$BelowAll;->INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    const-wide v2, -0x6f3ac59c310a9fe0L    # -7.000742733545514E-228

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-wide v2, v1, v4

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic access$000()Lcom/google/common/collect/Cut$BelowAll;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/Cut$BelowAll;->INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

    .line 2
    .line 3
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/Cut$BelowAll;->INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/Cut<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->minValue()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    return-object p0
.end method

.method public compareTo(Lcom/google/common/collect/Cut;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut<",
            "Ljava/lang/Comparable<",
            "*>;>;)I"
        }
    .end annotation

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut$BelowAll;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result p1

    return p1
.end method

.method public describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x150891c12b449d0eL    # -1.8806210846437394E207
        -0xc6d39cd0cd1637L
    .end array-data
.end method

.method public describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/AssertionError;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public endpoint()Ljava/lang/Comparable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x5

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
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x21db7ab98a72767dL    # -3.203008659659192E145
        0x582636168bde9fb6L    # 4.375845262421629E116
        0x611c4a5470e5b3ccL    # 6.214641124027278E159
        -0x617f35c344695181L    # -9.33002385423592E-162
        0x2a3f9481590a8966L
    .end array-data
.end method

.method public greatestValueBelow(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/AssertionError;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isLessThan(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->minValue()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    return-object v0

    .line 17
    :array_0
    .array-data 8
        -0x78eff3facb35bcf9L
        -0x77192b366aa5adf0L
    .end array-data
.end method

.method public typeAsLowerBound()Lcom/google/common/collect/BoundType;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public typeAsUpperBound()Lcom/google/common/collect/BoundType;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x6

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
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x532f6576ba067c3cL    # -7.959853973825461E-93
        -0x3de90be1b10d6ec7L    # -2.464622687664182E10
        0x512a6db3e940dd82L    # 1.0027710205611394E83
        0x4e6bf0008f5ae5d2L    # 6.025549923009885E69
        0x52b33b68379e41cdL    # 2.4485247524716186E90
        -0x68573c2330331248L    # -1.0601631163999676E-194
    .end array-data
.end method

.method public withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/Cut<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/Cut<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/AssertionError;

    .line 2
    .line 3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v0, 0x6

    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x225c6cee9c0d7ff4L
        0x681f0238fb7c6861L    # 3.53688175433095E193
        0x4d61380c9024477fL    # 5.666769406927236E64
        -0x38b268e9d420c53eL    # -3.0728201868992015E35
        0x6acb0a84fccf4912L    # 2.713009212869005E206
        -0x4b2e745d9f39293fL    # -2.8622345015529867E-54
    .end array-data
.end method
