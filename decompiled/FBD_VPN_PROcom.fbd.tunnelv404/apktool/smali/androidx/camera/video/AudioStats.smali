.class public abstract Landroidx/camera/video/AudioStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/AudioStats$AudioState;
    }
.end annotation


# static fields
.field public static final AUDIO_AMPLITUDE_NONE:D = 0.0

.field public static final AUDIO_STATE_ACTIVE:I = 0x0

.field public static final AUDIO_STATE_DISABLED:I = 0x1

.field public static final AUDIO_STATE_ENCODER_ERROR:I = 0x3

.field public static final AUDIO_STATE_MUTED:I = 0x5

.field public static final AUDIO_STATE_SOURCE_ERROR:I = 0x4

.field public static final AUDIO_STATE_SOURCE_SILENCED:I = 0x2

.field private static final ERROR_STATES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x3

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x4

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    new-array v3, v3, [Ljava/lang/Integer;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    aput-object v2, v3, v6

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v4, v3, v2

    .line 25
    .line 26
    aput-object v5, v3, v1

    .line 27
    .line 28
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Landroidx/camera/video/AudioStats;->ERROR_STATES:Ljava/util/Set;

    .line 40
    .line 41
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

.method public static of(ILjava/lang/Throwable;D)Landroidx/camera/video/AudioStats;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/video/AutoValue_AudioStats;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/camera/video/AutoValue_AudioStats;-><init>(IDLjava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getAudioAmplitude()D
    .locals 2
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/camera/video/ExperimentalAudioApi;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/AudioStats;->getAudioState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/video/AudioStats;->getAudioAmplitudeInternal()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public abstract getAudioAmplitudeInternal()D
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public abstract getAudioState()I
.end method

.method public abstract getErrorCause()Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public hasAudio()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/AudioStats;->getAudioState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasError()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/camera/video/AudioStats;->ERROR_STATES:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/camera/video/AudioStats;->getAudioState()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method
