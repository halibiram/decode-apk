.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008 \u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010b\u001a\u00020\u0004J\u000e\u0010c\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010d\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010e\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\u0013J\u000e\u0010g\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019J\u0014\u0010h\u001a\u00020\u00002\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fJ\u000e\u0010j\u001a\u00020\u00002\u0006\u0010%\u001a\u00020&J\u0016\u0010k\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\r2\u0006\u00104\u001a\u00020\rJ\u0010\u0010l\u001a\u00020\u00002\u0006\u0010m\u001a\u00020/H\u0007J\u000e\u0010n\u001a\u00020\u00002\u0006\u00107\u001a\u00020\rJ\u000e\u0010o\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\rJ\u000e\u0010p\u001a\u00020\u00002\u0006\u0010=\u001a\u00020>J\u0014\u0010q\u001a\u00020\u00002\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fJ\u000e\u0010r\u001a\u00020\u00002\u0006\u0010F\u001a\u00020\u0019J\u0010\u0010s\u001a\u00020\u00002\u0006\u0010I\u001a\u00020JH\u0007J\u000e\u0010t\u001a\u00020\u00002\u0006\u0010u\u001a\u00020PJ\u0014\u0010v\u001a\u00020\u00002\u000c\u0010w\u001a\u0008\u0012\u0004\u0012\u00020V0\u001fJ\u000e\u0010x\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020ZJ\u0014\u0010y\u001a\u00020\u00002\u000c\u0010w\u001a\u0008\u0012\u0004\u0012\u00020V0\u001fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u000f\"\u0004\u0008-\u0010\u0011R\u001a\u0010.\u001a\u00020/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00104\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u000f\"\u0004\u00086\u0010\u0011R\u001a\u00107\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u000f\"\u0004\u00089\u0010\u0011R\u001a\u0010:\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u000f\"\u0004\u0008<\u0010\u0011R\u001c\u0010=\u001a\u0004\u0018\u00010>X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\"\u0010C\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\"\"\u0004\u0008E\u0010$R\u001c\u0010F\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010\u001b\"\u0004\u0008H\u0010\u001dR\u001c\u0010I\u001a\u0004\u0018\u00010JX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\u001c\u0010O\u001a\u0004\u0018\u00010PX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\"\u0010U\u001a\n\u0012\u0004\u0012\u00020V\u0018\u00010\u001fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010\"\"\u0004\u0008X\u0010$R\u001c\u0010Y\u001a\u0004\u0018\u00010ZX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R\"\u0010_\u001a\n\u0012\u0004\u0012\u00020V\u0018\u00010\u001fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010\"\"\u0004\u0008a\u0010$\u00a8\u0006z"
    }
    d2 = {
        "Landroidx/work/Configuration$Builder;",
        "",
        "()V",
        "configuration",
        "Landroidx/work/Configuration;",
        "(Landroidx/work/Configuration;)V",
        "clock",
        "Landroidx/work/Clock;",
        "getClock$work_runtime_release",
        "()Landroidx/work/Clock;",
        "setClock$work_runtime_release",
        "(Landroidx/work/Clock;)V",
        "contentUriTriggerWorkersLimit",
        "",
        "getContentUriTriggerWorkersLimit$work_runtime_release",
        "()I",
        "setContentUriTriggerWorkersLimit$work_runtime_release",
        "(I)V",
        "defaultProcessName",
        "",
        "getDefaultProcessName$work_runtime_release",
        "()Ljava/lang/String;",
        "setDefaultProcessName$work_runtime_release",
        "(Ljava/lang/String;)V",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "getExecutor$work_runtime_release",
        "()Ljava/util/concurrent/Executor;",
        "setExecutor$work_runtime_release",
        "(Ljava/util/concurrent/Executor;)V",
        "initializationExceptionHandler",
        "Landroidx/core/util/Consumer;",
        "",
        "getInitializationExceptionHandler$work_runtime_release",
        "()Landroidx/core/util/Consumer;",
        "setInitializationExceptionHandler$work_runtime_release",
        "(Landroidx/core/util/Consumer;)V",
        "inputMergerFactory",
        "Landroidx/work/InputMergerFactory;",
        "getInputMergerFactory$work_runtime_release",
        "()Landroidx/work/InputMergerFactory;",
        "setInputMergerFactory$work_runtime_release",
        "(Landroidx/work/InputMergerFactory;)V",
        "loggingLevel",
        "getLoggingLevel$work_runtime_release",
        "setLoggingLevel$work_runtime_release",
        "markJobsAsImportantWhileForeground",
        "",
        "getMarkJobsAsImportantWhileForeground$work_runtime_release",
        "()Z",
        "setMarkJobsAsImportantWhileForeground$work_runtime_release",
        "(Z)V",
        "maxJobSchedulerId",
        "getMaxJobSchedulerId$work_runtime_release",
        "setMaxJobSchedulerId$work_runtime_release",
        "maxSchedulerLimit",
        "getMaxSchedulerLimit$work_runtime_release",
        "setMaxSchedulerLimit$work_runtime_release",
        "minJobSchedulerId",
        "getMinJobSchedulerId$work_runtime_release",
        "setMinJobSchedulerId$work_runtime_release",
        "runnableScheduler",
        "Landroidx/work/RunnableScheduler;",
        "getRunnableScheduler$work_runtime_release",
        "()Landroidx/work/RunnableScheduler;",
        "setRunnableScheduler$work_runtime_release",
        "(Landroidx/work/RunnableScheduler;)V",
        "schedulingExceptionHandler",
        "getSchedulingExceptionHandler$work_runtime_release",
        "setSchedulingExceptionHandler$work_runtime_release",
        "taskExecutor",
        "getTaskExecutor$work_runtime_release",
        "setTaskExecutor$work_runtime_release",
        "tracer",
        "Landroidx/work/Tracer;",
        "getTracer$work_runtime_release",
        "()Landroidx/work/Tracer;",
        "setTracer$work_runtime_release",
        "(Landroidx/work/Tracer;)V",
        "workerContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getWorkerContext$work_runtime_release",
        "()Lkotlin/coroutines/CoroutineContext;",
        "setWorkerContext$work_runtime_release",
        "(Lkotlin/coroutines/CoroutineContext;)V",
        "workerExecutionExceptionHandler",
        "Landroidx/work/WorkerExceptionInfo;",
        "getWorkerExecutionExceptionHandler$work_runtime_release",
        "setWorkerExecutionExceptionHandler$work_runtime_release",
        "workerFactory",
        "Landroidx/work/WorkerFactory;",
        "getWorkerFactory$work_runtime_release",
        "()Landroidx/work/WorkerFactory;",
        "setWorkerFactory$work_runtime_release",
        "(Landroidx/work/WorkerFactory;)V",
        "workerInitializationExceptionHandler",
        "getWorkerInitializationExceptionHandler$work_runtime_release",
        "setWorkerInitializationExceptionHandler$work_runtime_release",
        "build",
        "setClock",
        "setContentUriTriggerWorkersLimit",
        "setDefaultProcessName",
        "processName",
        "setExecutor",
        "setInitializationExceptionHandler",
        "exceptionHandler",
        "setInputMergerFactory",
        "setJobSchedulerJobIdRange",
        "setMarkingJobsAsImportantWhileForeground",
        "markAsImportant",
        "setMaxSchedulerLimit",
        "setMinimumLoggingLevel",
        "setRunnableScheduler",
        "setSchedulingExceptionHandler",
        "setTaskExecutor",
        "setTracer",
        "setWorkerCoroutineContext",
        "context",
        "setWorkerExecutionExceptionHandler",
        "workerExceptionHandler",
        "setWorkerFactory",
        "setWorkerInitializationExceptionHandler",
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


# instance fields
.field private clock:Landroidx/work/Clock;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private contentUriTriggerWorkersLimit:I

.field private defaultProcessName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private initializationExceptionHandler:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private inputMergerFactory:Landroidx/work/InputMergerFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loggingLevel:I

.field private markJobsAsImportantWhileForeground:Z

.field private maxJobSchedulerId:I

.field private maxSchedulerLimit:I

.field private minJobSchedulerId:I

.field private runnableScheduler:Landroidx/work/RunnableScheduler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private schedulingExceptionHandler:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private taskExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tracer:Landroidx/work/Tracer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private workerContext:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private workerExecutionExceptionHandler:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/work/WorkerExceptionInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private workerFactory:Landroidx/work/WorkerFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private workerInitializationExceptionHandler:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/work/WorkerExceptionInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    const/16 v0, 0x8

    .line 5
    iput v0, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/work/Configuration$Builder;->markJobsAsImportantWhileForeground:Z

    return-void
.end method

.method public constructor <init>(Landroidx/work/Configuration;)V
    .locals 1
    .param p1    # Landroidx/work/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 8
    iput v0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    const v0, 0x7fffffff

    .line 9
    iput v0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    const/16 v0, 0x14

    .line 10
    iput v0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    const/16 v0, 0x8

    .line 11
    iput v0, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroidx/work/Configuration$Builder;->markJobsAsImportantWhileForeground:Z

    .line 13
    invoke-virtual {p1}, Landroidx/work/Configuration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->executor:Ljava/util/concurrent/Executor;

    .line 14
    invoke-virtual {p1}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Landroidx/work/WorkerFactory;

    .line 15
    invoke-virtual {p1}, Landroidx/work/Configuration;->getInputMergerFactory()Landroidx/work/InputMergerFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 16
    invoke-virtual {p1}, Landroidx/work/Configuration;->getTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 17
    invoke-virtual {p1}, Landroidx/work/Configuration;->getClock()Landroidx/work/Clock;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->clock:Landroidx/work/Clock;

    .line 18
    invoke-virtual {p1}, Landroidx/work/Configuration;->getMinimumLoggingLevel()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    .line 19
    invoke-virtual {p1}, Landroidx/work/Configuration;->getMinJobSchedulerId()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->minJobSchedulerId:I

    .line 20
    invoke-virtual {p1}, Landroidx/work/Configuration;->getMaxJobSchedulerId()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    .line 21
    invoke-virtual {p1}, Landroidx/work/Configuration;->getMaxSchedulerLimit()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    .line 22
    invoke-virtual {p1}, Landroidx/work/Configuration;->getRunnableScheduler()Landroidx/work/RunnableScheduler;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->runnableScheduler:Landroidx/work/RunnableScheduler;

    .line 23
    invoke-virtual {p1}, Landroidx/work/Configuration;->getInitializationExceptionHandler()Landroidx/core/util/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 24
    invoke-virtual {p1}, Landroidx/work/Configuration;->getSchedulingExceptionHandler()Landroidx/core/util/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    .line 25
    invoke-virtual {p1}, Landroidx/work/Configuration;->getWorkerInitializationExceptionHandler()Landroidx/core/util/Consumer;

    move-result-object v0

    .line 26
    iput-object v0, p0, Landroidx/work/Configuration$Builder;->workerInitializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 27
    invoke-virtual {p1}, Landroidx/work/Configuration;->getWorkerExecutionExceptionHandler()Landroidx/core/util/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->workerExecutionExceptionHandler:Landroidx/core/util/Consumer;

    .line 28
    invoke-virtual {p1}, Landroidx/work/Configuration;->getDefaultProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->defaultProcessName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroidx/work/Configuration;->getContentUriTriggerWorkersLimit()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    .line 30
    invoke-virtual {p1}, Landroidx/work/Configuration;->isMarkingJobsAsImportantWhileForeground()Z

    move-result v0

    .line 31
    iput-boolean v0, p0, Landroidx/work/Configuration$Builder;->markJobsAsImportantWhileForeground:Z

    .line 32
    invoke-virtual {p1}, Landroidx/work/Configuration;->getTracer()Landroidx/work/Tracer;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->tracer:Landroidx/work/Tracer;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/work/Configuration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/Configuration;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getClock$work_runtime_release()Landroidx/work/Clock;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->clock:Landroidx/work/Clock;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContentUriTriggerWorkersLimit$work_runtime_release()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDefaultProcessName$work_runtime_release()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->defaultProcessName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExecutor$work_runtime_release()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInitializationExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInputMergerFactory$work_runtime_release()Landroidx/work/InputMergerFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLoggingLevel$work_runtime_release()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMarkJobsAsImportantWhileForeground$work_runtime_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/Configuration$Builder;->markJobsAsImportantWhileForeground:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxJobSchedulerId$work_runtime_release()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxSchedulerLimit$work_runtime_release()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMinJobSchedulerId$work_runtime_release()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/Configuration$Builder;->minJobSchedulerId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRunnableScheduler$work_runtime_release()Landroidx/work/RunnableScheduler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->runnableScheduler:Landroidx/work/RunnableScheduler;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSchedulingExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskExecutor$work_runtime_release()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTracer$work_runtime_release()Landroidx/work/Tracer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->tracer:Landroidx/work/Tracer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWorkerContext$work_runtime_release()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->workerContext:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWorkerExecutionExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Landroidx/work/WorkerExceptionInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->workerExecutionExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWorkerFactory$work_runtime_release()Landroidx/work/WorkerFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Landroidx/work/WorkerFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWorkerInitializationExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Landroidx/work/WorkerExceptionInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->workerInitializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setClock(Landroidx/work/Clock;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Landroidx/work/Clock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "clock"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->clock:Landroidx/work/Clock;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setClock$work_runtime_release(Landroidx/work/Clock;)V
    .locals 0
    .param p1    # Landroidx/work/Clock;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->clock:Landroidx/work/Clock;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentUriTriggerWorkersLimit(I)Landroidx/work/Configuration$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iput p1, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    .line 7
    .line 8
    return-object p0
.end method

.method public final setContentUriTriggerWorkersLimit$work_runtime_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDefaultProcessName(Ljava/lang/String;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "processName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->defaultProcessName:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setDefaultProcessName$work_runtime_release(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->defaultProcessName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "executor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->executor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setExecutor$work_runtime_release(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-void
.end method

.method public final setInitializationExceptionHandler(Landroidx/core/util/Consumer;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroidx/work/Configuration$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "exceptionHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setInitializationExceptionHandler$work_runtime_release(Landroidx/core/util/Consumer;)V
    .locals 0
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-void
.end method

.method public final setInputMergerFactory(Landroidx/work/InputMergerFactory;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Landroidx/work/InputMergerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inputMergerFactory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setInputMergerFactory$work_runtime_release(Landroidx/work/InputMergerFactory;)V
    .locals 0
    .param p1    # Landroidx/work/InputMergerFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 2
    .line 3
    return-void
.end method

.method public final setJobSchedulerJobIdRange(II)Landroidx/work/Configuration$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iput p1, p0, Landroidx/work/Configuration$Builder;->minJobSchedulerId:I

    .line 8
    .line 9
    iput p2, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "WorkManager needs a range of at least 1000 job ids."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final setLoggingLevel$work_runtime_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMarkJobsAsImportantWhileForeground$work_runtime_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/work/Configuration$Builder;->markJobsAsImportantWhileForeground:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMarkingJobsAsImportantWhileForeground(Z)Landroidx/work/Configuration$Builder;
    .locals 0
    .annotation build Landroidx/work/ExperimentalConfigurationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/work/Configuration$Builder;->markJobsAsImportantWhileForeground:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMaxJobSchedulerId$work_runtime_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMaxSchedulerLimit(I)Landroidx/work/Configuration$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x32

    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "WorkManager needs to be able to schedule at least 20 jobs in JobScheduler."

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final setMaxSchedulerLimit$work_runtime_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMinJobSchedulerId$work_runtime_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/Configuration$Builder;->minJobSchedulerId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setRunnableScheduler(Landroidx/work/RunnableScheduler;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Landroidx/work/RunnableScheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "runnableScheduler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->runnableScheduler:Landroidx/work/RunnableScheduler;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setRunnableScheduler$work_runtime_release(Landroidx/work/RunnableScheduler;)V
    .locals 0
    .param p1    # Landroidx/work/RunnableScheduler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->runnableScheduler:Landroidx/work/RunnableScheduler;

    .line 2
    .line 3
    return-void
.end method

.method public final setSchedulingExceptionHandler(Landroidx/core/util/Consumer;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroidx/work/Configuration$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "schedulingExceptionHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setSchedulingExceptionHandler$work_runtime_release(Landroidx/core/util/Consumer;)V
    .locals 0
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-void
.end method

.method public final setTaskExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "taskExecutor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setTaskExecutor$work_runtime_release(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-void
.end method

.method public final setTracer(Landroidx/work/Tracer;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Landroidx/work/Tracer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "tracer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->tracer:Landroidx/work/Tracer;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setTracer$work_runtime_release(Landroidx/work/Tracer;)V
    .locals 0
    .param p1    # Landroidx/work/Tracer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->tracer:Landroidx/work/Tracer;

    .line 2
    .line 3
    return-void
.end method

.method public final setWorkerContext$work_runtime_release(Lkotlin/coroutines/CoroutineContext;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerContext:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-void
.end method

.method public final setWorkerCoroutineContext(Lkotlin/coroutines/CoroutineContext;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerContext:Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setWorkerExecutionExceptionHandler(Landroidx/core/util/Consumer;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/work/WorkerExceptionInfo;",
            ">;)",
            "Landroidx/work/Configuration$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "workerExceptionHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerExecutionExceptionHandler:Landroidx/core/util/Consumer;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setWorkerExecutionExceptionHandler$work_runtime_release(Landroidx/core/util/Consumer;)V
    .locals 0
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/work/WorkerExceptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerExecutionExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-void
.end method

.method public final setWorkerFactory(Landroidx/work/WorkerFactory;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Landroidx/work/WorkerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "workerFactory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerFactory:Landroidx/work/WorkerFactory;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setWorkerFactory$work_runtime_release(Landroidx/work/WorkerFactory;)V
    .locals 0
    .param p1    # Landroidx/work/WorkerFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerFactory:Landroidx/work/WorkerFactory;

    .line 2
    .line 3
    return-void
.end method

.method public final setWorkerInitializationExceptionHandler(Landroidx/core/util/Consumer;)Landroidx/work/Configuration$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/work/WorkerExceptionInfo;",
            ">;)",
            "Landroidx/work/Configuration$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "workerExceptionHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerInitializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setWorkerInitializationExceptionHandler$work_runtime_release(Landroidx/core/util/Consumer;)V
    .locals 0
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/work/WorkerExceptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerInitializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-void
.end method
