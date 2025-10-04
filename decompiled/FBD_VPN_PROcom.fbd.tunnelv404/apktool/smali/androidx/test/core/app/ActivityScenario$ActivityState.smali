.class Landroidx/test/core/app/ActivityScenario$ActivityState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/ActivityScenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final activity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field final stage:Landroidx/test/runner/lifecycle/Stage;

.field final state:Landroidx/lifecycle/Lifecycle$State;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$State;Landroidx/test/runner/lifecycle/Stage;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Landroidx/test/runner/lifecycle/Stage;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/test/core/app/ActivityScenario$ActivityState;->stage:Landroidx/test/runner/lifecycle/Stage;

    .line 9
    .line 10
    return-void
.end method
