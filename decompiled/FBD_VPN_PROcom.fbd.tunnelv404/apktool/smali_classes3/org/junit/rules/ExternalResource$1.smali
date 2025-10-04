.class Lorg/junit/rules/ExternalResource$1;
.super Lorg/junit/runners/model/Statement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/rules/ExternalResource;->statement(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/rules/ExternalResource;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;


# direct methods
.method public constructor <init>(Lorg/junit/rules/ExternalResource;Lorg/junit/runners/model/Statement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/rules/ExternalResource$1;->this$0:Lorg/junit/rules/ExternalResource;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/junit/rules/ExternalResource$1;->val$base:Lorg/junit/runners/model/Statement;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/junit/rules/ExternalResource$1;->this$0:Lorg/junit/rules/ExternalResource;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/junit/rules/ExternalResource;->before()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lorg/junit/rules/ExternalResource$1;->val$base:Lorg/junit/runners/model/Statement;

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_1
    iget-object v1, p0, Lorg/junit/rules/ExternalResource$1;->this$0:Lorg/junit/rules/ExternalResource;

    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/junit/rules/ExternalResource;->after()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_1
    move-exception v1

    .line 28
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 29
    .line 30
    .line 31
    :try_start_3
    iget-object v1, p0, Lorg/junit/rules/ExternalResource$1;->this$0:Lorg/junit/rules/ExternalResource;

    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/junit/rules/ExternalResource;->after()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {v0}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_2
    move-exception v1

    .line 41
    :try_start_4
    iget-object v2, p0, Lorg/junit/rules/ExternalResource$1;->this$0:Lorg/junit/rules/ExternalResource;

    .line 42
    .line 43
    invoke-virtual {v2}, Lorg/junit/rules/ExternalResource;->after()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_3
    move-exception v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :goto_1
    throw v1
.end method
