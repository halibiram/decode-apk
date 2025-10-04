.class public Ljunit/framework/JUnit4TestAdapterCache;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lorg/junit/runner/Description;",
        "Ljunit/framework/Test;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L

.field public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljunit/framework/JUnit4TestAdapterCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljunit/framework/JUnit4TestAdapterCache;

    .line 2
    .line 3
    invoke-direct {v0}, Ljunit/framework/JUnit4TestAdapterCache;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljunit/framework/JUnit4TestAdapterCache;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljunit/framework/JUnit4TestAdapterCache;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDefault()Ljunit/framework/JUnit4TestAdapterCache;
    .locals 1

    .line 1
    sget-object v0, Ljunit/framework/JUnit4TestAdapterCache;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljunit/framework/JUnit4TestAdapterCache;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public asTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isSuite()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljunit/framework/JUnit4TestAdapterCache;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljunit/framework/JUnit4TestAdapterCache;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljunit/framework/Test;

    .line 30
    .line 31
    return-object p1
.end method

.method public asTestList(Lorg/junit/runner/Description;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            ")",
            "Ljava/util/List<",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    new-array v0, v0, [Ljunit/framework/Test;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aput-object p1, v0, v1

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lorg/junit/runner/Description;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-object v0
.end method

.method public getNotifier(Ljunit/framework/TestResult;Ljunit/framework/JUnit4TestAdapter;)Lorg/junit/runner/notification/RunNotifier;
    .locals 1

    .line 1
    new-instance p2, Lorg/junit/runner/notification/RunNotifier;

    .line 2
    .line 3
    invoke-direct {p2}, Lorg/junit/runner/notification/RunNotifier;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, L딁둔뒹뒋돠될뒤뒙드됨됩땭돼땳돸뎹딌듻땐땳땟듽딎듬뎸딞뒼뒵뒘돴딎뒘둣땡돝둠드땤따듽뒐땻든딠땣딌둠둘돵돼뎡딤듐딅뒼뎽뒵딸땅뒨딄뒻돛둠듐듸딐땩둬땜뎸땣땳도돴둔돨뒾땋땩땨뎡땨듰땋땃땩뎨뎠뎹딻뒝돸돳딟딅딜딸땲듬땦둘듔뒾땲돴딌땭땤딠도돰딌둠돴딀들딁땲뒤듰딌돨돳딄딨듼뎬뒛딐;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, L딁둔뒹뒋돠될뒤뒙드됨됩땭돼땳돸뎹딌듻땐땳땟듽딎듬뎸딞뒼뒵뒘돴딎뒘둣땡돝둠드땤따듽뒐땻든딠땣딌둠둘돵돼뎡딤듐딅뒼뎽뒵딸땅뒨딄뒻돛둠듐듸딐땩둬땜뎸땣땳도돴둔돨뒾땋땩땨뎡땨듰땋땃땩뎨뎠뎹딻뒝돸돳딟딅딜딸땲듬땦둘듔뒾땲돴딌땭땤딠도돰딌둠돴딀들딁땲뒤듰딌돨돳딄딨듼뎬뒛딐;-><init>(Ljunit/framework/JUnit4TestAdapterCache;Ljunit/framework/TestResult;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lorg/junit/runner/notification/RunNotifier;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 12
    .line 13
    .line 14
    return-object p2
.end method

.method public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lorg/junit/runner/Description;)Ljunit/framework/Test;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljunit/framework/JUnit4TestCaseFacade;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljunit/framework/JUnit4TestCaseFacade;-><init>(Lorg/junit/runner/Description;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljunit/framework/TestSuite;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lorg/junit/runner/Description;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object v0
.end method
