.class public abstract Landroidx/camera/video/internal/audio/AudioSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/audio/AudioSettings$Builder;
    }
.end annotation


# static fields
.field public static final COMMON_SAMPLE_RATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const v0, 0xbb80

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0xac44

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0x5622

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/16 v3, 0x2b11

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/16 v4, 0x1f40

    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/16 v5, 0x12c0

    .line 34
    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x6

    .line 40
    new-array v6, v6, [Ljava/lang/Integer;

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    aput-object v0, v6, v7

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    aput-object v1, v6, v0

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    aput-object v2, v6, v0

    .line 50
    .line 51
    const/4 v0, 0x3

    .line 52
    aput-object v3, v6, v0

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    aput-object v4, v6, v0

    .line 56
    .line 57
    const/4 v0, 0x5

    .line 58
    aput-object v5, v6, v0

    .line 59
    .line 60
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Landroidx/camera/video/internal/audio/AudioSettings;->COMMON_SAMPLE_RATES:Ljava/util/List;

    .line 69
    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static builder()Landroidx/camera/video/internal/audio/AudioSettings$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->setAudioSource(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setSampleRate(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setChannelCount(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setAudioFormat(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method


# virtual methods
.method public abstract getAudioFormat()I
.end method

.method public abstract getAudioSource()I
.end method

.method public getBytesPerFrame()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSettings;->getAudioFormat()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSettings;->getChannelCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Landroidx/camera/video/internal/audio/AudioUtils;->getBytesPerFrame(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public abstract getChannelCount()I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation
.end method

.method public abstract getSampleRate()I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation
.end method

.method public abstract toBuilder()Landroidx/camera/video/internal/audio/AudioSettings$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
