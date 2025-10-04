.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$SplittingIterator;,
        Lcom/google/common/base/Splitter$Strategy;,
        Lcom/google/common/base/Splitter$MapSplitter;
    }
.end annotation


# instance fields
.field private final limit:I

.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/google/common/base/Splitter$Strategy;

.field private final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method private constructor <init>(Lcom/google/common/base/Splitter$Strategy;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    .line 4
    iput-boolean p2, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    .line 5
    iput-object p3, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 6
    iput p4, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method

.method public static synthetic access$000(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/base/Splitter;->splittingIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/common/base/Splitter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Lcom/google/common/base/Splitter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/base/Splitter;->limit:I

    .line 2
    .line 3
    return p0
.end method

.method public static fixedLength(I)Lcom/google/common/base/Splitter;
    .locals 3

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/google/common/base/Splitter;

    .line 25
    .line 26
    new-instance v1, Lcom/google/common/base/Splitter$4;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$4;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        -0x2775b5750f010b47L    # -3.314961084236641E118
        -0x7ded949f80d1da79L
        0x2d8484a6286b6810L    # 2.0145113396670378E-89
        0x53733b289ed181d7L    # 1.002865133487063E94
        -0x444332bc93655fc9L    # -6.099020515804701E-21
        -0x7532229e9c48839L
    .end array-data
.end method

.method public static on(C)Lcom/google/common/base/Splitter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Splitter;->on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0
.end method

.method public static on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$1;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/google/common/base/CharMatcher;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0
.end method

.method private static on(Lcom/google/common/base/CommonPattern;)Lcom/google/common/base/Splitter;
    .locals 6

    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v2, v1, [J

    const-wide v3, -0x3e4ff7bd01ae9b18L    # -2.6897689431794596E8

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/common/base/CommonPattern;->matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/CommonMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CommonMatcher;->matches()Z

    move-result v0

    xor-int/2addr v0, v1

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x7

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$3;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$3;-><init>(Lcom/google/common/base/CommonPattern;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0

    :array_0
    .array-data 8
        0x5559d000f4357a81L    # 1.445336093978873E103
        0xa747242bb191844L
        0x24e1f8e8b21dc866L
        0x79a28ea90a20e8d5L    # 8.223941792493106E277
        -0x19336f094cc7eaaeL    # -1.5536771385504876E187
        0x30ee623b1c5073a1L    # 5.373929049574281E-73
        0x36deaf145e61e7c7L    # 2.1498654163692313E-44
    .end array-data
.end method

.method public static on(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .locals 5

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x7

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$2;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0

    nop

    :array_0
    .array-data 8
        0x16bbfdbf5883d26aL    # 3.656826969521714E-199
        -0x6077b4064cb0e9daL    # -8.848323023864432E-157
        0x2932987b4443b6dbL
        -0x68615e8bced4ca08L    # -6.556309476320181E-195
        -0x4daba8a6c508039dL    # -3.0179889520062626E-66
        0x32c39dd1432ec442L    # 3.725391220818112E-64
        0x309df02311b6a69eL    # 1.6547194716662776E-74
    .end array-data
.end method

.method public static on(Ljava/util/regex/Pattern;)Lcom/google/common/base/Splitter;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 8
    new-instance v0, Lcom/google/common/base/JdkPattern;

    invoke-direct {v0, p0}, Lcom/google/common/base/JdkPattern;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Lcom/google/common/base/CommonPattern;)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0
.end method

.method public static onPattern(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .locals 0
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Platform;->compilePattern(Ljava/lang/String;)Lcom/google/common/base/CommonPattern;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/common/base/Splitter;->on(Lcom/google/common/base/CommonPattern;)Lcom/google/common/base/Splitter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private splittingIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Lcom/google/common/base/Splitter$Strategy;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method


# virtual methods
.method public limit(I)Lcom/google/common/base/Splitter;
    .locals 4

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/google/common/base/Splitter;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x41e93ac077c8b4beL    # -1.3254175819931994E-9
        0x7818a0545bebb3c6L    # 3.252483214753431E270
        0x5ab200797ede28d4L    # 7.79893666848091E128
        0x7be2c7bf7e7ade00L    # 5.719362082331287E288
        0xabe5727769a1a28L
    .end array-data
.end method

.method public omitEmptyStrings()Lcom/google/common/base/Splitter;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/base/Splitter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 6
    .line 7
    iget v3, p0, Lcom/google/common/base/Splitter;->limit:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/base/Splitter$5;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Splitter$5;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public splitToList(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/base/Splitter;->splittingIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public trimResults()Lcom/google/common/base/Splitter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter;->trimResults(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public trimResults(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    iget-boolean v2, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    iget v3, p0, Lcom/google/common/base/Splitter;->limit:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    return-object v0
.end method

.method public withKeyValueSeparator(C)Lcom/google/common/base/Splitter$MapSplitter;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Splitter;->withKeyValueSeparator(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$MapSplitter;

    move-result-object p1

    return-object p1
.end method

.method public withKeyValueSeparator(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$MapSplitter;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 3
    new-instance v0, Lcom/google/common/base/Splitter$MapSplitter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Splitter$MapSplitter;-><init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter$1;)V

    return-object v0
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Splitter$MapSplitter;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Splitter;->withKeyValueSeparator(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$MapSplitter;

    move-result-object p1

    return-object p1
.end method
