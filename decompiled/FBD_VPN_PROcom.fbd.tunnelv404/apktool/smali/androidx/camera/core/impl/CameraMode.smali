.class public final Landroidx/camera/core/impl/CameraMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraMode$Mode;
    }
.end annotation


# static fields
.field public static final CONCURRENT_CAMERA:I = 0x1

.field public static final DEFAULT:I = 0x0

.field public static final ULTRA_HIGH_RESOLUTION_CAMERA:I = 0x2


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

.method public static toLabelString(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const-string p0, "DEFAULT"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "ULTRA_HIGH_RESOLUTION_CAMERA"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const-string p0, "CONCURRENT_CAMERA"

    .line 14
    .line 15
    return-object p0
.end method
