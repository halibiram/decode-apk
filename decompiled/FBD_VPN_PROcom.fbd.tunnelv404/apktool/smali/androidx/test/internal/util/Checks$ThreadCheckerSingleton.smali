.class Landroidx/test/internal/util/Checks$ThreadCheckerSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/util/Checks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadCheckerSingleton"
.end annotation


# static fields
.field private static final INSTANCE:Landroidx/test/internal/platform/ThreadChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/internal/util/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Landroidx/test/internal/platform/ThreadChecker;

    .line 7
    .line 8
    invoke-static {v1, v0}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/test/internal/platform/ThreadChecker;

    .line 13
    .line 14
    sput-object v0, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton;->INSTANCE:Landroidx/test/internal/platform/ThreadChecker;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000()Landroidx/test/internal/platform/ThreadChecker;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton;->INSTANCE:Landroidx/test/internal/platform/ThreadChecker;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic lambda$static$0()Landroidx/test/internal/platform/ThreadChecker;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton$1;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Landroidx/test/internal/platform/ThreadChecker;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton;->lambda$static$0()Landroidx/test/internal/platform/ThreadChecker;

    move-result-object v0

    return-object v0
.end method
