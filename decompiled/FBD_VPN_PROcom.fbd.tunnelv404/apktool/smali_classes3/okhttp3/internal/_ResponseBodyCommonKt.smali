.class public final Lokhttp3/internal/_ResponseBodyCommonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u000c\u0010\u0007\u001a\u00020\u0008*\u00020\u0001H\u0000\u001a\u000c\u0010\t\u001a\u00020\n*\u00020\u0001H\u0000\u001a\u000c\u0010\u000b\u001a\u00020\u000c*\u00020\u0001H\u0000\u001aG\u0010\r\u001a\u0002H\u000e\"\u0008\u0008\u0000\u0010\u000e*\u00020\u000f*\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u000e0\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u00130\u0011H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014\u001a\u0016\u0010\u0015\u001a\u00020\u0001*\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u0016\u0010\u0015\u001a\u00020\u0001*\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0016"
    }
    d2 = {
        "commonAsResponseBody",
        "Lokhttp3/ResponseBody;",
        "Lokio/BufferedSource;",
        "contentType",
        "Lokhttp3/MediaType;",
        "contentLength",
        "",
        "commonByteString",
        "Lokio/ByteString;",
        "commonBytes",
        "",
        "commonClose",
        "",
        "commonConsumeSource",
        "T",
        "",
        "consumer",
        "Lkotlin/Function1;",
        "sizeMapper",
        "",
        "(Lokhttp3/ResponseBody;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "commonToResponseBody",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\n-ResponseBodyCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -ResponseBodyCommon.kt\nokhttp3/internal/_ResponseBodyCommonKt\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,73:1\n36#1,6:74\n42#1,5:102\n36#1,6:107\n42#1,5:135\n66#2:80\n52#2,21:81\n66#2:113\n52#2,21:114\n66#2:140\n52#2,21:141\n*S KotlinDebug\n*F\n+ 1 -ResponseBodyCommon.kt\nokhttp3/internal/_ResponseBodyCommonKt\n*L\n28#1:74,6\n28#1:102,5\n30#1:107,6\n30#1:135,5\n28#1:80\n28#1:81,21\n30#1:113\n30#1:114,21\n41#1:140\n41#1:141,21\n*E\n"
    }
.end annotation


