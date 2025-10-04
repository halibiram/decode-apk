.class Landroidx/test/runner/MonitoringInstrumentation$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/runner/MonitoringInstrumentation;->registerUncaughtExceptionHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/runner/MonitoringInstrumentation;


# direct methods
.method public constructor <init>(Landroidx/test/runner/MonitoringInstrumentation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Handling an uncaught exception thrown on the thread "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "."

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Landroidx/test/runner/MonitoringInstrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/test/runner/MonitoringInstrumentation;->access$100(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/test/runner/MonitoringInstrumentation;->access$100(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    .line 40
    .line 41
    invoke-static {v1}, Landroidx/test/runner/MonitoringInstrumentation;->access$100(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x2

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    aput-object v0, v2, v3

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    aput-object v1, v2, v0

    .line 57
    .line 58
    const-string v0, "Invoking default uncaught exception handler %s (a %s)"

    .line 59
    .line 60
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    .line 64
    .line 65
    invoke-static {v0}, Landroidx/test/runner/MonitoringInstrumentation;->access$100(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    const-string p2, "robolectric"

    .line 73
    .line 74
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_1

    .line 81
    .line 82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    const/16 p1, -0xa

    .line 97
    .line 98
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 99
    .line 100
    .line 101
    :cond_1
    return-void
.end method
