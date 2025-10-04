.class public Lorg/junit/internal/AssumptionViolatedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"

# interfaces
.implements Lorg/hamcrest/SelfDescribing;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final fAssumption:Ljava/lang/String;

.field private final fMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "*>;"
        }
    .end annotation
.end field

.field private final fValue:Ljava/lang/Object;

.field private final fValueMatcher:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, v0, v1, v1}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, p1, v0, v1, v1}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Object;",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/junit/internal/AssumptionViolatedException;->fAssumption:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lorg/junit/internal/AssumptionViolatedException;->fValue:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lorg/junit/internal/AssumptionViolatedException;->fMatcher:Lorg/hamcrest/Matcher;

    .line 5
    iput-boolean p2, p0, Lorg/junit/internal/AssumptionViolatedException;->fValueMatcher:Z

    .line 6
    instance-of p1, p3, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 7
    check-cast p3, Ljava/lang/Throwable;

    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "fAssumption"

    .line 6
    .line 7
    iget-object v2, p0, Lorg/junit/internal/AssumptionViolatedException;->fAssumption:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "fValueMatcher"

    .line 13
    .line 14
    iget-boolean v2, p0, Lorg/junit/internal/AssumptionViolatedException;->fValueMatcher:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/junit/internal/AssumptionViolatedException;->fMatcher:Lorg/hamcrest/Matcher;

    .line 20
    .line 21
    invoke-static {v1}, Lorg/junit/internal/SerializableMatcherDescription;->asSerializableMatcher(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "fMatcher"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lorg/junit/internal/AssumptionViolatedException;->fValue:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {v1}, Lorg/junit/internal/SerializableValueDescription;->asSerializableValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "fValue"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fAssumption:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fValueMatcher:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fAssumption:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, ": "

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 19
    .line 20
    .line 21
    :cond_1
    const-string v0, "got: "

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fValue:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fMatcher:Lorg/hamcrest/Matcher;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string v0, ", expected: "

    .line 36
    .line 37
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fMatcher:Lorg/hamcrest/Matcher;

    .line 41
    .line 42
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/hamcrest/StringDescription;->asString(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
