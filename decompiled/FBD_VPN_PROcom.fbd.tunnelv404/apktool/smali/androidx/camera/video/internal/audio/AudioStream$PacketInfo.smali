.class public abstract Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/audio/AudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PacketInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static of(IJ)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;-><init>(IJ)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getSizeInBytes()I
.end method

.method public abstract getTimestampNs()J
.end method
