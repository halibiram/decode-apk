.class public Lj$/util/DesugarCollections;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 987
    new-instance v0, Lj$/util/g;

    invoke-direct {v0, p0}, Lj$/util/g;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1325
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 1326
    new-instance v0, Lj$/util/j;

    .line 1458
    invoke-direct {v0, p0}, Lj$/util/h;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 1327
    :cond_0
    new-instance v0, Lj$/util/h;

    invoke-direct {v0, p0}, Lj$/util/h;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1513
    new-instance v0, Lj$/util/i;

    invoke-direct {v0, p0}, Lj$/util/i;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1163
    new-instance v0, Lj$/util/k;

    .line 1177
    invoke-direct {v0, p0}, Lj$/util/g;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lj$/util/m;

    invoke-direct {v0, p0}, Lj$/util/m;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 334
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Lj$/util/u;

    .line 472
    invoke-direct {v0, p0}, Lj$/util/o;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 336
    :cond_0
    new-instance v0, Lj$/util/o;

    invoke-direct {v0, p0}, Lj$/util/o;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 505
    new-instance v0, Lj$/util/t;

    invoke-direct {v0, p0}, Lj$/util/t;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 242
    new-instance v0, Lj$/util/v;

    .line 253
    invoke-direct {v0, p0}, Lj$/util/m;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 900
    new-instance v0, Lj$/util/w;

    invoke-direct {v0, p0}, Lj$/util/w;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TT;>;)",
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation

    .line 279
    new-instance v0, Lj$/util/x;

    invoke-direct {v0, p0}, Lj$/util/x;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method
