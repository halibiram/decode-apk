.class Lorg/junit/runners/RuleContainer$RuleEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/RuleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuleEntry"
.end annotation


# static fields
.field static final TYPE_METHOD_RULE:I = 0x0

.field static final TYPE_TEST_RULE:I = 0x1


# instance fields
.field final order:I

.field final rule:Ljava/lang/Object;

.field final type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/junit/runners/RuleContainer$RuleEntry;->rule:Ljava/lang/Object;

    .line 5
    .line 6
    iput p2, p0, Lorg/junit/runners/RuleContainer$RuleEntry;->type:I

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, -0x1

    .line 16
    :goto_0
    iput p1, p0, Lorg/junit/runners/RuleContainer$RuleEntry;->order:I

    .line 17
    .line 18
    return-void
.end method
