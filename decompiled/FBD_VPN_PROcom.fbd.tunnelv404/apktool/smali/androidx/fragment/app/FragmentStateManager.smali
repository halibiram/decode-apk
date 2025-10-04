.class Landroidx/fragment/app/FragmentStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"

.field private static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field private static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field private static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field private static final VIEW_REGISTRY_STATE_TAG:Ljava/lang/String; = "android:view_registry_state"

.field private static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field private final mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

.field private final mFragment:Landroidx/fragment/app/Fragment;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mFragmentManagerState:I

.field private final mFragmentStore:Landroidx/fragment/app/FragmentStore;

.field private mMovingToState:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/fragment/app/FragmentState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 18
    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 19
    iput-object p2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 20
    iput-object p3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 22
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 23
    iput v0, p3, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 24
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 25
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 26
    iget-object p2, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 27
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 28
    iget-object p1, p4, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 29
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_1

    .line 30
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;Landroidx/fragment/app/FragmentState;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/fragment/app/FragmentFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/fragment/app/FragmentState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 12
    invoke-virtual {p5, p4, p3}, Landroidx/fragment/app/FragmentState;->instantiate(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 p2, 0x2

    .line 13
    invoke-static {p2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private isFragmentViewChild(Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method private saveBasicState()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveViewState()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 51
    .line 52
    const-string v2, "android:view_state"

    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 60
    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    new-instance v0, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 71
    .line 72
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 73
    .line 74
    const-string v2, "android:view_registry_state"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 80
    .line 81
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 82
    .line 83
    if-nez v1, :cond_7

    .line 84
    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    new-instance v0, Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .line 91
    .line 92
    :cond_6
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 93
    .line 94
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 95
    .line 96
    const-string v2, "android:user_visible_hint"

    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    :cond_7
    return-object v0
.end method


# virtual methods
.method public activityCreated()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public addViewToContainer()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->findFragmentIndexInContainer(Landroidx/fragment/app/Fragment;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public attach()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const-string v3, " that does not belong to this FragmentManager!"

    .line 19
    .line 20
    const-string v4, " declared target fragment "

    .line 21
    .line 22
    const-string v5, "Fragment "

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 39
    .line 40
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    move-object v2, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 110
    .line 111
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v1, v2, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 122
    .line 123
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 127
    .line 128
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 135
    .line 136
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 137
    .line 138
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 145
    .line 146
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 147
    .line 148
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Z)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performAttach()V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 160
    .line 161
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Z)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public computeExpectedState()I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 11
    .line 12
    sget-object v2, Landroidx/fragment/app/FragmentStateManager$2;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    aget v0, v2, v0

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    const/4 v3, -0x1

    .line 24
    const/4 v4, 0x3

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x1

    .line 28
    if-eq v0, v7, :cond_4

    .line 29
    .line 30
    if-eq v0, v6, :cond_3

    .line 31
    .line 32
    if-eq v0, v4, :cond_2

    .line 33
    .line 34
    if-eq v0, v5, :cond_1

    .line 35
    .line 36
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 59
    .line 60
    if-eqz v8, :cond_7

    .line 61
    .line 62
    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 63
    .line 64
    if-eqz v8, :cond_5

    .line 65
    .line 66
    iget v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 67
    .line 68
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 73
    .line 74
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 75
    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_7

    .line 83
    .line 84
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    iget v8, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 90
    .line 91
    if-ge v8, v5, :cond_6

    .line 92
    .line 93
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 94
    .line 95
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    :cond_7
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 105
    .line 106
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 107
    .line 108
    if-nez v0, :cond_8

    .line 109
    .line 110
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 115
    .line 116
    iget-object v8, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 117
    .line 118
    if-eqz v8, :cond_9

    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v8, v0}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, p0}, Landroidx/fragment/app/SpecialEffectsController;->getAwaitingCompletionLifecycleImpact(Landroidx/fragment/app/FragmentStateManager;)Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_2

    .line 133
    :cond_9
    const/4 v0, 0x0

    .line 134
    :goto_2
    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 135
    .line 136
    if-ne v0, v8, :cond_a

    .line 137
    .line 138
    const/4 v0, 0x6

    .line 139
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    goto :goto_3

    .line 144
    :cond_a
    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 145
    .line 146
    if-ne v0, v8, :cond_b

    .line 147
    .line 148
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    goto :goto_3

    .line 153
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 154
    .line 155
    iget-boolean v4, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 156
    .line 157
    if-eqz v4, :cond_d

    .line 158
    .line 159
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_c

    .line 164
    .line 165
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    goto :goto_3

    .line 170
    :cond_c
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    :cond_d
    :goto_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 175
    .line 176
    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 177
    .line 178
    if-eqz v3, :cond_e

    .line 179
    .line 180
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 181
    .line 182
    if-ge v0, v2, :cond_e

    .line 183
    .line 184
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    :cond_e
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_f

    .line 193
    .line 194
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 195
    .line 196
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    :cond_f
    return v1
