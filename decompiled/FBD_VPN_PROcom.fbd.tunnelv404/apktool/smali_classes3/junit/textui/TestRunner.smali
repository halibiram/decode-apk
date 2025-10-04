.class public Ljunit/textui/TestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "SourceFile"


# static fields
.field public static final EXCEPTION_EXIT:I = 0x2

.field public static final FAILURE_EXIT:I = 0x1

.field public static final SUCCESS_EXIT:I


# instance fields
.field public 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljunit/textui/ResultPrinter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    .line 2
    new-instance v0, Ljunit/textui/ResultPrinter;

    invoke-direct {v0, p1}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Ljunit/textui/ResultPrinter;)V

    return-void
.end method

.method public constructor <init>(Ljunit/textui/ResultPrinter;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    .line 4
    iput-object p1, p0, Ljunit/textui/TestRunner;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljunit/textui/ResultPrinter;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljunit/textui/TestRunner;

    .line 2
    .line 3
    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->start([Ljava/lang/String;)Ljunit/framework/TestResult;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljunit/framework/TestResult;->wasSuccessful()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 24
    invoke-static {p0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :goto_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x2

    .line 38
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 39
    .line 40
    .line 41
    :goto_2
    return-void
.end method

.method public static run(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    .locals 1

    .line 2
    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    move-result-object p0

    return-object p0
.end method

.method public static run(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0, p0}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    return-void
.end method

.method public static runAndWait(Ljunit/framework/Test;)V
    .locals 2

    .line 1
    new-instance v0, Ljunit/textui/TestRunner;

    .line 2
    .line 3
    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p0, v1}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public createTestResult()Ljunit/framework/TestResult;
    .locals 1

    .line 1
    new-instance v0, Ljunit/framework/TestResult;

    .line 2
    .line 3
    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public doRun(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    move-result-object p1

    return-object p1
.end method

.method public doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;
    .locals 5

    .line 2
    invoke-virtual {p0}, Ljunit/textui/TestRunner;->createTestResult()Ljunit/framework/TestResult;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ljunit/textui/TestRunner;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljunit/textui/ResultPrinter;

    invoke-virtual {v0, v1}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    invoke-interface {p1, v0}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 7
    iget-object p1, p0, Ljunit/textui/TestRunner;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljunit/textui/ResultPrinter;

    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljunit/textui/ResultPrinter;->printHeader(J)V

    .line 10
    invoke-virtual {p1, v0}, Ljunit/textui/ResultPrinter;->printErrors(Ljunit/framework/TestResult;)V

    .line 11
    invoke-virtual {p1, v0}, Ljunit/textui/ResultPrinter;->printFailures(Ljunit/framework/TestResult;)V

    .line 12
    invoke-virtual {p1, v0}, Ljunit/textui/ResultPrinter;->printFooter(Ljunit/framework/TestResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p1

    .line 14
    invoke-virtual {p0, p2}, Ljunit/textui/TestRunner;->pause(Z)V

    return-object v0

    :catchall_0
    move-exception p2

    .line 15
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public pause(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Ljunit/textui/TestRunner;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljunit/textui/ResultPrinter;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "<RETURN> to continue"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    sget-object p1, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :catch_0
    return-void
.end method

.method public runFailed(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public runSingleMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljunit/framework/TestResult;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljunit/runner/BaseTestRunner;->loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-class v0, Ljunit/framework/TestCase;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1, p2}, Ljunit/framework/TestSuite;->createTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/Test;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1, p3}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public setPrinter(Ljunit/textui/ResultPrinter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljunit/textui/TestRunner;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljunit/textui/ResultPrinter;

    .line 2
    .line 3
    return-void
.end method

.method public start([Ljava/lang/String;)Ljunit/framework/TestResult;
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v3, v0

    .line 5
    move-object v4, v3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    :goto_0
    array-length v6, p1

    .line 9
    if-ge v2, v6, :cond_4

    .line 10
    .line 11
    aget-object v6, p1, v2

    .line 12
    .line 13
    const-string v7, "-wait"

    .line 14
    .line 15
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    const/4 v7, 0x1

    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    aget-object v6, p1, v2

    .line 25
    .line 26
    const-string v8, "-c"

    .line 27
    .line 28
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    aget-object v3, p1, v2

    .line 37
    .line 38
    invoke-virtual {p0, v3}, Ljunit/runner/BaseTestRunner;->extractClassName(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    aget-object v6, p1, v2

    .line 44
    .line 45
    const-string v8, "-m"

    .line 46
    .line 47
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    aget-object v3, p1, v2

    .line 56
    .line 57
    const/16 v4, 0x2e

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    add-int/2addr v4, v7

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    move-object v3, v6

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    aget-object v6, p1, v2

    .line 75
    .line 76
    const-string v8, "-v"

    .line 77
    .line 78
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 85
    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v9, "JUnit "

    .line 89
    .line 90
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v9, " by Kent Beck and Erich Gamma"

    .line 101
    .line 102
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    aget-object v3, p1, v2

    .line 114
    .line 115
    :goto_1
    add-int/2addr v2, v7

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_6

    .line 122
    .line 123
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_5

    .line 128
    .line 129
    invoke-virtual {p0, v3, v4, v5}, Ljunit/textui/TestRunner;->runSingleMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljunit/framework/TestResult;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :catch_0
    move-exception p1

    .line 135
    goto :goto_2

    .line 136
    :cond_5
    invoke-virtual {p0, v3}, Ljunit/runner/BaseTestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1, v5}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    .line 141
    .line 142
    .line 143
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-object p1

    .line 145
    :goto_2
    new-instance v0, Ljava/lang/Exception;

    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v2, "Could not create and run test suite: "

    .line 150
    .line 151
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    .line 166
    .line 167
    const-string v0, "Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class"

    .line 168
    .line 169
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1
.end method

.method public testEnded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public testStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
