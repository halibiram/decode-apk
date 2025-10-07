.class public final Lorg/junit/runners/JUnit4;
.super Lorg/junit/runners/BlockJUnit4ClassRunner;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/junit/runners/model/TestClass;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/junit/runners/model/TestClass;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lorg/junit/runners/BlockJUnit4ClassRunner;-><init>(Lorg/junit/runners/model/TestClass;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
