.class Lcom/tknetwork/tunnel/view/MaterialEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/view/MaterialEditText;->init(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/view/MaterialEditText;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/view/MaterialEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText$1;->this$0:Lcom/tknetwork/tunnel/view/MaterialEditText;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/tknetwork/tunnel/view/MaterialEditText$1;->this$0:Lcom/tknetwork/tunnel/view/MaterialEditText;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p2, p1}, Lcom/tknetwork/tunnel/view/MaterialEditText;->showPasswordVisibilityIndicator(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
