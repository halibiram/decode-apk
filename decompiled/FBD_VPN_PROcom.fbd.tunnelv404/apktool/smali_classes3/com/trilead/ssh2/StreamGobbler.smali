.class public Lcom/trilead/ssh2/StreamGobbler;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/StreamGobbler$GobblerThread;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private exception:Ljava/io/IOException;

.field private is:Ljava/io/InputStream;

.field private isClosed:Z

.field private isEOF:Z

.field private read_pos:I

.field private final synchronizer:Ljava/lang/Object;

.field private final t:Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

.field private write_pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    .line 18
    .line 19
    const/16 v1, 0x800

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    iput-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    .line 24
    .line 25
    iput v0, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    .line 26
    .line 27
    iput v0, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    .line 28
    .line 29
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    .line 30
    .line 31
    new-instance p1, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;-><init>(Lcom/trilead/ssh2/StreamGobbler;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->t:Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/StreamGobbler;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    return-object p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/trilead/ssh2/StreamGobbler;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    return-object p0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/trilead/ssh2/StreamGobbler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    return p0
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/trilead/ssh2/StreamGobbler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    return p0
.end method

.method public static bridge synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/trilead/ssh2/StreamGobbler;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    return-void
.end method

.method public static bridge synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Lcom/trilead/ssh2/StreamGobbler;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    return-void
.end method

.method public static bridge synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Lcom/trilead/ssh2/StreamGobbler;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    return-void
.end method

.method public static bridge synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/trilead/ssh2/StreamGobbler;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    return-void
.end method

.method public static bridge synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/trilead/ssh2/StreamGobbler;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    .line 9
    .line 10
    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 18
    .line 19
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v3, 0x5

    .line 22
    new-array v3, v3, [J

    .line 23
    .line 24
    fill-array-data v3, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x1c7782b643ea42a0L
        -0x4f132a000b9ab89dL    # -5.10017557956091E-73
        -0xc18a4be50cb6804L
        -0x4cfccd6230650L
        0x306f80f9a504b41dL    # 2.1765776561658504E-75
    .end array-data
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public read()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-nez v1, :cond_3

    .line 3
    :goto_0
    iget v1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    if-ne v1, v2, :cond_2

    .line 4
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 5
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    if-eqz v1, :cond_0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 7
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 9
    :cond_1
    throw v1

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 11
    monitor-exit v0

    return v1

    .line 12
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :array_0
    .array-data 8
        0x6601041f70109ab9L    # 2.2594749242513206E183
        0x1fce163725957e49L
        0x2706a2c48e98a42eL    # 1.095740768261039E-120
        0x5d069cdbf5790cbaL    # 1.3464214548794976E140
        0x5ab92b02d61a283dL    # 1.090352878347643E129
    .end array-data
.end method

.method public read([B)I
    .locals 2

    .line 14
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/StreamGobbler;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v0, p2, p3

    .line 16
    array-length v1, p1

    if-gt v0, v1, :cond_6

    if-ltz v0, :cond_6

    array-length v0, p1

    if-gt p2, v0, :cond_6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-nez v1, :cond_5

    .line 19
    :goto_0
    iget v1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    if-ne v1, v2, :cond_3

    .line 20
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    if-nez v1, :cond_2

    .line 21
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    if-eqz v1, :cond_1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 23
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 25
    :cond_2
    throw v1

    :cond_3
    sub-int/2addr v2, v1

    if-le v2, p3, :cond_4

    goto :goto_1

    :cond_4
    move p3, v2

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    invoke-static {v2, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget p1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    .line 28
    monitor-exit v0

    return p3

    .line 29
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x5

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 31
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :array_0
    .array-data 8
        -0x3dae2b24c9059676L    # -3.0634232112964905E11
        0x4ef342f7d72a61f9L    # 2.127018203505138E72
        -0x3fa741e3276ac7c6L    # -98.9705106217597
        0x167d07dbdbd2e37dL
        0x6b724a849e520b29L    # 3.758343697501951E209
    .end array-data
.end method
