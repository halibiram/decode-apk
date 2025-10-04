.class public Landroidx/test/internal/runner/InstrumentationConnection;
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
        Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;,
        Landroidx/test/internal/runner/InstrumentationConnection$MessengerReceiver;
    }
.end annotation


# static fields
.field public static final BROADCAST_FILTER:Ljava/lang/String; = "androidx.test.runner.InstrumentationConnection.event"

.field static final BUNDLE_BR_NEW_BINDER:Ljava/lang/String; = "new_instrumentation_binder"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final BUNDLE_KEY_CLIENTS:Ljava/lang/String; = "instr_clients"

.field private static final BUNDLE_KEY_CLIENT_MESSENGER:Ljava/lang/String; = "instr_client_msgr"

.field private static final BUNDLE_KEY_CLIENT_TYPE:Ljava/lang/String; = "instr_client_type"

.field private static final BUNDLE_KEY_UUID:Ljava/lang/String; = "instr_uuid"

.field private static final DEFAULT_INSTANCE:Landroidx/test/internal/runner/InstrumentationConnection;

.field static final MSG_ADD_CLIENTS_IN_BUNDLE:I = 0x6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MSG_ADD_INSTRUMENTATION:I = 0x4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_HANDLE_INSTRUMENTATION_FROM_BROADCAST:I = 0x3

.field private static final MSG_PERFORM_CLEANUP:I = 0xb

.field private static final MSG_PERFORM_CLEANUP_FINISHED:I = 0xc

.field private static final MSG_REG_CLIENT:I = 0x8

.field private static final MSG_REMOTE_ADD_CLIENT:I = 0x0

.field static final MSG_REMOTE_CLEANUP_REQUEST:I = 0xa
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_REMOTE_REMOVE_CLIENT:I = 0x1

.field private static final MSG_REMOVE_CLIENTS_IN_BUNDLE:I = 0x7

.field private static final MSG_REMOVE_INSTRUMENTATION:I = 0x5

.field private static final MSG_TERMINATE:I = 0x2

.field private static final MSG_UN_REG_CLIENT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "InstrConnection"

.field private static activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

.field private static instrumentation:Landroid/app/Instrumentation;


# instance fields
.field incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

.field final messengerReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private targetContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/internal/runner/InstrumentationConnection;

    .line 2
    .line 3
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/test/internal/runner/InstrumentationConnection;->DEFAULT_INSTANCE:Landroidx/test/internal/runner/InstrumentationConnection;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/test/internal/runner/InstrumentationConnection$MessengerReceiver;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/test/internal/runner/InstrumentationConnection$MessengerReceiver;-><init>(Landroidx/test/internal/runner/InstrumentationConnection;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->messengerReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    const-string v0, "Context can\'t be null"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/content/Context;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->targetContext:Landroid/content/Context;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic access$500()Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/internal/runner/InstrumentationConnection;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$502(Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;)Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;
    .locals 0

    .line 1
    sput-object p0, Landroidx/test/internal/runner/InstrumentationConnection;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600()Landroid/app/Instrumentation;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/internal/runner/InstrumentationConnection;->instrumentation:Landroid/app/Instrumentation;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$602(Landroid/app/Instrumentation;)Landroid/app/Instrumentation;
    .locals 0

    .line 1
    sput-object p0, Landroidx/test/internal/runner/InstrumentationConnection;->instrumentation:Landroid/app/Instrumentation;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getInstance()Landroidx/test/internal/runner/InstrumentationConnection;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/internal/runner/InstrumentationConnection;->DEFAULT_INSTANCE:Landroidx/test/internal/runner/InstrumentationConnection;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public declared-synchronized getClientsForType(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 3
    .line 4
    invoke-static {v0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$400(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/lang/String;)Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public declared-synchronized init(Landroid/app/Instrumentation;Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "InstrConnection"

    .line 3
    .line 4
    const-string v1, "init"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sput-object p1, Landroidx/test/internal/runner/InstrumentationConnection;->instrumentation:Landroid/app/Instrumentation;

    .line 17
    .line 18
    sput-object p2, Landroidx/test/internal/runner/InstrumentationConnection;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    .line 19
    .line 20
    new-instance p1, Landroid/os/HandlerThread;

    .line 21
    .line 22
    const-string p2, "InstrumentationConnectionThread"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 28
    .line 29
    .line 30
    new-instance p2, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p2, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 40
    .line 41
    new-instance p1, Landroid/content/Intent;

    .line 42
    .line 43
    const-string p2, "androidx.test.runner.InstrumentationConnection.event"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v0, "new_instrumentation_binder"

    .line 54
    .line 55
    new-instance v1, Landroidx/test/internal/util/ParcelableIBinder;

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 58
    .line 59
    iget-object v2, v2, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->messengerHandler:Landroid/os/Messenger;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v1, v2}, Landroidx/test/internal/util/ParcelableIBinder;-><init>(Landroid/os/IBinder;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "new_instrumentation_binder"

    .line 72
    .line 73
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    :try_start_1
    iget-object p2, p0, Landroidx/test/internal/runner/InstrumentationConnection;->targetContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->targetContext:Landroid/content/Context;

    .line 82
    .line 83
    iget-object p2, p0, Landroidx/test/internal/runner/InstrumentationConnection;->messengerReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    .line 86
    .line 87
    const-string v1, "androidx.test.runner.InstrumentationConnection.event"

    .line 88
    .line 89
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    goto :goto_1

    .line 98
    :catch_0
    :cond_0
    :goto_0
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw p1
.end method

.method public declared-synchronized registerClient(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "Instrumentation Connection in not yet initialized"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "instr_client_type"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "instr_client_msgr"

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 30
    .line 31
    const/16 p2, 0x8

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method

.method public declared-synchronized requestRemoteInstancesActivityCleanup()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v2, "Instrumentation Connection in not yet initialized"

    .line 11
    .line 12
    invoke-static {v0, v2}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 25
    .line 26
    invoke-static {v1, v0, v2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$200(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 30
    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v3, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 38
    .line 39
    iget-object v3, v3, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->messengerHandler:Landroid/os/Messenger;

    .line 40
    .line 41
    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "instr_uuid"

    .line 48
    .line 49
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    .line 59
    .line 60
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    .line 62
    const-wide/16 v3, 0x2

    .line 63
    .line 64
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v1

    .line 75
    goto :goto_4

    .line 76
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 77
    .line 78
    :goto_2
    invoke-static {v1, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$300(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    goto :goto_5

    .line 84
    :catch_0
    :try_start_3
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    .line 86
    .line 87
    :try_start_4
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_3
    monitor-exit p0

    .line 91
    return-void

    .line 92
    :goto_4
    :try_start_5
    iget-object v2, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 93
    .line 94
    invoke-static {v2, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$300(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;)V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :goto_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 99
    throw v0
.end method

.method public declared-synchronized terminate()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "InstrConnection"

    .line 3
    .line 4
    const-string v1, "Terminate is called"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroidx/test/internal/runner/InstrumentationConnection$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Landroidx/test/internal/runner/InstrumentationConnection$1;-><init>(Landroidx/test/internal/runner/InstrumentationConnection;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$100(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->targetContext:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->messengerReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw v0
.end method

.method public declared-synchronized unregisterClient(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "Instrumentation Connection in not yet initialized"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "instr_client_type"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "instr_client_msgr"

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 30
    .line 31
    const/16 p2, 0x9

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method
