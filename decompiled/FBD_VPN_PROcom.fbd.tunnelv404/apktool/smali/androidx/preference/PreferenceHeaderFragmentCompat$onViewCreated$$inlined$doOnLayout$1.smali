.class public final Landroidx/preference/PreferenceHeaderFragmentCompat$onViewCreated$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceHeaderFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnNextLayout$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "core-ktx_release",
        "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/PreferenceHeaderFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$onViewCreated$$inlined$doOnLayout$1;->this$0:Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$onViewCreated$$inlined$doOnLayout$1;->this$0:Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 5
    .line 6
    invoke-static {p1}, Landroidx/preference/PreferenceHeaderFragmentCompat;->access$getOnBackPressedCallback$p(Landroidx/preference/PreferenceHeaderFragmentCompat;)Landroidx/activity/OnBackPressedCallback;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$onViewCreated$$inlined$doOnLayout$1;->this$0:Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getSlidingPaneLayout()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$onViewCreated$$inlined$doOnLayout$1;->this$0:Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getSlidingPaneLayout()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p2, 0x0

    .line 40
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
