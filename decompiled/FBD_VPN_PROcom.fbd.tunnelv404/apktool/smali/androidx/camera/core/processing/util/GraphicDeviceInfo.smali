.class public abstract Landroidx/camera/core/processing/util/GraphicDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
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

.method public static builder()Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "0.0"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->setGlVersion(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;->setEglVersion(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;->setGlExtensions(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;->setEglExtensions(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method


# virtual methods
.method public abstract getEglExtensions()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getEglVersion()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getGlExtensions()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getGlVersion()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
