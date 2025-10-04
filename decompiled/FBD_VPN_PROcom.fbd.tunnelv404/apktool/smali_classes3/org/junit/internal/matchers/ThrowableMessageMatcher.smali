.class public Lorg/junit/internal/matchers/ThrowableMessageMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Throwable;",
        ">",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final matcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/junit/internal/matchers/ThrowableMessageMatcher;->matcher:Lorg/hamcrest/Matcher;

    .line 5
    .line 6
    return-void
.end method

.method public static hasMessage(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 1
    new-instance v0, Lorg/junit/internal/matchers/ThrowableMessageMatcher;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/junit/internal/matchers/ThrowableMessageMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lorg/junit/internal/matchers/ThrowableMessageMatcher;->describeMismatchSafely(Ljava/lang/Throwable;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeMismatchSafely(Ljava/lang/Throwable;Lorg/hamcrest/Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "message "

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 3
    iget-object v0, p0, Lorg/junit/internal/matchers/ThrowableMessageMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/hamcrest/Matcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    .line 1
    const-string v0, "exception with message "

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/junit/internal/matchers/ThrowableMessageMatcher;->matcher:Lorg/hamcrest/Matcher;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/junit/internal/matchers/ThrowableMessageMatcher;->matchesSafely(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public matchesSafely(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/junit/internal/matchers/ThrowableMessageMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
