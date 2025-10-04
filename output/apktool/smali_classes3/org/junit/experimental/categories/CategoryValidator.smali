.class public final Lorg/junit/experimental/categories/CategoryValidator;
.super Lorg/junit/validator/AnnotationValidator;
.source "SourceFile"


# static fields
.field private static final INCOMPATIBLE_ANNOTATIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [Ljava/lang/Class;

    .line 5
    .line 6
    const-class v2, Lorg/junit/BeforeClass;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const-class v2, Lorg/junit/AfterClass;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    const-class v2, Lorg/junit/Before;

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    aput-object v2, v1, v3

    .line 20
    .line 21
    const-class v2, Lorg/junit/After;

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    aput-object v2, v1, v3

    .line 25
    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/junit/experimental/categories/CategoryValidator;->INCOMPATIBLE_ANNOTATIONS:Ljava/util/Set;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/junit/validator/AnnotationValidator;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addErrorMessage(Ljava/util/List;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "@"

    .line 6
    .line 7
    const-string v1, " can not be combined with @Category"

    .line 8
    .line 9
    invoke-static {v0, p2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Ljava/lang/Exception;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public validateAnnotatedMethod(Lorg/junit/runners/model/FrameworkMethod;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    array-length v1, p1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    aget-object v3, p1, v2

    .line 15
    .line 16
    sget-object v4, Lorg/junit/experimental/categories/CategoryValidator;->INCOMPATIBLE_ANNOTATIONS:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Ljava/lang/Class;

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    invoke-direct {p0, v0, v5}, Lorg/junit/experimental/categories/CategoryValidator;->addErrorMessage(Ljava/util/List;Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method
