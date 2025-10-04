.class Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;
.super Lorg/junit/runners/model/Statement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/rules/ExpectedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpectedExceptionStatement"
.end annotation


# instance fields
.field private final next:Lorg/junit/runners/model/Statement;

.field final synthetic this$0:Lorg/junit/rules/ExpectedException;


# direct methods
.method public constructor <init>(Lorg/junit/rules/ExpectedException;Lorg/junit/runners/model/Statement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->next:Lorg/junit/runners/model/Statement;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->next:Lorg/junit/runners/model/Statement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/junit/rules/ExpectedException;->isAnyExceptionExpected()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    .line 15
    .line 16
    invoke-static {v0}, Lorg/junit/rules/ExpectedException;->access$100(Lorg/junit/rules/ExpectedException;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    iget-object v1, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    .line 22
    .line 23
    invoke-static {v1, v0}, Lorg/junit/rules/ExpectedException;->access$000(Lorg/junit/rules/ExpectedException;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
