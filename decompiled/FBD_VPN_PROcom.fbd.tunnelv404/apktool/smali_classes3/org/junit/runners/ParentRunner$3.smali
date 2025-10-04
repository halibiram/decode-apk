.class Lorg/junit/runners/ParentRunner$3;
.super Lorg/junit/runners/model/Statement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runners/ParentRunner;->withInterruptIsolation(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runners/ParentRunner;

.field final synthetic val$statement:Lorg/junit/runners/model/Statement;


# direct methods
.method public constructor <init>(Lorg/junit/runners/ParentRunner;Lorg/junit/runners/model/Statement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/runners/ParentRunner$3;->this$0:Lorg/junit/runners/ParentRunner;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/junit/runners/ParentRunner$3;->val$statement:Lorg/junit/runners/model/Statement;

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
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/junit/runners/ParentRunner$3;->val$statement:Lorg/junit/runners/model/Statement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 12
    .line 13
    .line 14
    throw v0
.end method
