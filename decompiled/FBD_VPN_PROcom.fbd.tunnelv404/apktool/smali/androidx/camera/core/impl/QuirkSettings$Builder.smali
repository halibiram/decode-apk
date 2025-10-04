.class public Landroidx/camera/core/impl/QuirkSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/QuirkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEnabledWhenDeviceHasQuirk:Z

.field private mForceDisabledQuirks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/camera/core/impl/Quirk;",
            ">;>;"
        }
    .end annotation
.end field

.field private mForceEnabledQuirks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/camera/core/impl/Quirk;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mEnabledWhenDeviceHasQuirk:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/impl/QuirkSettings;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/QuirkSettings;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mEnabledWhenDeviceHasQuirk:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mForceEnabledQuirks:Ljava/util/Set;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mForceDisabledQuirks:Ljava/util/Set;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/core/impl/QuirkSettings;-><init>(ZLjava/util/Set;Ljava/util/Set;Landroidx/camera/core/impl/QuirkSettings$1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public forceDisableQuirks(Ljava/util/Set;)Landroidx/camera/core/impl/QuirkSettings$Builder;
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/camera/core/impl/Quirk;",
            ">;>;)",
            "Landroidx/camera/core/impl/QuirkSettings$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mForceDisabledQuirks:Ljava/util/Set;

    .line 7
    .line 8
    return-object p0
.end method

.method public forceEnableQuirks(Ljava/util/Set;)Landroidx/camera/core/impl/QuirkSettings$Builder;
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/camera/core/impl/Quirk;",
            ">;>;)",
            "Landroidx/camera/core/impl/QuirkSettings$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mForceEnabledQuirks:Ljava/util/Set;

    .line 7
    .line 8
    return-object p0
.end method

.method public setEnabledWhenDeviceHasQuirk(Z)Landroidx/camera/core/impl/QuirkSettings$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mEnabledWhenDeviceHasQuirk:Z

    .line 2
    .line 3
    return-object p0
.end method
