.class public interface abstract Landroidx/test/internal/platform/os/ControlledLooper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final NO_OP_CONTROLLED_LOOPER:Landroidx/test/internal/platform/os/ControlledLooper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/internal/platform/os/ControlledLooper$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/test/internal/platform/os/ControlledLooper$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/test/internal/platform/os/ControlledLooper;->NO_OP_CONTROLLED_LOOPER:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract areDrawCallbacksSupported()Z
.end method

.method public abstract drainMainThreadUntilIdle()V
.end method

.method public abstract simulateWindowFocus(Landroid/view/View;)V
.end method
