.class public Lorg/junit/internal/TextListener;
.super Lorg/junit/runner/notification/RunListener;
.source "SourceFile"


# instance fields
.field private final writer:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/junit/internal/TextListener;->writer:Ljava/io/PrintStream;

    return-void
.end method

.method public constructor <init>(Lorg/junit/internal/JUnitSystem;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/junit/internal/JUnitSystem;->out()Ljava/io/PrintStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/junit/internal/TextListener;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method private getWriter()Ljava/io/PrintStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/internal/TextListener;->writer:Ljava/io/PrintStream;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public elapsedTimeAsString(J)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    long-to-double p1, p1

    .line 6
    const-wide v1, 0x408f400000000000L    # 1000.0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    div-double/2addr p1, v1

    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public printFailure(Lorg/junit/runner/notification/Failure;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ") "

    .line 6
    .line 7
    invoke-static {p2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getTestHeader()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getTrimmedTrace()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public printFailures(Lorg/junit/runner/Result;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/junit/runner/Result;->getFailures()Ljava/util/List;

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
    return-void

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "There was "

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, " failure:"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "There were "

    .line 57
    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v3, " failures:"

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lorg/junit/runner/notification/Failure;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v3, ""

    .line 99
    .line 100
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v3, v1, 0x1

    .line 104
    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p0, v0, v1}, Lorg/junit/internal/TextListener;->printFailure(Lorg/junit/runner/notification/Failure;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move v1, v3

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    return-void
.end method

.method public printFooter(Lorg/junit/runner/Result;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/junit/runner/Result;->wasSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "OK"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, " ("

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/junit/runner/Result;->getRunCount()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " test"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/junit/runner/Result;->getRunCount()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v2, 0x1

    .line 51
    if-ne p1, v2, :cond_0

    .line 52
    .line 53
    const-string p1, ""

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string p1, "s"

    .line 57
    .line 58
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ")"

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "FAILURES!!!"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, "Tests run: "

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lorg/junit/runner/Result;->getRunCount()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v2, ",  Failures: "

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lorg/junit/runner/Result;->getFailureCount()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public printHeader(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lorg/junit/internal/TextListener;->getWriter()Ljava/io/PrintStream;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Time: "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/junit/internal/TextListener;->elapsedTimeAsString(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/junit/internal/TextListener;->writer:Ljava/io/PrintStream;

    .line 2
    .line 3
    const/16 v0, 0x45

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public testIgnored(Lorg/junit/runner/Description;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/junit/internal/TextListener;->writer:Ljava/io/PrintStream;

    .line 2
    .line 3
    const/16 v0, 0x49

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public testRunFinished(Lorg/junit/runner/Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/junit/runner/Result;->getRunTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/junit/internal/TextListener;->printHeader(J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/junit/internal/TextListener;->printFailures(Lorg/junit/runner/Result;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/junit/internal/TextListener;->printFooter(Lorg/junit/runner/Result;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/junit/internal/TextListener;->writer:Ljava/io/PrintStream;

    .line 2
    .line 3
    const/16 v0, 0x2e

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    .line 6
    .line 7
    .line 8
    return-void
.end method
