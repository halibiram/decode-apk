.class Landroidx/browser/customtabs/CustomTabsClient$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$2;->onMessageChannelReady(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$2;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$3;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$3;->val$extras:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2$3;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$3;->val$extras:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
