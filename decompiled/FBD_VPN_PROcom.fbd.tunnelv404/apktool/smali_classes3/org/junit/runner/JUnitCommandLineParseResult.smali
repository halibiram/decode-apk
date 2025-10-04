.class Lorg/junit/runner/JUnitCommandLineParseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runner/JUnitCommandLineParseResult$CommandLineParserError;
    }
.end annotation


# instance fields
.field private final classes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final filterSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parserErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->filterSpecs:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->classes:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method

.method private applyFilterSpecs(Lorg/junit/runner/Request;)Lorg/junit/runner/Request;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->filterSpecs:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1, v1}, Lorg/junit/runner/FilterFactories;->createFilterFromFilterSpec(Lorg/junit/runner/Request;Ljava/lang/String;)Lorg/junit/runner/manipulation/Filter;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Lorg/junit/runner/Request;->filterWith(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/Request;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Lorg/junit/runner/FilterFactory$FilterNotCreatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    return-object p1

    .line 31
    :goto_1
    invoke-direct {p0, p1}, Lorg/junit/runner/JUnitCommandLineParseResult;->errorReport(Ljava/lang/Throwable;)Lorg/junit/runner/Request;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private copyArray([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 4

    .line 1
    sub-int v0, p3, p2

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    move v1, p2

    .line 6
    :goto_0
    if-eq v1, p3, :cond_0

    .line 7
    .line 8
    sub-int v2, v1, p2

    .line 9
    .line 10
    aget-object v3, p1, v1

    .line 11
    .line 12
    aput-object v3, v0, v2

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-object v0
.end method

.method private errorReport(Ljava/lang/Throwable;)Lorg/junit/runner/Request;
    .locals 1

    .line 1
    const-class v0, Lorg/junit/runner/JUnitCommandLineParseResult;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/junit/runner/Request;->errorReport(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/junit/runner/Request;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public static parse([Ljava/lang/String;)Lorg/junit/runner/JUnitCommandLineParseResult;
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/runner/JUnitCommandLineParseResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/junit/runner/JUnitCommandLineParseResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/junit/runner/JUnitCommandLineParseResult;->parseArgs([Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/junit/runner/JUnitCommandLineParseResult;->parseOptions([Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/junit/runner/JUnitCommandLineParseResult;->parseParameters([Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public createRequest(Lorg/junit/runner/Computer;)Lorg/junit/runner/Request;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->classes:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-array v1, v1, [Ljava/lang/Class;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, [Ljava/lang/Class;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lorg/junit/runner/Request;->classes(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Request;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lorg/junit/runner/JUnitCommandLineParseResult;->applyFilterSpecs(Lorg/junit/runner/Request;)Lorg/junit/runner/Request;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    new-instance p1, Lorg/junit/runners/model/InitializationError;

    .line 33
    .line 34
    iget-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    .line 35
    .line 36
    invoke-direct {p1, v0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lorg/junit/runner/JUnitCommandLineParseResult;->errorReport(Ljava/lang/Throwable;)Lorg/junit/runner/Request;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public getClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->classes:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFilterSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->filterSpecs:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public varargs parseOptions([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-eq v1, v2, :cond_6

    .line 5
    .line 6
    aget-object v2, p1, v1

    .line 7
    .line 8
    const-string v3, "--"

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    array-length v0, p1

    .line 19
    invoke-direct {p0, p1, v1, v0}, Lorg/junit/runner/JUnitCommandLineParseResult;->copyArray([Ljava/lang/String;II)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_5

    .line 29
    .line 30
    const-string v3, "--filter="

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "--filter"

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object v3, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    .line 48
    .line 49
    new-instance v4, Lorg/junit/runner/JUnitCommandLineParseResult$CommandLineParserError;

    .line 50
    .line 51
    const-string v5, "JUnit knows nothing about the "

    .line 52
    .line 53
    const-string v6, " option"

    .line 54
    .line 55
    invoke-static {v5, v2, v6}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v4, v2}, Lorg/junit/runner/JUnitCommandLineParseResult$CommandLineParserError;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_2
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    array-length v3, p1

    .line 75
    if-ge v1, v3, :cond_3

    .line 76
    .line 77
    aget-object v2, p1, v1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    iget-object p1, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    .line 81
    .line 82
    new-instance v1, Lorg/junit/runner/JUnitCommandLineParseResult$CommandLineParserError;

    .line 83
    .line 84
    const-string v3, " value not specified"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {v1, v2}, Lorg/junit/runner/JUnitCommandLineParseResult$CommandLineParserError;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    const/16 v3, 0x3d

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    :goto_2
    iget-object v3, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->filterSpecs:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    array-length v0, p1

    .line 118
    invoke-direct {p0, p1, v1, v0}, Lorg/junit/runner/JUnitCommandLineParseResult;->copyArray([Ljava/lang/String;II)[Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    :cond_6
    :goto_4
    new-array p1, v0, [Ljava/lang/String;

    .line 124
    .line 125
    return-object p1
.end method

.method public parseParameters([Ljava/lang/String;)V
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    :try_start_0
    iget-object v3, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->classes:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {v2}, Lorg/junit/internal/Classes;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception v3

    .line 18
    iget-object v4, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    .line 19
    .line 20
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v6, "Could not find class ["

    .line 23
    .line 24
    const-string v7, "]"

    .line 25
    .line 26
    invoke-static {v6, v2, v7}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v5, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method
