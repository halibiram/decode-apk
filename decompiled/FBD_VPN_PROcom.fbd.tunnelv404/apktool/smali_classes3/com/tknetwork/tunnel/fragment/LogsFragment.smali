.class public Lcom/tknetwork/tunnel/fragment/LogsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/tknetwork/tunnel/adapter/LogsAdapter$OnItemClickListener;


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String;

.field private static final ARG_PARAM2:Ljava/lang/String;


# instance fields
.field private logListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mAdapter:Lcom/tknetwork/tunnel/adapter/LogsAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->ARG_PARAM1:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->ARG_PARAM2:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x3df1720447f9abc9L    # -1.640388787279112E10
        -0x176eebb34ac581a8L
    .end array-data

    :array_1
    .array-data 8
        -0x5f0ab7ade79b158L    # -8.886045901791509E279
        0x20edcdcb181f2e14L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/tknetwork/tunnel/fragment/LogsFragment;
    .locals 5

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/fragment/LogsFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tknetwork/tunnel/fragment/LogsFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    new-array v4, v3, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v2, v3, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        -0x3e953a2207a283e3L    # -1.403671976141172E7
        0x23a3b8f279ee6c7eL    # 5.299718997192288E-137
    .end array-data

    .line 52
    .line 53
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
    :array_1
    .array-data 8
        -0x783257bfdd5fa219L    # -4.385756145263239E-271
        0x5189de0df1c10bcaL    # 6.28147422936299E84
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v2, v0, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->mParam1:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v0, v0, [J

    .line 42
    .line 43
    fill-array-data v0, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->mParam2:Ljava/lang/String;

    .line 58
    .line 59
    :cond_0
    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        0x360789b5d71c1aa6L    # 2.0131632349168163E-48
        -0x21c51d4cf6d8048bL    # -8.392990915836045E145
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0xc17f6f41212a783L
        0x2457d0881991c93aL
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p3, 0x7f0d004a

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->mView:Landroid/view/View;

    .line 10
    .line 11
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Lcom/tknetwork/tunnel/adapter/LogsAdapter;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-direct {p2, p1, p3}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->mAdapter:Lcom/tknetwork/tunnel/adapter/LogsAdapter;

    .line 30
    .line 31
    invoke-virtual {p2, p0}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->setOnItemClickListener(Lcom/tknetwork/tunnel/adapter/LogsAdapter$OnItemClickListener;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->mView:Landroid/view/View;

    .line 35
    .line 36
    const p3, 0x7f0a0313

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->logListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    iget-object p3, p0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->mAdapter:Lcom/tknetwork/tunnel/adapter/LogsAdapter;

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->logListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->mAdapter:Lcom/tknetwork/tunnel/adapter/LogsAdapter;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/adapter/LogsAdapter;->scrollToLastPosition()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/tknetwork/tunnel/fragment/LogsFragment;->mView:Landroid/view/View;

    .line 63
    .line 64
    return-object p1
.end method

.method public onItemClick(Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    return-void
.end method
