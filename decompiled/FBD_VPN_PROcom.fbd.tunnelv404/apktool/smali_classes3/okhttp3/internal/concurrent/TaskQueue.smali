.class public final Lokhttp3/internal/concurrent/TaskQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001KB\u0019\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ-\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f\u00a2\u0006\u0004\u0008\r\u0010\u0011J7\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\'\u0010\u001c\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001d\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u000f\u0010\"\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010#\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008#\u0010$R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010$R\u0017\u00101\u001a\u00020,8\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\"\u0010\u001f\u001a\u00020\u00128\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u0010!\"\u0004\u00085\u00106R$\u0010=\u001a\u0004\u0018\u00010\u00088\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R \u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00080>8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010BR\"\u0010G\u001a\u00020\u00128\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u00103\u001a\u0004\u0008E\u0010!\"\u0004\u0008F\u00106R\u0017\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u00080H8F\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010B\u00a8\u0006L"
    }
    d2 = {
        "Lokhttp3/internal/concurrent/TaskQueue;",
        "",
        "Lokhttp3/internal/concurrent/TaskRunner;",
        "taskRunner",
        "",
        "name",
        "<init>",
        "(Lokhttp3/internal/concurrent/TaskRunner;Ljava/lang/String;)V",
        "Lokhttp3/internal/concurrent/Task;",
        "task",
        "",
        "delayNanos",
        "",
        "schedule",
        "(Lokhttp3/internal/concurrent/Task;J)V",
        "Lkotlin/Function0;",
        "block",
        "(Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V",
        "",
        "cancelable",
        "execute",
        "(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V",
        "Ljava/util/concurrent/CountDownLatch;",
        "idleLatch",
        "()Ljava/util/concurrent/CountDownLatch;",
        "recurrence",
        "scheduleAndDecide$okhttp",
        "(Lokhttp3/internal/concurrent/Task;JZ)Z",
        "scheduleAndDecide",
        "cancelAll",
        "()V",
        "shutdown",
        "cancelAllAndDecide$okhttp",
        "()Z",
        "cancelAllAndDecide",
        "toString",
        "()Ljava/lang/String;",
        "\ub3a0\ub460\ub56a\ub4fc\ub3a0\ub505\ub572\ub454\ub4fd\ub42b\ub51e\ub3f0\ub461\ub51e\ub4fc\ub3a8\ub3a8\ub4d4\ub561\ub51d\ub568\ub543\ub540\ub4bb\ub524\ub539\ub3dd\ub418\ub573\ub572\ub538\ub4be\ub3a8\ub571\ub565\ub3f6\ub49b\ub4b7\ub4e4\ub4a8\ub54b\ub3e0\ub3a1\ub454\ub41c\ub3e4\ub4e0\ub42b\ub539\ub3f3\ub3f4\ub3db\ub54d\ub578\ub4b5\ub451\ub3f3\ub568\ub55d\ub4dd\ub56e\ub560\ub568\ub500\ub504\ub4a8\ub480\ub540\ub54b\ub4fd\ub42b\ub539\ub575\ub528\ub4b5\ub4f8\ub575\ub3ac\ub4bb\ub3e4\ub568\ub450\ub4f0\ub56b\ub57b\ub48b\ub3f6\ub450\ub563\ub3a1\ub3a1\ub4d0\ub56b\ub570\ub489\ub3b9\ub569\ub571\ub451\ub504\ub3f3\ub4f8\ub4a4\ub3bb\ub56e\ub51c\ub57b\ub428\ub3b8\ub4bc\ub503\ub42b\ub3f8\ub56e\ub56e\ub3e8\ub4a8\ub561\ub572\ub528\ub3f7\ub418\ub54b\ub458\ub3e0\ub56a\ub4b7\ub499\ub545\ub3b8",
        "Lokhttp3/internal/concurrent/TaskRunner;",
        "getTaskRunner$okhttp",
        "()Lokhttp3/internal/concurrent/TaskRunner;",
        "\ub3a0\ub50e\ub503\ub4fc\ub489\ub428\ub3b9\ub568\ub4fb\ub540\ub51d\ub566\ub4ac\ub3f0\ub3f7\ub569\ub4dd\ub51e\ub4e0\ub463\ub4fc\ub3f8\ub410\ub543\ub460\ub51c\ub538\ub4b5\ub4e4\ub3f4\ub4f0\ub543\ub4dd\ub54b\ub3a0\ub3f8\ub524\ub540\ub51d\ub3b9\ub528\ub450\ub568\ub4b7\ub50e\ub50e\ub510\ub480\ub3ac\ub4f0\ub51c\ub56d\ub4d4\ub4e8\ub3f4\ub4fc\ub465\ub4dd\ub3b9\ub3f6\ub4e4\ub4dc\ub3bb\ub501\ub458\ub410\ub3e8\ub460\ub488\ub545\ub3e8\ub55c\ub51d\ub4e4\ub500\ub451\ub4b9\ub3b9\ub450\ub56c\ub4d0\ub3f6\ub4ec\ub56c\ub3c4\ub3b8\ub460\ub460\ub4a8\ub410\ub55d\ub50e\ub500\ub578\ub56a\ub4dd\ub4b5\ub56c\ub490\ub570\ub55d\ub4b5\ub572\ub4ec\ub4fd\ub3f5\ub480\ub54b\ub4ac\ub573\ub48b\ub4f0\ub55f\ub3f0\ub418\ub54b\ub454\ub571\ub4d4\ub540\ub563\ub418\ub498\ub3fc\ub4bb\ub501\ub465\ub498\ub41c\ub56b",
        "Ljava/lang/String;",
        "getName$okhttp",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "\ub3a0\ub544\ub490\ub3f8\ub4cc\ub3db\ub490\ub480\ub4f8\ub510\ub503\ub541\ub4d4\ub3a1\ub4cc\ub500\ub46c\ub480\ub418\ub573\ub573\ub4a4\ub4bc\ub460\ub56e\ub544\ub564\ub450\ub54d\ub3bb\ub567\ub53b\ub3c4\ub4fc\ub4ac\ub561\ub480\ub4fb\ub520\ub3f7\ub3b8\ub451\ub3f5\ub46c\ub539\ub550\ub42b\ub545\ub3a1\ub51f\ub420\ub56f\ub554\ub54b\ub51f\ub573\ub503\ub3f3\ub49d\ub514\ub4a8\ub4df\ub3f6\ub51c\ub573\ub51f\ub544\ub480\ub3dd\ub56e\ub3c4\ub3c4\ub504\ub56f\ub4f0\ub56e\ub3a1\ub3a1\ub4df\ub4fb\ub544\ub480\ub4bb\ub56d\ub451\ub4e8\ub4e4\ub4e4\ub578\ub4df\ub418\ub46c\ub49d\ub3f0\ub4d4\ub429\ub528\ub4cc\ub51c\ub4fb\ub3dd\ub4dc\ub4be\ub451\ub3a1\ub4f0\ub545\ub503\ub524\ub545\ub4a8\ub488\ub4b9\ub420\ub4f8\ub3f5\ub458\ub490\ub56d\ub541\ub4f8\ub56e\ub489\ub56a\ub51f\ub4e0\ub57b\ub571\ub4fb\ub489",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "getLock",
        "()Ljava/util/concurrent/locks/ReentrantLock;",
        "lock",
        "\ub3a0\ub57b\ub55d\ub3b9\ub53d\ub450\ub53d\ub460\ub545\ub56b\ub575\ub488\ub4be\ub54d\ub4a4\ub418\ub4b5\ub460\ub56f\ub42b\ub461\ub541\ub3c4\ub3b9\ub3a0\ub566\ub3bd\ub4fd\ub49b\ub544\ub564\ub503\ub3f6\ub569\ub51d\ub50e\ub4f8\ub505\ub3ac\ub451\ub540\ub55d\ub53b\ub450\ub498\ub49b\ub3f5\ub54b\ub4fc\ub458\ub4fc\ub544\ub504\ub3db\ub50e\ub504\ub3f4\ub510\ub490\ub51d\ub3e0\ub3b0\ub543\ub498\ub3f8\ub528\ub55f\ub510\ub428\ub4ac\ub454\ub56c\ub530\ub579\ub3b9\ub3bd\ub53d\ub3fc\ub524\ub560\ub563\ub4a4\ub434\ub428\ub4e0\ub575\ub57b\ub480\ub49d\ub3f0\ub3f8\ub4ec\ub56e\ub3a0\ub480\ub3f7\ub3f5\ub54d\ub4d0\ub514\ub4d0\ub4fb\ub569\ub4dd\ub4fb\ub3f4\ub51c\ub54b\ub49b\ub578\ub3f8\ub501\ub501\ub55c\ub570\ub568\ub56b\ub4bc\ub554\ub4bc\ub46c\ub434\ub578\ub48b\ub46c\ub565\ub520\ub4be\ub56a\ub428",
        "Z",
        "getShutdown$okhttp",
        "setShutdown$okhttp",
        "(Z)V",
        "\ub3a1\ub514\ub3f3\ub4ec\ub501\ub42b\ub565\ub4be\ub565\ub50c\ub528\ub530\ub54d\ub49b\ub550\ub4e0\ub51c\ub48b\ub3f5\ub3f7\ub579\ub498\ub566\ub410\ub554\ub504\ub458\ub56f\ub567\ub450\ub554\ub56d\ub41c\ub3f5\ub4be\ub4b9\ub55f\ub520\ub56a\ub4b9\ub3c4\ub490\ub3e4\ub3f5\ub4cc\ub566\ub460\ub3f5\ub3f4\ub56b\ub465\ub4d4\ub4fb\ub504\ub53d\ub3a0\ub3b8\ub540\ub571\ub4dd\ub56f\ub3b0\ub450\ub4b9\ub514\ub545\ub4e4\ub480\ub499\ub53d\ub3a1\ub42b\ub51e\ub4bb\ub4df\ub520\ub4be\ub49b\ub51f\ub4ec\ub4dd\ub56c\ub50c\ub3e8\ub573\ub4bc\ub505\ub4b7\ub4f0\ub4fd\ub3f6\ub450\ub3a8\ub3f0\ub3ac\ub3e8\ub51e\ub490\ub4b9\ub503\ub4dc\ub501\ub4cc\ub56b\ub49d\ub579\ub567\ub429\ub55c\ub53b\ub428\ub561\ub4dc\ub510\ub528\ub3e4\ub50c\ub568\ub488\ub4bc\ub530\ub53d\ub4b9\ub3b0\ub510\ub4b7\ub49d\ub51f\ub572\ub4a8",
        "Lokhttp3/internal/concurrent/Task;",
        "getActiveTask$okhttp",
        "()Lokhttp3/internal/concurrent/Task;",
        "setActiveTask$okhttp",
        "(Lokhttp3/internal/concurrent/Task;)V",
        "activeTask",
        "",
        "\ub3a1\ub51e\ub4dd\ub564\ub480\ub55d\ub539\ub56e\ub480\ub51d\ub570\ub4fc\ub3bd\ub4a4\ub3bd\ub4f8\ub503\ub434\ub570\ub50c\ub3fc\ub4b7\ub520\ub4f0\ub3b0\ub500\ub46c\ub4d4\ub4a4\ub463\ub56d\ub565\ub53b\ub458\ub3a8\ub56f\ub53d\ub4bb\ub500\ub48b\ub3b0\ub554\ub4dd\ub480\ub463\ub573\ub579\ub4bc\ub544\ub560\ub4dd\ub51c\ub3f4\ub544\ub4ac\ub55f\ub4bb\ub3f6\ub56e\ub489\ub50c\ub4ac\ub499\ub4fc\ub530\ub505\ub4fd\ub4a4\ub3f8\ub4cc\ub568\ub56f\ub514\ub3bd\ub420\ub501\ub3f3\ub465\ub3e8\ub510\ub463\ub458\ub3f4\ub4a8\ub4fd\ub539\ub3c4\ub550\ub550\ub3a1\ub53d\ub55f\ub4f8\ub3dd\ub3bd\ub530\ub56f\ub463\ub418\ub544\ub489\ub489\ub504\ub4fc\ub501\ub3c4\ub3b9\ub3e4\ub4bc\ub489\ub56c\ub544\ub538\ub4b5\ub4e0\ub489\ub568\ub543\ub544\ub528\ub429\ub3c4\ub510\ub4dd\ub451\ub4d4\ub53d\ub575\ub49b\ub3e4",
        "Ljava/util/List;",
        "getFutureTasks$okhttp",
        "()Ljava/util/List;",
        "futureTasks",
        "\ub3a1\ub55d\ub4bb\ub565\ub418\ub524\ub3f3\ub3bd\ub500\ub505\ub3fc\ub56b\ub3db\ub4fc\ub3bd\ub49d\ub429\ub4a8\ub563\ub56c\ub4a4\ub566\ub55c\ub460\ub51e\ub3f0\ub498\ub3b8\ub570\ub420\ub566\ub4ec\ub56d\ub56c\ub450\ub504\ub539\ub3a1\ub3e0\ub49d\ub4dc\ub41c\ub575\ub571\ub561\ub539\ub538\ub49b\ub4d4\ub4b9\ub514\ub461\ub504\ub3f8\ub528\ub3f3\ub4be\ub489\ub3ac\ub4f8\ub3fc\ub3f0\ub490\ub4ec\ub3fc\ub461\ub410\ub3f3\ub451\ub489\ub55f\ub480\ub428\ub4be\ub540\ub565\ub565\ub3fc\ub4ec\ub543\ub41c\ub51f\ub51d\ub3f5\ub55c\ub504\ub4bc\ub51e\ub420\ub544\ub504\ub51f\ub530\ub540\ub544\ub3dd\ub420\ub3f7\ub53b\ub4e0\ub55d\ub514\ub545\ub539\ub4fb\ub3f4\ub510\ub3dd\ub458\ub544\ub4df\ub3c4\ub560\ub538\ub3e4\ub3e0\ub578\ub3f3\ub4cc\ub498\ub4a8\ub4e0\ub50e\ub51d\ub4b7\ub567\ub428\ub539\ub563\ub54b",
        "getCancelActiveTask$okhttp",
        "setCancelActiveTask$okhttp",
        "cancelActiveTask",
        "",
        "getScheduledTasks",
        "scheduledTasks",
        "\ub56a\ub3f3\ub514\ub428\ub3b8\ub3f7\ub429\ub3a8\ub554\ub566\ub4fb\ub4e8\ub4fb\ub4df\ub498\ub46c\ub3b8\ub4f8\ub3b8\ub454\ub42b\ub4f0\ub489\ub503\ub3e4\ub540\ub4cc\ub4d4\ub4be\ub55f\ub544\ub538\ub3f4\ub56f\ub51f\ub569\ub4be\ub4e0\ub3bd\ub460\ub4e4\ub4cc\ub418\ub564\ub489\ub460\ub503\ub53b\ub540\ub465\ub538\ub54d\ub4bc\ub418\ub504\ub3e8\ub4df\ub489\ub488\ub4b9\ub434\ub4a4\ub505\ub3e8\ub570\ub4fd\ub565\ub554\ub54b\ub4be\ub501\ub51e\ub454\ub4f8\ub4bc\ub3bb\ub578\ub49d\ub450\ub3a1\ub554\ub3f8\ub450\ub554\ub51c\ub4cc\ub465\ub571\ub560\ub3ac\ub4dd\ub458\ub420\ub4fb\ub504\ub56d\ub4a8\ub572\ub51d\ub55d\ub4ec\ub3f5\ub4e0\ub3dd\ub49b\ub568\ub4d0\ub579\ub3e0\ub55d\ub563\ub4e8\ub4a8\ub51c\ub46c\ub3b8\ub463\ub4df\ub4b7\ub54d\ub490\ub56d\ub528\ub57b\ub500\ub454\ub56a\ub568\ub55f\ub505",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TaskLogger.kt\nokhttp3/internal/concurrent/TaskLoggerKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,226:1\n1#2:227\n26#3,4:228\n26#3,4:232\n26#3,4:236\n26#3,4:240\n26#3,4:259\n350#4,7:244\n327#5,4:251\n327#5,4:255\n*S KotlinDebug\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n*L\n69#1:228,4\n72#1:232,4\n161#1:236,4\n167#1:240,4\n216#1:259,4\n173#1:244,7\n187#1:251,4\n197#1:255,4\n*E\n"
    }
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/internal/concurrent/TaskRunner;

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/String;

