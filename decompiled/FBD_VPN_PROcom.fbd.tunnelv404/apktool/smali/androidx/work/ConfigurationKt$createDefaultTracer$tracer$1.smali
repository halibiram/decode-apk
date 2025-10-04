.class public final Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/Tracer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/ConfigurationKt;->createDefaultTracer()Landroidx/work/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "androidx/work/ConfigurationKt$createDefaultTracer$tracer$1",
        "Landroidx/work/Tracer;",
        "beginAsyncSection",
        "",
        "methodName",
        "",
        "cookie",
        "",
        "beginSection",
        "label",
        "endAsyncSection",
        "endSection",
        "isEnabled",
        "",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


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
.method public beginAsyncSection(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "methodName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroidx/tracing/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public beginSection(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "label"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public endAsyncSection(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "methodName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroidx/tracing/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public endSection()V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/tracing/Trace;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
