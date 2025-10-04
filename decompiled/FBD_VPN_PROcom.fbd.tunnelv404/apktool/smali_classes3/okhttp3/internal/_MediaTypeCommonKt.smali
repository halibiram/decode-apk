.class public final Lokhttp3/internal/_MediaTypeCommonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u001a\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a\u001d\u0010\u0008\u001a\u00020\u0007*\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u0013\u0010\n\u001a\u00020\u0001*\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a\u0013\u0010\r\u001a\u00020\u000c*\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a\u0013\u0010\u000f\u001a\u00020\u0000*\u00020\u0001H\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0000*\u00020\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lokhttp3/MediaType;",
        "",
        "name",
        "commonParameter",
        "(Lokhttp3/MediaType;Ljava/lang/String;)Ljava/lang/String;",
        "",
        "other",
        "",
        "commonEquals",
        "(Lokhttp3/MediaType;Ljava/lang/Object;)Z",
        "commonToString",
        "(Lokhttp3/MediaType;)Ljava/lang/String;",
        "",
        "commonHashCode",
        "(Lokhttp3/MediaType;)I",
        "commonToMediaType",
        "(Ljava/lang/String;)Lokhttp3/MediaType;",
        "commonToMediaTypeOrNull",
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
        "SMAP\n-MediaTypeCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -MediaTypeCommon.kt\nokhttp3/internal/_MediaTypeCommonKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,95:1\n37#2,2:96\n*S KotlinDebug\n*F\n+ 1 -MediaTypeCommon.kt\nokhttp3/internal/_MediaTypeCommonKt\n*L\n84#1:96,2\n*E\n"
    }
.end annotation


# static fields
.field public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/text/Regex;

.field public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lokhttp3/internal/_MediaTypeCommonKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/text/Regex;

    .line 9
    .line 10
    new-instance v0, Lkotlin/text/Regex;

    .line 11
    .line 12
    const-string v1, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lokhttp3/internal/_MediaTypeCommonKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/text/Regex;

    .line 18
    .line 19
    return-void
.end method

.method public static final commonEquals(Lokhttp3/MediaType;Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Lokhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    instance-of v0, p1, Lokhttp3/MediaType;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lokhttp3/MediaType;

    .line 11
    .line 12
    invoke-virtual {p1}, Lokhttp3/MediaType;->getMediaType$okhttp()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lokhttp3/MediaType;->getMediaType$okhttp()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method public static final commonHashCode(Lokhttp3/MediaType;)I
    .locals 1
    .param p0    # Lokhttp3/MediaType;
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
    invoke-virtual {p0}, Lokhttp3/MediaType;->getMediaType$okhttp()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final commonParameter(Lokhttp3/MediaType;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Lokhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokhttp3/MediaType;->getParameterNamesAndValues$okhttp()[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v0, v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v2, v0, v1}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ltz v0, :cond_1

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lokhttp3/MediaType;->getParameterNamesAndValues$okhttp()[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    aget-object v1, v1, v2

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-static {v1, p1, v3}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lokhttp3/MediaType;->getParameterNamesAndValues$okhttp()[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    add-int/2addr v2, v3

    .line 44
    aget-object p0, p0, v2

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    if-eq v2, v0, :cond_1

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public static final commonToMediaType(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 14
    .param p0    # Ljava/lang/String;
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
    sget-object v0, Lokhttp3/internal/_MediaTypeCommonKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/text/Regex;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, p0, v1}, Lokhttp3/internal/_UtilCommonKt;->matchAtPolyfill(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v2, 0x22

    .line 14
    .line 15
    if-eqz v0, :cond_7

    .line 16
    .line 17
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 29
    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v6, "toLowerCase(...)"

    .line 35
    .line 36
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const/4 v8, 0x2

    .line 44
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v7, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    :goto_0
    add-int/2addr v0, v4

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-ge v0, v7, :cond_6

    .line 76
    .line 77
    sget-object v7, Lokhttp3/internal/_MediaTypeCommonKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/text/Regex;

    .line 78
    .line 79
    invoke-static {v7, p0, v0}, Lokhttp3/internal/_UtilCommonKt;->matchAtPolyfill(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const-string v9, "substring(...)"

    .line 84
    .line 85
    if-eqz v7, :cond_5

    .line 86
    .line 87
    invoke-interface {v7}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0, v4}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v10, 0x0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    invoke-virtual {v0}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto :goto_1

    .line 103
    :cond_0
    move-object v0, v10

    .line 104
    :goto_1
    if-nez v0, :cond_1

    .line 105
    .line 106
    invoke-interface {v7}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    invoke-interface {v7}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    invoke-interface {v11, v8}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    if-eqz v11, :cond_2

    .line 124
    .line 125
    invoke-virtual {v11}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    goto :goto_2

    .line 130
    :cond_2
    move-object v11, v10

    .line 131
    :goto_2
    if-nez v11, :cond_3

    .line 132
    .line 133
    invoke-interface {v7}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    const/4 v10, 0x3

    .line 138
    invoke-interface {v9, v10}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    goto :goto_3

    .line 150
    :cond_3
    const-string v12, "\'"

    .line 151
    .line 152
    invoke-static {v11, v12, v1, v8, v10}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    if-eqz v13, :cond_4

    .line 157
    .line 158
    invoke-static {v11, v12, v1, v8, v10}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-eqz v10, :cond_4

    .line 163
    .line 164
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-le v10, v8, :cond_4

    .line 169
    .line 170
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    sub-int/2addr v10, v4

    .line 175
    invoke-virtual {v11, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_4
    :goto_3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    invoke-interface {v7}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    goto :goto_0

    .line 197
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v3, "Parameter is not formatted correctly: \""

    .line 200
    .line 201
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v0, "\" for: \""

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v0

    .line 239
    :cond_6
    new-instance v0, Lokhttp3/MediaType;

    .line 240
    .line 241
    new-array v1, v1, [Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, [Ljava/lang/String;

    .line 248
    .line 249
    invoke-direct {v0, p0, v3, v5, v1}, Lokhttp3/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return-object v0

    .line 253
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 254
    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v3, "No subtype found for: \""

    .line 258
    .line 259
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v0
.end method

.method public static final commonToMediaTypeOrNull(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Lokhttp3/internal/_MediaTypeCommonKt;->commonToMediaType(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return-object p0
.end method

.method public static final commonToString(Lokhttp3/MediaType;)Ljava/lang/String;
    .locals 1
    .param p0    # Lokhttp3/MediaType;
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
    invoke-virtual {p0}, Lokhttp3/MediaType;->getMediaType$okhttp()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
