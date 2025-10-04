.class public final Landroidx/test/ext/junit/rules/ActivityScenarioRule;
.super Lorg/junit/rules/ExternalResource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Activity;",
        ">",
        "Lorg/junit/rules/ExternalResource;"
    }
.end annotation


# instance fields
.field private scenario:Landroidx/test/core/app/ActivityScenario;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier<",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 6
    new-instance v0, Landroidx/test/ext/junit/rules/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/test/ext/junit/rules/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 8
    new-instance v0, Landroidx/test/ext/junit/rules/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Landroidx/test/ext/junit/rules/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 2
    new-instance v0, Landroidx/test/ext/junit/rules/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/ext/junit/rules/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 4
    new-instance v0, Landroidx/test/ext/junit/rules/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/test/ext/junit/rules/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/test/core/app/ActivityScenario;->launch(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$new$1(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/test/core/app/ActivityScenario;->launch(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$new$2(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/test/core/app/ActivityScenario;->launch(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$new$3(Landroid/content/Intent;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/test/core/app/ActivityScenario;->launch(Landroid/content/Intent;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->lambda$new$2(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/content/Intent;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->lambda$new$3(Landroid/content/Intent;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->lambda$new$1(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->lambda$new$0(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public after()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenario:Landroidx/test/core/app/ActivityScenario;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/test/core/app/ActivityScenario;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public before()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/test/core/app/ActivityScenario;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenario:Landroidx/test/core/app/ActivityScenario;

    .line 10
    .line 11
    return-void
.end method

.method public getScenario()Landroidx/test/core/app/ActivityScenario;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenario:Landroidx/test/core/app/ActivityScenario;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/test/core/app/ActivityScenario;

    .line 8
    .line 9
    return-object v0
.end method
