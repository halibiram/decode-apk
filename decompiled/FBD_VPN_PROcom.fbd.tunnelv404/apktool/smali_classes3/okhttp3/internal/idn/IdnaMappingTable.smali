.class public final Lokhttp3/internal/idn/IdnaMappingTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u00020\u0001B!\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0010\u001a\u0004\u0008\u0014\u0010\u0012R\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "Lokhttp3/internal/idn/IdnaMappingTable;",
        "",
        "",
        "sections",
        "ranges",
        "mappings",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "codePoint",
        "Lokio/BufferedSink;",
        "sink",
        "",
        "map",
        "(ILokio/BufferedSink;)Z",
        "\ub3a0\ub460\ub56a\ub4fc\ub3a0\ub505\ub572\ub454\ub4fd\ub42b\ub51e\ub3f0\ub461\ub51e\ub4fc\ub3a8\ub3a8\ub4d4\ub561\ub51d\ub568\ub543\ub540\ub4bb\ub524\ub539\ub3dd\ub418\ub573\ub572\ub538\ub4be\ub3a8\ub571\ub565\ub3f6\ub49b\ub4b7\ub4e4\ub4a8\ub54b\ub3e0\ub3a1\ub454\ub41c\ub3e4\ub4e0\ub42b\ub539\ub3f3\ub3f4\ub3db\ub54d\ub578\ub4b5\ub451\ub3f3\ub568\ub55d\ub4dd\ub56e\ub560\ub568\ub500\ub504\ub4a8\ub480\ub540\ub54b\ub4fd\ub42b\ub539\ub575\ub528\ub4b5\ub4f8\ub575\ub3ac\ub4bb\ub3e4\ub568\ub450\ub4f0\ub56b\ub57b\ub48b\ub3f6\ub450\ub563\ub3a1\ub3a1\ub4d0\ub56b\ub570\ub489\ub3b9\ub569\ub571\ub451\ub504\ub3f3\ub4f8\ub4a4\ub3bb\ub56e\ub51c\ub57b\ub428\ub3b8\ub4bc\ub503\ub42b\ub3f8\ub56e\ub56e\ub3e8\ub4a8\ub561\ub572\ub528\ub3f7\ub418\ub54b\ub458\ub3e0\ub56a\ub4b7\ub499\ub545\ub3b8",
        "Ljava/lang/String;",
        "getSections",
        "()Ljava/lang/String;",
        "\ub3a0\ub50e\ub503\ub4fc\ub489\ub428\ub3b9\ub568\ub4fb\ub540\ub51d\ub566\ub4ac\ub3f0\ub3f7\ub569\ub4dd\ub51e\ub4e0\ub463\ub4fc\ub3f8\ub410\ub543\ub460\ub51c\ub538\ub4b5\ub4e4\ub3f4\ub4f0\ub543\ub4dd\ub54b\ub3a0\ub3f8\ub524\ub540\ub51d\ub3b9\ub528\ub450\ub568\ub4b7\ub50e\ub50e\ub510\ub480\ub3ac\ub4f0\ub51c\ub56d\ub4d4\ub4e8\ub3f4\ub4fc\ub465\ub4dd\ub3b9\ub3f6\ub4e4\ub4dc\ub3bb\ub501\ub458\ub410\ub3e8\ub460\ub488\ub545\ub3e8\ub55c\ub51d\ub4e4\ub500\ub451\ub4b9\ub3b9\ub450\ub56c\ub4d0\ub3f6\ub4ec\ub56c\ub3c4\ub3b8\ub460\ub460\ub4a8\ub410\ub55d\ub50e\ub500\ub578\ub56a\ub4dd\ub4b5\ub56c\ub490\ub570\ub55d\ub4b5\ub572\ub4ec\ub4fd\ub3f5\ub480\ub54b\ub4ac\ub573\ub48b\ub4f0\ub55f\ub3f0\ub418\ub54b\ub454\ub571\ub4d4\ub540\ub563\ub418\ub498\ub3fc\ub4bb\ub501\ub465\ub498\ub41c\ub56b",
        "getRanges",
        "\ub3a0\ub544\ub490\ub3f8\ub4cc\ub3db\ub490\ub480\ub4f8\ub510\ub503\ub541\ub4d4\ub3a1\ub4cc\ub500\ub46c\ub480\ub418\ub573\ub573\ub4a4\ub4bc\ub460\ub56e\ub544\ub564\ub450\ub54d\ub3bb\ub567\ub53b\ub3c4\ub4fc\ub4ac\ub561\ub480\ub4fb\ub520\ub3f7\ub3b8\ub451\ub3f5\ub46c\ub539\ub550\ub42b\ub545\ub3a1\ub51f\ub420\ub56f\ub554\ub54b\ub51f\ub573\ub503\ub3f3\ub49d\ub514\ub4a8\ub4df\ub3f6\ub51c\ub573\ub51f\ub544\ub480\ub3dd\ub56e\ub3c4\ub3c4\ub504\ub56f\ub4f0\ub56e\ub3a1\ub3a1\ub4df\ub4fb\ub544\ub480\ub4bb\ub56d\ub451\ub4e8\ub4e4\ub4e4\ub578\ub4df\ub418\ub46c\ub49d\ub3f0\ub4d4\ub429\ub528\ub4cc\ub51c\ub4fb\ub3dd\ub4dc\ub4be\ub451\ub3a1\ub4f0\ub545\ub503\ub524\ub545\ub4a8\ub488\ub4b9\ub420\ub4f8\ub3f5\ub458\ub490\ub56d\ub541\ub4f8\ub56e\ub489\ub56a\ub51f\ub4e0\ub57b\ub571\ub4fb\ub489",
        "getMappings",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIdnaMappingTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTable\n+ 2 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTableKt\n*L\n1#1,272:1\n258#2,13:273\n258#2,13:286\n*S KotlinDebug\n*F\n+ 1 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTable\n*L\n204#1:273,13\n227#1:286,13\n*E\n"
    }
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/String;

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/String;

