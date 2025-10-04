.class Landroidx/test/platform/tracing/Tracing$TracerSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/test/platform/tracing/Tracer$Span;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/platform/tracing/Tracing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TracerSpan"
.end annotation


# instance fields
.field private final spans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/test/platform/tracing/Tracer;",
            "Landroidx/test/platform/tracing/Tracer$Span;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/test/platform/tracing/Tracing;


# direct methods
.method private constructor <init>(Landroidx/test/platform/tracing/Tracing;Ljava/util/Map;)V
    .locals 0
    .param p1    # Landroidx/test/platform/tracing/Tracing;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/test/platform/tracing/Tracer;",
            "Landroidx/test/platform/tracing/Tracer$Span;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->this$0:Landroidx/test/platform/tracing/Tracing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->spans:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/test/platform/tracing/Tracing;Ljava/util/Map;Landroidx/test/platform/tracing/Tracing$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/test/platform/tracing/Tracing$TracerSpan;-><init>(Landroidx/test/platform/tracing/Tracing;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public beginChildSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->this$0:Landroidx/test/platform/tracing/Tracing;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/test/platform/tracing/Tracing;->access$100(Landroidx/test/platform/tracing/Tracing;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->this$0:Landroidx/test/platform/tracing/Tracing;

    .line 14
    .line 15
    invoke-static {v2}, Landroidx/test/platform/tracing/Tracing;->access$100(Landroidx/test/platform/tracing/Tracing;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->this$0:Landroidx/test/platform/tracing/Tracing;

    .line 27
    .line 28
    invoke-static {v2}, Landroidx/test/platform/tracing/Tracing;->access$100(Landroidx/test/platform/tracing/Tracing;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroidx/test/platform/tracing/Tracer;

    .line 47
    .line 48
    iget-object v4, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->spans:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroidx/test/platform/tracing/Tracer$Span;

    .line 55
    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    invoke-static {v4, p1}, Landroidx/test/platform/tracing/Tracing;->access$200(Landroidx/test/platform/tracing/Tracer$Span;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    new-instance p1, Landroidx/test/platform/tracing/Tracing$TracerSpan;

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->this$0:Landroidx/test/platform/tracing/Tracing;

    .line 72
    .line 73
    invoke-direct {p1, v0, v1}, Landroidx/test/platform/tracing/Tracing$TracerSpan;-><init>(Landroidx/test/platform/tracing/Tracing;Ljava/util/Map;)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->spans:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/test/platform/tracing/Tracer$Span;

    .line 22
    .line 23
    invoke-interface {v1}, Landroidx/test/platform/tracing/Tracer$Span;->close()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
