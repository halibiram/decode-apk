.class abstract Landroidx/camera/video/OutputOptions$OutputOptionsInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/OutputOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OutputOptionsInternal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;
    }
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
.method public abstract getDurationLimitMillis()J
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end method

.method public abstract getFileSizeLimit()J
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end method

.method public abstract getLocation()Landroid/location/Location;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
