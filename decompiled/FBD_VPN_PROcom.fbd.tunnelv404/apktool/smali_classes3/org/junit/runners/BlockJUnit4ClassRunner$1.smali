.class Lorg/junit/runners/BlockJUnit4ClassRunner$1;
.super Lorg/junit/runners/model/Statement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runners/BlockJUnit4ClassRunner;->runChild(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runner/notification/RunNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runners/BlockJUnit4ClassRunner;

.field final synthetic val$method:Lorg/junit/runners/model/FrameworkMethod;


# direct methods
.method public constructor <init>(Lorg/junit/runners/BlockJUnit4ClassRunner;Lorg/junit/runners/model/FrameworkMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$1;->this$0:Lorg/junit/runners/BlockJUnit4ClassRunner;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$1;->this$0:Lorg/junit/runners/BlockJUnit4ClassRunner;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
