.class final Landroidx/camera/core/internal/compat/ImageWriterCompatApi23Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static close(Landroid/media/ImageWriter;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static dequeueInputImage(Landroid/media/ImageWriter;)Landroid/media/Image;
    .locals 0
    .param p0    # Landroid/media/ImageWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;
    .locals 0
    .param p0    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static queueInputImage(Landroid/media/ImageWriter;Landroid/media/Image;)V
    .locals 0
    .param p0    # Landroid/media/ImageWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/media/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
