.class public final Lkotlin/text/HexFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/HexFormat$Builder;,
        Lkotlin/text/HexFormat$BytesHexFormat;,
        Lkotlin/text/HexFormat$Companion;,
        Lkotlin/text/HexFormat$NumberHexFormat;
    }
.end annotation

.annotation build Lkotlin/ExperimentalStdlibApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0004\u001a\u001b\u001c\u0019B!\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlin/text/HexFormat;",
        "",
        "",
        "upperCase",
        "Lkotlin/text/HexFormat$BytesHexFormat;",
        "bytes",
        "Lkotlin/text/HexFormat$NumberHexFormat;",
        "number",
        "<init>",
        "(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "\ub3a0\ub460\ub56a\ub4fc\ub3a0\ub505\ub572\ub454\ub4fd\ub42b\ub51e\ub3f0\ub461\ub51e\ub4fc\ub3a8\ub3a8\ub4d4\ub561\ub51d\ub568\ub543\ub540\ub4bb\ub524\ub539\ub3dd\ub418\ub573\ub572\ub538\ub4be\ub3a8\ub571\ub565\ub3f6\ub49b\ub4b7\ub4e4\ub4a8\ub54b\ub3e0\ub3a1\ub454\ub41c\ub3e4\ub4e0\ub42b\ub539\ub3f3\ub3f4\ub3db\ub54d\ub578\ub4b5\ub451\ub3f3\ub568\ub55d\ub4dd\ub56e\ub560\ub568\ub500\ub504\ub4a8\ub480\ub540\ub54b\ub4fd\ub42b\ub539\ub575\ub528\ub4b5\ub4f8\ub575\ub3ac\ub4bb\ub3e4\ub568\ub450\ub4f0\ub56b\ub57b\ub48b\ub3f6\ub450\ub563\ub3a1\ub3a1\ub4d0\ub56b\ub570\ub489\ub3b9\ub569\ub571\ub451\ub504\ub3f3\ub4f8\ub4a4\ub3bb\ub56e\ub51c\ub57b\ub428\ub3b8\ub4bc\ub503\ub42b\ub3f8\ub56e\ub56e\ub3e8\ub4a8\ub561\ub572\ub528\ub3f7\ub418\ub54b\ub458\ub3e0\ub56a\ub4b7\ub499\ub545\ub3b8",
        "Z",
        "getUpperCase",
        "()Z",
        "\ub3a0\ub50e\ub503\ub4fc\ub489\ub428\ub3b9\ub568\ub4fb\ub540\ub51d\ub566\ub4ac\ub3f0\ub3f7\ub569\ub4dd\ub51e\ub4e0\ub463\ub4fc\ub3f8\ub410\ub543\ub460\ub51c\ub538\ub4b5\ub4e4\ub3f4\ub4f0\ub543\ub4dd\ub54b\ub3a0\ub3f8\ub524\ub540\ub51d\ub3b9\ub528\ub450\ub568\ub4b7\ub50e\ub50e\ub510\ub480\ub3ac\ub4f0\ub51c\ub56d\ub4d4\ub4e8\ub3f4\ub4fc\ub465\ub4dd\ub3b9\ub3f6\ub4e4\ub4dc\ub3bb\ub501\ub458\ub410\ub3e8\ub460\ub488\ub545\ub3e8\ub55c\ub51d\ub4e4\ub500\ub451\ub4b9\ub3b9\ub450\ub56c\ub4d0\ub3f6\ub4ec\ub56c\ub3c4\ub3b8\ub460\ub460\ub4a8\ub410\ub55d\ub50e\ub500\ub578\ub56a\ub4dd\ub4b5\ub56c\ub490\ub570\ub55d\ub4b5\ub572\ub4ec\ub4fd\ub3f5\ub480\ub54b\ub4ac\ub573\ub48b\ub4f0\ub55f\ub3f0\ub418\ub54b\ub454\ub571\ub4d4\ub540\ub563\ub418\ub498\ub3fc\ub4bb\ub501\ub465\ub498\ub41c\ub56b",
        "Lkotlin/text/HexFormat$BytesHexFormat;",
        "getBytes",
        "()Lkotlin/text/HexFormat$BytesHexFormat;",
        "\ub3a0\ub544\ub490\ub3f8\ub4cc\ub3db\ub490\ub480\ub4f8\ub510\ub503\ub541\ub4d4\ub3a1\ub4cc\ub500\ub46c\ub480\ub418\ub573\ub573\ub4a4\ub4bc\ub460\ub56e\ub544\ub564\ub450\ub54d\ub3bb\ub567\ub53b\ub3c4\ub4fc\ub4ac\ub561\ub480\ub4fb\ub520\ub3f7\ub3b8\ub451\ub3f5\ub46c\ub539\ub550\ub42b\ub545\ub3a1\ub51f\ub420\ub56f\ub554\ub54b\ub51f\ub573\ub503\ub3f3\ub49d\ub514\ub4a8\ub4df\ub3f6\ub51c\ub573\ub51f\ub544\ub480\ub3dd\ub56e\ub3c4\ub3c4\ub504\ub56f\ub4f0\ub56e\ub3a1\ub3a1\ub4df\ub4fb\ub544\ub480\ub4bb\ub56d\ub451\ub4e8\ub4e4\ub4e4\ub578\ub4df\ub418\ub46c\ub49d\ub3f0\ub4d4\ub429\ub528\ub4cc\ub51c\ub4fb\ub3dd\ub4dc\ub4be\ub451\ub3a1\ub4f0\ub545\ub503\ub524\ub545\ub4a8\ub488\ub4b9\ub420\ub4f8\ub3f5\ub458\ub490\ub56d\ub541\ub4f8\ub56e\ub489\ub56a\ub51f\ub4e0\ub57b\ub571\ub4fb\ub489",
        "Lkotlin/text/HexFormat$NumberHexFormat;",
        "getNumber",
        "()Lkotlin/text/HexFormat$NumberHexFormat;",
        "Companion",
        "BytesHexFormat",
        "NumberHexFormat",
        "Builder",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.9"
