.class public final Landroidx/camera/core/internal/compat/MediaActionSoundCompat;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static mustPlayShutterSound()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/camera/core/internal/compat/MediaActionSoundCompatApi33Impl;->mustPlayShutterSound()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-static {}, Landroidx/camera/core/internal/compat/MediaActionSoundCompatBaseImpl;->mustPlayShutterSound()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method
