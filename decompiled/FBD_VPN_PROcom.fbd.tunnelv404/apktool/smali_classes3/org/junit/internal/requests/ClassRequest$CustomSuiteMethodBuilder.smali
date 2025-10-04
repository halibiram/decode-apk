.class Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;
.super Lorg/junit/internal/builders/SuiteMethodBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/requests/ClassRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomSuiteMethodBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/internal/requests/ClassRequest;


# direct methods
.method private constructor <init>(Lorg/junit/internal/requests/ClassRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;->this$0:Lorg/junit/internal/requests/ClassRequest;

    invoke-direct {p0}, Lorg/junit/internal/builders/SuiteMethodBuilder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/junit/internal/requests/ClassRequest;Lorg/junit/internal/requests/ClassRequest$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;-><init>(Lorg/junit/internal/requests/ClassRequest;)V

    return-void
.end method


# virtual methods
.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;->this$0:Lorg/junit/internal/requests/ClassRequest;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/junit/internal/requests/ClassRequest;->access$200(Lorg/junit/internal/requests/ClassRequest;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;->this$0:Lorg/junit/internal/requests/ClassRequest;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/junit/internal/requests/ClassRequest;->access$300(Lorg/junit/internal/requests/ClassRequest;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-super {p0, p1}, Lorg/junit/internal/builders/SuiteMethodBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