.end annotation


# static fields
.field public static final Companion:Lkotlin/text/HexFormat$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lkotlin/text/HexFormat;

.field public static final 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lkotlin/text/HexFormat;


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Z

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/text/HexFormat$BytesHexFormat;

.field public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlin/text/HexFormat$NumberHexFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lkotlin/text/HexFormat$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/text/HexFormat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/text/HexFormat;->Companion:Lkotlin/text/HexFormat$Companion;

    .line 8
    .line 9
    new-instance v0, Lkotlin/text/HexFormat;

    .line 10
    .line 11
    sget-object v1, Lkotlin/text/HexFormat$BytesHexFormat;->Companion:Lkotlin/text/HexFormat$BytesHexFormat$Companion;

    .line 12
    .line 13
    invoke-virtual {v1}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lkotlin/text/HexFormat$NumberHexFormat;->Companion:Lkotlin/text/HexFormat$NumberHexFormat$Companion;

    .line 18
    .line 19
    invoke-virtual {v3}, Lkotlin/text/HexFormat$NumberHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-direct {v0, v5, v2, v4}, Lkotlin/text/HexFormat;-><init>(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lkotlin/text/HexFormat;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lkotlin/text/HexFormat;

    .line 28
    .line 29
    new-instance v0, Lkotlin/text/HexFormat;

    .line 30
    .line 31
    invoke-virtual {v1}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v3}, Lkotlin/text/HexFormat$NumberHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-direct {v0, v3, v1, v2}, Lkotlin/text/HexFormat;-><init>(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lkotlin/text/HexFormat;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lkotlin/text/HexFormat;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V
    .locals 1
    .param p2    # Lkotlin/text/HexFormat$BytesHexFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/text/HexFormat$NumberHexFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "number"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-boolean p1, p0, Lkotlin/text/HexFormat;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Z

    .line 15
    .line 16
    iput-object p2, p0, Lkotlin/text/HexFormat;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/text/HexFormat$BytesHexFormat;

    .line 17
    .line 18
    iput-object p3, p0, Lkotlin/text/HexFormat;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlin/text/HexFormat$NumberHexFormat;

    .line 19
    .line 20
    return-void
.end method

.method public static final synthetic access$getDefault$cp()Lkotlin/text/HexFormat;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/text/HexFormat;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lkotlin/text/HexFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getUpperCase$cp()Lkotlin/text/HexFormat;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/text/HexFormat;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lkotlin/text/HexFormat;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final getBytes()Lkotlin/text/HexFormat$BytesHexFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/text/HexFormat;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/text/HexFormat$BytesHexFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNumber()Lkotlin/text/HexFormat$NumberHexFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/text/HexFormat;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlin/text/HexFormat$NumberHexFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpperCase()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/text/HexFormat;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "HexFormat(\n    upperCase = "

    .line 2
    .line 3
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lkotlin/text/HexFormat;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ",\n    bytes = BytesHexFormat(\n"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lkotlin/text/HexFormat;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/text/HexFormat$BytesHexFormat;

    .line 18
    .line 19
    const-string v2, "        "

    .line 20
    .line 21
    invoke-virtual {v1, v0, v2}, Lkotlin/text/HexFormat$BytesHexFormat;->appendOptionsTo$kotlin_stdlib(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "    ),"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "    number = NumberHexFormat("

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lkotlin/text/HexFormat;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlin/text/HexFormat$NumberHexFormat;

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Lkotlin/text/HexFormat$NumberHexFormat;->appendOptionsTo$kotlin_stdlib(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, "    )"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ")"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
