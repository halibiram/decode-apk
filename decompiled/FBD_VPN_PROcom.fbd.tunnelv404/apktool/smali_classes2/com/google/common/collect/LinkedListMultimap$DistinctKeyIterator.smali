.class Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DistinctKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field current:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field expectedModCount:I

.field next:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final seenKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->seenKeys:Ljava/util/Set;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->expectedModCount:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->expectedModCount:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->checkForConcurrentModification()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->checkForConcurrentModification()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->seenKeys:Ljava/util/Set;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->seenKeys:Ljava/util/Set;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->checkForConcurrentModification()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->expectedModCount:I

    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 8
        -0x464761167cfa9436L    # -1.2138967257070612E-30
        -0x6bffaa36173353b1L    # -2.42613624442623E-212
        -0x540ec4f9129ede54L
        -0x192fd968470abc4fL    # -1.7568313997814206E187
        -0x1c4b4c1b09ad2b0dL    # -2.0001602259226374E172
        -0x4d7a1078f833d40dL    # -2.6036436255145424E-65
        0x5e548779ea40eb59L    # 2.56348051630209E146
        0x5d4c34db5c19ddfbL    # 2.6871799801304545E141
    .end array-data
.end method
