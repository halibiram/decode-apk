.class public final Landroidx/camera/video/FileDescriptorOutputOptions$Builder;
.super Landroidx/camera/video/OutputOptions$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/FileDescriptorOutputOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/camera/video/OutputOptions$Builder<",
        "Landroidx/camera/video/FileDescriptorOutputOptions;",
        "Landroidx/camera/video/FileDescriptorOutputOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInternalBuilder:Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1    # Landroid/os/ParcelFileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/camera/video/OutputOptions$Builder;-><init>(Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "File descriptor can\'t be null."

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/camera/video/OutputOptions$Builder;->mRootInternalBuilder:Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;

    .line 15
    .line 16
    check-cast v0, Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/camera/video/FileDescriptorOutputOptions$Builder;->mInternalBuilder:Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/video/FileDescriptorOutputOptions;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/camera/video/FileDescriptorOutputOptions;

    iget-object v1, p0, Landroidx/camera/video/FileDescriptorOutputOptions$Builder;->mInternalBuilder:Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;

    invoke-virtual {v1}, Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;->build()Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/video/FileDescriptorOutputOptions;-><init>(Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal;)V

    return-object v0
.end method

.method public bridge synthetic build()Landroidx/camera/video/OutputOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/FileDescriptorOutputOptions$Builder;->build()Landroidx/camera/video/FileDescriptorOutputOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDurationLimitMillis(J)Ljava/lang/Object;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/camera/video/OutputOptions$Builder;->setDurationLimitMillis(J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setFileSizeLimit(J)Ljava/lang/Object;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/camera/video/OutputOptions$Builder;->setFileSizeLimit(J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setLocation(Landroid/location/Location;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/camera/video/OutputOptions$Builder;->setLocation(Landroid/location/Location;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
