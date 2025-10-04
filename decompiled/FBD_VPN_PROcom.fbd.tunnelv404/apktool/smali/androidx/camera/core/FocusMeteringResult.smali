.class public final Landroidx/camera/core/FocusMeteringResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsFocusSuccessful:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/camera/core/FocusMeteringResult;->mIsFocusSuccessful:Z

    .line 5
    .line 6
    return-void
.end method

.method public static create(Z)Landroidx/camera/core/FocusMeteringResult;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/FocusMeteringResult;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/camera/core/FocusMeteringResult;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static emptyInstance()Landroidx/camera/core/FocusMeteringResult;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/FocusMeteringResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/camera/core/FocusMeteringResult;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public isFocusSuccessful()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/FocusMeteringResult;->mIsFocusSuccessful:Z

    .line 2
    .line 3
    return v0
.end method
