.class Lcom/google/common/collect/Iterators$PeekingImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/PeekingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeekingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/PeekingIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private hasPeeked:Z

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private peekedElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/util/Iterator;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    .line 23
    .line 24
    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x3ca1eccb02b4ca00L    # 1.2437948376438503E-16
        0x4689a38425cfd3b7L    # 6.500191603926299E31
        0x46f5b4cafde174b5L    # 7.044071901186468E33
        -0x6ab93d955351d3a2L    # -3.544496526443398E-206
        -0xe2b1c68f0b251ccL    # -2.176379871600818E240
        -0x687fab4bd64dba76L    # -1.747761838781744E-195
    .end array-data
.end method
