.class Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;


# direct methods
.method public constructor <init>(Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/app/Activity;->finishActivity(I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->finish()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
