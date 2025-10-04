.class public Landroidx/camera/video/internal/encoder/EncodedDataImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/EncodedData;


# instance fields
.field private final mBufferIndex:I

.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mClosedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mClosedFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaCodec:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/media/MediaCodec;

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 19
    .line 20
    iput p2, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferIndex:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 35
    .line 36
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance p2, L돨땋뒈뒷돛듰뒨듌땧돤돵땀땩돤땮듟뒷딤둘땐뒨땹딝뒘땜뒈땡딀듰땄땣든딹땵둬딃둡땭둔땱딝돷뎻디뎽뎡돴돨둠딄따뎠듔뒻듟둥땔뎸땱딄뒷드돸돨둠듰뎰돨딁돼될돴듔딃땃돶따땧뒝뒘디땫둣뒷두땳듨돴디딹둥땲딐듻딅듨뒘될뒘둣뎻둘듟딻땸디딌돨땧땪뎹들듨뒘땦뒵딟뎠딹딃딽둡땩디땸됐듨뎹땧돛;

    .line 42
    .line 43
    const/4 p3, 0x1

    .line 44
    invoke-direct {p2, p1, p3}, L돨땋뒈뒷돛듰뒨듌땧돤돵땀땩돤땮듟뒷딤둘땐뒨땹딝뒘땜뒈땡딀듰땄땣든딹땵둬딃둡땭둔땱딝돷뎻디뎽뎡돴돨둠딄따뎠듔뒻듟둥땔뎸땱딄뒷드돸돨둠듰뎰돨딁돼될돴듔딃땃돶따땧뒝뒘디땫둣뒷두땳듨돴디딹둥땲딐듻딅듨뒘될뒘둣뎻둘듟딻땸디딌돨땧땪뎹들듨뒘땦뒵딟뎠딹딃딽둡땩디땸됐듨뎹땧돛;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 58
    .line 59
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 64
    .line 65
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 66
    .line 67
    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/util/concurrent/atomic/AtomicReference;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const-string p0, "Data closed"

    .line 5
    .line 6
    return-object p0
.end method

.method private throwIfClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "encoded data is closed."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/util/concurrent/atomic/AtomicReference;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->lambda$new$0(Ljava/util/concurrent/atomic/AtomicReference;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 12
    .line 13
    iget v1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferIndex:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public getBufferInfo()Landroid/media/MediaCodec$BufferInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 7
    .line 8
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 16
    .line 17
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 18
    .line 19
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 20
    .line 21
    add-int/2addr v2, v1

    .line 22
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    return-object v0
.end method

.method public getClosedFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPresentationTimeUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2
    .line 3
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public isKeyFrame()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2
    .line 3
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    return v1
.end method

.method public size()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2
    .line 3
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    return-wide v0
.end method
