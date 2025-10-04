.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "okio/Pipe$sink$1",
        "Lokio/Sink;",
        "Lokio/Buffer;",
        "source",
        "",
        "byteCount",
        "",
        "write",
        "(Lokio/Buffer;J)V",
        "flush",
        "()V",
        "close",
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
        "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Pipe.kt\nokio/Pipe\n+ 4 Timeout.kt\nokio/Timeout\n*L\n1#1,262:1\n1#2:263\n222#3:264\n223#3:291\n222#3:292\n223#3:319\n222#3:320\n223#3:347\n302#4,26:265\n302#4,26:293\n302#4,26:321\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n87#1:264\n87#1:291\n106#1:292\n106#1:319\n124#1:320\n124#1:347\n87#1:265,26\n106#1:293,26\n124#1:321,26\n*E\n"
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
    iput-object p1, p0, Lokio/Pipe$sink$1;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lokio/Pipe;

    .line 5
    .line 6
    new-instance p1, Lokio/Timeout;

    .line 7
    .line 8
    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lokio/Pipe$sink$1;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/Timeout;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 12

    .line 1
    iget-object v0, p0, Lokio/Pipe$sink$1;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lokio/Pipe;

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
    :try_start_0
    invoke-virtual {v0}, Lokio/Pipe;->getSinkClosed$okio()Z

    .line 11
    .line 12
    .line 13
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v0}, Lokio/Pipe;->getSourceClosed$okio()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long v6, v2, v4

    .line 44
    .line 45
    if-gtz v6, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 49
    .line 50
    const-string v2, "source is closed"

    .line 51
    .line 52
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, v2}, Lokio/Pipe;->setSinkClosed$okio(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    .line 73
    .line 74
    if-eqz v2, :cond_9

    .line 75
    .line 76
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 93
    .line 94
    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 107
    .line 108
    invoke-virtual {v1, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_6

    .line 116
    .line 117
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 118
    .line 119
    .line 120
    move-result-wide v5

    .line 121
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_4

    .line 126
    .line 127
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 132
    .line 133
    .line 134
    move-result-wide v10

    .line 135
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 136
    .line 137
    .line 138
    move-result-wide v8

    .line 139
    invoke-virtual {v1, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 140
    .line 141
    .line 142
    :cond_4
    :try_start_2
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_9

    .line 153
    .line 154
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catchall_1
    move-exception v2

    .line 159
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 160
    .line 161
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 171
    .line 172
    .line 173
    :cond_5
    throw v2

    .line 174
    :cond_6
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_7

    .line 179
    .line 180
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 181
    .line 182
    .line 183
    move-result-wide v5

    .line 184
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 185
    .line 186
    .line 187
    :cond_7
    :try_start_3
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_9

    .line 198
    .line 199
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :catchall_2
    move-exception v2

    .line 204
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 205
    .line 206
    invoke-virtual {v1, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_8

    .line 214
    .line 215
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 216
    .line 217
    .line 218
    :cond_8
    throw v2

    .line 219
    :cond_9
    :goto_2
    return-void

    .line 220
    :goto_3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 221
    .line 222
    .line 223
    throw v0
.end method

.method public flush()V
    .locals 12

    .line 1
    iget-object v0, p0, Lokio/Pipe$sink$1;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lokio/Pipe;

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
    :try_start_0
    invoke-virtual {v0}, Lokio/Pipe;->getSinkClosed$okio()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_a

    .line 15
    .line 16
    invoke-virtual {v0}, Lokio/Pipe;->getCanceled$okio()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_9

    .line 21
    .line 22
    invoke-virtual {v0}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v0}, Lokio/Pipe;->getSourceClosed$okio()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    cmp-long v6, v2, v4

    .line 46
    .line 47
    if-gtz v6, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 51
    .line 52
    const-string v2, "source is closed"

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 62
    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 63
    .line 64
    .line 65
    if-eqz v2, :cond_8

    .line 66
    .line 67
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 84
    .line 85
    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 90
    .line 91
    .line 92
    move-result-wide v8

    .line 93
    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide v5

    .line 97
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    .line 99
    invoke-virtual {v1, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_5

    .line 107
    .line 108
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 109
    .line 110
    .line 111
    move-result-wide v5

    .line 112
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_3

    .line 117
    .line 118
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v8

    .line 122
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 123
    .line 124
    .line 125
    move-result-wide v10

    .line 126
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    invoke-virtual {v1, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 131
    .line 132
    .line 133
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catchall_1
    move-exception v2

    .line 150
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 151
    .line 152
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_4

    .line 160
    .line 161
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 162
    .line 163
    .line 164
    :cond_4
    throw v2

    .line 165
    :cond_5
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_6

    .line 170
    .line 171
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 172
    .line 173
    .line 174
    move-result-wide v5

    .line 175
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 176
    .line 177
    .line 178
    :cond_6
    :try_start_2
    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catchall_2
    move-exception v2

    .line 195
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 196
    .line 197
    invoke-virtual {v1, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_7

    .line 205
    .line 206
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 207
    .line 208
    .line 209
    :cond_7
    throw v2

    .line 210
    :cond_8
    :goto_2
    return-void

    .line 211
    :cond_9
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 212
    .line 213
    const-string v2, "canceled"

    .line 214
    .line 215
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v0

    .line 219
    :cond_a
    const-string v0, "closed"

    .line 220
    .line 221
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 222
    .line 223
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :goto_3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 228
    .line 229
    .line 230
    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/Pipe$sink$1;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 12

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokio/Pipe$sink$1;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lokio/Pipe;

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
    invoke-virtual {v0}, Lokio/Pipe;->getSinkClosed$okio()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_c

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
    if-nez v2, :cond_b

    .line 28
    .line 29
    :goto_0
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    cmp-long v2, p2, v4

    .line 32
    .line 33
    if-lez v2, :cond_4

    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v0}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {v0}, Lokio/Pipe;->getSourceClosed$okio()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lokio/Pipe;->getMaxBufferSize$okio()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 57
    .line 58
    .line 59
    move-result-wide v8

    .line 60
    sub-long/2addr v6, v8

    .line 61
    cmp-long v2, v6, v4

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lokio/Pipe$sink$1;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/Timeout;

    .line 66
    .line 67
    invoke-virtual {v0}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v2, v4}, Lokio/Timeout;->awaitSignal(Ljava/util/concurrent/locks/Condition;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lokio/Pipe;->getCanceled$okio()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 82
    .line 83
    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_2
    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2, p1, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 99
    .line 100
    .line 101
    sub-long/2addr p2, v4

    .line 102
    invoke-virtual {v0}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 111
    .line 112
    const-string p2, "source is closed"

    .line 113
    .line 114
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :cond_4
    const/4 v2, 0x0

    .line 119
    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 120
    .line 121
    .line 122
    if-eqz v2, :cond_a

    .line 123
    .line 124
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 141
    .line 142
    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    .line 143
    .line 144
    .line 145
    move-result-wide v6

    .line 146
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    .line 147
    .line 148
    .line 149
    move-result-wide v8

    .line 150
    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v5

    .line 154
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 155
    .line 156
    invoke-virtual {v1, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_7

    .line 164
    .line 165
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_5

    .line 174
    .line 175
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 176
    .line 177
    .line 178
    move-result-wide v8

    .line 179
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 180
    .line 181
    .line 182
    move-result-wide v10

    .line 183
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 184
    .line 185
    .line 186
    move-result-wide v8

    .line 187
    invoke-virtual {v1, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 188
    .line 189
    .line 190
    :cond_5
    :try_start_2
    invoke-interface {v2, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_a

    .line 201
    .line 202
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :catchall_1
    move-exception p1

    .line 207
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 208
    .line 209
    invoke-virtual {v1, v3, v4, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-eqz p2, :cond_6

    .line 217
    .line 218
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 219
    .line 220
    .line 221
    :cond_6
    throw p1

    .line 222
    :cond_7
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_8

    .line 227
    .line 228
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 229
    .line 230
    .line 231
    move-result-wide v5

    .line 232
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 233
    .line 234
    .line 235
    :cond_8
    :try_start_3
    invoke-interface {v2, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_a

    .line 246
    .line 247
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :catchall_2
    move-exception p1

    .line 252
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 253
    .line 254
    invoke-virtual {v1, v3, v4, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    if-eqz p2, :cond_9

    .line 262
    .line 263
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 264
    .line 265
    .line 266
    :cond_9
    throw p1

    .line 267
    :cond_a
    :goto_2
    return-void

    .line 268
    :cond_b
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    .line 269
    .line 270
    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p1

    .line 274
    :cond_c
    const-string p1, "closed"

    .line 275
    .line 276
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 277
    .line 278
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    :goto_3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 283
    .line 284
    .line 285
    throw p1
.end method