.field public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/locks/ReentrantLock;

.field public 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Z

.field public 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lokhttp3/internal/concurrent/Task;

.field public final 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/ArrayList;

.field public 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Z


# direct methods
.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lokhttp3/internal/concurrent/TaskRunner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "taskRunner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/internal/concurrent/TaskRunner;

    .line 15
    .line 16
    iput-object p2, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/ArrayList;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;JZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0x0

    .line 6
    .line 7
    :cond_0
    move-wide v2, p2

    .line 8
    and-int/lit8 p2, p6, 0x4

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/4 p4, 0x1

    .line 13
    const/4 v4, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v4, p4

    .line 16
    :goto_0
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-object v5, p5

    .line 19
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/concurrent/TaskQueue;->execute(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p2, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    return-void
.end method


# virtual methods
.method public final cancelAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    sget-boolean v1, Lokhttp3/internal/_UtilJvmKt;->assertionsEnabled:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "Thread "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, " MUST NOT hold lock on "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/internal/concurrent/TaskRunner;

    .line 51
    .line 52
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->cancelAllAndDecide$okhttp()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Lokhttp3/internal/concurrent/TaskRunner;->kickCoordinator$okhttp(Lokhttp3/internal/concurrent/TaskQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method public final cancelAllAndDecide$okhttp()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lokhttp3/internal/concurrent/Task;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/Task;->getCancelable()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-boolean v1, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Z

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sub-int/2addr v2, v1

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    const/4 v4, -0x1

    .line 26
    if-ge v4, v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lokhttp3/internal/concurrent/Task;

    .line 33
    .line 34
    invoke-virtual {v4}, Lokhttp3/internal/concurrent/Task;->getCancelable()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    iget-object v3, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/internal/concurrent/TaskRunner;

    .line 41
    .line 42
    invoke-virtual {v3}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lokhttp3/internal/concurrent/Task;

    .line 51
    .line 52
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 53
    .line 54
    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    const-string v5, "canceled"

    .line 61
    .line 62
    invoke-static {v3, v4, p0, v5}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return v3
.end method

.method public final execute(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;

    .line 12
    .line 13
    invoke-direct {v0, p1, p4, p5}, Lokhttp3/internal/concurrent/TaskQueue$execute$1;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p2, p3}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final getActiveTask$okhttp()Lokhttp3/internal/concurrent/Task;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lokhttp3/internal/concurrent/Task;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCancelActiveTask$okhttp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFutureTasks$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/concurrent/Task;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName$okhttp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScheduledTasks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/concurrent/Task;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/internal/concurrent/TaskRunner;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    .line 23
    .line 24
    throw v1
.end method

.method public final getShutdown$okhttp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/internal/concurrent/TaskRunner;

    .line 2
    .line 3
    return-object v0
.end method

.method public final idleLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/internal/concurrent/TaskRunner;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lokhttp3/internal/concurrent/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    iget-object v3, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 24
    .line 25
    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lokhttp3/internal/concurrent/Task;

    .line 35
    .line 36
    instance-of v5, v2, L땪돳디됨뎸돷됩뎨땔땦듻듨듻듟뒘둬뎸듸뎸둔됫듰뒉딃돤땀듌듔뒾땟땄딸돴땯딟땩뒾든뎽둠들듌되땤뒉둠딃딻땀둥딸땍뒼되딄돨듟뒉뒈뒹됴뒤딅돨땰듽땥땔땋뒾딁딞둔듸뒼뎻땸뒝두뎡땔돸두땔딜듌둥땱땠뎬득둘될듻딄땭뒨땲딝땝듬돵든돝뒛땨듐땹돠땝땣듨뒨딜둬뎸둣듟뒷땍뒐땭딨땻딀둔땪땨땟딅;

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    check-cast v2, L땪돳디됨뎸돷됩뎨땔땦듻듨듻듟뒘둬뎸듸뎸둔됫듰뒉딃돤땀듌듔뒾땟땄딸돴땯딟땩뒾든뎽둠들듌되땤뒉둠딃딻땀둥딸땍뒼되딄돨듟뒉뒈뒹됴뒤딅돨땰듽땥땔땋뒾딁딞둔듸뒼뎻땸뒝두뎡땔돸두땔딜듌둥땱땠뎬득둘될듻딄땭뒨땲딝땝듬돵든돝뒛땨듐땹돠땝땣듨뒨딜둬뎸둣듟뒷땍뒐땭딨땻딀둔땪땨땟딅;

    .line 41
    .line 42
    iget-object v0, v2, L땪돳디됨뎸돷됩뎨땔땦듻듨듻듟뒘둬뎸듸뎸둔됫듰뒉딃돤땀듌듔뒾땟땄딸돴땯딟땩뒾든뎽둠들듌되땤뒉둠딃딻땀둥딸땍뒼되딄돨듟뒉뒈뒹됴뒤딅돨땰듽땥땔땋뒾딁딞둔듸뒼뎻땸뒝두뎡땔돸두땔딜듌둥땱땠뎬득둘될듻딄땭뒨땲딝땝듬돵든돝뒛땨듐땹돠땝땣듨뒨딜둬뎸둣듟뒷땍뒐땭딨땻딀둔땪땨땟딅;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/CountDownLatch;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lokhttp3/internal/concurrent/Task;

    .line 63
    .line 64
    instance-of v5, v3, L땪돳디됨뎸돷됩뎨땔땦듻듨듻듟뒘둬뎸듸뎸둔됫듰뒉딃돤땀듌듔뒾땟땄딸돴땯딟땩뒾든뎽둠들듌되땤뒉둠딃딻땀둥딸땍뒼되딄돨듟뒉뒈뒹됴뒤딅돨땰듽땥땔땋뒾딁딞둔듸뒼뎻땸뒝두뎡땔돸두땔딜듌둥땱땠뎬득둘될듻딄땭뒨땲딝땝듬돵든돝뒛땨듐땹돠땝땣듨뒨딜둬뎸둣듟뒷땍뒐땭딨땻딀둔땪땨땟딅;

    .line 65
    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    check-cast v3, L땪돳디됨뎸돷됩뎨땔땦듻듨듻듟뒘둬뎸듸뎸둔됫듰뒉딃돤땀듌듔뒾땟땄딸돴땯딟땩뒾든뎽둠들듌되땤뒉둠딃딻땀둥딸땍뒼되딄돨듟뒉뒈뒹됴뒤딅돨땰듽땥땔땋뒾딁딞둔듸뒼뎻땸뒝두뎡땔돸두땔딜듌둥땱땠뎬득둘될듻딄땭뒨땲딝땝듬돵든돝뒛땨듐땹돠땝땣듨뒨딜둬뎸둣듟뒷땍뒐땭딨땻딀둔땪땨땟딅;

    .line 69
    .line 70
    iget-object v0, v3, L땪돳디됨뎸돷됩뎨땔땦듻듨듻듟뒘둬뎸듸뎸둔됫듰뒉딃돤땀듌듔뒾땟땄딸돴땯딟땩뒾든뎽둠들듌되땤뒉둠딃딻땀둥딸땍뒼되딄돨듟뒉뒈뒹됴뒤딅돨땰듽땥땔땋뒾딁딞둔듸뒼뎻땸뒝두뎡땔돸두땔딜듌둥땱땠뎬득둘될듻딄땭뒨땲딝땝듬돵든돝뒛땨듐땹돠땝땣듨뒨딜둬뎸둣듟뒷땍뒐땭딨땻딀둔땪땨땟딅;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/CountDownLatch;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    :try_start_4
    new-instance v2, L땪돳디됨뎸돷됩뎨땔땦듻듨듻듟뒘둬뎸듸뎸둔됫듰뒉딃돤땀듌듔뒾땟땄딸돴땯딟땩뒾든뎽둠들듌되땤뒉둠딃딻땀둥딸땍뒼되딄돨듟뒉뒈뒹됴뒤딅돨땰듽땥땔땋뒾딁딞둔듸뒼뎻땸뒝두뎡땔돸두땔딜듌둥땱땠뎬득둘될듻딄땭뒨땲딝땝듬돵든돝뒛땨듐땹돠땝땣듨뒨딜둬뎸둣듟뒷땍뒐땭딨땻딀둔땪땨땟딅;

    .line 77
    .line 78
    invoke-direct {v2}, L땪돳디됨뎸돷됩뎨땔땦듻듨듻듟뒘둬뎸듸뎸둔됫듰뒉딃돤땀듌듔뒾땟땄딸돴땯딟땩뒾든뎽둠들듌되땤뒉둠딃딻땀둥딸땍뒼되딄돨듟뒉뒈뒹됴뒤딅돨땰듽땥땔땋뒾딁딞둔듸뒼뎻땸뒝두뎡땔돸두땔딜듌둥땱땠뎬득둘될듻딄땭뒨땲딝땝듬돵든돝뒛땨듐땹돠땝땣듨뒨딜둬뎸둣듟뒷땍뒐땭딨땻딀둔땪땨땟딅;-><init>()V

    .line 79
    .line 80
    .line 81
    const-wide/16 v5, 0x0

    .line 82
    .line 83
    invoke-virtual {p0, v2, v5, v6, v4}, Lokhttp3/internal/concurrent/TaskQueue;->scheduleAndDecide$okhttp(Lokhttp3/internal/concurrent/Task;JZ)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Lokhttp3/internal/concurrent/TaskRunner;->kickCoordinator$okhttp(Lokhttp3/internal/concurrent/TaskQueue;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v0, v2, L땪돳디됨뎸돷됩뎨땔땦듻듨듻듟뒘둬뎸듸뎸둔됫듰뒉딃돤땀듌듔뒾땟땄딸돴땯딟땩뒾든뎽둠들듌되땤뒉둠딃딻땀둥딸땍뒼되딄돨듟뒉뒈뒹됴뒤딅돨땰듽땥땔땋뒾딁딞둔듸뒼뎻땸뒝두뎡땔돸두땔딜듌둥땱땠뎬득둘될듻딄땭뒨땲딝땝듬돵든돝뒛땨듐땹돠땝땣듨뒨딜둬뎸둣듟뒷땍뒐땭딨땻딀둔땪땨땟딅;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/CountDownLatch;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    .line 96
    .line 97
    return-object v0

    .line 98
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 99
    .line 100
    .line 101
    throw v0
.end method

.method public final schedule(Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lokhttp3/internal/concurrent/TaskQueue$schedule$2;

    invoke-direct {v0, p1, p4}, Lokhttp3/internal/concurrent/TaskQueue$schedule$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0, p2, p3}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    return-void
.end method

.method public final schedule(Lokhttp3/internal/concurrent/Task;J)V
    .locals 3
    .param p1    # Lokhttp3/internal/concurrent/Task;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Z

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {p1}, Lokhttp3/internal/concurrent/Task;->getCancelable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    move-result-object p2

    .line 5
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    const-string p3, "schedule canceled (queue is shutdown)"

    .line 7
    invoke-static {p2, p1, p0, p3}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    move-result-object p2

    .line 10
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 11
    const-string p3, "schedule failed (queue is shutdown)"

    .line 12
    invoke-static {p2, p1, p0, p3}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 13
    :cond_2
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p1

    :cond_3
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, p1, p2, p3, v2}, Lokhttp3/internal/concurrent/TaskQueue;->scheduleAndDecide$okhttp(Lokhttp3/internal/concurrent/Task;JZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {v0, p0}, Lokhttp3/internal/concurrent/TaskRunner;->kickCoordinator$okhttp(Lokhttp3/internal/concurrent/TaskQueue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final scheduleAndDecide$okhttp(Lokhttp3/internal/concurrent/Task;JZ)Z
    .locals 14
    .param p1    # Lokhttp3/internal/concurrent/Task;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    const-string v2, "task"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lokhttp3/internal/concurrent/Task;->initQueue$okhttp(Lokhttp3/internal/concurrent/TaskQueue;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lokhttp3/internal/concurrent/TaskQueue;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/internal/concurrent/TaskRunner;

    .line 12
    .line 13
    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    add-long v5, v3, p2

    .line 22
    .line 23
    iget-object v7, v0, Lokhttp3/internal/concurrent/TaskQueue;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, -0x1

    .line 31
    if-eq v8, v10, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lokhttp3/internal/concurrent/Task;->getNextExecuteNanoTime$okhttp()J

    .line 34
    .line 35
    .line 36
    move-result-wide v11

    .line 37
    cmp-long v13, v11, v5

    .line 38
    .line 39
    if-gtz v13, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    const-string v3, "already scheduled"

    .line 54
    .line 55
    invoke-static {v2, p1, p0, v3}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return v9

    .line 59
    :cond_1
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p1, v5, v6}, Lokhttp3/internal/concurrent/Task;->setNextExecuteNanoTime$okhttp(J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 70
    .line 71
    invoke-virtual {v2, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz v8, :cond_4

    .line 76
    .line 77
    if-eqz p4, :cond_3

    .line 78
    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v11, "run again after "

    .line 82
    .line 83
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sub-long/2addr v5, v3

    .line 87
    invoke-static {v5, v6}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v11, "scheduled after "

    .line 102
    .line 103
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sub-long/2addr v5, v3

    .line 107
    invoke-static {v5, v6}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :goto_0
    invoke-static {v2, p1, p0, v5}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const/4 v5, 0x0

    .line 126
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_6

    .line 131
    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    check-cast v6, Lokhttp3/internal/concurrent/Task;

    .line 137
    .line 138
    invoke-virtual {v6}, Lokhttp3/internal/concurrent/Task;->getNextExecuteNanoTime$okhttp()J

    .line 139
    .line 140
    .line 141
    move-result-wide v11

    .line 142
    sub-long/2addr v11, v3

    .line 143
    cmp-long v6, v11, p2

    .line 144
    .line 145
    if-lez v6, :cond_5

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    const/4 v5, -0x1

    .line 152
    :goto_2
    if-ne v5, v10, :cond_7

    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    :cond_7
    invoke-virtual {v7, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    if-nez v5, :cond_8

    .line 162
    .line 163
    const/4 v9, 0x1

    .line 164
    :cond_8
    return v9
.end method

.method public final setActiveTask$okhttp(Lokhttp3/internal/concurrent/Task;)V
    .locals 0
    .param p1    # Lokhttp3/internal/concurrent/Task;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lokhttp3/internal/concurrent/Task;

    .line 2
    .line 3
    return-void
.end method

.method public final setCancelActiveTask$okhttp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShutdown$okhttp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Z

    .line 2
    .line 3
    return-void
.end method

.method public final shutdown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    sget-boolean v1, Lokhttp3/internal/_UtilJvmKt;->assertionsEnabled:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "Thread "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, " MUST NOT hold lock on "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/internal/concurrent/TaskRunner;

    .line 51
    .line 52
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    :try_start_0
    iput-boolean v2, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Z

    .line 61
    .line 62
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->cancelAllAndDecide$okhttp()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Lokhttp3/internal/concurrent/TaskRunner;->kickCoordinator$okhttp(Lokhttp3/internal/concurrent/TaskQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
