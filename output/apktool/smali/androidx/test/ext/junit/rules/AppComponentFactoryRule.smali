.class public final Landroidx/test/ext/junit/rules/AppComponentFactoryRule;
.super Lorg/junit/rules/ExternalResource;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/test/ext/junit/rules/AppComponentFactoryRule;",
        "Lorg/junit/rules/ExternalResource;",
        "factory",
        "Landroid/app/AppComponentFactory;",
        "(Landroid/app/AppComponentFactory;)V",
        "after",
        "",
        "before",
        "ext_junit_java_androidx_test_ext_junit-junit_kt"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final factory:Landroid/app/AppComponentFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/AppComponentFactory;)V
    .locals 1
    .param p1    # Landroid/app/AppComponentFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "factory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/test/ext/junit/rules/AppComponentFactoryRule;->factory:Landroid/app/AppComponentFactory;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public after()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroidx/test/platform/app/AppComponentFactoryRegistry;->setAppComponentFactory(Landroid/app/AppComponentFactory;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public before()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/test/ext/junit/rules/AppComponentFactoryRule;->factory:Landroid/app/AppComponentFactory;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/test/platform/app/AppComponentFactoryRegistry;->setAppComponentFactory(Landroid/app/AppComponentFactory;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "AppComponentFactoryRule is not supported on \'VERSION.SDK_INT < VERSION_CODES.P\'"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method