.field public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sections"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ranges"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mappings"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lokhttp3/internal/idn/IdnaMappingTable;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p0, Lokhttp3/internal/idn/IdnaMappingTable;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lokhttp3/internal/idn/IdnaMappingTable;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getMappings()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRanges()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSections()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final map(ILokio/BufferedSink;)Z
    .locals 8
    .param p2    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x1fff80

    .line 7
    .line 8
    .line 9
    and-int/2addr v0, p1

    .line 10
    shr-int/lit8 v0, v0, 0x7

    .line 11
    .line 12
    iget-object v1, p0, Lokhttp3/internal/idn/IdnaMappingTable;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    div-int/lit8 v2, v2, 0x4

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    sub-int/2addr v2, v3

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_0
    if-gt v5, v2, :cond_1

    .line 25
    .line 26
    add-int v6, v5, v2

    .line 27
    .line 28
    div-int/lit8 v6, v6, 0x2

    .line 29
    .line 30
    mul-int/lit8 v7, v6, 0x4

    .line 31
    .line 32
    invoke-static {v1, v7}, Lokhttp3/internal/idn/IdnaMappingTableKt;->read14BitInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-gez v7, :cond_0

    .line 41
    .line 42
    add-int/lit8 v2, v6, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    if-lez v7, :cond_2

    .line 46
    .line 47
    add-int/lit8 v5, v6, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    neg-int v0, v5

    .line 51
    add-int/lit8 v6, v0, -0x1

    .line 52
    .line 53
    :cond_2
    if-ltz v6, :cond_3

    .line 54
    .line 55
    mul-int/lit8 v6, v6, 0x4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    neg-int v0, v6

    .line 59
    add-int/lit8 v0, v0, -0x2

    .line 60
    .line 61
    mul-int/lit8 v6, v0, 0x4

    .line 62
    .line 63
    :goto_1
    add-int/lit8 v0, v6, 0x2

    .line 64
    .line 65
    invoke-static {v1, v0}, Lokhttp3/internal/idn/IdnaMappingTableKt;->read14BitInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/lit8 v2, v6, 0x4

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    iget-object v7, p0, Lokhttp3/internal/idn/IdnaMappingTable;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/String;

    .line 76
    .line 77
    if-ge v2, v5, :cond_4

    .line 78
    .line 79
    add-int/lit8 v6, v6, 0x6

    .line 80
    .line 81
    invoke-static {v1, v6}, Lokhttp3/internal/idn/IdnaMappingTableKt;->read14BitInt(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    div-int/lit8 v1, v1, 0x4

    .line 91
    .line 92
    :goto_2
    and-int/lit8 v2, p1, 0x7f

    .line 93
    .line 94
    sub-int/2addr v1, v3

    .line 95
    :goto_3
    if-gt v0, v1, :cond_6

    .line 96
    .line 97
    add-int v5, v0, v1

    .line 98
    .line 99
    div-int/lit8 v5, v5, 0x2

    .line 100
    .line 101
    mul-int/lit8 v6, v5, 0x4

    .line 102
    .line 103
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-gez v6, :cond_5

    .line 112
    .line 113
    add-int/lit8 v1, v5, -0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    if-lez v6, :cond_7

    .line 117
    .line 118
    add-int/lit8 v0, v5, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    neg-int v0, v0

    .line 122
    add-int/lit8 v5, v0, -0x1

    .line 123
    .line 124
    :cond_7
    if-ltz v5, :cond_8

    .line 125
    .line 126
    mul-int/lit8 v5, v5, 0x4

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_8
    neg-int v0, v5

    .line 130
    add-int/lit8 v0, v0, -0x2

    .line 131
    .line 132
    mul-int/lit8 v5, v0, 0x4

    .line 133
    .line 134
    :goto_4
    add-int/lit8 v0, v5, 0x1

    .line 135
    .line 136
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    const/16 v1, 0x40

    .line 141
    .line 142
    if-ltz v0, :cond_9

    .line 143
    .line 144
    if-ge v0, v1, :cond_9

    .line 145
    .line 146
    add-int/lit8 v5, v5, 0x2

    .line 147
    .line 148
    invoke-static {v7, v5}, Lokhttp3/internal/idn/IdnaMappingTableKt;->read14BitInt(Ljava/lang/String;I)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iget-object v1, p0, Lokhttp3/internal/idn/IdnaMappingTable;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/lang/String;

    .line 153
    .line 154
    add-int/2addr v0, p1

    .line 155
    invoke-interface {p2, v1, p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    .line 156
    .line 157
    .line 158
    goto/16 :goto_5

    .line 159
    .line 160
    :cond_9
    const/16 v2, 0x50

    .line 161
    .line 162
    if-gt v1, v0, :cond_a

    .line 163
    .line 164
    if-ge v0, v2, :cond_a

    .line 165
    .line 166
    add-int/lit8 v1, v5, 0x2

    .line 167
    .line 168
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    add-int/lit8 v5, v5, 0x3

    .line 173
    .line 174
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    and-int/lit8 v0, v0, 0xf

    .line 179
    .line 180
    shl-int/lit8 v0, v0, 0xe

    .line 181
    .line 182
    shl-int/lit8 v1, v1, 0x7

    .line 183
    .line 184
    or-int/2addr v0, v1

    .line 185
    or-int/2addr v0, v2

    .line 186
    sub-int/2addr p1, v0

    .line 187
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeUtf8CodePoint(I)Lokio/BufferedSink;

    .line 188
    .line 189
    .line 190
    goto/16 :goto_5

    .line 191
    .line 192
    :cond_a
    if-gt v2, v0, :cond_b

    .line 193
    .line 194
    const/16 v1, 0x60

    .line 195
    .line 196
    if-ge v0, v1, :cond_b

    .line 197
    .line 198
    add-int/lit8 v1, v5, 0x2

    .line 199
    .line 200
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    add-int/lit8 v5, v5, 0x3

    .line 205
    .line 206
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    and-int/lit8 v0, v0, 0xf

    .line 211
    .line 212
    shl-int/lit8 v0, v0, 0xe

    .line 213
    .line 214
    shl-int/lit8 v1, v1, 0x7

    .line 215
    .line 216
    or-int/2addr v0, v1

    .line 217
    or-int/2addr v0, v2

    .line 218
    add-int/2addr p1, v0

    .line 219
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeUtf8CodePoint(I)Lokio/BufferedSink;

    .line 220
    .line 221
    .line 222
    goto/16 :goto_5

    .line 223
    .line 224
    :cond_b
    const/16 v1, 0x77

    .line 225
    .line 226
    if-eq v0, v1, :cond_14

    .line 227
    .line 228
    const/16 v1, 0x78

    .line 229
    .line 230
    if-ne v0, v1, :cond_c

    .line 231
    .line 232
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeUtf8CodePoint(I)Lokio/BufferedSink;

    .line 233
    .line 234
    .line 235
    goto/16 :goto_5

    .line 236
    .line 237
    :cond_c
    const/16 v1, 0x79

    .line 238
    .line 239
    if-ne v0, v1, :cond_d

    .line 240
    .line 241
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeUtf8CodePoint(I)Lokio/BufferedSink;

    .line 242
    .line 243
    .line 244
    return v4

    .line 245
    :cond_d
    const/16 v1, 0x7a

    .line 246
    .line 247
    if-ne v0, v1, :cond_e

    .line 248
    .line 249
    add-int/lit8 v5, v5, 0x2

    .line 250
    .line 251
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 256
    .line 257
    .line 258
    goto/16 :goto_5

    .line 259
    .line 260
    :cond_e
    const/16 v1, 0x7b

    .line 261
    .line 262
    if-ne v0, v1, :cond_f

    .line 263
    .line 264
    add-int/lit8 v5, v5, 0x2

    .line 265
    .line 266
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    or-int/lit16 p1, p1, 0x80

    .line 271
    .line 272
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 273
    .line 274
    .line 275
    goto/16 :goto_5

    .line 276
    .line 277
    :cond_f
    const/16 v1, 0x7c

    .line 278
    .line 279
    if-ne v0, v1, :cond_10

    .line 280
    .line 281
    add-int/lit8 p1, v5, 0x2

    .line 282
    .line 283
    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 288
    .line 289
    .line 290
    add-int/lit8 v5, v5, 0x3

    .line 291
    .line 292
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 297
    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_10
    const/16 v1, 0x7d

    .line 301
    .line 302
    if-ne v0, v1, :cond_11

    .line 303
    .line 304
    add-int/lit8 p1, v5, 0x2

    .line 305
    .line 306
    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    or-int/lit16 p1, p1, 0x80

    .line 311
    .line 312
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 313
    .line 314
    .line 315
    add-int/lit8 v5, v5, 0x3

    .line 316
    .line 317
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_11
    const/16 v1, 0x7e

    .line 326
    .line 327
    if-ne v0, v1, :cond_12

    .line 328
    .line 329
    add-int/lit8 p1, v5, 0x2

    .line 330
    .line 331
    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 336
    .line 337
    .line 338
    add-int/lit8 v5, v5, 0x3

    .line 339
    .line 340
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    or-int/lit16 p1, p1, 0x80

    .line 345
    .line 346
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 347
    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_12
    const/16 v1, 0x7f

    .line 351
    .line 352
    if-ne v0, v1, :cond_13

    .line 353
    .line 354
    add-int/lit8 p1, v5, 0x2

    .line 355
    .line 356
    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    or-int/lit16 p1, p1, 0x80

    .line 361
    .line 362
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 363
    .line 364
    .line 365
    add-int/lit8 v5, v5, 0x3

    .line 366
    .line 367
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    or-int/lit16 p1, p1, 0x80

    .line 372
    .line 373
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 374
    .line 375
    .line 376
    goto :goto_5

    .line 377
    :cond_13
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 378
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string v1, "unexpected rangesIndex for "

    .line 382
    .line 383
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw p2

    .line 401
    :cond_14
    :goto_5
    return v3
.end method
