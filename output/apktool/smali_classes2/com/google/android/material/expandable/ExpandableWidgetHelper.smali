.class public final Lcom/google/android/material/expandable/ExpandableWidgetHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private expanded:Z

.field private expandedComponentIdHint:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private final widget:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/expandable/ExpandableWidget;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 8
    .line 9
    check-cast p1, Landroid/view/View;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    .line 12
    .line 13
    return-void
.end method

.method private dispatchExpandedStateChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public getExpandedComponentIdHint()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 2
    .line 3
    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 2
    .line 3
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 22
    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 43
    .line 44
    iget-boolean p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x653b64587739b798L    # -9.932737823528084E-180
        -0x6e78508e79bfdbc2L    # -3.199429947235562E-224
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        -0x7957f8956c2da188L
        0x3fc2421cb10ff99dL    # 0.14264258046746373
        -0x17ca39f8f375d167L    # -9.93405063665905E193
        -0x7d8b2c8c0682c8f1L    # -7.961041828159688E-297
    .end array-data
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-boolean v2, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v2, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :array_0
    .array-data 8
        0x4329744330b5b6c2L    # 3.582353173306209E15
        -0x658a4646114ea60dL
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 8
        0x48f5522631bf3428L    # 2.971699084190305E43
        -0x34d278a7e9b1e640L    # -1.4141432019445815E54
        -0x485d4eaf007a3a86L    # -1.0729050433883949E-40
        -0x2b6379e368e0064dL    # -3.899303971356599E99
    .end array-data
.end method

.method public setExpanded(Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 2
    .line 3
    return-void
.end method
