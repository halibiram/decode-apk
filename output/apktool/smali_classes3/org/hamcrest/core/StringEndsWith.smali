.class public Lorg/hamcrest/core/StringEndsWith;
.super Lorg/hamcrest/core/SubstringMatcher;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hamcrest/core/SubstringMatcher;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static endsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 1
    new-instance v0, Lorg/hamcrest/core/StringEndsWith;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/hamcrest/core/StringEndsWith;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public evalSubstringOf(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hamcrest/core/SubstringMatcher;->substring:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public relationship()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ending with"

    .line 2
    .line 3
    return-object v0
.end method
