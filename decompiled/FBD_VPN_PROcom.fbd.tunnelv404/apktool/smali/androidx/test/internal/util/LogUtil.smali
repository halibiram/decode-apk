.class public final Landroidx/test/internal/util/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/util/LogUtil$Supplier;
    }
.end annotation


# static fields
.field private static volatile myProcName:Ljava/lang/String;


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

.method private static isLoggable(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x17

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/16 v1, 0x16

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method private static synthetic lambda$logDebug$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$logDebugWithProcess$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, " in "

    .line 2
    .line 3
    invoke-static {p0, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroidx/test/internal/util/LogUtil;->procName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static lazyArg(Landroidx/test/internal/util/LogUtil$Supplier;)Landroidx/test/internal/util/LogUtil$Supplier;
    .locals 0

    return-object p0
.end method

.method private static varargs logDebug(Ljava/lang/String;Landroidx/test/internal/util/LogUtil$Supplier;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x3

    .line 2
    invoke-static {p0, v0}, Landroidx/test/internal/util/LogUtil;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3
    array-length p0, p2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 5
    aget-object v1, p2, v0

    instance-of v2, v1, Landroidx/test/internal/util/LogUtil$Supplier;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Landroidx/test/internal/util/LogUtil$Supplier;

    invoke-interface {v1}, Landroidx/test/internal/util/LogUtil$Supplier;->get()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    goto :goto_1

    .line 7
    :cond_0
    aput-object v1, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1}, Landroidx/test/internal/util/LogUtil$Supplier;->get()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static varargs logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, L딌듨땀땥땜됩딝땐땡된땹뎨듨돰돨돨땰뎸뒹듬듬듽둘됫뎸땋뒘됐딀둘땐둣땔땠듔땳땳돷뎻됩딄땹따뒬땥돼땦듟둑되돼들들땦땬둬딠뒙땩돛땃듻돶딄뒈땪뒾뒷듔둘땩땍딃딽땟땃딀땻돴딠땜돰딠땬딌뎬뒘뒹딎뒾땳뒘뒙땪뎻뎠딎돰돰뒋도디딹땐땡도둔듟땁뒘듰돛땋도땣뎻땰득둣뒵듼딝뒹돸땸돵딁돶땄될;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, L딌듨땀땥땜됩딝땐땡된땹뎨듨돰돨돨땰뎸뒹듬듬듽둘됫뎸땋뒘됐딀둘땐둣땔땠듔땳땳돷뎻됩딄땹따뒬땥돼땦듟둑되돼들들땦땬둬딠뒙땩돛땃듻돶딄뒈땪뒾뒷듔둘땩땍딃딽땟땃딀땻돴딠땜돰딠땬딌뎬뒘뒹딎뒾땳뒘뒙땪뎻뎠딎돰돰뒋도디딹땐땡도둔듟땁뒘듰돛땋도땣뎻땰득둣뒵듼딝뒹돸땸돵딁돶땄될;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0, p2}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Landroidx/test/internal/util/LogUtil$Supplier;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, L딌듨땀땥땜됩딝땐땡된땹뎨듨돰돨돨땰뎸뒹듬듬듽둘됫뎸땋뒘됐딀둘땐둣땔땠듔땳땳돷뎻됩딄땹따뒬땥돼땦듟둑되돼들들땦땬둬딠뒙땩돛땃듻돶딄뒈땪뒾뒷듔둘땩땍딃딽땟땃딀땻돴딠땜돰딠땬딌뎬뒘뒹딎뒾땳뒘뒙땪뎻뎠딎돰돰뒋도디딹땐땡도둔듟땁뒘듰돛땋도땣뎻땰득둣뒵듼딝뒹돸땸돵딁돶땄될;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, L딌듨땀땥땜됩딝땐땡된땹뎨듨돰돨돨땰뎸뒹듬듬듽둘됫뎸땋뒘됐딀둘땐둣땔땠듔땳땳돷뎻됩딄땹따뒬땥돼땦듟둑되돼들들땦땬둬딠뒙땩돛땃듻돶딄뒈땪뒾뒷듔둘땩땍딃딽땟땃딀땻돴딠땜돰딠땬딌뎬뒘뒹딎뒾땳뒘뒙땪뎻뎠딎돰돰뒋도디딹땐땡도둔듟땁뒘듰돛땋도땣뎻땰득둣뒵듼딝뒹돸땸돵딁돶땄될;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, p2}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Landroidx/test/internal/util/LogUtil$Supplier;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final procName()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Landroidx/test/internal/util/LogUtil;->myProcName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "self"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/test/internal/util/ProcSummary;->summarize(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;
    :try_end_0
    .catch Landroidx/test/internal/util/ProcSummary$SummaryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string v0, "unknown"

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x40

    .line 21
    .line 22
    if-le v1, v2, :cond_0

    .line 23
    .line 24
    const-string v1, "-classpath"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const-string v0, "robolectric"

    .line 33
    .line 34
    :cond_0
    return-object v0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/internal/util/LogUtil;->lambda$logDebug$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/internal/util/LogUtil;->lambda$logDebugWithProcess$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