.end method

.method public create()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 20
    .line 21
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public createView()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_2
    iget v2, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 37
    .line 38
    if-eqz v2, :cond_6

    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    if-eq v2, v3, :cond_5

    .line 42
    .line 43
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getContainer()Landroidx/fragment/app/FragmentContainer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 50
    .line 51
    iget v2, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v2, v1

    .line 58
    check-cast v2, Landroid/view/ViewGroup;

    .line 59
    .line 60
    if-nez v2, :cond_4

    .line 61
    .line 62
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 63
    .line 64
    iget-boolean v3, v1, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 74
    .line 75
    iget v1, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 82
    :catch_0
    const-string v0, "unknown"

    .line 83
    .line 84
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v3, "No view found for id 0x"

    .line 89
    .line 90
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 94
    .line 95
    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 96
    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v3, " ("

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, ") for fragment "

    .line 113
    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 118
    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v1

    .line 130
    :cond_4
    instance-of v1, v2, Landroidx/fragment/app/FragmentContainerView;

    .line 131
    .line 132
    if-nez v1, :cond_7

    .line 133
    .line 134
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 135
    .line 136
    invoke-static {v1, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onWrongFragmentContainer(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v2, "Cannot create fragment "

    .line 145
    .line 146
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v2, " for a container view with no id"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_6
    const/4 v2, 0x0

    .line 168
    :cond_7
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 169
    .line 170
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 171
    .line 172
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 173
    .line 174
    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 178
    .line 179
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 180
    .line 181
    const/4 v1, 0x2

    .line 182
    if-eqz v0, :cond_c

    .line 183
    .line 184
    const/4 v3, 0x0

    .line 185
    invoke-virtual {v0, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 189
    .line 190
    iget-object v4, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 191
    .line 192
    sget v5, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    .line 193
    .line 194
    invoke-virtual {v4, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    if-eqz v2, :cond_8

    .line 198
    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->addViewToContainer()V

    .line 200
    .line 201
    .line 202
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 203
    .line 204
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 205
    .line 206
    if-eqz v2, :cond_9

    .line 207
    .line 208
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 209
    .line 210
    const/16 v2, 0x8

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 216
    .line 217
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 218
    .line 219
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_a

    .line 224
    .line 225
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 226
    .line 227
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 228
    .line 229
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 234
    .line 235
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 236
    .line 237
    new-instance v2, Landroidx/fragment/app/FragmentStateManager$1;

    .line 238
    .line 239
    invoke-direct {v2, p0, v0}, Landroidx/fragment/app/FragmentStateManager$1;-><init>(Landroidx/fragment/app/FragmentStateManager;Landroid/view/View;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 243
    .line 244
    .line 245
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 246
    .line 247
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 251
    .line 252
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 253
    .line 254
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 255
    .line 256
    iget-object v5, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 257
    .line 258
    invoke-virtual {v0, v2, v4, v5, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 262
    .line 263
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 264
    .line 265
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 270
    .line 271
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 272
    .line 273
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 278
    .line 279
    invoke-virtual {v3, v2}, Landroidx/fragment/app/Fragment;->setPostOnViewCreatedAlpha(F)V

    .line 280
    .line 281
    .line 282
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 283
    .line 284
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 285
    .line 286
    if-eqz v3, :cond_c

    .line 287
    .line 288
    if-nez v0, :cond_c

    .line 289
    .line 290
    iget-object v0, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 291
    .line 292
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-eqz v0, :cond_b

    .line 297
    .line 298
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 299
    .line 300
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_b

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 313
    .line 314
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 318
    .line 319
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 320
    .line 321
    const/4 v2, 0x0

    .line 322
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 323
    .line 324
    .line 325
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 326
    .line 327
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 328
    .line 329
    return-void
.end method

.method public destroy()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 36
    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 40
    .line 41
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v5, v4, v1}, Landroidx/fragment/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    .line 44
    .line 45
    .line 46
    :cond_2
    if-nez v0, :cond_5

    .line 47
    .line 48
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManagerViewModel;->shouldDestroy(Landroidx/fragment/app/Fragment;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 82
    .line 83
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 84
    .line 85
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 86
    .line 87
    iput v2, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_5
    :goto_1
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 92
    .line 93
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 94
    .line 95
    instance-of v5, v4, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 96
    .line 97
    if-eqz v5, :cond_6

    .line 98
    .line 99
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 100
    .line 101
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerViewModel;->isCleared()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    goto :goto_2

    .line 110
    :cond_6
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    instance-of v5, v5, Landroid/app/Activity;

    .line 115
    .line 116
    if-eqz v5, :cond_7

    .line 117
    .line 118
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Landroid/app/Activity;

    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    xor-int/2addr v3, v4

    .line 129
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 130
    .line 131
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 132
    .line 133
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 134
    .line 135
    if-eqz v0, :cond_9

    .line 136
    .line 137
    :cond_8
    if-eqz v3, :cond_a

    .line 138
    .line 139
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigState(Landroidx/fragment/app/Fragment;)V

    .line 148
    .line 149
    .line 150
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 156
    .line 157
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 158
    .line 159
    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_c

    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 183
    .line 184
    if-eqz v2, :cond_b

    .line 185
    .line 186
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 191
    .line 192
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_b

    .line 201
    .line 202
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 203
    .line 204
    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 205
    .line 206
    iput-object v1, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 210
    .line 211
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 212
    .line 213
    if-eqz v1, :cond_d

    .line 214
    .line 215
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 216
    .line 217
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 222
    .line 223
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 224
    .line 225
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 226
    .line 227
    .line 228
    :goto_4
    return-void
.end method

.method public destroyFragmentView()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 43
    .line 44
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 45
    .line 46
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 47
    .line 48
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 54
    .line 55
    iput-boolean v2, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 56
    .line 57
    return-void
.end method

.method public detach()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    iput v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 33
    .line 34
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 37
    .line 38
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManagerViewModel;->shouldDestroy(Landroidx/fragment/app/Fragment;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    :goto_0
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 70
    .line 71
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->initState()V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public ensureInflatedView()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v0, v1, v3, v2}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 44
    .line 45
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 54
    .line 55
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 56
    .line 57
    sget v3, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    .line 58
    .line 59
    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 63
    .line 64
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 69
    .line 70
    const/16 v2, 0x8

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 81
    .line 82
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 83
    .line 84
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 85
    .line 86
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 87
    .line 88
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 92
    .line 93
    const/4 v1, 0x2

    .line 94
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public moveToExpectedState()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    :try_start_0
    iput-boolean v2, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->computeExpectedState()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    iget v6, v5, Landroidx/fragment/app/Fragment;->mState:I

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    if-eq v4, v6, :cond_9

    .line 35
    .line 36
    if-le v4, v6, :cond_3

    .line 37
    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    packed-switch v6, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->resume()V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :catchall_0
    move-exception v1

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :pswitch_1
    const/4 v3, 0x6

    .line 54
    iput v3, v5, Landroidx/fragment/app/Fragment;->mState:I

    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->start()V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :pswitch_3
    iget-object v3, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    iget-object v3, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v3, v4}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 80
    .line 81
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-static {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v3, v4, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueAdd(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/FragmentStateManager;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 95
    .line 96
    const/4 v4, 0x4

    .line 97
    iput v4, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->activityCreated()V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->ensureInflatedView()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->createView()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->create()V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->attach()V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 125
    .line 126
    packed-switch v6, :pswitch_data_1

    .line 127
    .line 128
    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->pause()V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :pswitch_9
    const/4 v3, 0x5

    .line 137
    iput v3, v5, Landroidx/fragment/app/Fragment;->mState:I

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->stop()V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :pswitch_b
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_4

    .line 149
    .line 150
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 151
    .line 152
    invoke-static {v3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    :cond_4
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 156
    .line 157
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 158
    .line 159
    if-eqz v4, :cond_5

    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveState()V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 166
    .line 167
    if-eqz v4, :cond_6

    .line 168
    .line 169
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 170
    .line 171
    if-nez v3, :cond_6

    .line 172
    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveViewState()V

    .line 174
    .line 175
    .line 176
    :cond_6
    :goto_1
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 177
    .line 178
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 179
    .line 180
    if-eqz v4, :cond_7

    .line 181
    .line 182
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 183
    .line 184
    if-eqz v4, :cond_7

    .line 185
    .line 186
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-static {v4, v3}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueRemove(Landroidx/fragment/app/FragmentStateManager;)V

    .line 195
    .line 196
    .line 197
    :cond_7
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 198
    .line 199
    iput v7, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :pswitch_c
    iput-boolean v0, v5, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 203
    .line 204
    iput v1, v5, Landroidx/fragment/app/Fragment;->mState:I

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->destroyFragmentView()V

    .line 208
    .line 209
    .line 210
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 211
    .line 212
    iput v2, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :pswitch_e
    iget-boolean v3, v5, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 216
    .line 217
    if-eqz v3, :cond_8

    .line 218
    .line 219
    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 220
    .line 221
    iget-object v4, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentStore;->getSavedState(Ljava/lang/String;)Landroidx/fragment/app/FragmentState;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-nez v3, :cond_8

    .line 228
    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveState()V

    .line 230
    .line 231
    .line 232
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->destroy()V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->detach()V

    .line 237
    .line 238
    .line 239
    :goto_2
    const/4 v3, 0x1

    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_9
    if-nez v3, :cond_c

    .line 243
    .line 244
    const/4 v1, -0x1

    .line 245
    if-ne v6, v1, :cond_c

    .line 246
    .line 247
    iget-boolean v1, v5, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 248
    .line 249
    if-eqz v1, :cond_c

    .line 250
    .line 251
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_c

    .line 256
    .line 257
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 258
    .line 259
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 260
    .line 261
    if-nez v1, :cond_c

    .line 262
    .line 263
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_a

    .line 268
    .line 269
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 270
    .line 271
    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    :cond_a
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 275
    .line 276
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigState(Landroidx/fragment/app/Fragment;)V

    .line 283
    .line 284
    .line 285
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 286
    .line 287
    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 288
    .line 289
    .line 290
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_b

    .line 295
    .line 296
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 297
    .line 298
    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 302
    .line 303
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->initState()V

    .line 304
    .line 305
    .line 306
    :cond_c
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 307
    .line 308
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 309
    .line 310
    if-eqz v2, :cond_10

    .line 311
    .line 312
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 313
    .line 314
    if-eqz v2, :cond_e

    .line 315
    .line 316
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 317
    .line 318
    if-eqz v2, :cond_e

    .line 319
    .line 320
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-static {v2, v1}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 329
    .line 330
    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 331
    .line 332
    if-eqz v2, :cond_d

    .line 333
    .line 334
    invoke-virtual {v1, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueHide(Landroidx/fragment/app/FragmentStateManager;)V

    .line 335
    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_d
    invoke-virtual {v1, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueShow(Landroidx/fragment/app/FragmentStateManager;)V

    .line 339
    .line 340
    .line 341
    :cond_e
    :goto_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 342
    .line 343
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 344
    .line 345
    if-eqz v2, :cond_f

    .line 346
    .line 347
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->invalidateMenuForFragment(Landroidx/fragment/app/Fragment;)V

    .line 348
    .line 349
    .line 350
    :cond_f
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 351
    .line 352
    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 353
    .line 354
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 355
    .line 356
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 357
    .line 358
    .line 359
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 360
    .line 361
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 362
    .line 363
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->dispatchOnHiddenChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .line 365
    .line 366
    :cond_10
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    .line 367
    .line 368
    return-void

    .line 369
    :goto_4
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    .line 370
    .line 371
    throw v1

    .line 372
    nop

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public restoreState(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 14
    .line 15
    const-string v1, "android:view_state"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 26
    .line 27
    const-string v1, "android:view_registry_state"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 38
    .line 39
    const-string v1, "android:target_state"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 48
    .line 49
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 54
    .line 55
    const-string v1, "android:target_req_state"

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 65
    .line 66
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 76
    .line 77
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 84
    .line 85
    const-string v2, "android:user_visible_hint"

    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 92
    .line 93
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 94
    .line 95
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 96
    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 100
    .line 101
    :cond_3
    return-void
.end method

.method public resume()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFocusedView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentStateManager;->isFragmentViewChild(Landroid/view/View;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 76
    .line 77
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 78
    .line 79
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 80
    .line 81
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 82
    .line 83
    return-void
.end method

.method public saveInstanceState()Landroidx/fragment/app/Fragment$SavedState;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/fragment/app/FragmentStateManager;->saveBasicState()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v2, Landroidx/fragment/app/Fragment$SavedState;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v2
.end method

.method public saveState()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/fragment/app/FragmentState;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    iget v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    if-le v2, v3, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/FragmentStateManager;->saveBasicState()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 39
    .line 40
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 45
    .line 46
    const-string v3, "android:target_state"

    .line 47
    .line 48
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 52
    .line 53
    iget v1, v1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v2, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 58
    .line 59
    const-string v3, "android:target_req_state"

    .line 60
    .line 61
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 66
    .line 67
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 68
    .line 69
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 70
    .line 71
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 72
    .line 73
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public saveViewState()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 23
    .line 24
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-lez v1, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 46
    .line 47
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 48
    .line 49
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->performSave(Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 68
    .line 69
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 70
    .line 71
    :cond_3
    return-void
.end method

.method public setFragmentManagerState(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
