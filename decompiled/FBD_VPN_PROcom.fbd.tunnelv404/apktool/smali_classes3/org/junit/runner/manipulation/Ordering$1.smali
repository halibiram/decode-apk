.class final Lorg/junit/runner/manipulation/Ordering$1;
.super Lorg/junit/runner/manipulation/Ordering;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runner/manipulation/Ordering;->shuffledBy(Ljava/util/Random;)Lorg/junit/runner/manipulation/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/runner/manipulation/Ordering$1;->val$random:Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/junit/runner/manipulation/Ordering;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public orderItems(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/junit/runner/Description;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/junit/runner/manipulation/Ordering$1;->val$random:Ljava/util/Random;

    .line 7
    .line 8
    invoke-static {v0, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public validateOrderingIsCorrect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
