.class public Landroidx/camera/core/impl/CameraConfigs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraConfigs$DefaultCameraConfig;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAMERA_CONFIG:Landroidx/camera/core/impl/CameraConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/impl/CameraConfigs$DefaultCameraConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/impl/CameraConfigs$DefaultCameraConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/impl/CameraConfigs;->DEFAULT_CAMERA_CONFIG:Landroidx/camera/core/impl/CameraConfig;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static defaultConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/impl/CameraConfigs;->DEFAULT_CAMERA_CONFIG:Landroidx/camera/core/impl/CameraConfig;

    .line 2
    .line 3
    return-object v0
.end method
