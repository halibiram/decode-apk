.class abstract Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal;
.super Landroidx/camera/video/OutputOptions$OutputOptionsInternal;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/FileOutputOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FileOutputOptionsInternal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/FileOutputOptions$FileOutputOptionsInternal$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract getFile()Ljava/io/File;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
