.class public final Lkotlin/streams/jdk8/StreamsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\u001a%\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a\u0019\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0002*\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0007\u001a\u0019\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0002*\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\n\u001a\u0019\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0002*\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\r\u001a%\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a%\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001a\u0019\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0010*\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0013\u001a\u0019\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0010*\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0014\u001a\u0019\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0010*\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "T",
        "j$/util/stream/Stream",
        "Lkotlin/sequences/Sequence;",
        "asSequence",
        "(Lj$/util/stream/Stream;)Lkotlin/sequences/Sequence;",
        "j$/util/stream/IntStream",
        "",
        "(Lj$/util/stream/IntStream;)Lkotlin/sequences/Sequence;",
        "j$/util/stream/LongStream",
        "",
        "(Lj$/util/stream/LongStream;)Lkotlin/sequences/Sequence;",
        "j$/util/stream/DoubleStream",
        "",
        "(Lj$/util/stream/DoubleStream;)Lkotlin/sequences/Sequence;",
        "asStream",
        "(Lkotlin/sequences/Sequence;)Lj$/util/stream/Stream;",
        "",
        "toList",
        "(Lj$/util/stream/Stream;)Ljava/util/List;",
        "(Lj$/util/stream/IntStream;)Ljava/util/List;",
        "(Lj$/util/stream/LongStream;)Ljava/util/List;",
        "(Lj$/util/stream/DoubleStream;)Ljava/util/List;",
        "kotlin-stdlib-jdk8"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "StreamsKt"
.end annotation


# direct methods
.method public static final asSequence(Lj$/util/stream/DoubleStream;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0    # Lj$/util/stream/DoubleStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/DoubleStream;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lkotlin/streams/jdk8/StreamsKt$asSequence$$inlined$Sequence$4;

    invoke-direct {v0, p0}, Lkotlin/streams/jdk8/StreamsKt$asSequence$$inlined$Sequence$4;-><init>(Lj$/util/stream/DoubleStream;)V

    return-object v0
.end method

.method public static final asSequence(Lj$/util/stream/IntStream;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0    # Lj$/util/stream/IntStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/IntStream;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lkotlin/streams/jdk8/StreamsKt$asSequence$$inlined$Sequence$2;

    invoke-direct {v0, p0}, Lkotlin/streams/jdk8/StreamsKt$asSequence$$inlined$Sequence$2;-><init>(Lj$/util/stream/IntStream;)V

    return-object v0
.end method

.method public static final asSequence(Lj$/util/stream/LongStream;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0    # Lj$/util/stream/LongStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/LongStream;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lkotlin/streams/jdk8/StreamsKt$asSequence$$inlined$Sequence$3;

    invoke-direct {v0, p0}, Lkotlin/streams/jdk8/StreamsKt$asSequence$$inlined$Sequence$3;-><init>(Lj$/util/stream/LongStream;)V

    return-object v0
.end method

.method public static final asSequence(Lj$/util/stream/Stream;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0    # Lj$/util/stream/Stream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/streams/jdk8/StreamsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v0, p0}, Lkotlin/streams/jdk8/StreamsKt$asSequence$$inlined$Sequence$1;-><init>(Lj$/util/stream/Stream;)V

    return-object v0
.end method

.method public static final asStream(Lkotlin/sequences/Sequence;)Lj$/util/stream/Stream;
    .locals 2
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
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
    new-instance v0, L땥됐된돳된땱딀땋딎딌딅될듽뒘땋뒷둣듽뒾드됩들됴듌딞됫뒙땭된뒾뎹딀뎹땣둥득드듐돸듽땤뎸뒛땭딅딜둠땅땟뒬딐둠딞땧뎨땔딌됐돤뎡딄뎠뎨뒼돼듽딃듰땦땸땡됴땱돶듻딁땀땦둣땱땻딐딃딎땰됴땥땹도둬땍듨딎뒨뎹듐딁딝딌땠땭돶뒨땯둔뒷뒉돸득땁뒙땰돷됴따뒬뒉땫딸됴도됫뎠돤땰딄땅딅땠땄;

    .line 7
    .line 8
    invoke-direct {v0, p0}, L땥됐된돳된땱딀땋딎딌딅될듽뒘땋뒷둣듽뒾드됩들됴듌딞됫뒙땭된뒾뎹딀뎹땣둥득드듐돸듽땤뎸뒛땭딅딜둠땅땟뒬딐둠딞땧뎨땔딌됐돤뎡딄뎠뎨뒼돼듽딃듰땦땸땡됴땱돶듻딁땀땦둣땱땻딐딃딎땰됴땥땹도둬땍듨딎뒨뎹듐딁딝딌땠땭돶뒨땯둔뒷뒉돸득땁뒙땰돷됴따뒬뒉땫딸됴도됫뎠돤땰딄땅딅땠땄;-><init>(Lkotlin/sequences/Sequence;)V

    .line 9
    .line 10
    .line 11
    const/16 p0, 0x10

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, p0, v1}, Lj$/util/stream/StreamSupport;->stream(Ljava/util/function/Supplier;IZ)Lj$/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "stream(...)"

    .line 19
    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public static final toList(Lj$/util/stream/DoubleStream;)Ljava/util/List;
    .locals 1
    .param p0    # Lj$/util/stream/DoubleStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/DoubleStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->toArray()[D

    move-result-object p0

    const-string v0, "toArray(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([D)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lj$/util/stream/IntStream;)Ljava/util/List;
    .locals 1
    .param p0    # Lj$/util/stream/IntStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/IntStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Lj$/util/stream/IntStream;->toArray()[I

    move-result-object p0

    const-string v0, "toArray(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lj$/util/stream/LongStream;)Ljava/util/List;
    .locals 1
    .param p0    # Lj$/util/stream/LongStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/LongStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->toArray()[J

    move-result-object p0

    const-string v0, "toArray(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lj$/util/stream/Stream;)Ljava/util/List;
    .locals 1
    .param p0    # Lj$/util/stream/Stream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "collect(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
