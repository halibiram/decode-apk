.class public final Lokio/CipherSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lokio/CipherSink;",
        "Lokio/Sink;",
        "Lokio/BufferedSink;",
        "sink",
        "Ljavax/crypto/Cipher;",
        "cipher",
        "<init>",
        "(Lokio/BufferedSink;Ljavax/crypto/Cipher;)V",
        "Lokio/Buffer;",
        "source",
        "",
        "byteCount",
        "",
        "write",
        "(Lokio/Buffer;J)V",
        "flush",
        "()V",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "close",
        "\ub3a0\ub50e\ub503\ub4fc\ub489\ub428\ub3b9\ub568\ub4fb\ub540\ub51d\ub566\ub4ac\ub3f0\ub3f7\ub569\ub4dd\ub51e\ub4e0\ub463\ub4fc\ub3f8\ub410\ub543\ub460\ub51c\ub538\ub4b5\ub4e4\ub3f4\ub4f0\ub543\ub4dd\ub54b\ub3a0\ub3f8\ub524\ub540\ub51d\ub3b9\ub528\ub450\ub568\ub4b7\ub50e\ub50e\ub510\ub480\ub3ac\ub4f0\ub51c\ub56d\ub4d4\ub4e8\ub3f4\ub4fc\ub465\ub4dd\ub3b9\ub3f6\ub4e4\ub4dc\ub3bb\ub501\ub458\ub410\ub3e8\ub460\ub488\ub545\ub3e8\ub55c\ub51d\ub4e4\ub500\ub451\ub4b9\ub3b9\ub450\ub56c\ub4d0\ub3f6\ub4ec\ub56c\ub3c4\ub3b8\ub460\ub460\ub4a8\ub410\ub55d\ub50e\ub500\ub578\ub56a\ub4dd\ub4b5\ub56c\ub490\ub570\ub55d\ub4b5\ub572\ub4ec\ub4fd\ub3f5\ub480\ub54b\ub4ac\ub573\ub48b\ub4f0\ub55f\ub3f0\ub418\ub54b\ub454\ub571\ub4d4\ub540\ub563\ub418\ub498\ub3fc\ub4bb\ub501\ub465\ub498\ub41c\ub56b",
        "Ljavax/crypto/Cipher;",
        "getCipher",
        "()Ljavax/crypto/Cipher;",
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
        "SMAP\nCipherSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,148:1\n1#2:149\n85#3:150\n*S KotlinDebug\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n*L\n47#1:150\n*E\n"
    }
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/BufferedSink;

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljavax/crypto/Cipher;

.field public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

.field public 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Z


