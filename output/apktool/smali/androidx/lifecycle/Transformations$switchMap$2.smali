.class public final Landroidx/lifecycle/Transformations$switchMap$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0015\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000bR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/lifecycle/Transformations$switchMap$2",
        "Landroidx/lifecycle/Observer;",
        "liveData",
        "Landroidx/lifecycle/LiveData;",
        "getLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "setLiveData",
        "(Landroidx/lifecycle/LiveData;)V",
        "onChanged",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "lifecycle-livedata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $result:Landroidx/lifecycle/MediatorLiveData;

.field final synthetic $switchMapFunction:Landroidx/arch/core/util/Function;

.field private liveData:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/arch/core/util/Function;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$switchMapFunction:Landroidx/arch/core/util/Function;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$result:Landroidx/lifecycle/MediatorLiveData;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final onChanged$lambda$0(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/Transformations$switchMap$2;->onChanged$lambda$0(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2;->liveData:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$switchMapFunction:Landroidx/arch/core/util/Function;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2;->liveData:Landroidx/lifecycle/LiveData;

    .line 10
    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$result:Landroidx/lifecycle/MediatorLiveData;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-object p1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->liveData:Landroidx/lifecycle/LiveData;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$result:Landroidx/lifecycle/MediatorLiveData;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$result:Landroidx/lifecycle/MediatorLiveData;

    .line 34
    .line 35
    new-instance v2, L땬들뒋땬됫돴돨뎨땵둣뎰땅땳따딄뒨득땠뎸딜뎻둡뎽뒬딝둬땍땰딝뒼돵듬들둬딃됫딤땯돳뒛뒹돼둣땐돸됨뎹딤땜듐듐딀딐돼돳뒼땥득뒉딤땅딐뒻돴땱딌듔딝딽돨뎡딞돤딝둥땭돴딀딜듬땀땸들돴두듻땳뒈뎡땸돠돶득땧땩땬뒛들땦뒙둬뒛땡땃돷듨돴뒛돝둘듼뎠땻든뎻들듟땪돰뎬드딨땫뒻땨뎻듔딠되땤;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v2, v1, v3}, L땬들뒋땬됫돴돨뎨땵둣뎰땅땳따딄뒨득땠뎸딜뎻둡뎽뒬딝둬땍땰딝뒼돵듬들둬딃됫딤땯돳뒛뒹돼둣땐돸됨뎹딤땜듐듐딀딐돼돳뒼땥득뒉딤땅딐뒻돴땱딌듔딝딽돨뎡딞돤딝둥땭돴딀딜듬땀땸들돴두듻땳뒈뎡땸돠돶득땧땩땬뒛들땦뒙둬뒛땡땃돷듨돴뒛돝둘듼뎠땻든뎻들듟땪돰뎬드딨땫뒻땨뎻듔딠되땤;-><init>(Landroidx/lifecycle/MediatorLiveData;I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    .line 42
    .line 43
    invoke-direct {v1, v2}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final setLiveData(Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->liveData:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-void
.end method
