.class public Lorg/junit/runners/Suite;
.super Lorg/junit/runners/ParentRunner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runners/Suite$SuiteClasses;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/junit/runners/ParentRunner<",
        "Lorg/junit/runner/Runner;",
        ">;"
    }
.end annotation


# instance fields
.field private final runners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;-><init>(Ljava/lang/Class;)V

    .line 6
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/runners/Suite;->runners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/junit/runners/model/RunnerBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/junit/runners/Suite;->getAnnotatedClasses(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/junit/runners/Suite;-><init>(Lorg/junit/runners/model/RunnerBuilder;Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;

    invoke-direct {v0}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/junit/runners/Suite;-><init>(Lorg/junit/runners/model/RunnerBuilder;Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lorg/junit/runners/model/RunnerBuilder;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/RunnerBuilder;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p1, p2, p3}, Lorg/junit/runners/model/RunnerBuilder;->runners(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/junit/runners/model/RunnerBuilder;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/RunnerBuilder;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, p2}, Lorg/junit/runners/model/RunnerBuilder;->runners(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method public static emptySuite()Lorg/junit/runner/Runner;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/junit/runners/Suite;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Class;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v2, v1}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    :try_end_0
    .catch Lorg/junit/runners/model/InitializationError; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    const-string v1, "This shouldn\'t be possible"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method private static getAnnotatedClasses(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/junit/runners/Suite$SuiteClasses;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/junit/runners/Suite$SuiteClasses;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lorg/junit/runners/Suite$SuiteClasses;->value()[Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Lorg/junit/runners/model/InitializationError;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, "class \'"

    .line 23
    .line 24
    const-string v2, "\' must have a SuiteClasses annotation"

    .line 25
    .line 26
    invoke-static {v1, p0, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method


# virtual methods
.method public bridge synthetic describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;
    .locals 0

    .line 1
    check-cast p1, Lorg/junit/runner/Runner;

    invoke-virtual {p0, p1}, Lorg/junit/runners/Suite;->describeChild(Lorg/junit/runner/Runner;)Lorg/junit/runner/Description;

    move-result-object p1

    return-object p1
.end method

.method public describeChild(Lorg/junit/runner/Runner;)Lorg/junit/runner/Description;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/junit/runners/Suite;->runners:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic runChild(Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/junit/runner/Runner;

    invoke-virtual {p0, p1, p2}, Lorg/junit/runners/Suite;->runChild(Lorg/junit/runner/Runner;Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method

.method public runChild(Lorg/junit/runner/Runner;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Lorg/junit/runner/Runner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method
