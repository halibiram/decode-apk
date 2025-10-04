.class public final Lkotlin/io/TextStreamsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u001a%\u0010\u0005\u001a\u00020\u0003*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007*\u00020\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001aD\u0010\r\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\n*\u00020\u00002\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b*\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a\u0011\u0010\u0012\u001a\u00020\u0002*\u00020\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a#\u0010\u0019\u001a\u00020\u0018*\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001a\u0011\u0010\u001d\u001a\u00020\u001c*\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001f"
    }
    d2 = {
        "Ljava/io/Reader;",
        "Lkotlin/Function1;",
        "",
        "",
        "action",
        "forEachLine",
        "(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V",
        "",
        "readLines",
        "(Ljava/io/Reader;)Ljava/util/List;",
        "T",
        "Lkotlin/sequences/Sequence;",
        "block",
        "useLines",
        "(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "Ljava/io/BufferedReader;",
        "lineSequence",
        "(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;",
        "readText",
        "(Ljava/io/Reader;)Ljava/lang/String;",
        "Ljava/io/Writer;",
        "out",
        "",
        "bufferSize",
        "",
        "copyTo",
        "(Ljava/io/Reader;Ljava/io/Writer;I)J",
        "Ljava/net/URL;",
        "",
        "readBytes",
        "(Ljava/net/URL;)[B",
        "kotlin-stdlib"
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
    name = "TextStreamsKt"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,157:1\n57#1:158\n1#2:159\n1#2:162\n1321#3,2:160\n*S KotlinDebug\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n*L\n35#1:158\n35#1:159\n35#1:160,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final copyTo(Ljava/io/Reader;Ljava/io/Writer;I)J
    .locals 5
    .param p0    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/Writer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "out"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-array p2, p2, [C

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    :goto_0
    if-ltz v0, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p1, p2, v3, v0}, Ljava/io/Writer;->write([CII)V

    .line 23
    .line 24
    .line 25
    int-to-long v3, v0

    .line 26
    add-long/2addr v1, v3

    .line 27
    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-wide v1
.end method

.method public static synthetic copyTo$default(Ljava/io/Reader;Ljava/io/Writer;IILjava/lang/Object;)J
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/16 p2, 0x2000

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/io/TextStreamsKt;->copyTo(Ljava/io/Reader;Ljava/io/Writer;I)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static final forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "action"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p0, Ljava/io/BufferedReader;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p0, Ljava/io/BufferedReader;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 19
    .line 20
    const/16 v1, 0x2000

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 23
    .line 24
    .line 25
    move-object p0, v0

    .line 26
    :goto_0
    :try_start_0
    invoke-static {p0}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    const/4 p1, 0x0

    .line 51
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    :catchall_1
    move-exception v0

    .line 57
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public static final lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0    # Ljava/io/BufferedReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/String;",
            ">;"
        }
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
    new-instance v0, L딄땰뒀땠땥땧듻디땣땮땜둥딄땨뎰돷듸땀디땬땥딤땣둠땃땬뒘됩땰땸둥둥뒬뒀땧돴뒬둣뎹둔땳뒬돠딻땔딠됐딞땀돴뒵땪뎻듬됩될뎽땵둡딨땭땭돴딀되됐든땜뒋땹땤땭뎨딝두땨땵든뒐땮딄따딽딀둣도따땰돛땃뎻딁땯뒛둣돶뎰듽둥땄땱뒹듟둣땟딅뎰딤땍땥땃땜듼돰둔돠듐뒾뒘둑땵뎬딨딐딀듟땱땱돝딽;

    .line 7
    .line 8
    invoke-direct {v0, p0}, L딄땰뒀땠땥땧듻디땣땮땜둥딄땨뎰돷듸땀디땬땥딤땣둠땃땬뒘됩땰땸둥둥뒬뒀땧돴뒬둣뎹둔땳뒬돠딻땔딠됐딞땀돴뒵땪뎻듬됩될뎽땵둡딨땭땭돴딀되됐든땜뒋땹땤땭뎨딝두땨땵든뒐땮딄따딽딀둣도따땰돛땃뎻딁땯뒛둣돶뎰듽둥땄땱뒹듟둣땟딅뎰딤땍땥땃땜듼돰둔돠듐뒾뒘둑땵뎬딨딐딀듟땱땱돝딽;-><init>(Ljava/io/BufferedReader;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->constrainOnce(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final readBytes(Ljava/net/URL;)[B
    .locals 2
    .param p0    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :try_start_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :catchall_1
    move-exception v1

    .line 25
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v1
.end method

.method public static final readLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 3
    .param p0    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
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
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, L뒬딤뒵듰돴뒷땦딃둠돠뒛땸둠땋뒐땰돼딀듻뒈땁땯딽따둥딄땥땫땩딌땰뎬뎨딝땁듼땪땀땔됐땰딃딠땪둬뒾땫땱듐딨디돝땸땄드뒤딄땥땠뎽듸따딨딄따듟뎨딝딝뒉딸듽드딞뎨듌뒛돝돠둥딟땍뎻땣디뒤뎨딅땅땵딞땠뎬땅뎽돤땥땱딤뎡뒹듨듟땣딄땝듻듌딄딠땅딟뎽뒀돳뎸땭둥됩땭딻땬뒻돷돼된둘됐뒤됫;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v0, v2}, L뒬딤뒵듰돴뒷땦딃둠돠뒛땸둠땋뒐땰돼딀듻뒈땁땯딽따둥딄땥땫땩딌땰뎬뎨딝땁듼땪땀땔됐땰딃딠땪둬뒾땫땱듐딨디돝땸땄드뒤딄땥땠뎽듸따딨딄따듟뎨딝딝뒉딸듽드딞뎨듌뒛돝돠둥딟땍뎻땣디뒤뎨딅땅땵딞땠뎬땅뎽돤땥땱딤뎡뒹듨듟땣딄땝듻듌딄딠땅딟뎽뒀돳뎸땭둥됩땭딻땬뒻돷돼된둘됐뒤됫;-><init>(Ljava/util/ArrayList;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v1}, Lkotlin/io/TextStreamsKt;->forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static final readText(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance v0, Ljava/io/StringWriter;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p0, v0, v3, v1, v2}, Lkotlin/io/TextStreamsKt;->copyTo$default(Ljava/io/Reader;Ljava/io/Writer;IILjava/lang/Object;)J

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "toString(...)"

    .line 22
    .line 23
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public static final useLines(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/String;",
            ">;+TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p0, Ljava/io/BufferedReader;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p0, Ljava/io/BufferedReader;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 19
    .line 20
    const/16 v1, 0x2000

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 23
    .line 24
    .line 25
    move-object p0, v0

    .line 26
    :goto_0
    const/4 v0, 0x1

    .line 27
    :try_start_0
    invoke-static {p0}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    :catchall_1
    move-exception v1

    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 56
    .line 57
    .line 58
    throw v1
.end method
