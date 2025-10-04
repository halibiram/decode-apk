.class public final Lcoil3/decode/BlackholeDecoder$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/decode/BlackholeDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/decode/BlackholeDecoder$Factory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcoil3/decode/BlackholeDecoder$Factory;",
        "Lcoil3/decode/Decoder$Factory;",
        "Lkotlin/Function0;",
        "Lcoil3/Image;",
        "imageFactory",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Lcoil3/fetch/SourceFetchResult;",
        "result",
        "Lcoil3/request/Options;",
        "options",
        "Lcoil3/ImageLoader;",
        "imageLoader",
        "Lcoil3/decode/BlackholeDecoder;",
        "create",
        "(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/decode/BlackholeDecoder;",
        "Companion",
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


# static fields
.field public static final Companion:Lcoil3/decode/BlackholeDecoder$Factory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EMPTY_IMAGE:Lcoil3/Image;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcoil3/decode/BlackholeDecoder$Factory$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil3/decode/BlackholeDecoder$Factory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil3/decode/BlackholeDecoder$Factory;->Companion:Lcoil3/decode/BlackholeDecoder$Factory$Companion;

    .line 8
    .line 9
    new-instance v0, Lcoil3/ColorImage;

    .line 10
    .line 11
    const/16 v9, 0x1e

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const-wide/16 v6, 0x0

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v2, v0

    .line 21
    invoke-direct/range {v2 .. v10}, Lcoil3/ColorImage;-><init>(IIIJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcoil3/decode/BlackholeDecoder$Factory;->EMPTY_IMAGE:Lcoil3/Image;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcoil3/decode/BlackholeDecoder$Factory;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcoil3/Image;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcoil3/decode/BlackholeDecoder$Factory;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcoil3/decode/BlackholeDecoder$Factory;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/decode/BlackholeDecoder;
    .locals 0
    .param p1    # Lcoil3/fetch/SourceFetchResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil3/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p1, Lcoil3/decode/BlackholeDecoder;

    iget-object p2, p0, Lcoil3/decode/BlackholeDecoder$Factory;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, p2}, Lcoil3/decode/BlackholeDecoder;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object p1
.end method

.method public bridge synthetic create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/decode/Decoder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcoil3/decode/BlackholeDecoder$Factory;->create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/decode/BlackholeDecoder;

    move-result-object p1

    return-object p1
.end method
