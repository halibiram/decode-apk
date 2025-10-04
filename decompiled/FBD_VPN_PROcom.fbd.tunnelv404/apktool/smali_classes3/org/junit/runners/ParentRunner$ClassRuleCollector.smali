.class Lorg/junit/runners/ParentRunner$ClassRuleCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/junit/runners/model/MemberValueConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/ParentRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassRuleCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/junit/runners/model/MemberValueConsumer<",
        "Lorg/junit/rules/TestRule;",
        ">;"
    }
.end annotation


# instance fields
.field final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runners/RuleContainer$RuleEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/junit/runners/ParentRunner$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner$ClassRuleCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/junit/rules/TestRule;

    invoke-virtual {p0, p1, p2}, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->accept(Lorg/junit/runners/model/FrameworkMember;Lorg/junit/rules/TestRule;)V

    return-void
.end method

.method public accept(Lorg/junit/runners/model/FrameworkMember;Lorg/junit/rules/TestRule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;",
            "Lorg/junit/rules/TestRule;",
            ")V"
        }
    .end annotation

    .line 2
    const-class v0, Lorg/junit/ClassRule;

    invoke-interface {p1, v0}, Lorg/junit/runners/model/Annotatable;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/junit/ClassRule;

    .line 3
    iget-object v0, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    new-instance v1, Lorg/junit/runners/RuleContainer$RuleEntry;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/junit/ClassRule;->order()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-direct {v1, p2, v2, p1}, Lorg/junit/runners/RuleContainer$RuleEntry;-><init>(Ljava/lang/Object;ILjava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getOrderedRules()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    .line 2
    .line 3
    sget-object v1, Lorg/junit/runners/RuleContainer;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lorg/junit/runners/RuleContainer$RuleEntry;

    .line 36
    .line 37
    iget-object v2, v2, Lorg/junit/runners/RuleContainer$RuleEntry;->rule:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Lorg/junit/rules/TestRule;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-object v0
.end method
