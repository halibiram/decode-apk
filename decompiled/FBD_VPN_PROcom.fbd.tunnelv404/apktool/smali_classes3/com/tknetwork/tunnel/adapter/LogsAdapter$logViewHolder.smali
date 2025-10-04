.class public Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/adapter/LogsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "logViewHolder"
.end annotation


# instance fields
.field textLog:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tknetwork/tunnel/adapter/LogsAdapter;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/adapter/LogsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;->this$0:Lcom/tknetwork/tunnel/adapter/LogsAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a03c3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/LogsAdapter$logViewHolder;->textLog:Landroid/widget/TextView;

    .line 16
    .line 17
    return-void
.end method
