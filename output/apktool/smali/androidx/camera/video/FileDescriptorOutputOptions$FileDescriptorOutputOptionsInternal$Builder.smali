.class abstract Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;
.super Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder<",
        "Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract build()Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public bridge synthetic build()Landroidx/camera/video/OutputOptions$OutputOptionsInternal;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;->build()Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal;

    move-result-object v0

    return-object v0
.end method

.method public abstract setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;
    .param p1    # Landroid/os/ParcelFileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
