.class public Landroidx/test/internal/platform/reflect/ReflectiveMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private method:Ljava/lang/reflect/Method;

.field private final methodName:Ljava/lang/String;

.field private final paramTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->initialized:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->className:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->clazz:Ljava/lang/Class;

    .line 11
    iput-object p3, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->paramTypes:[Ljava/lang/Class;

    .line 12
    iput-object p2, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->methodName:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->initialized:Z

    .line 3
    iput-object p1, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->className:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->clazz:Ljava/lang/Class;

    .line 5
    iput-object p3, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->paramTypes:[Ljava/lang/Class;

    .line 6
    iput-object p2, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->methodName:Ljava/lang/String;

    return-void
.end method

.method private getClazz()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->clazz:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->className:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method private declared-synchronized initIfNecessary()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->getClazz()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->methodName:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->paramTypes:[Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->method:Ljava/lang/reflect/Method;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    .line 25
    .line 26
    iput-boolean v1, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw v0
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->initIfNecessary()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->method:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :catch_2
    move-exception p1

    .line 16
    goto :goto_2

    .line 17
    :catch_3
    move-exception p1

    .line 18
    goto :goto_3

    .line 19
    :goto_0
    new-instance p2, Landroidx/test/internal/platform/reflect/ReflectionException;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Landroidx/test/internal/platform/reflect/ReflectionException;-><init>(Ljava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    throw p2

    .line 25
    :goto_1
    new-instance p2, Landroidx/test/internal/platform/reflect/ReflectionException;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Landroidx/test/internal/platform/reflect/ReflectionException;-><init>(Ljava/lang/Exception;)V

    .line 28
    .line 29
    .line 30
    throw p2

    .line 31
    :goto_2
    new-instance p2, Landroidx/test/internal/platform/reflect/ReflectionException;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Landroidx/test/internal/platform/reflect/ReflectionException;-><init>(Ljava/lang/Exception;)V

    .line 34
    .line 35
    .line 36
    throw p2

    .line 37
    :goto_3
    new-instance p2, Landroidx/test/internal/platform/reflect/ReflectionException;

    .line 38
    .line 39
    invoke-direct {p2, p1}, Landroidx/test/internal/platform/reflect/ReflectionException;-><init>(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    throw p2
.end method

.method public varargs invokeStatic([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method
