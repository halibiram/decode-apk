.class public abstract Landroidx/camera/core/impl/StreamSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/StreamSpec$Builder;
    }
.end annotation


# static fields
.field public static final FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Range;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 12
    .line 13
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

.method public static builder(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 1
    .param p0    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->setResolution(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/StreamSpec$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/StreamSpec$Builder;->setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/StreamSpec$Builder;->setZslDisabled(Z)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method


# virtual methods
.method public abstract getDynamicRange()Landroidx/camera/core/DynamicRange;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getExpectedFrameRateRange()Landroid/util/Range;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImplementationOptions()Landroidx/camera/core/impl/Config;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getResolution()Landroid/util/Size;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getZslDisabled()Z
.end method

.method public abstract toBuilder()Landroidx/camera/core/impl/StreamSpec$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
