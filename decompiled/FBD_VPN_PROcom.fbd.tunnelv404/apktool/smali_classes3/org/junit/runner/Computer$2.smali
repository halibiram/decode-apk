.class Lorg/junit/runner/Computer$2;
.super Lorg/junit/runners/Suite;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runner/Computer;->getSuite(Lorg/junit/runners/model/RunnerBuilder;[Ljava/lang/Class;)Lorg/junit/runner/Runner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runner/Computer;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Computer;Lorg/junit/runners/model/RunnerBuilder;[Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/runner/Computer$2;->this$0:Lorg/junit/runner/Computer;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lorg/junit/runners/Suite;-><init>(Lorg/junit/runners/model/RunnerBuilder;[Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "classes"

    .line 2
    .line 3
    return-object v0
.end method
