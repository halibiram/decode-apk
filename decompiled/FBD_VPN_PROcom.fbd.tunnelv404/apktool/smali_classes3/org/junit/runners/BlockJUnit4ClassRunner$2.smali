.class Lorg/junit/runners/BlockJUnit4ClassRunner$2;
.super Lorg/junit/internal/runners/model/ReflectiveCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runners/BlockJUnit4ClassRunner;->methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;
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
    iput-object p1, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$2;->this$0:Lorg/junit/runners/BlockJUnit4ClassRunner;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$2;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/junit/internal/runners/model/ReflectiveCallable;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public runReflectiveCall()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$2;->this$0:Lorg/junit/runners/BlockJUnit4ClassRunner;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$2;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->createTest(Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
