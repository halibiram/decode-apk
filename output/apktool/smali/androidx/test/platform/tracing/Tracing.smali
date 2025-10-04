.class public final Landroidx/test/platform/tracing/Tracing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/platform/tracing/Tracing$TracerSpan;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tracing"

.field private static final singleton:Landroidx/test/platform/tracing/Tracing;


# instance fields
.field private final tracers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/platform/tracing/Tracer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/platform/tracing/Tracing;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/test/platform/tracing/Tracing;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/test/platform/tracing/Tracing;->singleton:Landroidx/test/platform/tracing/Tracing;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Landroidx/test/platform/tracing/AndroidXTracer;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/test/platform/tracing/AndroidXTracer;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/test/platform/tracing/AndroidXTracer;->enableTracing()Landroidx/test/platform/tracing/AndroidXTracer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/test/platform/tracing/Tracing;->registerTracer(Landroidx/test/platform/tracing/Tracer;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic access$100(Landroidx/test/platform/tracing/Tracing;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Landroidx/test/platform/tracing/Tracer$Span;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/test/platform/tracing/Tracing;->createUnmanagedChildSpan(Landroidx/test/platform/tracing/Tracer$Span;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static createUnmanagedChildSpan(Landroidx/test/platform/tracing/Tracer$Span;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/test/platform/tracing/Tracer$Span;->beginChildSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static createUnmanagedSpan(Landroidx/test/platform/tracing/Tracer;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/test/platform/tracing/Tracer;->beginSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getInstance()Landroidx/test/platform/tracing/Tracing;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/test/platform/tracing/Tracing;->singleton:Landroidx/test/platform/tracing/Tracing;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public beginSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/MustBeClosed;
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroidx/test/platform/tracing/Tracer;

    .line 35
    .line 36
    invoke-static {v3, p1}, Landroidx/test/platform/tracing/Tracing;->createUnmanagedSpan(Landroidx/test/platform/tracing/Tracer;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    new-instance p1, Landroidx/test/platform/tracing/Tracing$TracerSpan;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-direct {p1, p0, v1, v0}, Landroidx/test/platform/tracing/Tracing$TracerSpan;-><init>(Landroidx/test/platform/tracing/Tracing;Ljava/util/Map;Landroidx/test/platform/tracing/Tracing$1;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p1
.end method

.method public registerTracer(Landroidx/test/platform/tracing/Tracer;)V
    .locals 1
    .param p1    # Landroidx/test/platform/tracing/Tracer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Tracer cannot be null."

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public unregisterTracer(Landroidx/test/platform/tracing/Tracer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    return-void
.end method