# direct methods
.method public static final commonAsResponseBody(Lokio/BufferedSource;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;
    .locals 1
    .param p0    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    new-instance v0, Lokhttp3/internal/_ResponseBodyCommonKt$commonAsResponseBody$1;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p0}, Lokhttp3/internal/_ResponseBodyCommonKt$commonAsResponseBody$1;-><init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final commonByteString(Lokhttp3/ResponseBody;)Lokio/ByteString;
    .locals 7
    .param p0    # Lokhttp3/ResponseBody;
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
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/32 v2, 0x7fffffff

    .line 11
    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-gtz v4, :cond_5

    .line 16
    .line 17
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_0
    invoke-interface {p0}, Lokio/BufferedSource;->readByteString()Lokio/ByteString;

    .line 23
    .line 24
    .line 25
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception v2

    .line 33
    goto :goto_1

    .line 34
    :catchall_1
    move-exception v3

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_2
    move-exception p0

    .line 42
    invoke-static {v3, p0}, L뒝땻뎡딸땭딐뒉뎽득된뒘땲땃딞뒬뎽돝딁뒻딌딃뒀뒤딃뒙됩딜땱된듔듔뒀땱딜듔뒹땰뎸딌뒾땦됩듸뒤딌딜땍둬땳듟뎡듰땱딃딝땪뒷딀딁도땮딞뎰뎸뒉두뒋뎨뎸땀됨듰땱돴땱드딽땵둣뎠둔돶둥딽뒻듻뎠돴딽땁뒉듻둘둥도돠뎡땰딠돳땟둠땫듌땣돝땬돠뒻땱뒤딅뒤딸됴돤땭뎽땩듼땝뒷딸땸뒨됐뒀듻뒀땸;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    move-object v6, v3

    .line 46
    move-object v3, v2

    .line 47
    move-object v2, v6

    .line 48
    :cond_1
    :goto_1
    if-nez v2, :cond_4

    .line 49
    .line 50
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const-wide/16 v4, -0x1

    .line 58
    .line 59
    cmp-long v2, v0, v4

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    int-to-long v4, p0

    .line 64
    cmp-long v2, v0, v4

    .line 65
    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    new-instance v2, Ljava/io/IOException;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v4, "Content-Length ("

    .line 74
    .line 75
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ") and stream length ("

    .line 82
    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p0, ") disagree"

    .line 90
    .line 91
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v2

    .line 102
    :cond_3
    :goto_2
    return-object v3

    .line 103
    :cond_4
    throw v2

    .line 104
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 105
    .line 106
    const-string v2, "Cannot buffer entire body for content length: "

    .line 107
    .line 108
    invoke-static {v2, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Ljava/lang/String;J)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public static final commonBytes(Lokhttp3/ResponseBody;)[B
    .locals 7
    .param p0    # Lokhttp3/ResponseBody;
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
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/32 v2, 0x7fffffff

    .line 11
    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-gtz v4, :cond_5

    .line 16
    .line 17
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_0
    invoke-interface {p0}, Lokio/BufferedSource;->readByteArray()[B

    .line 23
    .line 24
    .line 25
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception v2

    .line 33
    goto :goto_1

    .line 34
    :catchall_1
    move-exception v3

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_2
    move-exception p0

    .line 42
    invoke-static {v3, p0}, L뒝땻뎡딸땭딐뒉뎽득된뒘땲땃딞뒬뎽돝딁뒻딌딃뒀뒤딃뒙됩딜땱된듔듔뒀땱딜듔뒹땰뎸딌뒾땦됩듸뒤딌딜땍둬땳듟뎡듰땱딃딝땪뒷딀딁도땮딞뎰뎸뒉두뒋뎨뎸땀됨듰땱돴땱드딽땵둣뎠둔돶둥딽뒻듻뎠돴딽땁뒉듻둘둥도돠뎡땰딠돳땟둠땫듌땣돝땬돠뒻땱뒤딅뒤딸됴돤땭뎽땩듼땝뒷딸땸뒨됐뒀듻뒀땸;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    move-object v6, v3

    .line 46
    move-object v3, v2

    .line 47
    move-object v2, v6

    .line 48
    :cond_1
    :goto_1
    if-nez v2, :cond_4

    .line 49
    .line 50
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    array-length p0, v3

    .line 54
    const-wide/16 v4, -0x1

    .line 55
    .line 56
    cmp-long v2, v0, v4

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    int-to-long v4, p0

    .line 61
    cmp-long v2, v0, v4

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    new-instance v2, Ljava/io/IOException;

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v4, "Content-Length ("

    .line 71
    .line 72
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ") and stream length ("

    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p0, ") disagree"

    .line 87
    .line 88
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v2

    .line 99
    :cond_3
    :goto_2
    return-object v3

    .line 100
    :cond_4
    throw v2

    .line 101
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 102
    .line 103
    const-string v2, "Cannot buffer entire body for content length: "

    .line 104
    .line 105
    invoke-static {v2, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Ljava/lang/String;J)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0
.end method

.method public static final commonClose(Lokhttp3/ResponseBody;)V
    .locals 1
    .param p0    # Lokhttp3/ResponseBody;
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
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final commonConsumeSource(Lokhttp3/ResponseBody;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 6
    .param p0    # Lokhttp3/ResponseBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/ResponseBody;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokio/BufferedSource;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Integer;",
            ">;)TT;"
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
    const-string v0, "consumer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sizeMapper"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/32 v2, 0x7fffffff

    .line 21
    .line 22
    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-gtz v4, :cond_5

    .line 26
    .line 27
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 38
    .line 39
    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v2

    .line 47
    :cond_0
    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catchall_1
    move-exception p1

    .line 52
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 53
    .line 54
    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_2
    move-exception p0

    .line 62
    invoke-static {p1, p0}, L뒝땻뎡딸땭딐뒉뎽득된뒘땲땃딞뒬뎽돝딁뒻딌딃뒀뒤딃뒙됩딜땱된듔듔뒀땱딜듔뒹땰뎸딌뒾땦됩듸뒤딌딜땍둬땳듟뎡듰땱딃딝땪뒷딀딁도땮딞뎰뎸뒉두뒋뎨뎸땀됨듰땱돴땱드딽땵둣뎠둔돶둥딽뒻듻뎠돴딽땁뒉듻둘둥도돠뎡땰딠돳땟둠땫듌땣돝땬돠뒻땱뒤딅뒤딸됴돤땭뎽땩듼땝뒷딸땸뒨됐뒀듻뒀땸;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 66
    .line 67
    .line 68
    move-object v5, v2

    .line 69
    move-object v2, p1

    .line 70
    move-object p1, v5

    .line 71
    :goto_2
    if-nez v2, :cond_4

    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Ljava/lang/Number;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    const-wide/16 v2, -0x1

    .line 87
    .line 88
    cmp-long p2, v0, v2

    .line 89
    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    int-to-long v2, p0

    .line 93
    cmp-long p2, v0, v2

    .line 94
    .line 95
    if-nez p2, :cond_2

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 99
    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "Content-Length ("

    .line 103
    .line 104
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, ") and stream length ("

    .line 111
    .line 112
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p0, ") disagree"

    .line 119
    .line 120
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_3
    :goto_3
    return-object p1

    .line 132
    :cond_4
    throw v2

    .line 133
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 134
    .line 135
    const-string p1, "Cannot buffer entire body for content length: "

    .line 136
    .line 137
    invoke-static {p1, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Ljava/lang/String;J)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method

.method public static final commonToResponseBody(Lokio/ByteString;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;
    .locals 4
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    .line 6
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 7
    invoke-virtual {v1, p0}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, p1, v2, v3}, Lokhttp3/ResponseBody$Companion;->create(Lokio/BufferedSource;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static final commonToResponseBody([BLokhttp3/MediaType;)Lokhttp3/ResponseBody;
    .locals 4
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    .line 2
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 3
    invoke-virtual {v1, p0}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v1

    .line 4
    array-length p0, p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, p1, v2, v3}, Lokhttp3/ResponseBody$Companion;->create(Lokio/BufferedSource;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method
