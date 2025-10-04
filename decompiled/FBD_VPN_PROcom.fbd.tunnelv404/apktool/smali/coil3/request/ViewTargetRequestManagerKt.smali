.class public final Lcoil3/request/ViewTargetRequestManagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "requestManager",
        "Lcoil3/request/ViewTargetRequestManager;",
        "Landroid/view/View;",
        "getRequestManager",
        "(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;",
        "coil-core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nViewTargetRequestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewTargetRequestManager.kt\ncoil3/request/ViewTargetRequestManagerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1#2:114\n*E\n"
    }
.end annotation


# direct methods
.method public static final getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Lcoil3/core/R$id;->coil3_request_manager:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Lcoil3/request/ViewTargetRequestManager;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lcoil3/request/ViewTargetRequestManager;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v3

    .line 16
    :goto_0
    if-nez v1, :cond_3

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v2, v1, Lcoil3/request/ViewTargetRequestManager;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    move-object v3, v1

    .line 28
    check-cast v3, Lcoil3/request/ViewTargetRequestManager;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_3

    .line 33
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 34
    .line 35
    move-object v1, v3

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    new-instance v1, Lcoil3/request/ViewTargetRequestManager;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcoil3/request/ViewTargetRequestManager;-><init>(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :goto_2
    monitor-exit p0

    .line 49
    goto :goto_4

    .line 50
    :goto_3
    monitor-exit p0

    .line 51
    throw v0

    .line 52
    :cond_3
    :goto_4
    return-object v1
.end method
