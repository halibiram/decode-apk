.class Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/audio/BufferedAudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioData"
.end annotation


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mBytesPerFrame:I

.field private final mSampleRate:I

.field private mTimestampNs:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;II)V
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    invoke-virtual {p2}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getSizeInBytes()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iput p3, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mBytesPerFrame:I

    .line 23
    .line 24
    iput p4, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mSampleRate:I

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getTimestampNs()J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    iput-wide p1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mTimestampNs:J

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string p3, "Byte buffer size is not match with packet info: "

    .line 38
    .line 39
    const-string p4, " != "

    .line 40
    .line 41
    invoke-static {v0, p3, p4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p2}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getSizeInBytes()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method


# virtual methods
.method public getRemainingBufferSizeInBytes()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;
    .locals 9
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mTimestampNs:J

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-le v4, v5, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    int-to-long v5, v4

    .line 30
    iget v7, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mBytesPerFrame:I

    .line 31
    .line 32
    invoke-static {v5, v6, v7}, Landroidx/camera/video/internal/audio/AudioUtils;->sizeToFrameCount(JI)J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    iget v7, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mSampleRate:I

    .line 37
    .line 38
    invoke-static {v5, v6, v7}, Landroidx/camera/video/internal/audio/AudioUtils;->frameCountToDurationNs(JI)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    iget-wide v7, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mTimestampNs:J

    .line 43
    .line 44
    add-long/2addr v7, v5

    .line 45
    iput-wide v7, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mTimestampNs:J

    .line 46
    .line 47
    iget-object v5, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    add-int v7, v2, v4

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    add-int v5, v3, v4

    .line 67
    .line 68
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-object v4, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    iget-object v5, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 83
    .line 84
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    add-int v5, v3, v4

    .line 89
    .line 90
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 95
    .line 96
    .line 97
    :goto_0
    iget-object p1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    add-int/2addr v2, v4

    .line 100
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    .line 102
    .line 103
    invoke-static {v4, v0, v1}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->of(IJ)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method
