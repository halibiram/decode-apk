.class Lcom/google/common/collect/FilteredEntryMultimap$Keys;
.super Lcom/google/common/collect/Multimaps$Keys;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/FilteredEntryMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$Keys<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/FilteredEntryMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$Keys;-><init>(Lcom/google/common/collect/Multimap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;-><init>(Lcom/google/common/collect/FilteredEntryMultimap$Keys;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$Keys;->count(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/Collection;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    return v1

    .line 44
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    .line 59
    .line 60
    invoke-static {v3, p1, v2}, Lcom/google/common/collect/FilteredEntryMultimap;->access$000(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    if-gt v1, p2, :cond_2

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return v1

    .line 75
    :array_0
    .array-data 8
        -0x71ac08dc8f70abf0L
        -0x20dd498775ec4e7bL    # -1.9141946179605886E150
        0x4f6937548529b57fL    # 3.5642441062196797E74
    .end array-data
.end method
