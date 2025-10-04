.class public abstract Lorg/hamcrest/CustomTypeSafeMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final fixedDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lorg/hamcrest/CustomTypeSafeMatcher;->fixedDescription:Ljava/lang/String;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Description must be non null!"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public final describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hamcrest/CustomTypeSafeMatcher;->fixedDescription:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 4
    .line 5
    .line 6
    return-void
.end method
