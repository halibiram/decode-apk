.class Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

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
    const/16 v2, 0x8

    .line 11
    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$220(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        -0x3a4154bb59d072acL    # -9.491600796301292E27
        -0x2c0cd78a1b409775L    # -2.557584006947633E96
        0x6873fca4204d9e75L    # 1.4590232038836208E195
        -0x2bec18fb9a6e27aL
        -0x4e33aa04d99c907fL    # -8.211215559192355E-69
        0x2289201d45cf6494L    # 2.575525479869666E-142
        0x73913dd485147a8fL    # 4.822054204552808E248
        0x548f3f63002a2182L    # 2.1358232914914739E99
    .end array-data
.end method
