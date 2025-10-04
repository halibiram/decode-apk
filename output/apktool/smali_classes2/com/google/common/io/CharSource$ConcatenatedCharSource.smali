.class final Lcom/google/common/io/CharSource$ConcatenatedCharSource;
.super Lcom/google/common/io/CharSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConcatenatedCharSource"
.end annotation


# instance fields
.field private final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/io/CharSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/io/CharSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/io/CharSource;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Iterable;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/common/io/CharSource;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/common/io/CharSource;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public length()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/google/common/io/CharSource;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/common/io/CharSource;->length()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    add-long/2addr v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-wide v1
.end method

.method public lengthIfKnown()Lcom/google/common/base/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/google/common/io/CharSource;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/common/io/CharSource;->lengthIfKnown()Lcom/google/common/base/Optional;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/Long;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    add-long/2addr v1, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public openStream()Ljava/io/Reader;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/io/MultiReader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/common/io/MultiReader;-><init>(Ljava/util/Iterator;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, 0x13

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    fill-array-data v3, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    new-array v1, v1, [J

    .line 43
    .line 44
    fill-array-data v1, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :array_0
    .array-data 8
        -0x42e13b343a2a9d68L    # -2.732812582981952E-14
        -0x6d9dc618f168a6cL    # -3.832540255904261E275
        0x3b7ade396fb43d6aL    # 3.555958649985293E-22
        0x36b1b165c956d687L    # 3.0991396025490974E-45
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        0x436810e20bf6adcdL    # 5.4191699923398248E16
        0x381dd3a2b8b2dec2L    # 2.191319958231863E-38
    .end array-data
.end method
