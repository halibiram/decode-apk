.class public final Landroidx/work/impl/WorkerWrapper;
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
        Landroidx/work/impl/WorkerWrapper$Builder;,
        Landroidx/work/impl/WorkerWrapper$Resolution;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001:\u0002>?B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010(\u001a\u00020\u00152\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0012\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0002J\u0010\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0007J\u0010\u00101\u001a\u00020.2\u0006\u0010#\u001a\u00020\u0015H\u0002J\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020*03J\u0010\u00104\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u00105\u001a\u00020*2\u0006\u0010/\u001a\u000200H\u0002J\u0008\u00106\u001a\u00020*H\u0002J\u0010\u00107\u001a\u00020*2\u0006\u0010/\u001a\u000200H\u0002J\u000e\u00108\u001a\u000209H\u0082@\u00a2\u0006\u0002\u0010:J\u0010\u0010;\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0007J\u0010\u0010<\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0002J\u0008\u0010=\u001a\u00020*H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Landroidx/work/impl/WorkerWrapper;",
        "",
        "builder",
        "Landroidx/work/impl/WorkerWrapper$Builder;",
        "(Landroidx/work/impl/WorkerWrapper$Builder;)V",
        "appContext",
        "Landroid/content/Context;",
        "builderWorker",
        "Landroidx/work/ListenableWorker;",
        "clock",
        "Landroidx/work/Clock;",
        "configuration",
        "Landroidx/work/Configuration;",
        "dependencyDao",
        "Landroidx/work/impl/model/DependencyDao;",
        "foregroundProcessor",
        "Landroidx/work/impl/foreground/ForegroundProcessor;",
        "runtimeExtras",
        "Landroidx/work/WorkerParameters$RuntimeExtras;",
        "tags",
        "",
        "",
        "workDatabase",
        "Landroidx/work/impl/WorkDatabase;",
        "workDescription",
        "workGenerationalId",
        "Landroidx/work/impl/model/WorkGenerationalId;",
        "getWorkGenerationalId",
        "()Landroidx/work/impl/model/WorkGenerationalId;",
        "workSpec",
        "Landroidx/work/impl/model/WorkSpec;",
        "getWorkSpec",
        "()Landroidx/work/impl/model/WorkSpec;",
        "workSpecDao",
        "Landroidx/work/impl/model/WorkSpecDao;",
        "workSpecId",
        "workTaskExecutor",
        "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;",
        "workerJob",
        "Lkotlinx/coroutines/CompletableJob;",
        "createWorkDescription",
        "handleResult",
        "",
        "result",
        "Landroidx/work/ListenableWorker$Result;",
        "interrupt",
        "",
        "stopReason",
        "",
        "iterativelyFailWorkAndDependents",
        "launch",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "onWorkFinished",
        "reschedule",
        "resetPeriodic",
        "resetWorkerStatus",
        "runWorker",
        "Landroidx/work/impl/WorkerWrapper$Resolution;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setFailed",
        "setSucceeded",
        "trySetRunning",
        "Builder",
        "Resolution",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWorkerWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkerWrapper.kt\nandroidx/work/impl/WorkerWrapper\n+ 2 LoggerExt.kt\nandroidx/work/LoggerExtKt\n*L\n1#1,607:1\n29#2:608\n29#2:609\n27#2:610\n32#2:611\n19#2:612\n19#2:613\n24#2:614\n24#2:615\n24#2:616\n24#2:617\n19#2:618\n*S KotlinDebug\n*F\n+ 1 WorkerWrapper.kt\nandroidx/work/impl/WorkerWrapper\n*L\n206#1:608\n240#1:609\n315#1:610\n318#1:611\n354#1:612\n367#1:613\n374#1:614\n381#1:615\n384#1:616\n477#1:617\n151#1:618\n*E\n"
    }
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final builderWorker:Landroidx/work/ListenableWorker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final clock:Landroidx/work/Clock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configuration:Landroidx/work/Configuration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dependencyDao:Landroidx/work/impl/model/DependencyDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final foregroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workDatabase:Landroidx/work/impl/WorkDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workSpec:Landroidx/work/impl/model/WorkSpec;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workSpecDao:Landroidx/work/impl/model/WorkSpecDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workSpecId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workerJob:Lkotlinx/coroutines/CompletableJob;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkerWrapper$Builder;)V
    .locals 2
    .param p1    # Landroidx/work/impl/WorkerWrapper$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getAppContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getRuntimeExtras()Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getWorker()Landroidx/work/ListenableWorker;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->builderWorker:Landroidx/work/ListenableWorker;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getConfiguration()Landroidx/work/Configuration;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/work/Configuration;->getClock()Landroidx/work/Clock;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/Clock;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getForegroundProcessor()Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getTags()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->tags:Ljava/util/List;

    .line 84
    .line 85
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->createWorkDescription(Ljava/util/List;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    const/4 v0, 0x1

    .line 93
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workerJob:Lkotlinx/coroutines/CompletableJob;

    .line 98
    .line 99
    return-void
.end method

.method public static final synthetic access$getAppContext$p(Landroidx/work/impl/WorkerWrapper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getConfiguration$p(Landroidx/work/impl/WorkerWrapper;)Landroidx/work/Configuration;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWorkDatabase$p(Landroidx/work/impl/WorkerWrapper;)Landroidx/work/impl/WorkDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWorkTaskExecutor$p(Landroidx/work/impl/WorkerWrapper;)Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWorkerJob$p(Landroidx/work/impl/WorkerWrapper;)Lkotlinx/coroutines/CompletableJob;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workerJob:Lkotlinx/coroutines/CompletableJob;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$onWorkFinished(Landroidx/work/impl/WorkerWrapper;Landroidx/work/ListenableWorker$Result;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->onWorkFinished(Landroidx/work/ListenableWorker$Result;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$resetWorkerStatus(Landroidx/work/impl/WorkerWrapper;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->resetWorkerStatus(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$runWorker(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->runWorker(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final createWorkDescription(Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Work [ id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", tags={ "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-object v2, p1

    .line 19
    check-cast v2, Ljava/lang/Iterable;

    .line 20
    .line 21
    const/16 v9, 0x3e

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    const-string v3, ","

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, " } ]"

    .line 36
    .line 37
    invoke-static {v0, p1, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method private final handleResult(Landroidx/work/ListenableWorker$Result;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/work/ListenableWorker$Result$Success;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "Worker result SUCCESS for "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resetPeriodic()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->setSucceeded(Landroidx/work/ListenableWorker$Result;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    instance-of v0, p1, Landroidx/work/ListenableWorker$Result$Retry;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "Worker result RETRY for "

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, p1, v1}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/16 p1, -0x100

    .line 82
    .line 83
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->reschedule(I)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v3, "Worker result FAILURE for "

    .line 99
    .line 100
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resetPeriodic()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    if-nez p1, :cond_4

    .line 129
    .line 130
    new-instance p1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 131
    .line 132
    invoke-direct {p1}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkerWrapper;->setFailed(Landroidx/work/ListenableWorker$Result;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    :goto_0
    return p1
.end method

.method private final iterativelyFailWorkAndDependents(Ljava/lang/String;)V
    .locals 3

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    move-object v0, p1

    .line 10
    check-cast v0, Ljava/util/Collection;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, L됴뒛땣딽땣딽뎨되땍됫딞듔땍딃땔뎬땍뒐도둑돰돛됫됫땡딐둑딹돷듨뒷득뒼됐둔땜뒋땔딠디돛돠땹땩됴딌뒋땳돵딎돶뒨땬뎽듽돶땅뎹돠땔땐두뒻드땱딄돸땮뒛땤뒈땠딽땤된딀딹뒵뒾뎠돛뎬됐뎨돛딁뎸땨둥딃되뒘뒨땰됴듼땬땝땻땭뒷둡돠딠뒈땠됫뎡땋땹땠땳땮돰뒤땠땥뎰돷돶뒈뒐뒻땱딄둔뒤땦땰땠;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 31
    .line 32
    if-eq v1, v2, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 35
    .line 36
    sget-object v2, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 37
    .line 38
    invoke-interface {v1, v2, v0}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 42
    .line 43
    invoke-interface {v1, v0}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/Collection;

    .line 48
    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method private final onWorkFinished(Landroidx/work/ListenableWorker$Result;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/impl/model/WorkProgressDao;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkProgressDao;->delete(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v2, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 25
    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->handleResult(Landroidx/work/ListenableWorker$Result;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    const/16 p1, -0x200

    .line 40
    .line 41
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->reschedule(I)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :cond_2
    :goto_0
    return v1
.end method

.method private final reschedule(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 2
    .line 3
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/Clock;

    .line 15
    .line 16
    invoke-interface {v2}, Landroidx/work/Clock;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueueTime(Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 39
    .line 40
    const-wide/16 v2, -0x1

    .line 41
    .line 42
    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao;->setStopReason(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    return p1
.end method

.method private final resetPeriodic()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/Clock;

    .line 6
    .line 7
    invoke-interface {v2}, Landroidx/work/Clock;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueueTime(Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 15
    .line 16
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->incrementPeriodCount(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 53
    .line 54
    const-wide/16 v2, -0x1

    .line 55
    .line 56
    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    return v0
.end method

.method private final resetWorkerStatus(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, " is "

    .line 10
    .line 11
    const-string v2, "Status for "

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, "; not doing any work and rescheduling for later execution"

    .line 46
    .line 47
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v4, v3, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 58
    .line 59
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 67
    .line 68
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {v0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao;->setStopReason(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 74
    .line 75
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 76
    .line 77
    const-wide/16 v1, -0x1

    .line 78
    .line 79
    invoke-interface {p1, v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, " ; not doing any work"

    .line 109
    .line 110
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v3, p1, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    :goto_0
    return p1
.end method

.method private final runWorker(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/impl/WorkerWrapper$Resolution;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 11
    .line 12
    iget v3, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Landroidx/work/impl/WorkerWrapper$runWorker$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, 0x0

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    if-ne v4, v5, :cond_1

    .line 42
    .line 43
    iget-object v3, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Landroidx/work/WorkerParameters;

    .line 46
    .line 47
    iget-object v2, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Landroidx/work/impl/WorkerWrapper;

    .line 50
    .line 51
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/work/Configuration;->getTracer()Landroidx/work/Tracer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroidx/work/Tracer;->isEnabled()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 84
    .line 85
    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->getTraceTag()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 94
    .line 95
    invoke-virtual {v7}, Landroidx/work/Configuration;->getTracer()Landroidx/work/Tracer;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 100
    .line 101
    invoke-virtual {v8}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    invoke-interface {v7, v4, v8}, Landroidx/work/Tracer;->beginAsyncSection(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 109
    .line 110
    new-instance v8, L땳땫뒀땲딟땵땐두땮뒼뒨땥땨딟둔땻뎰돼뒻땔땤두뒵땻땠땹땡딞돶돠딤딨딽듔딄뎻땱딄돛둥땰도둠땠땪땐땰뎽딜됨둔땳딄딌둥둣땀딞둡땨둡딝땯뒨두뒐둥뒼땔딐뒛땳딸딐둬땯됨딅뎨되뒙땮뎻들땟돝됐돠돠뎽땔디돷딜딹돤뎽뎨돼듟딃됐듔돳뒻땝땋뒈돶된돰땁딹뎸둠돝됐듨땲드뒐두돶돴듰돶든돸듬뎨;

    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    invoke-direct {v8, v1, v9}, L땳땫뒀땲딟땵땐두땮뒼뒨땥땨딟둔땻뎰돼뒻땔땤두뒵땻땠땹땡딞돶돠딤딨딽듔딄뎻땱딄돛둥땰도둠땠땪땐땰뎽딜됨둔땳딄딌둥둣땀딞둡땨둡딝땯뒨두뒐둥뒼땔딐뒛땳딸딐둬땯됨딅뎨되뒙땮뎻들땟돝됐돠돠뎽땔디돷딜딹돤뎽뎨돼듟딃됐듔돳뒻땝땋뒈돶된돰땁딹뎸둠돝됐듨땲드뒐두돶돴듰돶든돸듬뎨;-><init>(Landroidx/work/impl/WorkerWrapper;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v8}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    check-cast v7, Ljava/lang/Boolean;

    .line 121
    .line 122
    const-string v8, "shouldExit"

    .line 123
    .line 124
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    const/4 v8, 0x0

    .line 132
    if-eqz v7, :cond_4

    .line 133
    .line 134
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 135
    .line 136
    invoke-direct {v0, v8, v5, v6}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    .line 138
    .line 139
    return-object v0

    .line 140
    :cond_4
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 141
    .line 142
    invoke-virtual {v7}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_5

    .line 147
    .line 148
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 149
    .line 150
    iget-object v7, v7, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 151
    .line 152
    :goto_1
    move-object v11, v7

    .line 153
    goto :goto_2

    .line 154
    :cond_5
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 155
    .line 156
    invoke-virtual {v7}, Landroidx/work/Configuration;->getInputMergerFactory()Landroidx/work/InputMergerFactory;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 161
    .line 162
    iget-object v9, v9, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v7, v9}, Landroidx/work/InputMergerFactory;->createInputMergerWithDefaultFallback(Ljava/lang/String;)Landroidx/work/InputMerger;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    if-nez v7, :cond_6

    .line 169
    .line 170
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v4, "Could not create Input Merger "

    .line 181
    .line 182
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 186
    .line 187
    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v2, v0, v3}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 200
    .line 201
    invoke-direct {v0, v6, v5, v6}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>(Landroidx/work/ListenableWorker$Result;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 202
    .line 203
    .line 204
    return-object v0

    .line 205
    :cond_6
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 206
    .line 207
    iget-object v9, v9, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 208
    .line 209
    invoke-static {v9}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    check-cast v9, Ljava/util/Collection;

    .line 214
    .line 215
    iget-object v10, v1, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 216
    .line 217
    iget-object v11, v1, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 218
    .line 219
    invoke-interface {v10, v11}, Landroidx/work/impl/model/WorkSpecDao;->getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    check-cast v10, Ljava/lang/Iterable;

    .line 224
    .line 225
    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    invoke-virtual {v7, v9}, Landroidx/work/InputMerger;->merge(Ljava/util/List;)Landroidx/work/Data;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    goto :goto_1

    .line 234
    :goto_2
    new-instance v7, Landroidx/work/WorkerParameters;

    .line 235
    .line 236
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->tags:Ljava/util/List;

    .line 243
    .line 244
    move-object v12, v9

    .line 245
    check-cast v12, Ljava/util/Collection;

    .line 246
    .line 247
    iget-object v13, v1, Landroidx/work/impl/WorkerWrapper;->runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 248
    .line 249
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 250
    .line 251
    iget v14, v9, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 252
    .line 253
    invoke-virtual {v9}, Landroidx/work/impl/model/WorkSpec;->getGeneration()I

    .line 254
    .line 255
    .line 256
    move-result v15

    .line 257
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 258
    .line 259
    invoke-virtual {v9}, Landroidx/work/Configuration;->getExecutor()Ljava/util/concurrent/Executor;

    .line 260
    .line 261
    .line 262
    move-result-object v16

    .line 263
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 264
    .line 265
    invoke-virtual {v9}, Landroidx/work/Configuration;->getWorkerCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 266
    .line 267
    .line 268
    move-result-object v17

    .line 269
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 270
    .line 271
    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 272
    .line 273
    invoke-virtual {v8}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/WorkerFactory;

    .line 274
    .line 275
    .line 276
    move-result-object v19

    .line 277
    new-instance v8, Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 278
    .line 279
    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 280
    .line 281
    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 282
    .line 283
    invoke-direct {v8, v5, v6}, Landroidx/work/impl/utils/WorkProgressUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 284
    .line 285
    .line 286
    new-instance v5, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 287
    .line 288
    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 289
    .line 290
    move-object/from16 v18, v9

    .line 291
    .line 292
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 293
    .line 294
    move-object/from16 v22, v3

    .line 295
    .line 296
    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 297
    .line 298
    invoke-direct {v5, v6, v9, v3}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 299
    .line 300
    .line 301
    move-object/from16 v3, v18

    .line 302
    .line 303
    move-object v9, v7

    .line 304
    move-object/from16 v20, v8

    .line 305
    .line 306
    move-object/from16 v21, v5

    .line 307
    .line 308
    invoke-direct/range {v9 .. v21}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/Data;Ljava/util/Collection;Landroidx/work/WorkerParameters$RuntimeExtras;IILjava/util/concurrent/Executor;Lkotlin/coroutines/CoroutineContext;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/WorkerFactory;Landroidx/work/ProgressUpdater;Landroidx/work/ForegroundUpdater;)V

    .line 309
    .line 310
    .line 311
    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->builderWorker:Landroidx/work/ListenableWorker;

    .line 312
    .line 313
    if-nez v3, :cond_8

    .line 314
    .line 315
    :try_start_1
    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 316
    .line 317
    invoke-virtual {v3}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/WorkerFactory;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    .line 322
    .line 323
    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 324
    .line 325
    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v3, v5, v6, v7}, Landroidx/work/WorkerFactory;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    .line 328
    .line 329
    .line 330
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    goto :goto_3

    .line 332
    :catchall_1
    move-exception v0

    .line 333
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v5, "Could not create Worker "

    .line 344
    .line 345
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 349
    .line 350
    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-virtual {v3, v2, v4}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 363
    .line 364
    invoke-virtual {v2}, Landroidx/work/Configuration;->getWorkerInitializationExceptionHandler()Landroidx/core/util/Consumer;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    if-eqz v2, :cond_7

    .line 369
    .line 370
    new-instance v3, Landroidx/work/WorkerExceptionInfo;

    .line 371
    .line 372
    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 373
    .line 374
    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 375
    .line 376
    invoke-direct {v3, v4, v7, v0}, Landroidx/work/WorkerExceptionInfo;-><init>(Ljava/lang/String;Landroidx/work/WorkerParameters;Ljava/lang/Throwable;)V

    .line 377
    .line 378
    .line 379
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-static {v2, v3, v0}, Landroidx/work/impl/utils/WorkerExceptionUtilsKt;->safeAccept(Landroidx/core/util/Consumer;Landroidx/work/WorkerExceptionInfo;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    :cond_7
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 387
    .line 388
    const/4 v2, 0x1

    .line 389
    const/4 v3, 0x0

    .line 390
    invoke-direct {v0, v3, v2, v3}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>(Landroidx/work/ListenableWorker$Result;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 391
    .line 392
    .line 393
    return-object v0

    .line 394
    :cond_8
    :goto_3
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 395
    .line 396
    .line 397
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    sget-object v6, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    .line 402
    .line 403
    invoke-interface {v5, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    check-cast v5, Lkotlinx/coroutines/Job;

    .line 411
    .line 412
    new-instance v6, Landroidx/work/impl/WorkerWrapper$runWorker$2;

    .line 413
    .line 414
    invoke-direct {v6, v3, v0, v4, v1}, Landroidx/work/impl/WorkerWrapper$runWorker$2;-><init>(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;)V

    .line 415
    .line 416
    .line 417
    invoke-interface {v5, v6}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 418
    .line 419
    .line 420
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/WorkerWrapper;->trySetRunning()Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-nez v0, :cond_9

    .line 425
    .line 426
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 427
    .line 428
    const/4 v4, 0x1

    .line 429
    const/4 v6, 0x0

    .line 430
    const/4 v8, 0x0

    .line 431
    invoke-direct {v0, v8, v4, v6}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 432
    .line 433
    .line 434
    return-object v0

    .line 435
    :cond_9
    const/4 v4, 0x1

    .line 436
    const/4 v6, 0x0

    .line 437
    const/4 v8, 0x0

    .line 438
    invoke-interface {v5}, Lkotlinx/coroutines/Job;->isCancelled()Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_a

    .line 443
    .line 444
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 445
    .line 446
    invoke-direct {v0, v8, v4, v6}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 447
    .line 448
    .line 449
    return-object v0

    .line 450
    :cond_a
    invoke-virtual {v7}, Landroidx/work/WorkerParameters;->getForegroundUpdater()Landroidx/work/ForegroundUpdater;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    const-string v4, "params.foregroundUpdater"

    .line 455
    .line 456
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 460
    .line 461
    invoke-interface {v4}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    const-string v5, "workTaskExecutor.getMainThreadExecutor()"

    .line 466
    .line 467
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-static {v4}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    :try_start_2
    new-instance v5, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;

    .line 475
    .line 476
    const/4 v6, 0x0

    .line 477
    invoke-direct {v5, v1, v3, v0, v6}, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;-><init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Lkotlin/coroutines/Continuation;)V

    .line 478
    .line 479
    .line 480
    iput-object v1, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$0:Ljava/lang/Object;

    .line 481
    .line 482
    iput-object v7, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$1:Ljava/lang/Object;

    .line 483
    .line 484
    const/4 v3, 0x1

    .line 485
    iput v3, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 486
    .line 487
    invoke-static {v4, v5, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 491
    move-object/from16 v2, v22

    .line 492
    .line 493
    if-ne v0, v2, :cond_b

    .line 494
    .line 495
    return-object v2

    .line 496
    :cond_b
    move-object v2, v1

    .line 497
    move-object v3, v7

    .line 498
    :goto_4
    :try_start_3
    check-cast v0, Landroidx/work/ListenableWorker$Result;

    .line 499
    .line 500
    new-instance v4, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    .line 501
    .line 502
    const-string v5, "result"

    .line 503
    .line 504
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-direct {v4, v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;-><init>(Landroidx/work/ListenableWorker$Result;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 508
    .line 509
    .line 510
    return-object v4

    .line 511
    :catchall_2
    move-exception v0

    .line 512
    move-object v2, v1

    .line 513
    move-object v3, v7

    .line 514
    goto :goto_5

    .line 515
    :catch_1
    move-exception v0

    .line 516
    move-object v2, v1

    .line 517
    goto :goto_6

    .line 518
    :goto_5
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    new-instance v6, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .line 530
    .line 531
    iget-object v7, v2, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 532
    .line 533
    const-string v8, " failed because it threw an exception/error"

    .line 534
    .line 535
    invoke-static {v6, v7, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    invoke-virtual {v5, v4, v6, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    .line 541
    .line 542
    iget-object v4, v2, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 543
    .line 544
    invoke-virtual {v4}, Landroidx/work/Configuration;->getWorkerExecutionExceptionHandler()Landroidx/core/util/Consumer;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    if-eqz v4, :cond_c

    .line 549
    .line 550
    new-instance v5, Landroidx/work/WorkerExceptionInfo;

    .line 551
    .line 552
    iget-object v2, v2, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 553
    .line 554
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 555
    .line 556
    invoke-direct {v5, v2, v3, v0}, Landroidx/work/WorkerExceptionInfo;-><init>(Ljava/lang/String;Landroidx/work/WorkerParameters;Ljava/lang/Throwable;)V

    .line 557
    .line 558
    .line 559
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-static {v4, v5, v0}, Landroidx/work/impl/utils/WorkerExceptionUtilsKt;->safeAccept(Landroidx/core/util/Consumer;Landroidx/work/WorkerExceptionInfo;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    :cond_c
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 567
    .line 568
    const/4 v2, 0x1

    .line 569
    const/4 v3, 0x0

    .line 570
    invoke-direct {v0, v3, v2, v3}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>(Landroidx/work/ListenableWorker$Result;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 571
    .line 572
    .line 573
    return-object v0

    .line 574
    :goto_6
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    new-instance v5, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .line 586
    .line 587
    iget-object v2, v2, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 588
    .line 589
    const-string v6, " was cancelled"

    .line 590
    .line 591
    invoke-static {v5, v2, v6}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    invoke-virtual {v4, v3, v2, v0}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    .line 597
    .line 598
    throw v0
.end method

.method private static final runWorker$lambda$1(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 4
    .line 5
    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, " is not in ENQUEUED state. Nothing more to do"

    .line 30
    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v1, v0, p0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_0
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/Clock;

    .line 59
    .line 60
    invoke-interface {v0}, Landroidx/work/Clock;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    cmp-long v4, v0, v2

    .line 71
    .line 72
    if-gez v4, :cond_2

    .line 73
    .line 74
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v3, "Delaying execution for "

    .line 85
    .line 86
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 90
    .line 91
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p0, " because it is being executed before schedule."

    .line 97
    .line 98
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v0, v1, p0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 112
    .line 113
    return-object p0
.end method

.method private final setSucceeded(Landroidx/work/ListenableWorker$Result;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 2
    .line 3
    sget-object v1, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v0, "null cannot be cast to non-null type androidx.work.ListenableWorker.Result.Success"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Landroidx/work/ListenableWorker$Result$Success;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/work/ListenableWorker$Result$Success;->getOutputData()Landroidx/work/Data;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "success.outputData"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/Clock;

    .line 34
    .line 35
    invoke-interface {p1}, Landroidx/work/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {p1, v2}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 64
    .line 65
    invoke-interface {v3, v2}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    sget-object v4, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    .line 70
    .line 71
    if-ne v3, v4, :cond_0

    .line 72
    .line 73
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 74
    .line 75
    invoke-interface {v3, v2}, Landroidx/work/impl/model/DependencyDao;->hasCompletedAllPrerequisites(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_0

    .line 80
    .line 81
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v6, "Setting status to enqueued for "

    .line 92
    .line 93
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v4, v3, v5}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 107
    .line 108
    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 109
    .line 110
    invoke-interface {v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 114
    .line 115
    invoke-interface {v3, v2, v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueueTime(Ljava/lang/String;J)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    const/4 p1, 0x0

    .line 120
    return p1
.end method

.method private final trySetRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    new-instance v1, L땳땫뒀땲딟땵땐두땮뒼뒨땥땨딟둔땻뎰돼뒻땔땤두뒵땻땠땹땡딞돶돠딤딨딽듔딄뎻땱딄돛둥땰도둠땠땪땐땰뎽딜됨둔땳딄딌둥둣땀딞둡땨둡딝땯뒨두뒐둥뒼땔딐뒛땳딸딐둬땯됨딅뎨되뒙땮뎻들땟돝됐돠돠뎽땔디돷딜딹돤뎽뎨돼듟딃됐듔돳뒻땝땋뒈돶된돰땁딹뎸둠돝됐듨땲드뒐두돶돴듰돶든돸듬뎨;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, L땳땫뒀땲딟땵땐두땮뒼뒨땥땨딟둔땻뎰돼뒻땔땤두뒵땻땠땹땡딞돶돠딤딨딽듔딄뎻땱딄돛둥땰도둠땠땪땐땰뎽딜됨둔땳딄딌둥둣땀딞둡땨둡딝땯뒨두뒐둥뒼땔딐뒛땳딸딐둬땯됨딅뎨되뒙땮뎻들땟돝됐돠돠뎽땔디돷딜딹돤뎽뎨돼듟딃됐듔돳뒻땝땋뒈돶된돰땁딹뎸둠돝됐듨땲드뒐두돶돴듰돶든돸듬뎨;-><init>(Landroidx/work/impl/WorkerWrapper;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "workDatabase.runInTransa\u2026e\n            }\n        )"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method private static final trySetRunning$lambda$11(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 14
    .line 15
    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 32
    .line 33
    const/16 v1, -0x100

    .line 34
    .line 35
    invoke-interface {v0, p0, v1}, Landroidx/work/impl/model/WorkSpecDao;->setStopReason(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/impl/WorkerWrapper;->trySetRunning$lambda$11(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/impl/WorkerWrapper;->runWorker$lambda$1(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getWorkGenerationalId()Landroidx/work/impl/model/WorkGenerationalId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getWorkSpec()Landroidx/work/impl/model/WorkSpec;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public final interrupt(I)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workerJob:Lkotlinx/coroutines/CompletableJob;

    .line 2
    .line 3
    new-instance v1, Landroidx/work/impl/WorkerStoppedException;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroidx/work/impl/WorkerStoppedException;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final launch()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getTaskCoroutineDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroidx/work/impl/WorkerWrapper$launch$1;

    .line 18
    .line 19
    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkerWrapper$launch$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-static {v0, v2, v1, v3, v2}, Landroidx/work/ListenableFutureKt;->launchFuture$default(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final setFailed(Landroidx/work/ListenableWorker$Result;)Z
    .locals 3
    .param p1    # Landroidx/work/ListenableWorker$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->iterativelyFailWorkAndDependents(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/work/ListenableWorker$Result$Failure;->getOutputData()Landroidx/work/Data;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "failure.outputData"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    return p1
.end method
