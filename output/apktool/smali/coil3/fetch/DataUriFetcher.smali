.class public final Lcoil3/fetch/DataUriFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/DataUriFetcher$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcoil3/fetch/DataUriFetcher;",
        "Lcoil3/fetch/Fetcher;",
        "Lcoil3/Uri;",
        "uri",
        "Lcoil3/request/Options;",
        "options",
        "<init>",
        "(Lcoil3/Uri;Lcoil3/request/Options;)V",
        "Lcoil3/fetch/FetchResult;",
        "fetch",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Factory",
        "coil-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDataUriFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataUriFetcher.kt\ncoil3/fetch/DataUriFetcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
    }
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/Uri;

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/request/Options;


# direct methods
.method public constructor <init>(Lcoil3/Uri;Lcoil3/request/Options;)V
    .locals 0
    .param p1    # Lcoil3/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/fetch/DataUriFetcher;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/fetch/DataUriFetcher;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public fetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil3/fetch/FetchResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lcoil3/fetch/DataUriFetcher;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/Uri;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil3/Uri;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v4, 0x6

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, ";base64,"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "invalid data uri: "

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcoil3/Uri;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v7, 0x6

    .line 27
    const/4 v8, 0x0

    .line 28
    const/16 v4, 0x3a

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eq v3, v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Lcoil3/Uri;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "substring(...)"

    .line 49
    .line 50
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v3, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcoil3/Uri;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    add-int/lit8 v5, v0, 0x8

    .line 60
    .line 61
    const/4 v7, 0x4

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-static/range {v3 .. v8}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;IIILjava/lang/Object;)[B

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Lokio/Buffer;

    .line 69
    .line 70
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcoil3/fetch/DataUriFetcher;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/request/Options;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcoil3/request/Options;->getFileSystem()Lokio/FileSystem;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 v2, 0x4

    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-static {v0, p1, v3, v2, v3}, Lcoil3/decode/ImageSourceKt;->ImageSource$default(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;ILjava/lang/Object;)Lcoil3/decode/ImageSource;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sget-object v0, Lcoil3/decode/DataSource;->MEMORY:Lcoil3/decode/DataSource;

    .line 89
    .line 90
    new-instance v2, Lcoil3/fetch/SourceFetchResult;

    .line 91
    .line 92
    invoke-direct {v2, p1, v1, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 93
    .line 94
    .line 95
    return-object v2

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0
.end method
