.class public abstract L따딨땋듐뒬뒝뎸딜돴뒋돰둣도듻땮드뒝뒀땩듼땸땻들뒈땲둔딐뒼듬뒷든딀됫땠땭뒘되딃돤듟땪듨뎬땯듬돤됩땝땬딻두뒉디딝딽땍듌딄땭땁딄딌듌뒬땩듻뒼도드도뒐땫됨뒀땲땨뎸딄듻뒝땹듻땬딄땧딞딌됫딁듟뒬땅땸돨뒙딜돰듸뎠땹둠땟뎽둠듐둣될뒈돶뒋듌딠둔뎻뒬땍뒈듐딄땻뒋됴됩뒝딟딤땰됨딅딤;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final appendText(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V
    .locals 3
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
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
    const-string v0, "text"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "charset"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {}, L딤뎸땨땹땨땤뒈득땥땻딤뒀듼뒼뒷듬돛딟든뒬뎬된딝두뒤듟땵땯딐뒤뒉땟도뎬돰땝따땨땐뎬뎬듬딸득땋듔뎡딌둡뎽땟둘땹딟땋드땐뎹둬땤뒘된땁딀딟됩땥듻땡딅뎽디돵둘딽딁될돝딤됴땯딤뒈딃땬땣돶듰뒀돵둣됨땻땐딹딀땍땹딹땍됴돶땵땝땳듸돴땠땮딎돛뎸땡돵돝둔뒨땦돷땟땁뎹딀되딄둘딽돰땔뒬;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅()Ljava/nio/file/StandardOpenOption;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    aput-object v2, v0, v1

    .line 25
    .line 26
    invoke-static {p0, p1, p2, v0}, L따딨땋듐뒬뒝뎸딜돴뒋돰둣도듻땮드뒝뒀땩듼땸땻들뒈땲둔딐뒼듬뒷든딀됫땠땭뒘되딃돤듟땪듨뎬땯듬돤됩땝땬딻두뒉디딝딽땍듌딄땭땁딄딌듌뒬땩듻뒼도드도뒐땫됨뒀땲땨뎸딄듻뒝땹듻땬딄땧딞딌됫딁듟뒬땅땸돨뒙딜돰듸뎠땹둠땟뎽둠듐둣될뒈돶뒋듌딠둔뎻뒬땍뒈듐딄땻뒋됴됩뒝딟딤땰됨딅딤;->writeText(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic appendText$default(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, L따딨땋듐뒬뒝뎸딜돴뒋돰둣도듻땮드뒝뒀땩듼땸땻들뒈땲둔딐뒼듬뒷든딀됫땠땭뒘되딃돤듟땪듨뎬땯듬돤됩땝땬딻두뒉디딝딽땍듌딄땭땁딄딌듌뒬땩듻뒼도드도뒐땫됨뒀땲땨뎸딄듻뒝땹듻땬딄땧딞딌됫딁듟뒬땅땸돨뒙딜돰듸뎠땹둠땟뎽둠듐둣될뒈돶뒋듌딠둔뎻뒬땍뒈듐딄땻뒋됴됩뒝딟딤땰됨딅딤;->appendText(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final readText(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
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
    const-string v0, "charset"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v1, v0, [Ljava/nio/file/OpenOption;

    .line 13
    .line 14
    new-instance v2, Ljava/io/InputStreamReader;

    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, [Ljava/nio/file/OpenOption;

    .line 21
    .line 22
    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :catchall_1
    move-exception p1

    .line 41
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public static synthetic readText$default(Ljava/nio/file/Path;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, L따딨땋듐뒬뒝뎸딜돴뒋돰둣도듻땮드뒝뒀땩듼땸땻들뒈땲둔딐뒼듬뒷든딀됫땠땭뒘되딃돤듟땪듨뎬땯듬돤됩땝땬딻두뒉디딝딽땍듌딄땭땁딄딌듌뒬땩듻뒼도드도뒐땫됨뒀땲땨뎸딄듻뒝땹듻땬딄땧딞딌됫딁듟뒬땅땸돨뒙딜돰듸뎠땹둠땟뎽둠듐둣될뒈돶뒋듌딠둔뎻뒬땍뒈듐딄땻뒋됴됩뒝딟딤땰됨딅딤;->readText(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final varargs writeText(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)V
    .locals 3
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/nio/file/OpenOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
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
    const-string v0, "text"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "charset"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "options"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    array-length v0, p3

    .line 22
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    check-cast p3, [Ljava/nio/file/OpenOption;

    .line 27
    .line 28
    invoke-static {p0, p3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :try_start_0
    instance-of p3, p1, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    check-cast p1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p0, p1, p2}, L뒬따뎻딁뒬뎻뒾듌됴됩땅돼땩땭듻돸됐됩듌돼뒘땸딌뎠됨뒐듨뒘돳돰돝딁돤뎻땡뒾두딸돝딤땻되땜뒐딠됫도딎뒤듟딟든뎽딸돶땮땁되딄득듸땯땸될뎹땄딤돳땱땲돰든땍땱땰땠딃듐땝둥딁뒙땟땪뎰듨돸드뒼땔됫뒨뎡도돨돤둬땨뒙뎻됫땪땟땮뒐뒈뒹땠뎸돠됩딽듌딻됐땮둔둘뒨땥따땝땋땋딝든듽딠뒙뒝;->writeTextImpl(Ljava/io/OutputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :cond_0
    invoke-static {p2}, L뒬따뎻딁뒬뎻뒾듌됴됩땅돼땩땭듻돸됐됩듌돼뒘땸딌뎠됨뒐듨뒘돳돰돝딁돤뎻땡뒾두딸돝딤땻되땜뒐딠됫도딎뒤듟딟든뎽딸돶땮땁되딄득듸땯땸될뎹땄딤돳땱땲돰든땍땱땰땠딃듐땝둥딁뒙땟땪뎰듨돸드뒼땔됫뒨뎡도돨돤둬땨뒙뎻됫땪땟땮뒐뒈뒹땠뎸돠됩딽듌딻됐땮둔둘뒨땥따땝땋땋딝든듽딠뒙뒝;->newReplaceEncoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    instance-of p3, p1, Ljava/nio/CharBuffer;

    .line 52
    .line 53
    if-eqz p3, :cond_1

    .line 54
    .line 55
    move-object p3, p1

    .line 56
    check-cast p3, Ljava/nio/CharBuffer;

    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/16 v0, 0x2000

    .line 72
    .line 73
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p2}, L뒬따뎻딁뒬뎻뒾듌됴됩땅돼땩땭듻돸됐됩듌돼뒘땸딌뎠됨뒐듨뒘돳돰돝딁돤뎻땡뒾두딸돝딤땻되땜뒐딠됫도딎뒤듟딟든뎽딸돶땮땁되딄득듸땯땸될뎹땄딤돳땱땲돰든땍땱땰땠딃듐땝둥딁뒙땟땪뎰듨돸드뒼땔됫뒨뎡도돨돤둬땨뒙뎻됫땪땟땮뒐뒈뒹땠뎸돠됩딽듌딻됐땮둔둘뒨땥따땝땋땋딝든듽딠뒙뒝;->byteBufferForEncoding(ILjava/nio/charset/CharsetEncoder;)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_1
    invoke-virtual {p3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p2, p3, p1, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_2

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    const-string p2, "Check failed."

    .line 120
    .line 121
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 126
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :goto_3
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :catchall_1
    move-exception p2

    .line 132
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw p2
.end method

.method public static synthetic writeText$default(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2, p3}, L따딨땋듐뒬뒝뎸딜돴뒋돰둣도듻땮드뒝뒀땩듼땸땻들뒈땲둔딐뒼듬뒷든딀됫땠땭뒘되딃돤듟땪듨뎬땯듬돤됩땝땬딻두뒉디딝딽땍듌딄땭땁딄딌듌뒬땩듻뒼도드도뒐땫됨뒀땲땨뎸딄듻뒝땹듻땬딄땧딞딌됫딁듟뒬땅땸돨뒙딜돰듸뎠땹둠땟뎽둠듐둣될뒈돶뒋듌딠둔뎻뒬땍뒈듐딄땻뒋됴됩뒝딟딤땰됨딅딤;->writeText(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