# direct methods
.method public constructor <init>(Lokio/BufferedSink;Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljavax/crypto/Cipher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cipher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lokio/CipherSink;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/BufferedSink;

    .line 15
    .line 16
    iput-object p2, p0, Lokio/CipherSink;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljavax/crypto/Cipher;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lokio/CipherSink;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 23
    .line 24
    if-lez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "Block cipher required "

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p2
.end method


# virtual methods
.method public close()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lokio/CipherSink;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokio/CipherSink;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iget-object v1, p0, Lokio/CipherSink;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljavax/crypto/Cipher;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lokio/CipherSink;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/BufferedSink;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/16 v4, 0x2000

    .line 23
    .line 24
    if-le v0, v4, :cond_2

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "doFinal(...)"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    move-object v3, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-interface {v2}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :try_start_1
    iget-object v5, v0, Lokio/Segment;->data:[B

    .line 51
    .line 52
    iget v6, v0, Lokio/Segment;->limit:I

    .line 53
    .line 54
    invoke-virtual {v1, v5, v6}, Ljavax/crypto/Cipher;->doFinal([BI)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iget v5, v0, Lokio/Segment;->limit:I

    .line 59
    .line 60
    add-int/2addr v5, v1

    .line 61
    iput v5, v0, Lokio/Segment;->limit:I

    .line 62
    .line 63
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    int-to-long v7, v1

    .line 68
    add-long/2addr v5, v7

    .line 69
    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->setSize$okio(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_1
    move-exception v1

    .line 74
    move-object v3, v1

    .line 75
    :goto_0
    iget v1, v0, Lokio/Segment;->pos:I

    .line 76
    .line 77
    iget v5, v0, Lokio/Segment;->limit:I

    .line 78
    .line 79
    if-ne v1, v5, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 86
    .line 87
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catchall_2
    move-exception v0

    .line 95
    if-nez v3, :cond_4

    .line 96
    .line 97
    move-object v3, v0

    .line 98
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    throw v3
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/CipherSink;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/BufferedSink;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCipher()Ljavax/crypto/Cipher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/CipherSink;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/CipherSink;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/BufferedSink;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 12
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    move-wide v5, p2

    .line 13
    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lokio/CipherSink;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Z

    .line 17
    .line 18
    if-nez v0, :cond_5

    .line 19
    .line 20
    :goto_0
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    cmp-long v2, p2, v0

    .line 23
    .line 24
    if-lez v2, :cond_4

    .line 25
    .line 26
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget v1, v0, Lokio/Segment;->limit:I

    .line 32
    .line 33
    iget v2, v0, Lokio/Segment;->pos:I

    .line 34
    .line 35
    sub-int/2addr v1, v2

    .line 36
    int-to-long v1, v1

    .line 37
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    long-to-int v2, v1

    .line 42
    iget-object v1, p0, Lokio/CipherSink;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokio/BufferedSink;

    .line 43
    .line 44
    invoke-interface {v1}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v4, p0, Lokio/CipherSink;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljavax/crypto/Cipher;

    .line 49
    .line 50
    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    :goto_1
    const/16 v6, 0x2000

    .line 55
    .line 56
    if-le v5, v6, :cond_1

    .line 57
    .line 58
    iget v5, p0, Lokio/CipherSink;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 59
    .line 60
    if-gt v2, v5, :cond_0

    .line 61
    .line 62
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->readByteArray(J)[B

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->update([B)[B

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v2, "update(...)"

    .line 71
    .line 72
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 76
    .line 77
    .line 78
    long-to-int v2, p2

    .line 79
    goto :goto_2

    .line 80
    :cond_0
    sub-int/2addr v2, v5

    .line 81
    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v3, v5}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget-object v7, v0, Lokio/Segment;->data:[B

    .line 91
    .line 92
    iget v8, v0, Lokio/Segment;->pos:I

    .line 93
    .line 94
    iget-object v10, v4, Lokio/Segment;->data:[B

    .line 95
    .line 96
    iget v11, v4, Lokio/Segment;->limit:I

    .line 97
    .line 98
    iget-object v6, p0, Lokio/CipherSink;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljavax/crypto/Cipher;

    .line 99
    .line 100
    move v9, v2

    .line 101
    invoke-virtual/range {v6 .. v11}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    iget v6, v4, Lokio/Segment;->limit:I

    .line 106
    .line 107
    add-int/2addr v6, v5

    .line 108
    iput v6, v4, Lokio/Segment;->limit:I

    .line 109
    .line 110
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    .line 111
    .line 112
    .line 113
    move-result-wide v6

    .line 114
    int-to-long v8, v5

    .line 115
    add-long/2addr v6, v8

    .line 116
    invoke-virtual {v3, v6, v7}, Lokio/Buffer;->setSize$okio(J)V

    .line 117
    .line 118
    .line 119
    iget v5, v4, Lokio/Segment;->pos:I

    .line 120
    .line 121
    iget v6, v4, Lokio/Segment;->limit:I

    .line 122
    .line 123
    if-ne v5, v6, :cond_2

    .line 124
    .line 125
    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iput-object v5, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 130
    .line 131
    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    invoke-interface {v1}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    int-to-long v5, v2

    .line 142
    sub-long/2addr v3, v5

    .line 143
    invoke-virtual {p1, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 144
    .line 145
    .line 146
    iget v1, v0, Lokio/Segment;->pos:I

    .line 147
    .line 148
    add-int/2addr v1, v2

    .line 149
    iput v1, v0, Lokio/Segment;->pos:I

    .line 150
    .line 151
    iget v3, v0, Lokio/Segment;->limit:I

    .line 152
    .line 153
    if-ne v1, v3, :cond_3

    .line 154
    .line 155
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 160
    .line 161
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 162
    .line 163
    .line 164
    :cond_3
    :goto_2
    int-to-long v0, v2

    .line 165
    sub-long/2addr p2, v0

    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_4
    return-void

    .line 169
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    const-string p2, "closed"

    .line 172
    .line 173
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1
.end method
