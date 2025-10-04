.class public abstract Landroidx/camera/video/AudioSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/AudioSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
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


# virtual methods
.method public abstract build()Landroidx/camera/video/AudioSpec;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setBitrate(Landroid/util/Range;)Landroidx/camera/video/AudioSpec$Builder;
    .param p1    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/video/AudioSpec$Builder;"
        }
    .end annotation
.end method

.method public abstract setChannelCount(I)Landroidx/camera/video/AudioSpec$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setSampleRate(Landroid/util/Range;)Landroidx/camera/video/AudioSpec$Builder;
    .param p1    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/video/AudioSpec$Builder;"
        }
    .end annotation
.end method

.method public abstract setSource(I)Landroidx/camera/video/AudioSpec$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setSourceFormat(I)Landroidx/camera/video/AudioSpec$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
