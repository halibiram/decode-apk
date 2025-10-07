.class public Lcom/tknetwork/tunnel/adapter/Adapter$MyPageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/adapter/Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyPageAdapter"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private tabids:[I

.field private titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/Adapter$MyPageAdapter;->activity:Landroid/app/Activity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/Adapter$MyPageAdapter;->tabids:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/Adapter$MyPageAdapter;->titles:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/Adapter$MyPageAdapter;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/Adapter$MyPageAdapter;->tabids:[I

    .line 4
    .line 5
    aget p2, v0, p2

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs setPageTitles([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/Adapter$MyPageAdapter;->titles:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public varargs setTabIds([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/Adapter$MyPageAdapter;->tabids:[I

    .line 2
    .line 3
    return-void
.end method
