.class final Lcom/google/common/collect/DiscreteDomain$LongDomain;
.super Lcom/google/common/collect/DiscreteDomain;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DiscreteDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/DiscreteDomain;-><init>(ZLcom/google/common/collect/DiscreteDomain$1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$200()Lcom/google/common/collect/DiscreteDomain$LongDomain;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    .line 2
    .line 3
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->distance(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p1

    return-wide p1
.end method

.method public distance(Ljava/lang/Long;Ljava/lang/Long;)J
    .locals 9

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    cmp-long p1, v0, v6

    if-lez p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1

    :cond_1
    return-wide v0
.end method

.method public bridge synthetic maxValue()Ljava/lang/Comparable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->maxValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public maxValue()Ljava/lang/Long;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minValue()Ljava/lang/Comparable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->minValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public minValue()Ljava/lang/Long;
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->next(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public next(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic offset(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->offset(Ljava/lang/Long;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public offset(Ljava/lang/Long;J)Ljava/lang/Long;
    .locals 6

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(JLjava/lang/String;)J

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, p2

    const-wide/16 p2, 0x0

    cmp-long v0, v2, p2

    if-gez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v4, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v1, [J

    fill-array-data p3, :array_1

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 8
        0x653ab1b1cf061172L    # 4.3268618760980367E179
        -0x16d4fc3be9010450L    # -4.0387547635682765E198
    .end array-data

    :array_1
    .array-data 8
        -0x1ce30d854d1249fbL    # -2.7311396875676717E169
        0x752d16cd90a642b4L    # 2.729833923652235E256
    .end array-data
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->previous(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public previous(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
    return-object v0

    .line 17
    :array_0
    .array-data 8
        -0x502cd8abaf47ca7fL    # -2.5845934329501824E-78
        -0x77a44c99aa183b7cL
        -0x2fe1fa290abd1221L    # -8.691010098416317E77
        0x3fa3a577831d341aL    # 0.03837178683770777
    .end array-data
.end method
