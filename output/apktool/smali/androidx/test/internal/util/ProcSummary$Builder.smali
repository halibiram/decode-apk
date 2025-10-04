.class Landroidx/test/internal/util/ProcSummary$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/util/ProcSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cmdline:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private realUid:Ljava/lang/String;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->realUid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->parent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->cmdline:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Landroidx/test/internal/util/ProcSummary$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->startTime:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public build()Landroidx/test/internal/util/ProcSummary;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/internal/util/ProcSummary;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/test/internal/util/ProcSummary;-><init>(Landroidx/test/internal/util/ProcSummary$Builder;Landroidx/test/internal/util/ProcSummary$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public withCmdline(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->cmdline:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withParent(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->parent:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0

    .line 7
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "not a pid: "

    .line 10
    .line 11
    invoke-static {v1, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public withPid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->pid:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0

    .line 7
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "not a pid: "

    .line 10
    .line 11
    invoke-static {v1, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public withRealUid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->realUid:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0

    .line 7
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "not a uid: "

    .line 10
    .line 11
    invoke-static {v1, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public withStartTime(J)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->startTime:J

    .line 2
    .line 3
    return-object p0
.end method
