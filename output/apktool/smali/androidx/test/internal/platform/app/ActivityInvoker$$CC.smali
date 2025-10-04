.class public final Landroidx/test/internal/platform/app/ActivityInvoker$$CC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getIntentForActivity$$dflt$$(Landroidx/test/internal/platform/app/ActivityInvoker;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/internal/platform/app/ActivityInvoker;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance p0, Landroid/content/ComponentName;

    .line 39
    .line 40
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
