.class public Landroidx/camera/core/processing/DefaultSurfaceProcessor$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/processing/DefaultSurfaceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static sSupplier:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/core/DynamicRange;",
            "Landroidx/camera/core/processing/SurfaceProcessorInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, L뒉뒤됨뒬땹딝돵땹들딅돠땧된딀땋돷뒀뎨뒵듬딐딞뎰뒼둑듸딅뎰땡땰될뒹뒝돠된듐뒝땧뒐뎨뒨딜둡땰됫듌땭듸뒈뎻뒵딝뎡땜딞듰땥됫딀돛땵둔뒉돤뒀땐될땅돝뒘된땔돴땹땯돠뒈돝땮땱땀돨딐뒈됴드땀듐땬딸듌땥땔됐듬뒈딐딄땹둑땩돰뎨뒙된돨돝땅땦뎹딠뎠듸듬땁땳듌돳되뎹뎬땋땋뒛땤뒋듽뎠땰땤;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, L뒉뒤됨뒬땹딝돵땹들딅돠땧된딀땋돷뒀뎨뒵듬딐딞뎰뒼둑듸딅뎰땡땰될뒹뒝돠된듐뒝땧뒐뎨뒨딜둡땰됫듌땭듸뒈뎻뒵딝뎡땜딞듰땥됫딀돛땵둔뒉돤뒀땐될땅돝뒘된땔돴땹땯돠뒈돝땮땱땀돨딐뒈됴드땀듐땬딸듌땥땔됐듬뒈딐딄땹둑땩돰뎨뒙된돨돝땅땦뎹딠뎠듸듬땁땳듌돳되뎹뎬땋땋뒛땤뒋듽뎠땰땤;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor$Factory;->sSupplier:Landroidx/arch/core/util/Function;

    .line 8
    .line 9
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

.method public static newInstance(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/processing/SurfaceProcessorInternal;
    .locals 1
    .param p0    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor$Factory;->sSupplier:Landroidx/arch/core/util/Function;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/camera/core/processing/SurfaceProcessorInternal;

    .line 8
    .line 9
    return-object p0
.end method

.method public static setSupplier(Landroidx/arch/core/util/Function;)V
    .locals 0
    .param p0    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/core/DynamicRange;",
            "Landroidx/camera/core/processing/SurfaceProcessorInternal;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor$Factory;->sSupplier:Landroidx/arch/core/util/Function;

    .line 2
    .line 3
    return-void
.end method
