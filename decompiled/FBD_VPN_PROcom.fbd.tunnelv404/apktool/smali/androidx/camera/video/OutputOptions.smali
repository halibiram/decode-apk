.class public abstract Landroidx/camera/video/OutputOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/OutputOptions$OutputOptionsInternal;,
        Landroidx/camera/video/OutputOptions$Builder;
    }
.end annotation


# static fields
.field public static final DURATION_UNLIMITED:I

.field public static final FILE_SIZE_UNLIMITED:I


# instance fields
.field private final mOutputOptionsInternal:Landroidx/camera/video/OutputOptions$OutputOptionsInternal;


# direct methods
.method public constructor <init>(Landroidx/camera/video/OutputOptions$OutputOptionsInternal;)V
    .locals 0
    .param p1    # Landroidx/camera/video/OutputOptions$OutputOptionsInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/video/OutputOptions;->mOutputOptionsInternal:Landroidx/camera/video/OutputOptions$OutputOptionsInternal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getDurationLimitMillis()J
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/OutputOptions;->mOutputOptionsInternal:Landroidx/camera/video/OutputOptions$OutputOptionsInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal;->getDurationLimitMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getFileSizeLimit()J
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/OutputOptions;->mOutputOptionsInternal:Landroidx/camera/video/OutputOptions$OutputOptionsInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal;->getFileSizeLimit()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/OutputOptions;->mOutputOptionsInternal:Landroidx/camera/video/OutputOptions$OutputOptionsInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal;->getLocation()Landroid/location/Location;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
