.class public final Lcoil3/util/CoilUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcoil3/util/CoilUtils;",
        "",
        "Landroid/view/View;",
        "view",
        "",
        "dispose",
        "(Landroid/view/View;)V",
        "Lcoil3/request/ImageResult;",
        "result",
        "(Landroid/view/View;)Lcoil3/request/ImageResult;",
        "coil-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcoil3/util/CoilUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcoil3/util/CoilUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcoil3/util/CoilUtils;->INSTANCE:Lcoil3/util/CoilUtils;

    .line 7
    .line 8
    return-void
.end method

.method public static final dispose(Landroid/view/View;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {p0}, Lcoil3/request/ViewTargetRequestManagerKt;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcoil3/request/ViewTargetRequestManager;->dispose()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final result(Landroid/view/View;)Lcoil3/request/ImageResult;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcoil3/request/ViewTargetRequestManagerKt;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcoil3/request/ViewTargetRequestManager;->getResult()Lcoil3/request/ImageResult;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
