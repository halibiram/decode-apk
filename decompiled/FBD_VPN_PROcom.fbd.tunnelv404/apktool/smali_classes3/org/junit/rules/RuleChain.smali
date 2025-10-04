.class public Lorg/junit/rules/RuleChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/junit/rules/TestRule;


# static fields
.field private static final EMPTY_CHAIN:Lorg/junit/rules/RuleChain;


# instance fields
.field private rulesStartingWithInnerMost:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/junit/rules/RuleChain;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lorg/junit/rules/RuleChain;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/junit/rules/RuleChain;->EMPTY_CHAIN:Lorg/junit/rules/RuleChain;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/junit/rules/RuleChain;->rulesStartingWithInnerMost:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method

.method public static emptyRuleChain()Lorg/junit/rules/RuleChain;
    .locals 1

    .line 1
    sget-object v0, Lorg/junit/rules/RuleChain;->EMPTY_CHAIN:Lorg/junit/rules/RuleChain;

    .line 2
    .line 3
    return-object v0
.end method

.method public static outerRule(Lorg/junit/rules/TestRule;)Lorg/junit/rules/RuleChain;
    .locals 1

    .line 1
    invoke-static {}, Lorg/junit/rules/RuleChain;->emptyRuleChain()Lorg/junit/rules/RuleChain;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/junit/rules/RuleChain;->around(Lorg/junit/rules/TestRule;)Lorg/junit/rules/RuleChain;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 2

    .line 1
    new-instance v0, Lorg/junit/rules/RunRules;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/junit/rules/RuleChain;->rulesStartingWithInnerMost:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1, p2}, Lorg/junit/rules/RunRules;-><init>(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public around(Lorg/junit/rules/TestRule;)Lorg/junit/rules/RuleChain;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/junit/rules/RuleChain;->rulesStartingWithInnerMost:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    new-instance p1, Lorg/junit/rules/RuleChain;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lorg/junit/rules/RuleChain;-><init>(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 23
    .line 24
    const-string v0, "The enclosed rule must not be null"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method
