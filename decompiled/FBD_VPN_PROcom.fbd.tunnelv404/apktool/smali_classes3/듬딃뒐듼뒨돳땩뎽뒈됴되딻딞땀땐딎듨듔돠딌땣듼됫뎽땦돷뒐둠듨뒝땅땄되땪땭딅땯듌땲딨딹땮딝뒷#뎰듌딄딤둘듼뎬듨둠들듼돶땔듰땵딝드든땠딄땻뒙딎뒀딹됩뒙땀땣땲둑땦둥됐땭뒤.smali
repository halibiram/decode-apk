.class public abstract L듬딃뒐듼뒨돳땩뎽뒈됴되딻딞땀땐딎듨듔돠딌땣듼됫뎽땦돷뒐둠듨뒝땅땄되땪땭딅땯듌땲딨딹땮딝뒷땀딜뎰땭돼돸딟드땃됐돛딅됐둣돠땲돵뒷딨듻돰둘뎰둬뒝돰딻듰된땄듻땝둘땩딅돝뒘땣돼돰땀딌뎠땻듬듔뎰땔듻땪뎰듌딄딤둘듼뎬듨둠들듼돶땔듰땵딝드든땠딄땻뒙딎뒀딹됩뒙땀땣땲둑땦둥됐땭뒤;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final eachCount(Lkotlin/collections/Grouping;)Ljava/util/Map;
    .locals 6
    .param p0    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {p0, v2}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x1

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_0

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const/4 v5, 0x0

    .line 45
    :goto_1
    if-eqz v5, :cond_1

    .line 46
    .line 47
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 48
    .line 49
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 50
    .line 51
    .line 52
    :cond_1
    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 53
    .line 54
    iget v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 55
    .line 56
    add-int/2addr v5, v4

    .line 57
    iput v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 58
    .line 59
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Ljava/lang/Iterable;

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    .line 85
    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace, R of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace>"

    .line 86
    .line 87
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 99
    .line 100
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-interface {v2, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method
