.class public final Lokio/Pipe$source$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "okio/Pipe$source$1",
        "Lokio/Source;",
        "Lokio/Buffer;",
        "sink",
        "",
        "byteCount",
        "read",
        "(Lokio/Buffer;J)J",
        "",
        "close",
        "()V",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$source$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,262:1\n1#2:263\n*E\n"
    }
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/Timeout;

.field public final synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lokio/Pipe;


# direct methods
.method public constructor <init>(Lokio/Pipe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/Pipe$source$1;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lokio/Pipe;

    .line 5
    .line 6
    new-instance p1, Lokio/Timeout;

    .line 7
    .line 8
    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lokio/Pipe$source$1;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/Timeout;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokio/Pipe$source$1;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lokio/Pipe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Pipe;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    :try_start_0
    invoke-virtual {v0, v2}, Lokio/Pipe;->setSourceClosed$okio(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokio/Pipe$source$1;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lokio/Pipe;

    .line 7
    .line 8
    invoke-virtual {v0}, Lokio/Pipe;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0}, Lokio/Pipe;->getSourceClosed$okio()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_4

    .line 20
    .line 21
    invoke-virtual {v0}, Lokio/Pipe;->getCanceled$okio()Z

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const-string v3, "canceled"

    .line 26
    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    const-wide/16 v6, 0x0

    .line 38
    .line 39
    cmp-long v2, v4, v6

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lokio/Pipe;->getSinkClosed$okio()Z

    .line 44
    .line 45
    .line 46
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    .line 51
    .line 52
    const-wide/16 p1, -0x1

    .line 53
    .line 54
    return-wide p1

    .line 55
    :cond_0
    :try_start_2
    iget-object v2, p0, Lokio/Pipe$source$1;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/Timeout;

    .line 56
    .line 57
    invoke-virtual {v0}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v2, v4}, Lokio/Timeout;->awaitSignal(Ljava/util/concurrent/locks/Condition;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lokio/Pipe;->getCanceled$okio()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 72
    .line 73
    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    .line 84
    .line 85
    .line 86
    move-result-wide p1

    .line 87
    invoke-virtual {v0}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-interface {p3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    .line 96
    .line 97
    return-wide p1

    .line 98
    :cond_3
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    .line 99
    .line 100
    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_4
    const-string p1, "closed"

    .line 105
    .line 106
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 113
    .line 114
    .line 115
    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/Pipe$source$1;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method
