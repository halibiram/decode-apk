.class public abstract Landroidx/camera/core/processing/util/OutputSurface;
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

.method public static of(Landroid/opengl/EGLSurface;II)Landroidx/camera/core/processing/util/OutputSurface;
    .locals 1
    .param p0    # Landroid/opengl/EGLSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/processing/util/AutoValue_OutputSurface;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/core/processing/util/AutoValue_OutputSurface;-><init>(Landroid/opengl/EGLSurface;II)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getEglSurface()Landroid/opengl/EGLSurface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method
