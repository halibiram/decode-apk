.class Lorg/junit/internal/runners/JUnit4ClassRunner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/internal/runners/JUnit4ClassRunner;->sort(Lorg/junit/runner/manipulation/Sorter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/internal/runners/JUnit4ClassRunner;

.field final synthetic val$sorter:Lorg/junit/runner/manipulation/Sorter;


# direct methods
.method public constructor <init>(Lorg/junit/internal/runners/JUnit4ClassRunner;Lorg/junit/runner/manipulation/Sorter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->this$0:Lorg/junit/internal/runners/JUnit4ClassRunner;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->val$sorter:Lorg/junit/runner/manipulation/Sorter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->val$sorter:Lorg/junit/runner/manipulation/Sorter;

    iget-object v1, p0, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->this$0:Lorg/junit/internal/runners/JUnit4ClassRunner;

    invoke-virtual {v1, p1}, Lorg/junit/internal/runners/JUnit4ClassRunner;->methodDescription(Ljava/lang/reflect/Method;)Lorg/junit/runner/Description;

    move-result-object p1

    iget-object v1, p0, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->this$0:Lorg/junit/internal/runners/JUnit4ClassRunner;

    invoke-virtual {v1, p2}, Lorg/junit/internal/runners/JUnit4ClassRunner;->methodDescription(Ljava/lang/reflect/Method;)Lorg/junit/runner/Description;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/junit/runner/manipulation/Sorter;->compare(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I

    move-result p1

    return p1
.end method
