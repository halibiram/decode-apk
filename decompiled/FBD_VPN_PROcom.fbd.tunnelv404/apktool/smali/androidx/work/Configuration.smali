.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Builder;,
        Landroidx/work/Configuration$Companion;,
        Landroidx/work/Configuration$Provider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 F2\u00020\u0001:\u0003EFGB\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u00020\u001f8GX\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008 \u0010!\u001a\u0004\u0008\u001e\u0010\"R\u0013\u0010#\u001a\u00020\u001f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\"R\u0011\u0010$\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u000cR\u0013\u0010&\u001a\u00020\n8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u000cR\u0011\u0010(\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u000cR\u0013\u0010*\u001a\u00020\n8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u000cR\u0011\u0010,\u001a\u00020-\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0019\u00100\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u0019R\u0011\u00102\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\u0014R\u0013\u00104\u001a\u0002058G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107R\u0011\u00108\u001a\u000209\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R\u0019\u0010<\u001a\n\u0012\u0004\u0012\u00020=\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010\u0019R\u0011\u0010?\u001a\u00020@\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010BR\u0019\u0010C\u001a\n\u0012\u0004\u0012\u00020=\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010\u0019\u00a8\u0006H"
    }
    d2 = {
        "Landroidx/work/Configuration;",
        "",
        "builder",
        "Landroidx/work/Configuration$Builder;",
        "(Landroidx/work/Configuration$Builder;)V",
        "clock",
        "Landroidx/work/Clock;",
        "getClock",
        "()Landroidx/work/Clock;",
        "contentUriTriggerWorkersLimit",
        "",
        "getContentUriTriggerWorkersLimit",
        "()I",
        "defaultProcessName",
        "",
        "getDefaultProcessName",
        "()Ljava/lang/String;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "getExecutor",
        "()Ljava/util/concurrent/Executor;",
        "initializationExceptionHandler",
        "Landroidx/core/util/Consumer;",
        "",
        "getInitializationExceptionHandler",
        "()Landroidx/core/util/Consumer;",
        "inputMergerFactory",
        "Landroidx/work/InputMergerFactory;",
        "getInputMergerFactory",
        "()Landroidx/work/InputMergerFactory;",
        "isMarkingJobsAsImportantWhileForeground",
        "",
        "isMarkingJobsAsImportantWhileForeground$annotations",
        "()V",
        "()Z",
        "isUsingDefaultTaskExecutor",
        "maxJobSchedulerId",
        "getMaxJobSchedulerId",
        "maxSchedulerLimit",
        "getMaxSchedulerLimit",
        "minJobSchedulerId",
        "getMinJobSchedulerId",
        "minimumLoggingLevel",
        "getMinimumLoggingLevel",
        "runnableScheduler",
        "Landroidx/work/RunnableScheduler;",
        "getRunnableScheduler",
        "()Landroidx/work/RunnableScheduler;",
        "schedulingExceptionHandler",
        "getSchedulingExceptionHandler",
        "taskExecutor",
        "getTaskExecutor",
        "tracer",
        "Landroidx/work/Tracer;",
        "getTracer",
        "()Landroidx/work/Tracer;",
        "workerCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getWorkerCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "workerExecutionExceptionHandler",
        "Landroidx/work/WorkerExceptionInfo;",
        "getWorkerExecutionExceptionHandler",
        "workerFactory",
        "Landroidx/work/WorkerFactory;",
        "getWorkerFactory",
        "()Landroidx/work/WorkerFactory;",
        "workerInitializationExceptionHandler",
        "getWorkerInitializationExceptionHandler",
        "Builder",
        "Companion",
        "Provider",
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


# static fields
.field public static final Companion:Landroidx/work/Configuration$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MIN_SCHEDULER_LIMIT:I = 0x14


# instance fields
.field private final clock:Landroidx/work/Clock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentUriTriggerWorkersLimit:I

.field private final defaultProcessName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final initializationExceptionHandler:Landroidx/core/util/Consumer;
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

.field private final inputMergerFactory:Landroidx/work/InputMergerFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isMarkingJobsAsImportantWhileForeground:Z

.field private final isUsingDefaultTaskExecutor:Z

.field private final maxJobSchedulerId:I

.field private final maxSchedulerLimit:I

.field private final minJobSchedulerId:I

.field private final minimumLoggingLevel:I

.field private final runnableScheduler:Landroidx/work/RunnableScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final schedulingExceptionHandler:Landroidx/core/util/Consumer;
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

.field private final taskExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tracer:Landroidx/work/Tracer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workerCoroutineContext:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workerExecutionExceptionHandler:Landroidx/core/util/Consumer;
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

.field private final workerFactory:Landroidx/work/WorkerFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workerInitializationExceptionHandler:Landroidx/core/util/Consumer;
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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/Configuration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/Configuration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/Configuration;->Companion:Landroidx/work/Configuration$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 3
    .param p1    # Landroidx/work/Configuration$Builder;
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
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getWorkerContext$work_runtime_release()Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getExecutor$work_runtime_release()Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/work/ConfigurationKt;->access$asExecutor(Lkotlin/coroutines/CoroutineContext;)Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-static {v2}, Landroidx/work/ConfigurationKt;->access$createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    iput-object v1, p0, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getExecutor$work_runtime_release()Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-static {v1}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_3
    :goto_1
    iput-object v0, p0, Landroidx/work/Configuration;->workerCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getTaskExecutor$work_runtime_release()Ljava/util/concurrent/Executor;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x1

    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    :cond_4
    iput-boolean v2, p0, Landroidx/work/Configuration;->isUsingDefaultTaskExecutor:Z

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getTaskExecutor$work_runtime_release()Ljava/util/concurrent/Executor;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    invoke-static {v1}, Landroidx/work/ConfigurationKt;->access$createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_5
    iput-object v0, p0, Landroidx/work/Configuration;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getClock$work_runtime_release()Landroidx/work/Clock;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_6

    .line 82
    .line 83
    new-instance v0, Landroidx/work/SystemClock;

    .line 84
    .line 85
    invoke-direct {v0}, Landroidx/work/SystemClock;-><init>()V

    .line 86
    .line 87
    .line 88
    :cond_6
    iput-object v0, p0, Landroidx/work/Configuration;->clock:Landroidx/work/Clock;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getWorkerFactory$work_runtime_release()Landroidx/work/WorkerFactory;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_7

    .line 95
    .line 96
    sget-object v0, Landroidx/work/DefaultWorkerFactory;->INSTANCE:Landroidx/work/DefaultWorkerFactory;

    .line 97
    .line 98
    :cond_7
    iput-object v0, p0, Landroidx/work/Configuration;->workerFactory:Landroidx/work/WorkerFactory;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getInputMergerFactory$work_runtime_release()Landroidx/work/InputMergerFactory;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-nez v0, :cond_8

    .line 105
    .line 106
    sget-object v0, Landroidx/work/NoOpInputMergerFactory;->INSTANCE:Landroidx/work/NoOpInputMergerFactory;

    .line 107
    .line 108
    :cond_8
    iput-object v0, p0, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getRunnableScheduler$work_runtime_release()Landroidx/work/RunnableScheduler;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-nez v0, :cond_9

    .line 115
    .line 116
    new-instance v0, Landroidx/work/impl/DefaultRunnableScheduler;

    .line 117
    .line 118
    invoke-direct {v0}, Landroidx/work/impl/DefaultRunnableScheduler;-><init>()V

    .line 119
    .line 120
    .line 121
    :cond_9
    iput-object v0, p0, Landroidx/work/Configuration;->runnableScheduler:Landroidx/work/RunnableScheduler;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getLoggingLevel$work_runtime_release()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iput v0, p0, Landroidx/work/Configuration;->minimumLoggingLevel:I

    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMinJobSchedulerId$work_runtime_release()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput v0, p0, Landroidx/work/Configuration;->minJobSchedulerId:I

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMaxJobSchedulerId$work_runtime_release()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iput v0, p0, Landroidx/work/Configuration;->maxJobSchedulerId:I

    .line 140
    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    .line 143
    const/16 v1, 0x17

    .line 144
    .line 145
    if-ne v0, v1, :cond_a

    .line 146
    .line 147
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMaxSchedulerLimit$work_runtime_release()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    div-int/lit8 v0, v0, 0x2

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_a
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMaxSchedulerLimit$work_runtime_release()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    :goto_2
    iput v0, p0, Landroidx/work/Configuration;->maxSchedulerLimit:I

    .line 159
    .line 160
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getInitializationExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, p0, Landroidx/work/Configuration;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getSchedulingExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Landroidx/work/Configuration;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getWorkerInitializationExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iput-object v0, p0, Landroidx/work/Configuration;->workerInitializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getWorkerExecutionExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, p0, Landroidx/work/Configuration;->workerExecutionExceptionHandler:Landroidx/core/util/Consumer;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getDefaultProcessName$work_runtime_release()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p0, Landroidx/work/Configuration;->defaultProcessName:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getContentUriTriggerWorkersLimit$work_runtime_release()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    iput v0, p0, Landroidx/work/Configuration;->contentUriTriggerWorkersLimit:I

    .line 195
    .line 196
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMarkJobsAsImportantWhileForeground$work_runtime_release()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    iput-boolean v0, p0, Landroidx/work/Configuration;->isMarkingJobsAsImportantWhileForeground:Z

    .line 201
    .line 202
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getTracer$work_runtime_release()Landroidx/work/Tracer;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    if-nez p1, :cond_b

    .line 207
    .line 208
    invoke-static {}, Landroidx/work/ConfigurationKt;->access$createDefaultTracer()Landroidx/work/Tracer;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    :cond_b
    iput-object p1, p0, Landroidx/work/Configuration;->tracer:Landroidx/work/Tracer;

    .line 213
    .line 214
    return-void
.end method

.method public static synthetic isMarkingJobsAsImportantWhileForeground$annotations()V
    .locals 0
    .annotation build Landroidx/work/ExperimentalConfigurationApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getClock()Landroidx/work/Clock;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration;->clock:Landroidx/work/Clock;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContentUriTriggerWorkersLimit()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/Configuration;->contentUriTriggerWorkersLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDefaultProcessName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration;->defaultProcessName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInitializationExceptionHandler()Landroidx/core/util/Consumer;
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
    iget-object v0, p0, Landroidx/work/Configuration;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInputMergerFactory()Landroidx/work/InputMergerFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxJobSchedulerId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/Configuration;->maxJobSchedulerId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxSchedulerLimit()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x14L
        to = 0x32L
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/work/Configuration;->maxSchedulerLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMinJobSchedulerId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/Configuration;->minJobSchedulerId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMinimumLoggingLevel()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/work/Configuration;->minimumLoggingLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRunnableScheduler()Landroidx/work/RunnableScheduler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration;->runnableScheduler:Landroidx/work/RunnableScheduler;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSchedulingExceptionHandler()Landroidx/core/util/Consumer;
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
    iget-object v0, p0, Landroidx/work/Configuration;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTracer()Landroidx/work/Tracer;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration;->tracer:Landroidx/work/Tracer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWorkerCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration;->workerCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWorkerExecutionExceptionHandler()Landroidx/core/util/Consumer;
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
    iget-object v0, p0, Landroidx/work/Configuration;->workerExecutionExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWorkerFactory()Landroidx/work/WorkerFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/Configuration;->workerFactory:Landroidx/work/WorkerFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWorkerInitializationExceptionHandler()Landroidx/core/util/Consumer;
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
    iget-object v0, p0, Landroidx/work/Configuration;->workerInitializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isMarkingJobsAsImportantWhileForeground()Z
    .locals 1
    .annotation build Landroidx/work/ExperimentalConfigurationApi;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/work/Configuration;->isMarkingJobsAsImportantWhileForeground:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isUsingDefaultTaskExecutor()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/work/Configuration;->isUsingDefaultTaskExecutor:Z

    .line 2
    .line 3
    return v0
.end method
