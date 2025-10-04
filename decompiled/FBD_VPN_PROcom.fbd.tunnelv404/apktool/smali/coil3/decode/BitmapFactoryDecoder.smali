.class public final Lcoil3/decode/BitmapFactoryDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/decode/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/decode/BitmapFactoryDecoder$Companion;,
        Lcoil3/decode/BitmapFactoryDecoder$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0003\u0010\u0011\u000fB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u0096@\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcoil3/decode/BitmapFactoryDecoder;",
        "Lcoil3/decode/Decoder;",
        "Lcoil3/decode/ImageSource;",
        "source",
        "Lcoil3/request/Options;",
        "options",
        "Lkotlinx/coroutines/sync/Semaphore;",
        "parallelismLock",
        "Lcoil3/decode/ExifOrientationStrategy;",
        "exifOrientationStrategy",
        "<init>",
        "(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V",
        "Lcoil3/decode/DecodeResult;",
        "decode",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "Factory",
        "\ub3e4\ub48b\ub42b\ub498\ub56b\ub490\ub570\ub570\ub55f\ub3dd\ub572\ub3bb\ub56d\ub4a4\ub56b\ub3dd\ub57b\ub3b8\ub505\ub51f\ub554\ub3f6\ub4f0\ub4fd\ub4bc\ub544\ub4f0\ub51d\ub4f0\ub463\ub3ac\ub434\ub528\ub49b\ub550\ub539\ub480\ub55f\ub53b\ub4fd\ub573\ub578\ub528\ub3c4\ub418\ub571\ub514\ub3f7\ub4ac\ub4d4\ub450\ub545\ub46c\ub544\ub46c\ub4f0\ub3a8\ub4b5\ub4d0\ub51f\ub4d4\ub567\ub3e0\ub572\ub573\ub42b\ub49b\ub4df\ub564\ub3dd\ub4e4\ub458\ub4b5\ub3f0\ub504\ub3f5\ub3a1\ub500\ub55c\ub460\ub528\ub3e4\ub563\ub56f\ub418\ub543\ub554\ub538\ub500\ub567\ub41c\ub539\ub4b5\ub539\ub3dd\ub46c\ub4ec\ub4be\ub501\ub3f4\ub554\ub570\ub3a8\ub4e4\ub4a8\ub575\ub4fb\ub4bc\ub4be\ub524\ub504\ub3f4\ub3f5\ub578\ub3f7\ub499\ub545\ub54d\ub4f8\ub57b\ub454\ub3f8\ub51f\ub51f\ub570\ub504\ub454\ub454\ub528\ub3dd",
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
        "SMAP\nBitmapFactoryDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapFactoryDecoder.kt\ncoil3/decode/BitmapFactoryDecoder\n+ 2 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 bitmaps.kt\ncoil3/util/BitmapsKt\n+ 5 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 6 collections.kt\ncoil3/util/CollectionsKt\n*L\n1#1,211:1\n81#2,6:212\n1#3:218\n51#4:219\n27#5:220\n23#6,3:221\n*S KotlinDebug\n*F\n+ 1 BitmapFactoryDecoder.kt\ncoil3/decode/BitmapFactoryDecoder\n*L\n39#1:212,6\n86#1:219\n86#1:220\n127#1:221,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcoil3/decode/BitmapFactoryDecoder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MAX_PARALLELISM:I = 0x4


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/decode/ImageSource;

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/request/Options;

.field public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlinx/coroutines/sync/Semaphore;

.field public final 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/decode/ExifOrientationStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/decode/BitmapFactoryDecoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/decode/BitmapFactoryDecoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil3/decode/BitmapFactoryDecoder;->Companion:Lcoil3/decode/BitmapFactoryDecoder$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V
    .locals 0
    .param p1    # Lcoil3/decode/ImageSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/sync/Semaphore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil3/decode/ExifOrientationStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcoil3/decode/BitmapFactoryDecoder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/decode/ImageSource;

    .line 3
    iput-object p2, p0, Lcoil3/decode/BitmapFactoryDecoder;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/request/Options;

    .line 4
    iput-object p3, p0, Lcoil3/decode/BitmapFactoryDecoder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlinx/coroutines/sync/Semaphore;

    .line 5
    iput-object p4, p0, Lcoil3/decode/BitmapFactoryDecoder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/decode/ExifOrientationStrategy;

    return-void
.end method

.method public synthetic constructor <init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x2

    const/4 p6, 0x0

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1, p3, p6}, Lkotlinx/coroutines/sync/SemaphoreKt;->Semaphore$default(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 7
    sget-object p4, Lcoil3/decode/ExifOrientationStrategy;->RESPECT_PERFORMANCE:Lcoil3/decode/ExifOrientationStrategy;

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil3/decode/BitmapFactoryDecoder;-><init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V

    return-void
.end method


# virtual methods
.method public decode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil3/decode/DecodeResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;

    .line 7
    .line 8
    iget v1, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;-><init>(Lcoil3/decode/BitmapFactoryDecoder;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lkotlinx/coroutines/sync/Semaphore;

    .line 44
    .line 45
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    iget-object v2, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/sync/Semaphore;

    .line 60
    .line 61
    iget-object v5, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v5, Lcoil3/decode/BitmapFactoryDecoder;

    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move-object p1, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object p0, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/Object;

    .line 74
    .line 75
    iget-object p1, p0, Lcoil3/decode/BitmapFactoryDecoder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlinx/coroutines/sync/Semaphore;

    .line 76
    .line 77
    iput-object p1, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/sync/Semaphore;

    .line 78
    .line 79
    iput v4, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    .line 80
    .line 81
    invoke-interface {p1, v0}, Lkotlinx/coroutines/sync/Semaphore;->acquire(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-ne v2, v1, :cond_4

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_4
    move-object v5, p0

    .line 89
    :goto_1
    :try_start_1
    new-instance v2, L뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;

    .line 90
    .line 91
    const/4 v6, 0x6

    .line 92
    invoke-direct {v2, v5, v6}, L뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;-><init>(Ljava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    iput-object p1, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/Object;

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    iput-object v5, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/sync/Semaphore;

    .line 99
    .line 100
    iput v3, v0, L돤듟둑돰땨땨돝땹딞뒬딅뒝땐땔뎸됐땮땩든돤돳돠뎨듌땁딹땭두듐돰땁딄딀땠뒋됴뎡둠딌딄딨디돼땔땨도두딻땬딹딁딞돴뒼땹따되딸땮땯둔딟뎨돶딐둘든딀됨땩딨뒬듸땤딅땮딎되뒼뎠땀딐돵땟뒘돰둔뎡땅땄딁딀딻디땯뒤땦듐둣뎹뎸뒀돴딤듟딃득뒬뎽땵두들땳돼듨땜둣듽듻뎽딤딀뒷돰딤땤땹땯듨뒤;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    .line 101
    .line 102
    invoke-static {v5, v2, v0, v4, v5}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    if-ne v0, v1, :cond_5

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_5
    move-object v7, v0

    .line 110
    move-object v0, p1

    .line 111
    move-object p1, v7

    .line 112
    :goto_2
    :try_start_2
    check-cast p1, Lcoil3/decode/DecodeResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    invoke-interface {v0}, Lkotlinx/coroutines/sync/Semaphore;->release()V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    move-object v7, v0

    .line 120
    move-object v0, p1

    .line 121
    move-object p1, v7

    .line 122
    :goto_3
    invoke-interface {v0}, Lkotlinx/coroutines/sync/Semaphore;->release()V

    .line 123
    .line 124
    .line 125
    throw p1
.end method
