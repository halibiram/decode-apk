.class Lcom/google/common/collect/Iterables$8;
.super Lcom/google/common/collect/FluentIterable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables;->consumingIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Iterables$8;->val$iterable:Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Iterables$8;->val$iterable:Ljava/lang/Iterable;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/Queue;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/google/common/collect/ConsumingQueueIterator;

    .line 8
    .line 9
    check-cast v0, Ljava/util/Queue;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/google/common/collect/ConsumingQueueIterator;-><init>(Ljava/util/Queue;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->consumingIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
        -0x2e6cde16124c0771L    # -9.292016351211117E84
        0x7ff7abf649a0ae6fL
        -0x53b05960ebe57f0L
        0x2e63cc265255bcedL    # 3.1846426295215176E-85
        0x4b6961de22f7a0d4L    # 1.944912755402096E55
    .end array-data
.end method
