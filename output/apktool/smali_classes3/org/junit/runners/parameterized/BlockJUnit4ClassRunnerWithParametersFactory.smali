.class public Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParametersFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/junit/runners/parameterized/ParametersRunnerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createRunnerForTestWithParameters(Lorg/junit/runners/parameterized/TestWithParameters;)Lorg/junit/runner/Runner;
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;-><init>(Lorg/junit/runners/parameterized/TestWithParameters;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
