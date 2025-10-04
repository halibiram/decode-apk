.class public final Landroidx/test/internal/runner/intercepting/DefaultInterceptingActivityFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/test/runner/intercepting/InterceptingActivityFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public shouldIntercept(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
