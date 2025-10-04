.class public abstract Lcom/google/common/util/concurrent/Striped;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Striped$PaddedSemaphore;,
        Lcom/google/common/util/concurrent/Striped$PaddedLock;,
        Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;,
        Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;,
        Lcom/google/common/util/concurrent/Striped$CompactStriped;,
        Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;,
        Lcom/google/common/util/concurrent/Striped$WeakSafeCondition;,
        Lcom/google/common/util/concurrent/Striped$WeakSafeLock;,
        Lcom/google/common/util/concurrent/Striped$WeakSafeReadWriteLock;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ALL_SET:I = -0x1

.field private static final LARGE_LAZY_CUTOFF:I = 0x400


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/Striped$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Striped;-><init>()V

    return-void
.end method

.method public static synthetic access$200(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/Striped;->ceilToPowerOfTwo(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/Striped;->smear(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static ceilToPowerOfTwo(I)I
    .locals 1

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    shl-int p0, v0, p0

    .line 9
    .line 10
    return p0
.end method

.method public static custom(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lcom/google/common/base/Supplier<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/Striped<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/Striped$CompactStriped;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/util/concurrent/Striped$CompactStriped;-><init>(ILcom/google/common/base/Supplier;Lcom/google/common/util/concurrent/Striped$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static synthetic lambda$lazyWeakLock$0()Ljava/util/concurrent/locks/Lock;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static synthetic lambda$lazyWeakSemaphore$2(I)Ljava/util/concurrent/Semaphore;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static synthetic lambda$semaphore$1(I)Ljava/util/concurrent/Semaphore;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/Striped$PaddedSemaphore;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Striped$PaddedSemaphore;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static lazy(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lcom/google/common/base/Supplier<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/Striped<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;-><init>(ILcom/google/common/base/Supplier;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;-><init>(ILcom/google/common/base/Supplier;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public static lazyWeakLock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L땦땐딟둑땯딁땮돠딽되됴딜뒾딅됴뎰든돠둔딀땍돨뒨돴땍딞둣땲드땁돠듬뒝뒼땸돸둥땩땧됐돳둥땹돰뒙땩뎽땅딄땳돠땄드땧땯돵땮땮뒵둠땡뒬돳딄돴딅돰듔뒤듼됴땬돰땋땃돸돠든듸듟돵뒨땤땄딁도땱딸땁두듽됴뒋뒹땸땫뎡돷듸뒙땦돠딌딞둘듔뒘듬뒾땡둔뎠돛들뒈됩둔듌뒨뒙둡땫됨땠땮뒉딎땲듽땀;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, L땦땐딟둑땯딁땮돠딽되됴딜뒾딅됴뎰든돠둔딀땍돨뒨돴땍딞둣땲드땁돠듬뒝뒼땸돸둥땩땧됐돳둥땹돰뒙땩뎽땅딄땳돠땄드땧땯돵땮땮뒵둠땡뒬돳딄돴딅돰듔뒤듼됴땬돰땋땃돸돠든듸듟돵뒨땤땄딁도땱딸땁두듽됴뒋뒹땸땫뎡돷듸뒙땦돠딌딞둘듔뒘듬뒾땡둔뎠돛들뒈됩둔듌뒨뒙둡땫됨땠땮뒉딎땲듽땀;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->lazy(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static lazyWeakReadWriteLock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->lazy(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static lazyWeakSemaphore(II)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L땦땄딽딹듻땳딞디땥뎸땣돰되듬땔땧뒋땁땥뒹뒨뒻땲도된딁듼뒹뎻땤딐돶뎬땝뎹땡돸땩둑둔될땫돳둡딎뒹땹뒝득딽드뒝딽든뒘땯돼뒵듐둑듟딸땩땨딻도뎬돠뒼땐땠돸땬듬땡도뒈땝뒈땄돷뒉돵뒵든땠뎬두돠득땧돠땅땧딟돶돳땦땠땀땮딃땮땤딨뒹됴듬득딁땭득뎡됩땤땧땋뒻디땨뎰딄뒘돨뒷뎡둑둥땮됴;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, L땦땄딽딹듻땳딞디땥뎸땣돰되듬땔땧뒋땁땥뒹뒨뒻땲도된딁듼뒹뎻땤딐돶뎬땝뎹땡돸땩둑둔될땫돳둡딎뒹땹뒝득딽드뒝딽든뒘땯돼뒵듐둑듟딸땩땨딻도뎬돠뒼땐땠돸땬듬땡도뒈땝뒈땄돷뒉돵뒵든땠뎬두돠득땧돠땅땧딟돶돳땦땠땀땮딃땮땤딨뒹됴듬득딁땭득뎡됩땤땧땋뒻디땨뎰딄뒘돨뒷뎡둑둥땮됴;-><init>(II)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->lazy(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static lock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->custom(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static readWriteLock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L땦땐딟둑땯딁땮돠딽되됴딜뒾딅됴뎰든돠둔딀땍돨뒨돴땍딞둣땲드땁돠듬뒝뒼땸돸둥땩땧됐돳둥땹돰뒙땩뎽땅딄땳돠땄드땧땯돵땮땮뒵둠땡뒬돳딄돴딅돰듔뒤듼됴땬돰땋땃돸돠든듸듟돵뒨땤땄딁도땱딸땁두듽됴뒋뒹땸땫뎡돷듸뒙땦돠딌딞둘듔뒘듬뒾땡둔뎠돛들뒈됩둔듌뒨뒙둡땫됨땠땮뒉딎땲듽땀;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, L땦땐딟둑땯딁땮돠딽되됴딜뒾딅됴뎰든돠둔딀땍돨뒨돴땍딞둣땲드땁돠듬뒝뒼땸돸둥땩땧됐돳둥땹돰뒙땩뎽땅딄땳돠땄드땧땯돵땮땮뒵둠땡뒬돳딄돴딅돰듔뒤듼됴땬돰땋땃돸돠든듸듟돵뒨땤땄딁도땱딸땁두듽됴뒋뒹땸땫뎡돷듸뒙땦돠딌딞둘듔뒘듬뒾땡둔뎠돛들뒈됩둔듌뒨뒙둡땫됨땠땮뒉딎땲듽땀;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->custom(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static semaphore(II)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/Striped<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L땦땄딽딹듻땳딞디땥뎸땣돰되듬땔땧뒋땁땥뒹뒨뒻땲도된딁듼뒹뎻땤딐돶뎬땝뎹땡돸땩둑둔될땫돳둡딎뒹땹뒝득딽드뒝딽든뒘땯돼뒵듐둑듟딸땩땨딻도뎬돠뒼땐땠돸땬듬땡도뒈땝뒈땄돷뒉돵뒵든땠뎬두돠득땧돠땅땧딟돶돳땦땠땀땮딃땮땤딨뒹됴듬득딁땭득뎡됩땤땧땋뒻디땨뎰딄뒘돨뒷뎡둑둥땮됴;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, L땦땄딽딹듻땳딞디땥뎸땣돰되듬땔땧뒋땁땥뒹뒨뒻땲도된딁듼뒹뎻땤딐돶뎬땝뎹땡돸땩둑둔될땫돳둡딎뒹땹뒝득딽드뒝딽든뒘땯돼뒵듐둑듟딸땩땨딻도뎬돠뒼땐땠돸땬듬땡도뒈땝뒈땄돷뒉돵뒵든땠뎬두돠득땧돠땅땧딟돶돳땦땠땀땮딃땮땤딨뒹됴듬득딁땭득뎡됩땤땧땋뒻디땨뎰딄뒘돨뒷뎡둑둥땮됴;-><init>(II)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Striped;->custom(ILcom/google/common/base/Supplier;)Lcom/google/common/util/concurrent/Striped;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static smear(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(I)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/Striped;->lambda$semaphore$1(I)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/util/concurrent/Striped;->lambda$lazyWeakLock$0()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(I)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/Striped;->lambda$lazyWeakSemaphore$2(I)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bulkGet(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Iterable<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-array v0, v0, [I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Striped;->indexFor(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    aput v3, v0, v2

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 44
    .line 45
    .line 46
    aget v2, v0, v1

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/Striped;->getAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-ge v1, v3, :cond_3

    .line 61
    .line 62
    aget v3, v0, v1

    .line 63
    .line 64
    if-ne v3, v2, :cond_2

    .line 65
    .line 66
    add-int/lit8 v3, v1, -0x1

    .line 67
    .line 68
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Striped;->getAt(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move v2, v3

    .line 84
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public abstract getAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation
.end method

.method public abstract indexFor(Ljava/lang/Object;)I
.end method

.method public abstract size()I
.end method
