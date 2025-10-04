.class public abstract Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field public static final ENCODER_DATA_SPACE_BT2020_HLG:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

.field public static final ENCODER_DATA_SPACE_BT2020_PQ:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

.field public static final ENCODER_DATA_SPACE_BT709:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

.field public static final ENCODER_DATA_SPACE_UNSPECIFIED:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

.field public static final VIDEO_COLOR_RANGE_UNSPECIFIED:I

.field public static final VIDEO_COLOR_STANDARD_UNSPECIFIED:I

.field public static final VIDEO_COLOR_TRANSFER_UNSPECIFIED:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0, v0}, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->create(III)Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->ENCODER_DATA_SPACE_UNSPECIFIED:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v2, v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->create(III)Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->ENCODER_DATA_SPACE_BT709:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 16
    .line 17
    const/4 v0, 0x7

    .line 18
    const/4 v1, 0x6

    .line 19
    invoke-static {v1, v0, v2}, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->create(III)Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->ENCODER_DATA_SPACE_BT2020_HLG:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 24
    .line 25
    invoke-static {v1, v1, v2}, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->create(III)Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->ENCODER_DATA_SPACE_BT2020_PQ:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 30
    .line 31
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

.method public static create(III)Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderDataSpace;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderDataSpace;-><init>(III)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getRange()I
.end method

.method public abstract getStandard()I
.end method

.method public abstract getTransfer()I
.end method
