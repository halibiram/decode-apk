.class public Lkotlinx/coroutines/channels/BufferedChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/Channel<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002:\u0002{|B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\"\u0008\u0002\u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000e2\u0006\u0010\u000b\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0018\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00028\u0000H\u0090@\u00a2\u0006\u0004\u0008\u0013\u0010\rJ\u001d\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000e2\u0006\u0010\u000b\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u000f\u0010\u0019\u001a\u00020\u0012H\u0010\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u0010\u0010\u001d\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eH\u0096@\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u0015\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020$H\u0004\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010(\u001a\u00020$H\u0000\u00a2\u0006\u0004\u0008)\u0010\'J%\u0010.\u001a\u00020\u00062\n\u0010,\u001a\u0006\u0012\u0002\u0008\u00030+2\u0008\u0010\u000b\u001a\u0004\u0018\u00010-H\u0014\u00a2\u0006\u0004\u0008.\u0010/J\u0016\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u000000H\u0096\u0002\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u00083\u0010\u001bJ\u0019\u00106\u001a\u00020\u00122\u0008\u00105\u001a\u0004\u0018\u000104H\u0016\u00a2\u0006\u0004\u00086\u00107J\u0017\u00108\u001a\u00020\u00122\u0008\u00105\u001a\u0004\u0018\u000104\u00a2\u0006\u0004\u00088\u00107J\r\u00108\u001a\u00020\u0006\u00a2\u0006\u0004\u00088\u0010\u001bJ\u001d\u00108\u001a\u00020\u00062\u000e\u00105\u001a\n\u0018\u000109j\u0004\u0018\u0001`:\u00a2\u0006\u0004\u00088\u0010;J\u0019\u0010=\u001a\u00020\u00122\u0008\u00105\u001a\u0004\u0018\u000104H\u0010\u00a2\u0006\u0004\u0008<\u00107J!\u0010>\u001a\u00020\u00122\u0008\u00105\u001a\u0004\u0018\u0001042\u0006\u00108\u001a\u00020\u0012H\u0014\u00a2\u0006\u0004\u0008>\u0010?J4\u0010C\u001a\u00020\u00062#\u0010B\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u000104\u00a2\u0006\u000c\u0008@\u0012\u0008\u0008A\u0012\u0004\u0008\u0008(5\u0012\u0004\u0012\u00020\u00060\u0005H\u0016\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010F\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008E\u0010\u0018J\u000f\u0010H\u001a\u00020GH\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\u000f\u0010K\u001a\u00020GH\u0000\u00a2\u0006\u0004\u0008J\u0010IJ\r\u0010L\u001a\u00020\u0006\u00a2\u0006\u0004\u0008L\u0010\u001bR.\u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00078\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010MR\u0014\u0010P\u001a\u00020$8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010OR\u0014\u0010R\u001a\u00020$8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010OR,\u0010W\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00000S8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008V\u0010\u001b\u001a\u0004\u0008T\u0010UR \u0010\\\u001a\u0008\u0012\u0004\u0012\u00028\u00000X8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008[\u0010\u001b\u001a\u0004\u0008Y\u0010ZR&\u0010_\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000e0X8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008^\u0010\u001b\u001a\u0004\u0008]\u0010ZR\"\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000X8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008a\u0010\u001b\u001a\u0004\u0008`\u0010ZR\u0016\u0010e\u001a\u0004\u0018\u0001048DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010dR\u0014\u0010g\u001a\u0002048DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010dR\u0014\u0010h\u001a\u00020\u00128TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008h\u0010\u0018R\u001a\u0010i\u001a\u00020\u00128VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008j\u0010\u001b\u001a\u0004\u0008i\u0010\u0018R\u001a\u0010k\u001a\u00020\u00128VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008l\u0010\u001b\u001a\u0004\u0008k\u0010\u0018R\u001a\u0010m\u001a\u00020\u00128VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008n\u0010\u001b\u001a\u0004\u0008m\u0010\u0018R\u000b\u0010p\u001a\u00020o8\u0002X\u0082\u0004R\u000b\u0010q\u001a\u00020o8\u0002X\u0082\u0004R\u000b\u0010r\u001a\u00020o8\u0002X\u0082\u0004R\u000b\u0010s\u001a\u00020o8\u0002X\u0082\u0004R\u0017\u0010v\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000u0t8\u0002X\u0082\u0004R\u0017\u0010w\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000u0t8\u0002X\u0082\u0004R\u0017\u0010x\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000u0t8\u0002X\u0082\u0004R\u0013\u0010y\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0t8\u0002X\u0082\u0004R\u0013\u0010z\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0t8\u0002X\u0082\u0004\u00a8\u0006}"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/BufferedChannel;",
        "E",
        "Lkotlinx/coroutines/channels/Channel;",
        "",
        "capacity",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "onUndeliveredElement",
        "<init>",
        "(ILkotlin/jvm/functions/Function1;)V",
        "element",
        "send",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/ChannelResult;",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "trySend",
        "",
        "sendBroadcast$kotlinx_coroutines_core",
        "sendBroadcast",
        "trySendDropOldest-JP2dKIU",
        "trySendDropOldest",
        "shouldSendSuspend$kotlinx_coroutines_core",
        "()Z",
        "shouldSendSuspend",
        "onReceiveEnqueued",
        "()V",
        "onReceiveDequeued",
        "receive",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "receiveCatching-JP2dKIU",
        "receiveCatching",
        "tryReceive-PtdJZtk",
        "()Ljava/lang/Object;",
        "tryReceive",
        "",
        "globalCellIndex",
        "dropFirstElementUntilTheSpecifiedCellIsInTheBuffer",
        "(J)V",
        "globalIndex",
        "waitExpandBufferCompletion$kotlinx_coroutines_core",
        "waitExpandBufferCompletion",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "",
        "registerSelectForSend",
        "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "iterator",
        "()Lkotlinx/coroutines/channels/ChannelIterator;",
        "onClosedIdempotent",
        "",
        "cause",
        "close",
        "(Ljava/lang/Throwable;)Z",
        "cancel",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "(Ljava/util/concurrent/CancellationException;)V",
        "cancelImpl$kotlinx_coroutines_core",
        "cancelImpl",
        "closeOrCancelImpl",
        "(Ljava/lang/Throwable;Z)Z",
        "Lkotlin/ParameterName;",
        "name",
        "handler",
        "invokeOnClose",
        "(Lkotlin/jvm/functions/Function1;)V",
        "hasElements$kotlinx_coroutines_core",
        "hasElements",
        "",
        "toString",
        "()Ljava/lang/String;",
        "toStringDebug$kotlinx_coroutines_core",
        "toStringDebug",
        "checkSegmentStructureInvariants",
        "Lkotlin/jvm/functions/Function1;",
        "getSendersCounter$kotlinx_coroutines_core",
        "()J",
        "sendersCounter",
        "getReceiversCounter$kotlinx_coroutines_core",
        "receiversCounter",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/SelectClause2;",
        "getOnSend$annotations",
        "onSend",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "getOnReceive",
        "()Lkotlinx/coroutines/selects/SelectClause1;",
        "getOnReceive$annotations",
        "onReceive",
        "getOnReceiveCatching",
        "getOnReceiveCatching$annotations",
        "onReceiveCatching",
        "getOnReceiveOrNull",
        "getOnReceiveOrNull$annotations",
        "onReceiveOrNull",
        "getCloseCause",
        "()Ljava/lang/Throwable;",
        "closeCause",
        "getSendException",
        "sendException",
        "isConflatedDropOldest",
        "isClosedForSend",
        "isClosedForSend$annotations",
        "isClosedForReceive",
        "isClosedForReceive$annotations",
        "isEmpty",
        "isEmpty$annotations",
        "Lkotlinx/atomicfu/AtomicLong;",
        "sendersAndCloseStatus",
        "receivers",
        "bufferEnd",
        "completedExpandBuffersAndPauseFlag",
        "Lkotlinx/atomicfu/AtomicRef;",
        "Lkotlinx/coroutines/channels/ChannelSegment;",
        "sendSegment",
        "receiveSegment",
        "bufferEndSegment",
        "_closeCause",
        "closeHandler",
        "\ub3f0\ub4f0\ub543\ub4d4\ub3f4\ub50e\ub56f\ub458\ub3e4\ub4d0\ub3ac\ub41c\ub490\ub3f3\ub56d\ub41c\ub4fb\ub4a4\ub4d4\ub572\ub463\ub504\ub567\ub451\ub539\ub550\ub4be\ub54b\ub524\ub3f0\ub4fc\ub4fb\ub4bc\ub434\ub56d\ub4fc\ub540\ub3f3\ub410\ub3bd\ub3b0\ub3f7\ub567\ub4e8\ub4a4\ub4cc\ub4dc\ub3dd\ub543\ub4ec\ub569\ub578\ub56d\ub569\ub3e4\ub501\ub4bb\ub56f\ub490\ub566\ub578\ub3db\ub563\ub490\ub56b\ub54b\ub55f\ub578\ub3f6\ub579\ub571\ub53b\ub450\ub454\ub46c\ub4b9\ub55f\ub46c\ub4f0\ub3e4\ub55d\ub463\ub57b\ub420\ub463\ub505\ub3b8\ub42b\ub55d\ub56d\ub568\ub3b9\ub463\ub573\ub4e0\ub4df\ub3db\ub429\ub4fd\ub578\ub540\ub4dc\ub573\ub569\ub571\ub4b9\ub3b9\ub51e\ub510\ub3b8\ub4df\ub49b\ub4df\ub510\ub3f7\ub563\ub488\ub4d0\ub56c\ub3b9\ub528\ub51e\ub3f5\ub57b\ub543\ub570\ub55f\ub4b5\ub3ac\ub3dd",
        "kotlinx/coroutines/channels/\ub3a0\ub50e\ub503\ub4fc\ub489\ub428\ub3b9\ub568\ub4fb\ub540\ub51d\ub566\ub4ac\ub3f0\ub3f7\ub569\ub4dd\ub51e\ub4e0\ub463\ub4fc\ub3f8\ub410\ub543\ub460\ub51c\ub538\ub4b5\ub4e4\ub3f4\ub4f0\ub543\ub4dd\ub54b\ub3a0\ub3f8\ub524\ub540\ub51d\ub3b9\ub528\ub450\ub568\ub4b7\ub50e\ub50e\ub510\ub480\ub3ac\ub4f0\ub51c\ub56d\ub4d4\ub4e8\ub3f4\ub4fc\ub465\ub4dd\ub3b9\ub3f6\ub4e4\ub4dc\ub3bb\ub501\ub458\ub410\ub3e8\ub460\ub488\ub545\ub3e8\ub55c\ub51d\ub4e4\ub500\ub451\ub4b9\ub3b9\ub450\ub56c\ub4d0\ub3f6\ub4ec\ub56c\ub3c4\ub3b8\ub460\ub460\ub4a8\ub410\ub55d\ub50e\ub500\ub578\ub56a\ub4dd\ub4b5\ub56c\ub490\ub570\ub55d\ub4b5\ub572\ub4ec\ub4fd\ub3f5\ub480\ub54b\ub4ac\ub573\ub48b\ub4f0\ub55f\ub3f0\ub418\ub54b\ub454\ub571\ub4d4\ub540\ub563\ub418\ub498\ub3fc\ub4bb\ub501\ub465\ub498\ub41c\ub56b",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n+ 8 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 9 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 10 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3116:1\n270#1,6:3119\n277#1,68:3126\n394#1,18:3217\n241#1:3235\n266#1,10:3236\n277#1,48:3247\n415#1:3295\n331#1,14:3296\n419#1,3:3311\n241#1:3324\n266#1,10:3325\n277#1,68:3336\n241#1:3414\n266#1,10:3415\n277#1,68:3426\n241#1:3498\n266#1,10:3499\n277#1,68:3510\n241#1:3579\n266#1,10:3580\n277#1,68:3591\n906#1,52:3661\n984#1,8:3717\n878#1:3725\n902#1,33:3726\n994#1:3759\n936#1,14:3760\n955#1,3:3775\n999#1,6:3778\n906#1,52:3792\n984#1,8:3848\n878#1:3856\n902#1,33:3857\n994#1:3890\n936#1,14:3891\n955#1,3:3906\n999#1,6:3909\n878#1:3924\n902#1,48:3925\n955#1,3:3974\n878#1:3977\n902#1,48:3978\n955#1,3:4027\n241#1:4039\n266#1,10:4040\n277#1,68:4051\n878#1:4120\n902#1,48:4121\n955#1,3:4170\n1#2:3117\n3099#3:3118\n3099#3:3125\n3099#3:3246\n3099#3:3335\n3099#3:3425\n3099#3:3497\n3099#3:3509\n3099#3:3590\n3099#3:3660\n3099#3:3923\n3099#3:4030\n3099#3:4031\n3113#3:4032\n3113#3:4033\n3112#3:4034\n3112#3:4035\n3112#3:4036\n3113#3:4037\n3112#3:4038\n3099#3:4050\n3100#3:4173\n3099#3:4174\n3099#3:4175\n3099#3:4176\n3100#3:4177\n3099#3:4178\n3100#3:4201\n3099#3:4202\n3099#3:4203\n3100#3:4204\n3099#3:4254\n3100#3:4255\n3100#3:4256\n3100#3:4274\n3100#3:4275\n426#4,9:3194\n435#4,2:3211\n444#4,4:3213\n448#4,8:3314\n426#4,9:3405\n435#4,2:3495\n444#4,4:3713\n448#4,8:3784\n444#4,4:3844\n448#4,8:3915\n204#5:3203\n205#5:3206\n204#5:3207\n205#5:3210\n57#6,2:3204\n57#6,2:3208\n57#6,2:3322\n266#7:3310\n266#7:3404\n266#7:3494\n266#7:3578\n266#7:3659\n266#7:4119\n902#8:3774\n902#8:3905\n902#8:3973\n902#8:4026\n902#8:4169\n33#9,11:4179\n33#9,11:4190\n68#10,3:4205\n42#10,8:4208\n68#10,3:4216\n42#10,8:4219\n42#10,8:4227\n68#10,3:4235\n42#10,8:4238\n42#10,8:4246\n774#11:4257\n865#11,2:4258\n2318#11,14:4260\n774#11:4276\n865#11,2:4277\n2318#11,14:4279\n774#11:4293\n865#11,2:4294\n2318#11,14:4296\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n*L\n110#1:3119,6\n110#1:3126,68\n151#1:3217,18\n151#1:3235\n151#1:3236,10\n151#1:3247,48\n151#1:3295\n151#1:3296,14\n151#1:3311,3\n191#1:3324\n191#1:3325,10\n191#1:3336,68\n222#1:3414\n222#1:3415,10\n222#1:3426,68\n353#1:3498\n353#1:3499,10\n353#1:3510,68\n411#1:3579\n411#1:3580,10\n411#1:3591,68\n687#1:3661,52\n716#1:3717,8\n716#1:3725\n716#1:3726,33\n716#1:3759\n716#1:3760,14\n716#1:3775,3\n716#1:3778,6\n752#1:3792,52\n768#1:3848,8\n768#1:3856\n768#1:3857,33\n768#1:3890\n768#1:3891,14\n768#1:3906,3\n768#1:3909,6\n801#1:3924\n801#1:3925,48\n801#1:3974,3\n991#1:3977\n991#1:3978,48\n991#1:4027,3\n1484#1:4039\n1484#1:4040,10\n1484#1:4051,68\n1532#1:4120\n1532#1:4121,48\n1532#1:4170,3\n67#1:3118\n110#1:3125\n151#1:3246\n191#1:3335\n222#1:3425\n275#1:3497\n353#1:3509\n411#1:3590\n626#1:3660\n791#1:3923\n1027#1:4030\n1076#1:4031\n1394#1:4032\n1396#1:4033\n1426#1:4034\n1436#1:4035\n1445#1:4036\n1446#1:4037\n1453#1:4038\n1484#1:4050\n1898#1:4173\n1900#1:4174\n1902#1:4175\n1915#1:4176\n1926#1:4177\n1927#1:4178\n2229#1:4201\n2242#1:4202\n2252#1:4203\n2255#1:4204\n2572#1:4254\n2574#1:4255\n2599#1:4256\n2661#1:4274\n2662#1:4275\n131#1:3194,9\n131#1:3211,2\n150#1:3213,4\n150#1:3314,8\n218#1:3405,9\n218#1:3495,2\n715#1:3713,4\n715#1:3784,8\n766#1:3844,4\n766#1:3915,8\n135#1:3203\n135#1:3206\n138#1:3207\n138#1:3210\n135#1:3204,2\n138#1:3208,2\n180#1:3322,2\n151#1:3310\n191#1:3404\n222#1:3494\n353#1:3578\n411#1:3659\n1484#1:4119\n716#1:3774\n768#1:3905\n801#1:3973\n991#1:4026\n1532#1:4169\n2131#1:4179,11\n2186#1:4190,11\n2394#1:4205,3\n2394#1:4208,8\n2449#1:4216,3\n2449#1:4219,8\n2468#1:4227,8\n2498#1:4235,3\n2498#1:4238,8\n2559#1:4246,8\n2608#1:4257\n2608#1:4258,2\n2609#1:4260,14\n2673#1:4276\n2673#1:4277,2\n2674#1:4279,14\n2714#1:4293\n2714#1:4294,2\n2715#1:4296,14\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closeCause$volatile:Ljava/lang/Object;

.field private volatile synthetic bufferEnd$volatile:J

.field private volatile synthetic bufferEndSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic closeHandler$volatile:Ljava/lang/Object;

.field private volatile synthetic completedExpandBuffersAndPauseFlag$volatile:J

.field public final onUndeliveredElement:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TE;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile synthetic receiveSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic receivers$volatile:J

.field private volatile synthetic sendSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic sendersAndCloseStatus$volatile:J

.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:L돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "sendersAndCloseStatus$volatile"

    const-class v1, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "receivers$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "bufferEnd$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "completedExpandBuffersAndPauseFlag$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "sendSegment$volatile"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "receiveSegment$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "bufferEndSegment$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_closeCause$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "closeHandler$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-ltz p1, :cond_2

    .line 4
    invoke-static {p1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$initialBufferEnd(I)J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$volatile:J

    .line 5
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    .line 6
    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$volatile:J

    .line 7
    new-instance p1, Lkotlinx/coroutines/channels/ChannelSegment;

    const/4 v7, 0x3

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/channels/ChannelSegment;-><init>(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    .line 8
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$volatile:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$volatile:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$volatile:Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 11
    new-instance p1, L돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, L돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:L돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑;

    .line 13
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_CLOSE_CAUSE$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$volatile:Ljava/lang/Object;

    return-void

    .line 14
    :cond_2
    const-string p2, "Invalid channel capacity: "

    const-string v0, ", should be >=0"

    .line 15
    invoke-static {p1, p2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final access$bindCancellationFun(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance p0, L돰듟딁뒨딅듸땱땹딀딠뒐돝둡땬땰땫땟뒛따딜둣듨딄돷땲둑땵뎽땍뎽땜땹뒹땹딸땣듬듼도둥뒻둬도딸딟뒝땻땥땐땄둑듰땮두듸뒻뒘뒵뎰됩땃뒀땨뒨땻땭뒛딸듻따땪땹돰돸뒵딨듬땱둘땪둘듬돸뒨딟듬땅땸땸딅뒙둥딝땯땫딎돤땦뒹됴뒝땯땀둥듨뒻땯딌뎽둥뒛될뒼뒻됐된돰뎸든뎡땀딻땻돛듬돝땬뎨뒵뎸;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, L돰듟딁뒨딅듸땱땹딀딠뒐돝둡땬땰땫땟뒛따딜둣듨딄돷땲둑땵뎽땍뎽땜땹뒹땹딸땣듬듼도둥뒻둬도딸딟뒝땻땥땐땄둑듰땮두듸뒻뒘뒵뎰됩땃뒀땨뒨땻땭뒛딸듻따땪땹돰돸뒵딨듬땱둘땪둘듬돸뒨딟듬땅땸땸딅뒙둥딝땯땫딎돤땦뒹됴뒝땯땀둥듨뒻땯딌뎽둥뒛될뒼뒻됐된돰뎸든뎡땀딻땻돛듬돝땬뎨뒵뎸;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object p0
.end method

.method public static final access$bindCancellationFun(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p1, L돰딁뒋땟된딐둘뒝뒹됴딸딻듟땪땁뎡뒘돝돴된땮도돨돰듐딐듰땄뒵뎽뒛땭땅딨둠듔따돠땭땨뒉돠따땐딨돳땟돤둔뒀듐됴딜돝둬땁뒋딟돤땜됨땟딄뒉뒻땝뒈됐뎠듨뒹땄될땣뎹된돶땰뎠둔들뎻듌되듌돠듨됨땹땳둬뒐뒨됴듐딎땤딻땣돼둣뒘됐돷돼땻땀뒉딠땱돨드땪땦뎬둔땯득뎰땄돸뎽돳돷땯뒉드돰뒀땐;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, L돰딁뒋땟된딐둘뒝뒹됴딸딻듟땪땁뎡뒘돝돴된땮도돨돰듐딐듰땄뒵뎽뒛땭땅딨둠듔따돠땭땨뒉돠따땐딨돳땟돤둔뒀듐됴딜돝둬땁뒋딟돤땜됨땟딄뒉뒻땝뒈됐뎠듨뒹땄될땣뎹된돶땰뎠둔들뎻듌되듌돠듨됨땹땳둬뒐뒨됴듐딎땤딻땣돼둣뒘됐돷돼땻땀뒉딠땱돨드땪땦뎬둔땯득뎰땄돸뎽돳돷땯뒉드돰뒀땐;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;I)V

    return-object p1
.end method

.method public static final access$bindCancellationFunResult(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, L돰딁뒋땟된딐둘뒝뒹됴딸딻듟땪땁뎡뒘돝돴된땮도돨돰듐딐듰땄뒵뎽뒛땭땅딨둠듔따돠땭땨뒉돠따땐딨돳땟돤둔뒀듐됴딜돝둬땁뒋딟돤땜됨땟딄뒉뒻땝뒈됐뎠듨뒹땄될땣뎹된돶땰뎠둔들뎻듌되듌돠듨됨땹땳둬뒐뒨됴듐딎땤딻땣돼둣뒘됐돷돼땻땀뒉딠땱돨드땪땦뎬둔땯득뎰땄돸뎽돳돷땯뒉드돰뒀땐;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p1, p0, v0}, L돰딁뒋땟된딐둘뒝뒹됴딸딻듟땪땁뎡뒘돝돴된땮도돨돰듐딐듰땄뒵뎽뒛땭땅딨둠듔따돠땭땨뒉돠따땐딨돳땟돤둔뒀듐됴딜돝둬땁뒋딟돤땜됨땟딄뒉뒻땝뒈됐뎠듨뒹땄될땣뎹된돶땰뎠둔들뎻듌되듌돠듨됨땹땳둬뒐뒨됴듐딎땤딻땣돼둣뒘됐돷돼땻땀뒉딠땱돨드땪땦뎬둔땯득뎰땄돸뎽돳돷땯뒉드돰뒀땐;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;I)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public static final synthetic access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()Lkotlin/reflect/KFunction;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    :goto_0
    invoke-static {p3, p1, p2, v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_4

    .line 19
    .line 20
    invoke-static {v1}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_0
    :goto_1
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 25
    .line 26
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lkotlinx/coroutines/internal/Segment;

    .line 31
    .line 32
    iget-wide v5, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 33
    .line 34
    iget-wide v7, v2, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 35
    .line 36
    cmp-long v9, v5, v7

    .line 37
    .line 38
    if-ltz v9, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v3, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-eq v5, v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    :goto_2
    invoke-static {v1}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v2, 0x0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 88
    .line 89
    .line 90
    iget-wide p1, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 91
    .line 92
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 93
    .line 94
    int-to-long v0, v0

    .line 95
    mul-long p1, p1, v0

    .line 96
    .line 97
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    cmp-long p0, p1, v0

    .line 102
    .line 103
    if-gez p0, :cond_9

    .line 104
    .line 105
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    invoke-static {v1}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    check-cast p3, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 114
    .line 115
    iget-wide v0, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 116
    .line 117
    cmp-long v3, v0, p1

    .line 118
    .line 119
    if-lez v3, :cond_8

    .line 120
    .line 121
    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 122
    .line 123
    int-to-long p1, p1

    .line 124
    mul-long v0, v0, p1

    .line 125
    .line 126
    :cond_6
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 127
    .line 128
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v5

    .line 132
    const-wide p1, 0xfffffffffffffffL

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    and-long/2addr p1, v5

    .line 138
    cmp-long v4, p1, v0

    .line 139
    .line 140
    if-ltz v4, :cond_7

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    const/16 v4, 0x3c

    .line 144
    .line 145
    shr-long v7, v5, v4

    .line 146
    .line 147
    long-to-int v4, v7

    .line 148
    invoke-static {p1, p2, v4}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    .line 149
    .line 150
    .line 151
    move-result-wide v7

    .line 152
    move-object v4, p0

    .line 153
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_6

    .line 158
    .line 159
    :goto_3
    iget-wide p1, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 160
    .line 161
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 162
    .line 163
    int-to-long v0, v0

    .line 164
    mul-long p1, p1, v0

    .line 165
    .line 166
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    cmp-long p0, p1, v0

    .line 171
    .line 172
    if-gez p0, :cond_9

    .line 173
    .line 174
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_8
    move-object v2, p3

    .line 179
    :cond_9
    :goto_4
    return-object v2
.end method

.method public static final synthetic access$getReceiveException(Lkotlinx/coroutines/channels/BufferedChannel;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(JZ)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static final access$onCancellationChannelResultImplDoNotCall-5_sEAP8(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, p3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final access$onCancellationImplDoNotCall(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2, p3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final access$onClosedReceiveCatchingOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 5
    .line 6
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final access$onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()Ljava/lang/Throwable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final synthetic access$onClosedSend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 17
    .line 18
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p2, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveEnqueued()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2, p3}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 5
    .line 6
    add-int/2addr p3, p0

    .line 7
    invoke-interface {p1, p2, p3}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final access$processResultSelectReceive(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eq p2, p1, :cond_0

    .line 9
    .line 10
    return-object p2

    .line 11
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    throw p0
.end method

.method public static final access$processResultSelectReceiveCatching(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    .line 10
    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 11
    .line 12
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static final access$processResultSelectReceiveOrNull(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-ne p2, p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()Ljava/lang/Throwable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0

    .line 23
    :cond_1
    :goto_0
    return-object p2
.end method

.method public static final access$processResultSelectSend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eq p2, p1, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    throw p0
.end method

.method public static final synthetic access$receiveCatchingOnNoWaiterSuspend-GKJJFZk(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$receiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final access$registerSelectForReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p1, p0}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 37
    .line 38
    int-to-long v0, v0

    .line 39
    div-long v2, v7, v0

    .line 40
    .line 41
    rem-long v0, v7, v0

    .line 42
    .line 43
    long-to-int v9, v0

    .line 44
    iget-wide v0, p2, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 45
    .line 46
    cmp-long v4, v0, v2

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    invoke-static {p0, v2, v3, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object p2, v0

    .line 58
    :cond_3
    move-object v1, p0

    .line 59
    move-object v2, p2

    .line 60
    move v3, v9

    .line 61
    move-wide v4, v7

    .line 62
    move-object v6, p1

    .line 63
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-ne v0, v1, :cond_5

    .line 72
    .line 73
    instance-of v0, p1, Lkotlinx/coroutines/Waiter;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    check-cast p1, Lkotlinx/coroutines/Waiter;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const/4 p1, 0x0

    .line 81
    :goto_1
    if-eqz p1, :cond_7

    .line 82
    .line 83
    invoke-static {p0, p1, p2, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-ne v0, v1, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    cmp-long v2, v7, v0

    .line 98
    .line 99
    if-gez v2, :cond_0

    .line 100
    .line 101
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-eq v0, p0, :cond_8

    .line 110
    .line 111
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_2
    return-void

    .line 118
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string p1, "unexpected"

    .line 121
    .line 122
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0
.end method

.method public static final synthetic access$sendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p2

    .line 4
    move-object v3, p5

    .line 5
    move-wide v4, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;J)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->storeElement$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    if-eqz p7, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(J)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 29
    .line 30
    invoke-virtual {p1, p2, v2, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-nez p6, :cond_2

    .line 39
    .line 40
    const/4 p0, 0x3

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p1, p2, v2, p6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_6

    .line 47
    .line 48
    const/4 p0, 0x2

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    instance-of v2, v0, Lkotlinx/coroutines/Waiter;

    .line 51
    .line 52
    if-eqz v2, :cond_6

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    if-eqz p3, :cond_4

    .line 62
    .line 63
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveDequeued()V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/channels/ChannelSegment;->getAndSetState$kotlinx_coroutines_core(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    if-eq p0, p3, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 90
    .line 91
    .line 92
    :cond_5
    const/4 p0, 0x5

    .line 93
    goto :goto_0

    .line 94
    :cond_6
    invoke-virtual/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    :goto_0
    return p0
.end method

.method public static synthetic getOnReceive$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOnReceiveCatching$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOnReceiveOrNull$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOnSend$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isClosedForReceive$annotations()V
    .locals 0
    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    return-void
.end method

.method public static synthetic isClosedForSend$annotations()V
    .locals 0
    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    return-void
.end method

.method public static synthetic isEmpty$annotations()V
    .locals 0
    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    return-void
.end method

.method public static 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lkotlinx/coroutines/channels/BufferedChannel;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 5
    .line 6
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 13
    .line 14
    and-long/2addr v1, v3

    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    cmp-long v7, v1, v5

    .line 18
    .line 19
    if-eqz v7, :cond_0

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    and-long/2addr v1, v3

    .line 26
    cmp-long v7, v1, v5

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public static synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, L돳둥디땪듬뒉듻뒘뒻두땀땪딜딜뒼둔들뎻땫땁딞듸뎻딨듸둠뎽딃딅딜뎬땸땠땹땣땀땮땟돵땐딌땻땡땠됨땐뒛땄듨딀돰딄둘뎠뒬땻땝딄땬땹딟뎡뎬땹돴드뎬땦듸뒻돼둣듨뎬될돸돝될뎻땸뎸땩뒛딞듐뒬뒈딻딃딃땮딀딽딟드뒨됫뒵득땁듬듟딜땲땜땋뒷땪뎸뒼딸땟돨땡듬땝돠뒾땝됩도딟땤돶땤땲뒤땳땝뒨;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, L돳둥디땪듬뒉듻뒘뒻두땀땪딜딜뒼둔들뎻땫땁딞듸뎻딨듸둠뎽딃딅딜뎬땸땠땹땣땀땮땟돵땐딌땻땡땠됨땐뒛땄듨딀돰딄둘뎠뒬땻땝딄땬땹딟뎡뎬땹돴드뎬땦듸뒻돼둣듨뎬될돸돝될뎻땸뎸땩뒛딞듐뒬뒈딻딃딃땮딀딽딟드뒨됫뒵득땁듬듟딜땲땜땋뒷땪뎸뒼딸땟돨땡듬땝돠뒾땝됩도딟땤돶땤땲뒤땳땝뒨;

    .line 7
    .line 8
    iget v1, v0, L돳둥디땪듬뒉듻뒘뒻두땀땪딜딜뒼둔들뎻땫땁딞듸뎻딨듸둠뎽딃딅딜뎬땸땠땹땣땀땮땟돵땐딌땻땡땠됨땐뒛땄듨딀돰딄둘뎠뒬땻땝딄땬땹딟뎡뎬땹돴드뎬땦듸뒻돼둣듨뎬될돸돝될뎻땸뎸땩뒛딞듐뒬뒈딻딃딃땮딀딽딟드뒨됫뒵득땁듬듟딜땲땜땋뒷땪뎸뒼딸땟돨땡듬땝돠뒾땝됩도딟땤돶땤땲뒤땳땝뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, L돳둥디땪듬뒉듻뒘뒻두땀땪딜딜뒼둔들뎻땫땁딞듸뎻딨듸둠뎽딃딅딜뎬땸땠땹땣땀땮땟돵땐딌땻땡땠됨땐뒛땄듨딀돰딄둘뎠뒬땻땝딄땬땹딟뎡뎬땹돴드뎬땦듸뒻돼둣듨뎬될돸돝될뎻땸뎸땩뒛딞듐뒬뒈딻딃딃땮딀딽딟드뒨됫뒵득땁듬듟딜땲땜땋뒷땪뎸뒼딸땟돨땡듬땝돠뒾땝됩도딟땤돶땤땲뒤땳땝뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, L돳둥디땪듬뒉듻뒘뒻두땀땪딜딜뒼둔들뎻땫땁딞듸뎻딨듸둠뎽딃딅딜뎬땸땠땹땣땀땮땟돵땐딌땻땡땠됨땐뒛땄듨딀돰딄둘뎠뒬땻땝딄땬땹딟뎡뎬땹돴드뎬땦듸뒻돼둣듨뎬될돸돝될뎻땸뎸땩뒛딞듐뒬뒈딻딃딃땮딀딽딟드뒨됫뒵득땁듬듟딜땲땜땋뒷땪뎸뒼딸땟돨땡듬땝돠뒾땝됩도딟땤돶땤땲뒤땳땝뒨;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, L돳둥디땪듬뒉듻뒘뒻두땀땪딜딜뒼둔들뎻땫땁딞듸뎻딨듸둠뎽딃딅딜뎬땸땠땹땣땀땮땟돵땐딌땻땡땠됨땐뒛땄듨딀돰딄둘뎠뒬땻땝딄땬땹딟뎡뎬땹돴드뎬땦듸뒻돼둣듨뎬될돸돝될뎻땸뎸땩뒛딞듐뒬뒈딻딃딃땮딀딽딟드뒨됫뒵득땁듬듟딜땲땜땋뒷땪뎸뒼딸땟돨땡듬땝돠뒾땝됩도딟땤돶땤땲뒤땳땝뒨;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v6, L돳둥디땪듬뒉듻뒘뒻두땀땪딜딜뒼둔들뎻땫땁딞듸뎻딨듸둠뎽딃딅딜뎬땸땠땹땣땀땮땟돵땐딌땻땡땠됨땐뒛땄듨딀돰딄둘뎠뒬땻땝딄땬땹딟뎡뎬땹돴드뎬땦듸뒻돼둣듨뎬될돸돝될뎻땸뎸땩뒛딞듐뒬뒈딻딃딃땮딀딽딟드뒨됫뒵득땁듬듟딜땲땜땋뒷땪뎸뒼딸땟돨땡듬땝돠뒾땝됩도딟땤돶땤땲뒤땳땝뒨;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, L돳둥디땪듬뒉듻뒘뒻두땀땪딜딜뒼둔들뎻땫땁딞듸뎻딨듸둠뎽딃딅딜뎬땸땠땹땣땀땮땟돵땐딌땻땡땠됨땐뒛땄듨딀돰딄둘뎠뒬땻땝딄땬땹딟뎡뎬땹돴드뎬땦듸뒻돼둣듨뎬될돸돝될뎻땸뎸땩뒛딞듐뒬뒈딻딃딃땮딀딽딟드뒨됫뒵득땁듬듟딜땲땜땋뒷땪뎸뒼딸땟돨땡듬땝돠뒾땝됩도딟땤돶땤땲뒤땳땝뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p1, Lkotlinx/coroutines/channels/ChannelResult;

    .line 44
    .line 45
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 71
    .line 72
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 79
    .line 80
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 98
    .line 99
    int-to-long v7, v1

    .line 100
    div-long v9, v4, v7

    .line 101
    .line 102
    rem-long v7, v4, v7

    .line 103
    .line 104
    long-to-int v3, v7

    .line 105
    iget-wide v7, p1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 106
    .line 107
    cmp-long v1, v7, v9

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    invoke-static {p0, v9, v10, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-nez v1, :cond_5

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    move-object p1, v1

    .line 119
    :cond_6
    const/4 v12, 0x0

    .line 120
    move-object v7, p0

    .line 121
    move-object v8, p1

    .line 122
    move v9, v3

    .line 123
    move-wide v10, v4

    .line 124
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    if-eq v1, v7, :cond_a

    .line 133
    .line 134
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    if-ne v1, v7, :cond_7

    .line 139
    .line 140
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 141
    .line 142
    .line 143
    move-result-wide v7

    .line 144
    cmp-long v1, v4, v7

    .line 145
    .line 146
    if-gez v1, :cond_3

    .line 147
    .line 148
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    if-ne v1, v7, :cond_8

    .line 157
    .line 158
    iput v2, v6, L돳둥디땪듬뒉듻뒘뒻두땀땪딜딜뒼둔들뎻땫땁딞듸뎻딨듸둠뎽딃딅딜뎬땸땠땹땣땀땮땟돵땐딌땻땡땠됨땐뒛땄듨딀돰딄둘뎠뒬땻땝딄땬땹딟뎡뎬땹돴드뎬땦듸뒻돼둣듨뎬될돸돝될뎻땸뎸땩뒛딞듐뒬뒈딻딃딃땮딀딽딟드뒨됫뒵득땁듬듟딜땲땜땋뒷땪뎸뒼딸땟돨땡듬땝돠뒾땝됩도딟땤돶땤땲뒤땳땝뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 159
    .line 160
    move-object v1, p0

    .line 161
    move-object v2, p1

    .line 162
    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    if-ne p0, v0, :cond_9

    .line 167
    .line 168
    return-object v0

    .line 169
    :cond_8
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 170
    .line 171
    .line 172
    sget-object p0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 173
    .line 174
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    :cond_9
    :goto_3
    return-object p0

    .line 179
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    const-string p1, "unexpected"

    .line 182
    .line 183
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final cancel(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    const-string v0, "Channel was cancelled"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final checkSegmentStructureInvariants()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    .line 7
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-ne v0, v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "bufferEndSegment must be NULL_SEGMENT for rendezvous and unlimited channels; they do not manipulate it.\nChannel state: "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 51
    .line 52
    iget-wide v3, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 53
    .line 54
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 59
    .line 60
    iget-wide v5, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 61
    .line 62
    cmp-long v0, v3, v5

    .line 63
    .line 64
    if-gtz v0, :cond_16

    .line 65
    .line 66
    :goto_0
    const/4 v0, 0x3

    .line 67
    new-array v0, v0, [Lkotlinx/coroutines/channels/ChannelSegment;

    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v4, 0x0

    .line 74
    aput-object v3, v0, v4

    .line 75
    .line 76
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 77
    .line 78
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/4 v6, 0x1

    .line 83
    aput-object v5, v0, v6

    .line 84
    .line 85
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const/4 v6, 0x2

    .line 90
    aput-object v5, v0, v6

    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/lang/Iterable;

    .line 97
    .line 98
    new-instance v5, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_3

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    move-object v7, v6

    .line 118
    check-cast v7, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 119
    .line 120
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-eq v7, v8, :cond_2

    .line 125
    .line 126
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_15

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-nez v6, :cond_4

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    move-object v6, v5

    .line 152
    check-cast v6, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 153
    .line 154
    iget-wide v6, v6, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 155
    .line 156
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    move-object v9, v8

    .line 161
    check-cast v9, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 162
    .line 163
    iget-wide v9, v9, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 164
    .line 165
    cmp-long v11, v6, v9

    .line 166
    .line 167
    if-lez v11, :cond_6

    .line 168
    .line 169
    move-object v5, v8

    .line 170
    move-wide v6, v9

    .line 171
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-nez v8, :cond_5

    .line 176
    .line 177
    :goto_2
    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 178
    .line 179
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-nez v0, :cond_14

    .line 184
    .line 185
    :goto_3
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_13

    .line 190
    .line 191
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 199
    .line 200
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_8

    .line 205
    .line 206
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 214
    .line 215
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-ne v0, v5, :cond_7

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v1, "The `segment.next.prev === segment` invariant is violated.\nChannel state: "

    .line 225
    .line 226
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v1

    .line 246
    :cond_8
    :goto_4
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 247
    .line 248
    const/4 v6, 0x0

    .line 249
    const/4 v7, 0x0

    .line 250
    :goto_5
    if-ge v6, v0, :cond_10

    .line 251
    .line 252
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 257
    .line 258
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    if-nez v9, :cond_f

    .line 263
    .line 264
    instance-of v9, v8, Lkotlinx/coroutines/Waiter;

    .line 265
    .line 266
    if-nez v9, :cond_f

    .line 267
    .line 268
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    const-string v10, "Check failed."

    .line 277
    .line 278
    if-nez v9, :cond_d

    .line 279
    .line 280
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    if-nez v9, :cond_d

    .line 289
    .line 290
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    if-eqz v9, :cond_9

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    if-nez v9, :cond_b

    .line 310
    .line 311
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v9

    .line 319
    if-eqz v9, :cond_a

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 323
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v2, "Unexpected segment cell state: "

    .line 327
    .line 328
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v2, ".\nChannel state: "

    .line 335
    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw v0

    .line 354
    :cond_b
    :goto_6
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    if-nez v8, :cond_c

    .line 359
    .line 360
    goto :goto_8

    .line 361
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 362
    .line 363
    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v0

    .line 367
    :cond_d
    :goto_7
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    if-nez v8, :cond_e

    .line 372
    .line 373
    add-int/lit8 v7, v7, 0x1

    .line 374
    .line 375
    goto :goto_8

    .line 376
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 377
    .line 378
    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v0

    .line 382
    :cond_f
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 383
    .line 384
    goto/16 :goto_5

    .line 385
    .line 386
    :cond_10
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 387
    .line 388
    if-ne v7, v0, :cond_12

    .line 389
    .line 390
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    if-eq v5, v0, :cond_12

    .line 395
    .line 396
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    if-eq v5, v0, :cond_12

    .line 401
    .line 402
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    if-ne v5, v0, :cond_11

    .line 407
    .line 408
    goto :goto_9

    .line 409
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v1, "Logically removed segment is reachable.\nChannel state: "

    .line 412
    .line 413
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw v1

    .line 433
    :cond_12
    :goto_9
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    move-object v5, v0

    .line 441
    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 442
    .line 443
    goto/16 :goto_3

    .line 444
    .line 445
    :cond_13
    return-void

    .line 446
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    const-string v1, "All processed segments should be unreachable from the data structure, but the `prev` link of the leftmost segment is non-null.\nChannel state: "

    .line 449
    .line 450
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v1

    .line 470
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 471
    .line 472
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 473
    .line 474
    .line 475
    throw v0

    .line 476
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    const-string v1, "bufferEndSegment should not have lower id than receiveSegment.\nChannel state: "

    .line 479
    .line 480
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    throw v1
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public closeOrCancelImpl(Ljava/lang/Throwable;Z)Z
    .locals 13
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    const-wide v1, 0xfffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 9
    .line 10
    const/4 v10, 0x1

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    shr-long v3, v5, v0

    .line 18
    .line 19
    long-to-int v4, v3

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    and-long v3, v5, v1

    .line 23
    .line 24
    invoke-static {v3, v4, v10}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    move-object v3, v9

    .line 29
    move-object v4, p0

    .line 30
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_CLOSE_CAUSE$p()Lkotlinx/coroutines/internal/Symbol;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :cond_2
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 41
    .line 42
    invoke-virtual {v4, p0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    const/4 v11, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eq v4, v3, :cond_2

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    :goto_0
    const/4 v12, 0x3

    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    :cond_4
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    and-long p1, v5, v1

    .line 66
    .line 67
    invoke-static {p1, p2, v12}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    .line 68
    .line 69
    .line 70
    move-result-wide v7

    .line 71
    move-object v3, v9

    .line 72
    move-object v4, p0

    .line 73
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    shr-long p1, v5, v0

    .line 85
    .line 86
    long-to-int p2, p1

    .line 87
    if-eqz p2, :cond_7

    .line 88
    .line 89
    if-eq p2, v10, :cond_6

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    and-long p1, v5, v1

    .line 93
    .line 94
    invoke-static {p1, p2, v12}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    .line 95
    .line 96
    .line 97
    move-result-wide p1

    .line 98
    :goto_1
    move-wide v7, p1

    .line 99
    goto :goto_2

    .line 100
    :cond_7
    and-long p1, v5, v1

    .line 101
    .line 102
    const/4 v3, 0x2

    .line 103
    invoke-static {p1, p2, v3}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    .line 104
    .line 105
    .line 106
    move-result-wide p1

    .line 107
    goto :goto_1

    .line 108
    :goto_2
    move-object v3, v9

    .line 109
    move-object v4, p0

    .line 110
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    :goto_3
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedIdempotent()V

    .line 120
    .line 121
    .line 122
    if-eqz v11, :cond_c

    .line 123
    .line 124
    :goto_4
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannel;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 125
    .line 126
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-nez p2, :cond_8

    .line 131
    .line 132
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    goto :goto_5

    .line 137
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :cond_9
    :goto_5
    invoke-virtual {p1, p0, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_b

    .line 146
    .line 147
    if-nez p2, :cond_a

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_a
    invoke-static {p2, v10}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 155
    .line 156
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 157
    .line 158
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_b
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eq v1, p2, :cond_9

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_c
    :goto_6
    return v11
.end method

.method public final dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V
    .locals 10

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 8
    .line 9
    :cond_0
    :goto_0
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v8

    .line 15
    iget v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    add-long/2addr v2, v8

    .line 19
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 20
    .line 21
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long v4, p1, v2

    .line 30
    .line 31
    if-gez v4, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-wide/16 v2, 0x1

    .line 35
    .line 36
    add-long v5, v8, v2

    .line 37
    .line 38
    move-object v2, p0

    .line 39
    move-wide v3, v8

    .line 40
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 47
    .line 48
    int-to-long v2, v1

    .line 49
    div-long v2, v8, v2

    .line 50
    .line 51
    int-to-long v4, v1

    .line 52
    rem-long v4, v8, v4

    .line 53
    .line 54
    long-to-int v4, v4

    .line 55
    iget-wide v5, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 56
    .line 57
    cmp-long v1, v5, v2

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0, v2, v3, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move-object v0, v1

    .line 69
    :cond_3
    const/4 v5, 0x0

    .line 70
    move-object v2, p0

    .line 71
    move-object v3, v0

    .line 72
    move-wide v6, v8

    .line 73
    invoke-virtual/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;J)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-ne v1, v2, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    cmp-long v3, v8, v1

    .line 88
    .line 89
    if-gez v3, :cond_0

    .line 90
    .line 91
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 99
    .line 100
    if-eqz v2, :cond_0

    .line 101
    .line 102
    const/4 v3, 0x2

    .line 103
    const/4 v4, 0x0

    .line 104
    invoke-static {v2, v1, v4, v3, v4}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-nez v1, :cond_5

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    throw v1
.end method

.method public final getCloseCause()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Throwable;

    .line 8
    .line 9
    return-object v0
.end method

.method public getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 2
    .line 3
    sget-object v1, L돰딄뒐땱뎽땻땡땟땨땹딀듔뒀땪돤딹땱들드땟딀됨뒷땄딨둘딠땣딻딹딜땄될뎹디딻뎡땐돳딎뎻뒀딀땤됩땣둬듼땧뒛땟돤땔듻듽돸디둑둘듨듰뒬딎둡땸둡뎠듽딄땳땫듸돝땲듔듰땮뒘뒷땮땵땧둣뒼땨땳땫딠듰땸듬됴뎨됫뎸듻듽뎨듌두돶딽됩땍딐뒹뒷뒹딎뎠둑돳딤돠뒷둔딐둔드듟땄될듰됐땵뒼뒬뒻땝땱;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L돰딄뒐땱뎽땻땡땟땨땹딀듔뒀땪돤딹땱들드땟딀됨뒷땄딨둘딠땣딻딹딜땄될뎹디딻뎡땐돳딎뎻뒀딀땤됩땣둬듼땧뒛땟돤땔듻듽돸디둑둘듨듰뒬딎둡땸둡뎠듽딄땳땫듸돝땲듔듰땮뒘뒷땮땵땧둣뒼땨땳땫딠듰땸듬됴뎨됫뎸듻듽뎨듌두돶딽됩땍딐뒹뒷뒹딎뎠둑돳딤돠뒷둔딐둔드듟땄될듰됐땵뒼뒬뒻땝땱;

    .line 4
    .line 5
    const-string v2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 16
    .line 17
    sget-object v3, L돰딽땨돶뒼땮딸땭듼뎹딎땹딸땲딻딁뒵딃땨땡됩땪뒤땮듨들딎딄뎽둔드뒙뒵돝땣땹땳도디뒤땠둠땝뒀됨딄뒤됨됨뒉두돼딠땮뒘땲딤듐뒨딤땃뒀뒋땲들둘땩딨땯땜뎸딸뎬듟딄땭둡둥뎰둔득뎹땻돸뒾땡뒋뒵돷딤됩득땔뎽됴땰땥땯듽돠딽듟두땪들됩뎰뎸땅둘딄뎽돴딐돛땩돰땫뎻뒋땟둬딟땱듻땭땻땹땀듼;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L돰딽땨돶뒼땮딸땭듼뎹딎땹딸땲딻딁뒵딃땨땡됩땪뒤땮듨들딎딄뎽둔드뒙뒵돝땣땹땳도디뒤땠둠땝뒀됨딄뒤됨됨뒉두돼딠땮뒘땲딤듐뒨딤땃뒀뒋땲들둘땩딨땯땜뎸딸뎬듟딄땭둡둥뎰둔득뎹땻돸뒾땡뒋뒵돷딤됩득땔뎽됴땰땥땯듽돠딽듟두땪들됩뎰뎸땅둘딄뎽돴딐돛땩돰땫뎻뒋땟둬딟땱듻땭땻땹땀듼;

    .line 18
    .line 19
    const-string v4, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 29
    .line 30
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:L돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑;

    .line 31
    .line 32
    invoke-direct {v0, p0, v1, v2, v3}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public getOnReceiveCatching()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 2
    .line 3
    sget-object v1, L돰땣득듔땡딠돶돶딄딜뒤된땲딎돨땬뒾땡돠땤뒋뒵돸뒀뒙돼딄뒛도땝딠된딅됨땃됴땣둡돰딅땅땫딐땹뎬땃땸뒾땬뒷뒨땔됴듸되뒉둡듨둣뒈땻땥땬땥득땧뒬땳드뒻듽듻딝땋땹돛뒀뎬딝땣땡뒼되뒉듬될뎡땣땠돨듸둠딠뒉땝뎸딝땳뎽둣될듐딝딠둣딐딸돨땔뒋뎹땮딄둥땫뒤땄된땤뒬땝딌딹뒘둠땃뎹듼뎬딄;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L돰땣득듔땡딠돶돶딄딜뒤된땲딎돨땬뒾땡돠땤뒋뒵돸뒀뒙돼딄뒛도땝딠된딅됨땃됴땣둡돰딅땅땫딐땹뎬땃땸뒾땬뒷뒨땔됴듸되뒉둡듨둣뒈땻땥땬땥득땧뒬땳드뒻듽듻딝땋땹돛뒀뎬딝땣땡뒼되뒉듬될뎡땣땠돨듸둠딠뒉땝뎸딝땳뎽둣될듐딝딠둣딐딸돨땔뒋뎹땮딄둥땫뒤땄된땤뒬땝딌딹뒘둠땃뎹듼뎬딄;

    .line 4
    .line 5
    const-string v2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 16
    .line 17
    sget-object v3, L돰땣땅됩뒛땧땵득땮됨땡땻땨딨뒾땃돳땜뎹됫땁뒘딐땩딤들뒐딟뒝둠드땸든딀땜땵득뎠땍땩땱땝듰돝뎬뒵됫듐딞두돸든들딠뒐딎돳땵딌땩둔딟뒻듻뎡둠딻땵뎬땹뒋뒉딐뎠디둡뒈뒻땪땐딐땅딠땳땥딅돶땨딸둡땐돨둬둡뒘됨듨뒘될땮디듌딟뎹딞뎸딠뎰땅딁딄뒵둬든땻딟도듸돳딨땹딃돰땧땡땟드딅땟딜;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L돰땣땅됩뒛땧땵득땮됨땡땻땨딨뒾땃돳땜뎹됫땁뒘딐땩딤들뒐딟뒝둠드땸든딀땜땵득뎠땍땩땱땝듰돝뎬뒵됫듐딞두돸든들딠뒐딎돳땵딌땩둔딟뒻듻뎡둠딻땵뎬땹뒋뒉딐뎠디둡뒈뒻땪땐딐땅딠땳땥딅돶땨딸둡땐돨둬둡뒘됨듨뒘될땮디듌딟뎹딞뎸딠뎰땅딁딄뒵둬든땻딟도듸돳딨땹딃돰땧땡땟드딅땟딜;

    .line 18
    .line 19
    const-string v4, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 29
    .line 30
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:L돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑;

    .line 31
    .line 32
    invoke-direct {v0, p0, v1, v2, v3}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 2
    .line 3
    sget-object v1, L돳뎬돸뎨땁땋딀뎰뒀땁뎠둥뎰땲듌땝뎻땔들둬됩땦땀뒼됴드딅딁땪돳땠뒼듌돛딠땸든둥듸딤득딤땐듸돶됩딝딁될듟딄드땹됩뒨땐땥땮땀듰땔땤뒛됩돛뒛된딸딎땻땅땋됐딤뒋딞된땦땫뒷되돤뒐뒈땸땡땯땡둥뒋둑둠땻듰돳땮따땠듰뒋돛땳땪뒹될딀뒙뎨뎽딟됫듰뎻딞될되둔듔듔듸득둣딽뒐뎽뎨땫뒷뒛돨;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L돳뎬돸뎨땁땋딀뎰뒀땁뎠둥뎰땲듌땝뎻땔들둬됩땦땀뒼됴드딅딁땪돳땠뒼듌돛딠땸든둥듸딤득딤땐듸돶됩딝딁될듟딄드땹됩뒨땐땥땮땀듰땔땤뒛됩돛뒛된딸딎땻땅땋됐딤뒋딞된땦땫뒷되돤뒐뒈땸땡땯땡둥뒋둑둠땻듰돳땮따땠듰뒋돛땳땪뒹될딀뒙뎨뎽딟됫듰뎻딞될되둔듔듔듸득둣딽뒐뎽뎨땫뒷뒛돨;

    .line 4
    .line 5
    const-string v2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 16
    .line 17
    sget-object v3, L돳뎻뎡딅땲두돨뒤땧뒻딻둣땔땫땪땟뒝땱땀땯딀딠뒾뒵땭땪듰땦돴딐돵뒾땁돼땋땵됨됩디들딃딄딠땱둘땥돠땐딎땩땤뒘뒻딠뒹뎹됫뎸딄뎨듰뎹땦뒉뒵뎡따딻둑딻됴됩땸뎨땣땠딀땝딨드득뒉땀됩딠돤땁땪뎠땫돵따드둘돴땬둣딞땱딸딤땤딻도뒼뒾뒤땮땍됩둬땲딹뒷땄딅딠땲듟딹되디듻뒙땱돴뒬돤듐뒋;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L돳뎻뎡딅땲두돨뒤땧뒻딻둣땔땫땪땟뒝땱땀땯딀딠뒾뒵땭땪듰땦돴딐돵뒾땁돼땋땵됨됩디들딃딄딠땱둘땥돠땐딎땩땤뒘뒻딠뒹뎹됫뎸딄뎨듰뎹땦뒉뒵뎡따딻둑딻됴됩땸뎨땣땠딀땝딨드득뒉땀됩딠돤땁땪뎠땫돵따드둘돴땬둣딞땱딸딤땤딻도뒼뒾뒤땮땍됩둬땲딹뒷땄딅딠땲듟딹되디듻뒙땱돴뒬돤듐뒋;

    .line 18
    .line 19
    const-string v4, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 29
    .line 30
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:L돨땻땦땫드땠딹돸듐두땪들듸듻뎡땵드듸됫딠돼들딎됩뒨디듐딜딌땣들됐뎰돤딃듰딽땪땱둘딅땸딸듻딟땜땃딽땫땅듔딻딃뒙돼뎨딠둑땦돛딽딝듨땄땡땋땀땍뎠돝뎨땦듔땥뒐딝딌듟돠듼돼뒾돴딄따땧땁돨뒋땤득뒷뎡뒵돸땪듰땲땐돶듐땋땯뒨딟땲땄두딠듻뒐돸딞땱뒘득뒙땍뒝듽땁땰디뒬땔될듟둑된둑;

    .line 31
    .line 32
    invoke-direct {v0, p0, v1, v2, v3}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public getOnSend()Lkotlinx/coroutines/selects/SelectClause2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "TE;",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lkotlinx/coroutines/selects/SelectClause2Impl;

    .line 2
    .line 3
    sget-object v0, L돳돼땲듸돼땍딞땵돰땵돝딅딝듟될됩드땍땫딀듐땦뎻둘딟뒤됩됩뒋듟뒹됴땟딝돼딃뒈득따땭될듼뒼뒋땥됐딄돼뒙뎽돤딅되돵뒋땟땱땅됫들듻딄돶땝듔딟땃땔돛땲돨딅됩땱뎰딄땳딟돨땤땄됐돵뎨될뎨딅듟딝뎬땸딌딁딃땍뎬됩됩돛땁땰뎡두뒐땬돳땸땍됩듼듟듽땐돼듰둠뒷땟땤땅듟뒻득듐딨뒋땄뎠디땬;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L돳돼땲듸돼땍딞땵돰땵돝딅딝듟될됩드땍땫딀듐땦뎻둘딟뒤됩됩뒋듟뒹됴땟딝돼딃뒈득따땭될듼뒼뒋땥됐딄돼뒙뎽돤딅되돵뒋땟땱땅됫들듻딄돶땝듔딟땃땔돛땲돨딅됩땱뎰딄땳딟돨땤땄됐돵뎨될뎨딅듟딝뎬땸딌딁딃땍뎬됩됩돛땁땰뎡두뒐땬돳땸땍됩듼듟듽땐돼듰둠뒷땟땤땅듟뒻득듐딨뒋땄뎠디땬;

    .line 4
    .line 5
    const-string v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v2, v0

    .line 16
    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 17
    .line 18
    sget-object v0, L돳된땨도뒹딎뎠땵땫든뒤두됫땠듻듔뒙뒹땄돴뒻딤돝땔땤뒉뎬돴딽든땬땍뒘디둑딜땳뒛돵뎡땅뒵땜득뎨땮득딽땟딨됩딝딌듼땲땮뒋딅듬뒵딁됫되둘뒷딐디뎽땮뒼둥딤된땪듨땻됴돛둑땀딸땣땅땬뎡땄돰도딄듻듔땸돷뒷땤땫딅듟땍딽땅돵땮돝돤땋돰땱돛뎨둡땨땫딞들땡땵땹땍딀딐디듻땀뒾뒬딃땥땃돼;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L돳된땨도뒹딎뎠땵땫든뒤두됫땠듻듔뒙뒹땄돴뒻딤돝땔땤뒉뎬돴딽든땬땍뒘디둑딜땳뒛돵뎡땅뒵땜득뎨땮득딽땟딨됩딝딌듼땲땮뒋딅듬뒵딁됫되둘뒷딐디뎽땮뒼둥딤된땪듨땻됴돛둑땀딸땣땅땬뎡땄돰도딄듻듔땸돷뒷땤땫딅듟땍딽땅돵땮돝돤땋돰땱돛뎨둡땨땫딞들땡땵땹땍딀딐디듻땀뒾뒬딃땥땃돼;

    .line 19
    .line 20
    const-string v3, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>"

    .line 21
    .line 22
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v3, v0

    .line 30
    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 31
    .line 32
    const/16 v5, 0x8

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    move-object v0, v7

    .line 37
    move-object v1, p0

    .line 38
    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/selects/SelectClause2Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    return-object v7
.end method

.method public final getReceiversCounter$kotlinx_coroutines_core()J
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getSendException()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    .line 8
    .line 9
    const-string v1, "Channel was closed"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final getSendersCounter$kotlinx_coroutines_core()J
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide v2, 0xfffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr v0, v2

    .line 13
    return-wide v0
.end method

.method public final hasElements$kotlinx_coroutines_core()Z
    .locals 11

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 8
    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const/4 v6, 0x0

    .line 18
    cmp-long v7, v2, v4

    .line 19
    .line 20
    if-gtz v7, :cond_1

    .line 21
    .line 22
    return v6

    .line 23
    :cond_1
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 24
    .line 25
    int-to-long v7, v2

    .line 26
    div-long v7, v4, v7

    .line 27
    .line 28
    iget-wide v9, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 29
    .line 30
    cmp-long v3, v9, v7

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v7, v8, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 45
    .line 46
    iget-wide v0, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 47
    .line 48
    cmp-long v2, v0, v7

    .line 49
    .line 50
    if-gez v2, :cond_0

    .line 51
    .line 52
    return v6

    .line 53
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 54
    .line 55
    .line 56
    int-to-long v2, v2

    .line 57
    rem-long v2, v4, v2

    .line 58
    .line 59
    long-to-int v0, v2

    .line 60
    :cond_3
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_c

    .line 65
    .line 66
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-ne v2, v3, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 74
    .line 75
    if-ne v2, v0, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-ne v2, v0, :cond_6

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-ne v2, v0, :cond_7

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-ne v2, v0, :cond_8

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-ne v2, v0, :cond_9

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-ne v2, v0, :cond_a

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-ne v2, v0, :cond_b

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_b
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    cmp-long v2, v4, v0

    .line 125
    .line 126
    if-nez v2, :cond_d

    .line 127
    .line 128
    :goto_1
    const/4 v0, 0x1

    .line 129
    return v0

    .line 130
    :cond_c
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v1, v0, v2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V

    .line 141
    .line 142
    .line 143
    :cond_d
    :goto_3
    const-wide/16 v0, 0x1

    .line 144
    .line 145
    add-long v6, v4, v0

    .line 146
    .line 147
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 148
    .line 149
    move-object v3, p0

    .line 150
    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0
.end method

.method public invokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-ne v1, v2, :cond_4

    .line 26
    .line 27
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_2
    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eq v1, v2, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-ne v1, p1, :cond_5

    .line 61
    .line 62
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "Another handler was already registered and successfully invoked"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Another handler is already registered: "

    .line 75
    .line 76
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public isClosedForReceive()Z
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(JZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public isClosedForSend()Z
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(JZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public isConflatedDropOldest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->hasElements$kotlinx_coroutines_core()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    xor-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    return v0
.end method

.method public iterator()Lkotlinx/coroutines/channels/ChannelIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->offer(Lkotlinx/coroutines/channels/Channel;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onClosedIdempotent()V
    .locals 0

    return-void
.end method

.method public onReceiveDequeued()V
    .locals 0

    return-void
.end method

.method public onReceiveEnqueued()V
    .locals 0

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'tryReceive\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'poll\' did, for the precise replacement please refer to the \'poll\' documentation"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "tryReceive().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->poll(Lkotlinx/coroutines/channels/Channel;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_6

    .line 16
    .line 17
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 26
    .line 27
    int-to-long v1, v1

    .line 28
    div-long v3, v8, v1

    .line 29
    .line 30
    rem-long v1, v8, v1

    .line 31
    .line 32
    long-to-int v10, v1

    .line 33
    iget-wide v1, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 34
    .line 35
    cmp-long v5, v1, v3

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    invoke-static {p0, v3, v4, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v0, v1

    .line 47
    :cond_2
    const/4 v7, 0x0

    .line 48
    move-object v2, p0

    .line 49
    move-object v3, v0

    .line 50
    move v4, v10

    .line 51
    move-wide v5, v8

    .line 52
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eq v1, v2, :cond_5

    .line 61
    .line 62
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-ne v1, v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    cmp-long v3, v8, v1

    .line 73
    .line 74
    if-gez v3, :cond_0

    .line 75
    .line 76
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-ne v1, v2, :cond_4

    .line 85
    .line 86
    move-object v2, p0

    .line 87
    move-object v3, v0

    .line 88
    move v4, v10

    .line 89
    move-wide v5, v8

    .line 90
    move-object v7, p1

    .line 91
    invoke-virtual/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 97
    .line 98
    .line 99
    :goto_1
    return-object v1

    .line 100
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string v0, "unexpected"

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()Ljava/lang/Throwable;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    throw p1
.end method

.method public receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public receiveOrNull(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of \'receiveCatching\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'receiveOrNull\' did, for the detailed replacement please refer to the \'receiveOrNull\' documentation"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "receiveCatching().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/internal/LowPriorityInOverloadResolution;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->receiveOrNull(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 13
    .param p1    # Lkotlinx/coroutines/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide v3, 0xfffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v3, v1

    .line 25
    invoke-static {p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 30
    .line 31
    int-to-long v5, v2

    .line 32
    div-long v5, v3, v5

    .line 33
    .line 34
    int-to-long v7, v2

    .line 35
    rem-long v7, v3, v7

    .line 36
    .line 37
    long-to-int v2, v7

    .line 38
    iget-wide v7, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 39
    .line 40
    cmp-long v9, v7, v5

    .line 41
    .line 42
    if-eqz v9, :cond_3

    .line 43
    .line 44
    invoke-static {p0, v5, v6, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_2
    move-object v0, v5

    .line 58
    :cond_3
    move-object v5, p0

    .line 59
    move-object v6, v0

    .line 60
    move v7, v2

    .line 61
    move-object v8, p2

    .line 62
    move-wide v9, v3

    .line 63
    move-object v11, p1

    .line 64
    move v12, v1

    .line 65
    invoke-static/range {v5 .. v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_b

    .line 70
    .line 71
    const/4 v6, 0x1

    .line 72
    if-eq v5, v6, :cond_a

    .line 73
    .line 74
    const/4 v6, 0x2

    .line 75
    if-eq v5, v6, :cond_7

    .line 76
    .line 77
    const/4 v1, 0x3

    .line 78
    if-eq v5, v1, :cond_6

    .line 79
    .line 80
    const/4 v1, 0x4

    .line 81
    if-eq v5, v1, :cond_5

    .line 82
    .line 83
    const/4 v1, 0x5

    .line 84
    if-eq v5, v1, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    cmp-long v5, v3, v1

    .line 96
    .line 97
    if-gez v5, :cond_1

    .line 98
    .line 99
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    const-string p2, "unexpected"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_7
    if-eqz v1, :cond_8

    .line 112
    .line 113
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_8
    instance-of p2, p1, Lkotlinx/coroutines/Waiter;

    .line 118
    .line 119
    if-eqz p2, :cond_9

    .line 120
    .line 121
    check-cast p1, Lkotlinx/coroutines/Waiter;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_9
    const/4 p1, 0x0

    .line 125
    :goto_2
    if-eqz p1, :cond_c

    .line 126
    .line 127
    invoke-static {p0, p1, v0, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_a
    :goto_3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 132
    .line 133
    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_b
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_c
    :goto_4
    return-void
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide v3, 0xfffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v3, v1

    .line 25
    invoke-static {p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 30
    .line 31
    int-to-long v5, v2

    .line 32
    div-long v7, v3, v5

    .line 33
    .line 34
    rem-long v5, v3, v5

    .line 35
    .line 36
    long-to-int v2, v5

    .line 37
    iget-wide v5, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 38
    .line 39
    cmp-long v9, v5, v7

    .line 40
    .line 41
    if-eqz v9, :cond_2

    .line 42
    .line 43
    invoke-static {p0, v7, v8, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-ne p1, p2, :cond_9

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_1
    move-object v0, v5

    .line 64
    :cond_2
    const/4 v11, 0x0

    .line 65
    move-object v5, p0

    .line 66
    move-object v6, v0

    .line 67
    move v7, v2

    .line 68
    move-object v8, p1

    .line 69
    move-wide v9, v3

    .line 70
    move v12, v1

    .line 71
    invoke-static/range {v5 .. v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_8

    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    if-eq v5, v6, :cond_9

    .line 79
    .line 80
    const/4 v6, 0x2

    .line 81
    if-eq v5, v6, :cond_7

    .line 82
    .line 83
    const/4 v1, 0x3

    .line 84
    if-eq v5, v1, :cond_6

    .line 85
    .line 86
    const/4 v1, 0x4

    .line 87
    if-eq v5, v1, :cond_4

    .line 88
    .line 89
    const/4 v1, 0x5

    .line 90
    if-eq v5, v1, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    cmp-long v5, v3, v1

    .line 102
    .line 103
    if-gez v5, :cond_5

    .line 104
    .line 105
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 106
    .line 107
    .line 108
    :cond_5
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    if-ne p1, p2, :cond_9

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    move-object v5, p0

    .line 120
    move-object v6, v0

    .line 121
    move v7, v2

    .line 122
    move-object v8, p1

    .line 123
    move-wide v9, v3

    .line 124
    move-object v11, p2

    .line 125
    invoke-virtual/range {v5 .. v11}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    if-ne p1, p2, :cond_9

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_7
    if-eqz v1, :cond_9

    .line 137
    .line 138
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    if-ne p1, p2, :cond_9

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_8
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 153
    .line 154
    .line 155
    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 156
    .line 157
    :goto_1
    return-object p1
.end method

.method public sendBroadcast$kotlinx_coroutines_core(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    new-instance v9, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 4
    .line 5
    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v10, 0x1

    .line 10
    invoke-direct {v9, v0, v10}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v8, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    if-nez v0, :cond_c

    .line 19
    .line 20
    new-instance v11, L돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝;

    .line 21
    .line 22
    invoke-direct {v11, v9}, L돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 34
    .line 35
    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    const-wide v3, 0xfffffffffffffffL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    and-long v12, v1, v3

    .line 49
    .line 50
    invoke-static {v8, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 55
    .line 56
    int-to-long v1, v1

    .line 57
    div-long v3, v12, v1

    .line 58
    .line 59
    rem-long v1, v12, v1

    .line 60
    .line 61
    long-to-int v15, v1

    .line 62
    iget-wide v1, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 63
    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    cmp-long v5, v1, v3

    .line 67
    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    invoke-static {v8, v3, v4, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    if-eqz v14, :cond_0

    .line 77
    .line 78
    :cond_1
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 79
    .line 80
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v9, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :cond_2
    move-object v7, v1

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move-object v7, v0

    .line 96
    :goto_2
    move-object/from16 v0, p0

    .line 97
    .line 98
    move-object v1, v7

    .line 99
    move v2, v15

    .line 100
    move-object/from16 v3, p1

    .line 101
    .line 102
    move-wide v4, v12

    .line 103
    move-object v6, v11

    .line 104
    move-object/from16 v17, v7

    .line 105
    .line 106
    move v7, v14

    .line 107
    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_a

    .line 112
    .line 113
    if-eq v0, v10, :cond_9

    .line 114
    .line 115
    const/4 v1, 0x2

    .line 116
    if-eq v0, v1, :cond_7

    .line 117
    .line 118
    const/4 v1, 0x3

    .line 119
    if-eq v0, v1, :cond_6

    .line 120
    .line 121
    const/4 v1, 0x4

    .line 122
    if-eq v0, v1, :cond_5

    .line 123
    .line 124
    const/4 v1, 0x5

    .line 125
    if-eq v0, v1, :cond_4

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 129
    .line 130
    .line 131
    :goto_3
    move-object/from16 v0, v17

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    cmp-long v2, v12, v0

    .line 139
    .line 140
    if-gez v2, :cond_1

    .line 141
    .line 142
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    const-string v1, "unexpected"

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_7
    if-eqz v14, :cond_8

    .line 155
    .line 156
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_8
    move-object/from16 v0, v17

    .line 161
    .line 162
    invoke-static {v8, v11, v0, v15}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_9
    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 167
    .line 168
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-interface {v9, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_a
    move-object/from16 v0, v17

    .line 181
    .line 182
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :goto_5
    invoke-virtual {v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-ne v0, v1, :cond_b

    .line 195
    .line 196
    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 197
    .line 198
    .line 199
    :cond_b
    return-object v0

    .line 200
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 201
    .line 202
    const-string v1, "the `onUndeliveredElement` feature is unsupported for `sendBroadcast(e)`"

    .line 203
    .line 204
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v0
.end method

.method public shouldSendSuspend$kotlinx_coroutines_core()Z
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(JZ)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide v2, 0xfffffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr v0, v2

    .line 21
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(J)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    xor-int/lit8 v2, v0, 0x1

    .line 26
    .line 27
    :goto_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 16
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const/16 v4, 0x3c

    .line 15
    .line 16
    shr-long/2addr v2, v4

    .line 17
    long-to-int v3, v2

    .line 18
    const/4 v2, 0x3

    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v3, v4, :cond_1

    .line 21
    .line 22
    if-eq v3, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v3, "cancelled,"

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v3, "closed,"

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v5, "capacity="

    .line 39
    .line 40
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v5, v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v5, 0x2c

    .line 49
    .line 50
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, "data=["

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-array v2, v2, [Lkotlinx/coroutines/channels/ChannelSegment;

    .line 66
    .line 67
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v6, 0x0

    .line 74
    aput-object v3, v2, v6

    .line 75
    .line 76
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v7, 0x1

    .line 83
    aput-object v3, v2, v7

    .line 84
    .line 85
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    aput-object v3, v2, v4

    .line 92
    .line 93
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/Iterable;

    .line 98
    .line 99
    new-instance v3, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    move-object v8, v4

    .line 119
    check-cast v8, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 120
    .line 121
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    if-eq v8, v9, :cond_2

    .line 126
    .line 127
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_1a

    .line 140
    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_4

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    move-object v4, v3

    .line 153
    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 154
    .line 155
    iget-wide v8, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 156
    .line 157
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    move-object v10, v4

    .line 162
    check-cast v10, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 163
    .line 164
    iget-wide v10, v10, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 165
    .line 166
    cmp-long v12, v8, v10

    .line 167
    .line 168
    if-lez v12, :cond_6

    .line 169
    .line 170
    move-object v3, v4

    .line 171
    move-wide v8, v10

    .line 172
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-nez v4, :cond_5

    .line 177
    .line 178
    :goto_2
    check-cast v3, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 181
    .line 182
    .line 183
    move-result-wide v10

    .line 184
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 185
    .line 186
    .line 187
    move-result-wide v12

    .line 188
    :goto_3
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 189
    .line 190
    const/4 v4, 0x0

    .line 191
    :goto_4
    if-ge v4, v2, :cond_16

    .line 192
    .line 193
    iget-wide v8, v3, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 194
    .line 195
    sget v14, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 196
    .line 197
    int-to-long v14, v14

    .line 198
    mul-long v8, v8, v14

    .line 199
    .line 200
    int-to-long v14, v4

    .line 201
    add-long/2addr v8, v14

    .line 202
    cmp-long v14, v8, v12

    .line 203
    .line 204
    if-ltz v14, :cond_7

    .line 205
    .line 206
    cmp-long v15, v8, v10

    .line 207
    .line 208
    if-gez v15, :cond_17

    .line 209
    .line 210
    :cond_7
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v15

    .line 214
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    instance-of v7, v15, Lkotlinx/coroutines/CancellableContinuation;

    .line 219
    .line 220
    if-eqz v7, :cond_a

    .line 221
    .line 222
    cmp-long v7, v8, v10

    .line 223
    .line 224
    if-gez v7, :cond_8

    .line 225
    .line 226
    if-ltz v14, :cond_8

    .line 227
    .line 228
    const-string v7, "receive"

    .line 229
    .line 230
    goto/16 :goto_6

    .line 231
    .line 232
    :cond_8
    if-gez v14, :cond_9

    .line 233
    .line 234
    if-ltz v7, :cond_9

    .line 235
    .line 236
    const-string v7, "send"

    .line 237
    .line 238
    goto/16 :goto_6

    .line 239
    .line 240
    :cond_9
    const-string v7, "cont"

    .line 241
    .line 242
    goto/16 :goto_6

    .line 243
    .line 244
    :cond_a
    instance-of v7, v15, Lkotlinx/coroutines/selects/SelectInstance;

    .line 245
    .line 246
    if-eqz v7, :cond_d

    .line 247
    .line 248
    cmp-long v7, v8, v10

    .line 249
    .line 250
    if-gez v7, :cond_b

    .line 251
    .line 252
    if-ltz v14, :cond_b

    .line 253
    .line 254
    const-string v7, "onReceive"

    .line 255
    .line 256
    goto/16 :goto_6

    .line 257
    .line 258
    :cond_b
    if-gez v14, :cond_c

    .line 259
    .line 260
    if-ltz v7, :cond_c

    .line 261
    .line 262
    const-string v7, "onSend"

    .line 263
    .line 264
    goto/16 :goto_6

    .line 265
    .line 266
    :cond_c
    const-string v7, "select"

    .line 267
    .line 268
    goto/16 :goto_6

    .line 269
    .line 270
    :cond_d
    instance-of v7, v15, L땃들뒾땍땳딟뒵딤딸뎨뒈뒘듟될돳돸딄딜듻땜땱듽뎰땻딠땲둥딹딁뒵딝뒈듼땣뒐뎬둠돸땪땨딁드둠땀됐들됴딄돷득듼땦뒾딠듸뎠땥딎딐땫땦들땮딻땤땰둘돸돴딤딠돸딞뒼땭돳든뒈땁땭딎땣될뒝땦듼뒷땧뒵딹딃뒼땟딃듔뎰됴둑듌땩딜됨디땍디딃땦듻뎽땄땫땻뎨딤돠뒬듨땣딌뒵따뒼딞뒙뒼든듻뒼뒵땝;

    .line 271
    .line 272
    if-eqz v7, :cond_e

    .line 273
    .line 274
    const-string v7, "receiveCatching"

    .line 275
    .line 276
    goto/16 :goto_6

    .line 277
    .line 278
    :cond_e
    instance-of v7, v15, L돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝;

    .line 279
    .line 280
    if-eqz v7, :cond_f

    .line 281
    .line 282
    const-string v7, "sendBroadcast"

    .line 283
    .line 284
    goto/16 :goto_6

    .line 285
    .line 286
    :cond_f
    instance-of v7, v15, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 287
    .line 288
    if-eqz v7, :cond_10

    .line 289
    .line 290
    new-instance v7, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v8, "EB("

    .line 293
    .line 294
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const/16 v8, 0x29

    .line 301
    .line 302
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    goto :goto_6

    .line 310
    :cond_10
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-nez v7, :cond_13

    .line 319
    .line 320
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    if-eqz v7, :cond_11

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_11
    if-eqz v15, :cond_15

    .line 332
    .line 333
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    if-nez v7, :cond_15

    .line 342
    .line 343
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-nez v7, :cond_15

    .line 352
    .line 353
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    if-nez v7, :cond_15

    .line 362
    .line 363
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    if-nez v7, :cond_15

    .line 372
    .line 373
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v7

    .line 381
    if-nez v7, :cond_15

    .line 382
    .line 383
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    if-eqz v7, :cond_12

    .line 392
    .line 393
    goto :goto_7

    .line 394
    :cond_12
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    goto :goto_6

    .line 399
    :cond_13
    :goto_5
    const-string v7, "resuming_sender"

    .line 400
    .line 401
    :goto_6
    if-eqz v6, :cond_14

    .line 402
    .line 403
    new-instance v8, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string v9, "("

    .line 406
    .line 407
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v6, "),"

    .line 420
    .line 421
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    goto :goto_7

    .line 432
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    :cond_15
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 451
    .line 452
    const/4 v6, 0x0

    .line 453
    const/4 v7, 0x1

    .line 454
    goto/16 :goto_4

    .line 455
    .line 456
    :cond_16
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    move-object v3, v2

    .line 461
    check-cast v3, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 462
    .line 463
    if-nez v3, :cond_19

    .line 464
    .line 465
    :cond_17
    invoke-static {v1}, Lkotlin/text/StringsKt___StringsKt;->last(Ljava/lang/CharSequence;)C

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    if-ne v2, v5, :cond_18

    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    const/4 v4, 0x1

    .line 476
    sub-int/2addr v2, v4

    .line 477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    const-string v3, "deleteCharAt(...)"

    .line 482
    .line 483
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    :cond_18
    const-string v2, "]"

    .line 487
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    return-object v1

    .line 496
    :cond_19
    const/4 v6, 0x0

    .line 497
    const/4 v7, 0x1

    .line 498
    goto/16 :goto_3

    .line 499
    .line 500
    :cond_1a
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 501
    .line 502
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 503
    .line 504
    .line 505
    throw v1
.end method

.method public final toStringDebug$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "S="

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ",R="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ",B="

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ",B\'="

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 52
    .line 53
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ",C="

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 66
    .line 67
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    const/16 v5, 0x3c

    .line 72
    .line 73
    shr-long/2addr v3, v5

    .line 74
    long-to-int v4, v3

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const/16 v3, 0x2c

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    shr-long/2addr v1, v5

    .line 95
    long-to-int v2, v1

    .line 96
    const/4 v1, 0x3

    .line 97
    const/4 v4, 0x2

    .line 98
    const/4 v5, 0x1

    .line 99
    if-eq v2, v5, :cond_2

    .line 100
    .line 101
    if-eq v2, v4, :cond_1

    .line 102
    .line 103
    if-eq v2, v1, :cond_0

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    const-string v2, "CANCELLED,"

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    const-string v2, "CLOSED,"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    const-string v2, "CANCELLATION_STARTED,"

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v6, "SEND_SEGM="

    .line 126
    .line 127
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 131
    .line 132
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-static {v7}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v7, ",RCV_SEGM="

    .line 144
    .line 145
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    sget-object v7, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 149
    .line 150
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-static {v8}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    sget-object v8, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 173
    .line 174
    if-nez v2, :cond_3

    .line 175
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v9, ",EB_SEGM="

    .line 179
    .line 180
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    invoke-static {v9}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    :cond_3
    const-string v2, "  "

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    new-array v1, v1, [Lkotlinx/coroutines/channels/ChannelSegment;

    .line 207
    .line 208
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    const/4 v7, 0x0

    .line 213
    aput-object v2, v1, v7

    .line 214
    .line 215
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    aput-object v2, v1, v5

    .line 220
    .line 221
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    aput-object v2, v1, v4

    .line 226
    .line 227
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    check-cast v1, Ljava/lang/Iterable;

    .line 232
    .line 233
    new-instance v2, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_5

    .line 247
    .line 248
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    move-object v5, v4

    .line 253
    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 254
    .line 255
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    if-eq v5, v6, :cond_4

    .line 260
    .line 261
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_13

    .line 274
    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-nez v4, :cond_6

    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_6
    move-object v4, v2

    .line 287
    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 288
    .line 289
    iget-wide v4, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 290
    .line 291
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    move-object v8, v6

    .line 296
    check-cast v8, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 297
    .line 298
    iget-wide v8, v8, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 299
    .line 300
    cmp-long v10, v4, v8

    .line 301
    .line 302
    if-lez v10, :cond_8

    .line 303
    .line 304
    move-object v2, v6

    .line 305
    move-wide v4, v8

    .line 306
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-nez v6, :cond_7

    .line 311
    .line 312
    :goto_2
    check-cast v2, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 313
    .line 314
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-static {v2}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v4, "=["

    .line 327
    .line 328
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    if-eqz v4, :cond_a

    .line 336
    .line 337
    const-string v4, "*"

    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_a
    const-string v4, ""

    .line 341
    .line 342
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    iget-wide v4, v2, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 346
    .line 347
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v4, ",prev="

    .line 351
    .line 352
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 360
    .line 361
    const/4 v5, 0x0

    .line 362
    if-eqz v4, :cond_b

    .line 363
    .line 364
    invoke-static {v4}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    goto :goto_4

    .line 369
    :cond_b
    move-object v4, v5

    .line 370
    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 384
    .line 385
    const/4 v4, 0x0

    .line 386
    :goto_5
    if-ge v4, v1, :cond_11

    .line 387
    .line 388
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    instance-of v9, v6, Lkotlinx/coroutines/CancellableContinuation;

    .line 397
    .line 398
    if-eqz v9, :cond_c

    .line 399
    .line 400
    const-string v6, "cont"

    .line 401
    .line 402
    goto :goto_6

    .line 403
    :cond_c
    instance-of v9, v6, Lkotlinx/coroutines/selects/SelectInstance;

    .line 404
    .line 405
    if-eqz v9, :cond_d

    .line 406
    .line 407
    const-string v6, "select"

    .line 408
    .line 409
    goto :goto_6

    .line 410
    :cond_d
    instance-of v9, v6, L땃들뒾땍땳딟뒵딤딸뎨뒈뒘듟될돳돸딄딜듻땜땱듽뎰땻딠땲둥딹딁뒵딝뒈듼땣뒐뎬둠돸땪땨딁드둠땀됐들됴딄돷득듼땦뒾딠듸뎠땥딎딐땫땦들땮딻땤땰둘돸돴딤딠돸딞뒼땭돳든뒈땁땭딎땣될뒝땦듼뒷땧뒵딹딃뒼땟딃듔뎰됴둑듌땩딜됨디땍디딃땦듻뎽땄땫땻뎨딤돠뒬듨땣딌뒵따뒼딞뒙뒼든듻뒼뒵땝;

    .line 411
    .line 412
    if-eqz v9, :cond_e

    .line 413
    .line 414
    const-string v6, "receiveCatching"

    .line 415
    .line 416
    goto :goto_6

    .line 417
    :cond_e
    instance-of v9, v6, L돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝;

    .line 418
    .line 419
    if-eqz v9, :cond_f

    .line 420
    .line 421
    const-string v6, "send(broadcast)"

    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_f
    instance-of v9, v6, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 425
    .line 426
    if-eqz v9, :cond_10

    .line 427
    .line 428
    new-instance v9, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    const-string v10, "EB("

    .line 431
    .line 432
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const/16 v6, 0x29

    .line 439
    .line 440
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    goto :goto_6

    .line 448
    :cond_10
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v10, "["

    .line 455
    .line 456
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v10, "]=("

    .line 463
    .line 464
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v6, "),"

    .line 477
    .line 478
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    add-int/lit8 v4, v4, 0x1

    .line 489
    .line 490
    goto :goto_5

    .line 491
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    const-string v4, "next="

    .line 494
    .line 495
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 503
    .line 504
    if-eqz v4, :cond_12

    .line 505
    .line 506
    invoke-static {v4}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    :cond_12
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    const-string v4, "]  "

    .line 514
    .line 515
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    move-object v2, v1

    .line 530
    check-cast v2, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 531
    .line 532
    if-nez v2, :cond_9

    .line 533
    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    return-object v0

    .line 539
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 540
    .line 541
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 542
    .line 543
    .line 544
    throw v0
.end method

.method public tryReceive-PtdJZtk()Ljava/lang/Object;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-virtual {p0, v2, v3, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(JZ)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 21
    .line 22
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_0
    const-wide v4, 0xfffffffffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v2, v4

    .line 37
    cmp-long v4, v0, v2

    .line 38
    .line 39
    if-ltz v4, :cond_1

    .line 40
    .line 41
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 42
    .line 43
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 69
    .line 70
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 89
    .line 90
    int-to-long v3, v2

    .line 91
    div-long v3, v7, v3

    .line 92
    .line 93
    int-to-long v5, v2

    .line 94
    rem-long v5, v7, v5

    .line 95
    .line 96
    long-to-int v9, v5

    .line 97
    iget-wide v5, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 98
    .line 99
    cmp-long v2, v5, v3

    .line 100
    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    invoke-static {p0, v3, v4, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-nez v2, :cond_3

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    move-object v10, v2

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    move-object v10, v1

    .line 113
    :goto_1
    move-object v1, p0

    .line 114
    move-object v2, v10

    .line 115
    move v3, v9

    .line 116
    move-wide v4, v7

    .line 117
    move-object v6, v0

    .line 118
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-ne v1, v2, :cond_7

    .line 127
    .line 128
    instance-of v1, v0, Lkotlinx/coroutines/Waiter;

    .line 129
    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    check-cast v0, Lkotlinx/coroutines/Waiter;

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    const/4 v0, 0x0

    .line 136
    :goto_2
    if-eqz v0, :cond_6

    .line 137
    .line 138
    invoke-static {p0, v0, v10, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 139
    .line 140
    .line 141
    :cond_6
    invoke-virtual {p0, v7, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->waitExpandBufferCompletion$kotlinx_coroutines_core(J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 145
    .line 146
    .line 147
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 148
    .line 149
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    goto :goto_3

    .line 154
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-ne v1, v2, :cond_9

    .line 159
    .line 160
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    cmp-long v3, v7, v1

    .line 165
    .line 166
    if-gez v3, :cond_8

    .line 167
    .line 168
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 169
    .line 170
    .line 171
    :cond_8
    move-object v1, v10

    .line 172
    goto :goto_0

    .line 173
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eq v1, v0, :cond_a

    .line 178
    .line 179
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 180
    .line 181
    .line 182
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :goto_3
    return-object v0

    .line 189
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 190
    .line 191
    const-string v1, "unexpected"

    .line 192
    .line 193
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v0
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v8, v0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(JZ)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v9, 0x1

    .line 15
    const-wide v10, 0xfffffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    and-long/2addr v0, v10

    .line 24
    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(J)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    xor-int/lit8 v2, v0, 0x1

    .line 29
    .line 30
    :goto_0
    if-eqz v2, :cond_1

    .line 31
    .line 32
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 33
    .line 34
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 52
    .line 53
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    and-long v13, v1, v10

    .line 62
    .line 63
    invoke-static {v8, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    .line 64
    .line 65
    .line 66
    move-result v15

    .line 67
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 68
    .line 69
    int-to-long v1, v1

    .line 70
    div-long v3, v13, v1

    .line 71
    .line 72
    rem-long v1, v13, v1

    .line 73
    .line 74
    long-to-int v7, v1

    .line 75
    iget-wide v1, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 76
    .line 77
    cmp-long v5, v1, v3

    .line 78
    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    invoke-static {v8, v3, v4, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-nez v1, :cond_4

    .line 86
    .line 87
    if-eqz v15, :cond_2

    .line 88
    .line 89
    :cond_3
    :goto_2
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto/16 :goto_7

    .line 100
    .line 101
    :cond_4
    move-object v6, v1

    .line 102
    goto :goto_3

    .line 103
    :cond_5
    move-object v6, v0

    .line 104
    :goto_3
    move-object/from16 v0, p0

    .line 105
    .line 106
    move-object v1, v6

    .line 107
    move v2, v7

    .line 108
    move-object/from16 v3, p1

    .line 109
    .line 110
    move-wide v4, v13

    .line 111
    move-object/from16 v16, v6

    .line 112
    .line 113
    move-object v6, v12

    .line 114
    move v10, v7

    .line 115
    move v7, v15

    .line 116
    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_e

    .line 121
    .line 122
    if-eq v0, v9, :cond_d

    .line 123
    .line 124
    const/4 v1, 0x2

    .line 125
    if-eq v0, v1, :cond_9

    .line 126
    .line 127
    const/4 v1, 0x3

    .line 128
    if-eq v0, v1, :cond_8

    .line 129
    .line 130
    const/4 v1, 0x4

    .line 131
    if-eq v0, v1, :cond_7

    .line 132
    .line 133
    const/4 v1, 0x5

    .line 134
    if-eq v0, v1, :cond_6

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 138
    .line 139
    .line 140
    :goto_4
    move-object/from16 v0, v16

    .line 141
    .line 142
    const-wide v10, 0xfffffffffffffffL

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 149
    .line 150
    .line 151
    move-result-wide v0

    .line 152
    cmp-long v2, v13, v0

    .line 153
    .line 154
    if-gez v2, :cond_3

    .line 155
    .line 156
    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    const-string v1, "unexpected"

    .line 163
    .line 164
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_9
    if-eqz v15, :cond_a

    .line 169
    .line 170
    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_a
    instance-of v0, v12, Lkotlinx/coroutines/Waiter;

    .line 175
    .line 176
    if-eqz v0, :cond_b

    .line 177
    .line 178
    check-cast v12, Lkotlinx/coroutines/Waiter;

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_b
    const/4 v12, 0x0

    .line 182
    :goto_5
    move-object/from16 v0, v16

    .line 183
    .line 184
    if-eqz v12, :cond_c

    .line 185
    .line 186
    invoke-static {v8, v12, v0, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 187
    .line 188
    .line 189
    :cond_c
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 190
    .line 191
    .line 192
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 193
    .line 194
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    goto :goto_7

    .line 199
    :cond_d
    :goto_6
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 200
    .line 201
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    goto :goto_7

    .line 208
    :cond_e
    move-object/from16 v0, v16

    .line 209
    .line 210
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 211
    .line 212
    .line 213
    goto :goto_6

    .line 214
    :goto_7
    return-object v0
.end method

.method public final trySendDropOldest-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 4
    .line 5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    const-wide v3, 0xfffffffffffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    and-long v10, v1, v3

    .line 29
    .line 30
    invoke-static {v8, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    sget v13, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 35
    .line 36
    int-to-long v1, v13

    .line 37
    div-long v1, v10, v1

    .line 38
    .line 39
    int-to-long v3, v13

    .line 40
    rem-long v3, v10, v3

    .line 41
    .line 42
    long-to-int v14, v3

    .line 43
    iget-wide v3, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 44
    .line 45
    cmp-long v5, v3, v1

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-static {v8, v1, v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    if-eqz v12, :cond_0

    .line 56
    .line 57
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :cond_1
    move-object v15, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-object v15, v0

    .line 71
    :goto_1
    move-object/from16 v0, p0

    .line 72
    .line 73
    move-object v1, v15

    .line 74
    move v2, v14

    .line 75
    move-object/from16 v3, p1

    .line 76
    .line 77
    move-wide v4, v10

    .line 78
    move-object v6, v9

    .line 79
    move v7, v12

    .line 80
    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_c

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    if-eq v0, v1, :cond_b

    .line 88
    .line 89
    const/4 v1, 0x2

    .line 90
    if-eq v0, v1, :cond_7

    .line 91
    .line 92
    const/4 v1, 0x3

    .line 93
    if-eq v0, v1, :cond_6

    .line 94
    .line 95
    const/4 v1, 0x4

    .line 96
    if-eq v0, v1, :cond_4

    .line 97
    .line 98
    const/4 v1, 0x5

    .line 99
    if-eq v0, v1, :cond_3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {v15}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 103
    .line 104
    .line 105
    :goto_2
    move-object v0, v15

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    cmp-long v2, v10, v0

    .line 112
    .line 113
    if-gez v2, :cond_5

    .line 114
    .line 115
    invoke-virtual {v15}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 116
    .line 117
    .line 118
    :cond_5
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 119
    .line 120
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    return-object v0

    .line 129
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    const-string v1, "unexpected"

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_7
    if-eqz v12, :cond_8

    .line 138
    .line 139
    invoke-virtual {v15}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 140
    .line 141
    .line 142
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 143
    .line 144
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0

    .line 153
    :cond_8
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    .line 154
    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    check-cast v9, Lkotlinx/coroutines/Waiter;

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_9
    const/4 v9, 0x0

    .line 161
    :goto_3
    if-eqz v9, :cond_a

    .line 162
    .line 163
    invoke-static {v8, v9, v15, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 164
    .line 165
    .line 166
    :cond_a
    iget-wide v0, v15, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 167
    .line 168
    int-to-long v2, v13

    .line 169
    mul-long v0, v0, v2

    .line 170
    .line 171
    int-to-long v2, v14

    .line 172
    add-long/2addr v0, v2

    .line 173
    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V

    .line 174
    .line 175
    .line 176
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 177
    .line 178
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0

    .line 185
    :cond_b
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 186
    .line 187
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    return-object v0

    .line 194
    :cond_c
    invoke-virtual {v15}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 195
    .line 196
    .line 197
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 198
    .line 199
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    return-object v0
.end method

.method public final waitExpandBufferCompletion$kotlinx_coroutines_core(J)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v7, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 11
    .line 12
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    cmp-long v2, v0, p1

    .line 17
    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getEXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS$p()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 27
    .line 28
    const-wide v10, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    if-ge v1, v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    and-long/2addr v4, v10

    .line 44
    cmp-long v9, v2, v4

    .line 45
    .line 46
    if-nez v9, :cond_1

    .line 47
    .line 48
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    cmp-long v9, v2, v4

    .line 53
    .line 54
    if-nez v9, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    and-long v0, v2, v10

    .line 65
    .line 66
    const/4 v12, 0x1

    .line 67
    invoke-static {v0, v1, v12}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    move-object v0, v9

    .line 72
    move-object/from16 v1, p0

    .line 73
    .line 74
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    :cond_3
    :goto_1
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 85
    .line 86
    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    and-long v4, v2, v10

    .line 91
    .line 92
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 93
    .line 94
    and-long/2addr v13, v2

    .line 95
    const-wide/16 v15, 0x0

    .line 96
    .line 97
    cmp-long v17, v13, v15

    .line 98
    .line 99
    if-eqz v17, :cond_4

    .line 100
    .line 101
    const/4 v13, 0x1

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    const/4 v13, 0x0

    .line 104
    :goto_2
    cmp-long v14, v0, v4

    .line 105
    .line 106
    if-nez v14, :cond_6

    .line 107
    .line 108
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v14

    .line 112
    cmp-long v16, v0, v14

    .line 113
    .line 114
    if-nez v16, :cond_6

    .line 115
    .line 116
    :cond_5
    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    and-long v0, v2, v10

    .line 121
    .line 122
    invoke-static {v0, v1, v8}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    .line 123
    .line 124
    .line 125
    move-result-wide v4

    .line 126
    move-object v0, v9

    .line 127
    move-object/from16 v1, p0

    .line 128
    .line 129
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    return-void

    .line 136
    :cond_6
    if-nez v13, :cond_3

    .line 137
    .line 138
    invoke-static {v4, v5, v12}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    .line 139
    .line 140
    .line 141
    move-result-wide v4

    .line 142
    move-object v0, v9

    .line 143
    move-object/from16 v1, p0

    .line 144
    .line 145
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 146
    .line 147
    .line 148
    goto :goto_1
.end method

.method public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(J)Z
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-ltz v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    add-long/2addr v0, v2

    .line 19
    cmp-long v2, p1, v0

    .line 20
    .line 21
    if-gez v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    :goto_1
    return p1
.end method

.method public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(J)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 12

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 14
    .line 15
    iget-wide v2, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 16
    .line 17
    move-object v4, v0

    .line 18
    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 19
    .line 20
    iget-wide v4, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 21
    .line 22
    cmp-long v6, v2, v4

    .line 23
    .line 24
    if-lez v6, :cond_0

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :cond_0
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 34
    .line 35
    iget-wide v2, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 36
    .line 37
    move-object v4, v0

    .line 38
    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 39
    .line 40
    iget-wide v4, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 41
    .line 42
    cmp-long v6, v2, v4

    .line 43
    .line 44
    if-lez v6, :cond_1

    .line 45
    .line 46
    move-object v0, v1

    .line 47
    :cond_1
    check-cast v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 48
    .line 49
    invoke-static {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->close(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 54
    .line 55
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isConflatedDropOldest()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v2, 0x1

    .line 60
    const/4 v3, -0x1

    .line 61
    if-eqz v1, :cond_8

    .line 62
    .line 63
    move-object v1, v0

    .line 64
    :cond_2
    sget v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 65
    .line 66
    sub-int/2addr v4, v2

    .line 67
    :goto_0
    const-wide/16 v5, -0x1

    .line 68
    .line 69
    if-ge v3, v4, :cond_7

    .line 70
    .line 71
    iget-wide v7, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 72
    .line 73
    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 74
    .line 75
    int-to-long v9, v9

    .line 76
    mul-long v7, v7, v9

    .line 77
    .line 78
    int-to-long v9, v4

    .line 79
    add-long/2addr v7, v9

    .line 80
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 81
    .line 82
    .line 83
    move-result-wide v9

    .line 84
    cmp-long v11, v7, v9

    .line 85
    .line 86
    if-gez v11, :cond_3

    .line 87
    .line 88
    :goto_1
    move-wide v7, v5

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    if-eqz v9, :cond_5

    .line 95
    .line 96
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    if-ne v9, v10, :cond_4

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 104
    .line 105
    if-ne v9, v10, :cond_6

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-virtual {v1, v4, v9, v10}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_3

    .line 117
    .line 118
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 119
    .line 120
    .line 121
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_7
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 129
    .line 130
    if-nez v1, :cond_2

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :goto_3
    cmp-long v1, v7, v5

    .line 134
    .line 135
    if-eqz v1, :cond_8

    .line 136
    .line 137
    invoke-virtual {p0, v7, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V

    .line 138
    .line 139
    .line 140
    :cond_8
    const/4 v1, 0x0

    .line 141
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/internal/InlineList;->constructor-impl$default(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    move-object v4, v0

    .line 146
    :goto_4
    if-eqz v4, :cond_f

    .line 147
    .line 148
    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 149
    .line 150
    sub-int/2addr v5, v2

    .line 151
    :goto_5
    if-ge v3, v5, :cond_e

    .line 152
    .line 153
    iget-wide v6, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 154
    .line 155
    sget v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 156
    .line 157
    int-to-long v8, v8

    .line 158
    mul-long v6, v6, v8

    .line 159
    .line 160
    int-to-long v8, v5

    .line 161
    add-long/2addr v6, v8

    .line 162
    cmp-long v8, v6, p1

    .line 163
    .line 164
    if-ltz v8, :cond_f

    .line 165
    .line 166
    :cond_9
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    if-eqz v6, :cond_c

    .line 171
    .line 172
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    if-ne v6, v7, :cond_a

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_a
    instance-of v7, v6, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 180
    .line 181
    if-eqz v7, :cond_b

    .line 182
    .line 183
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-virtual {v4, v5, v6, v7}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-eqz v7, :cond_9

    .line 192
    .line 193
    check-cast v6, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 194
    .line 195
    iget-object v6, v6, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/Waiter;

    .line 196
    .line 197
    invoke-static {v1, v6}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v4, v5, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 202
    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_b
    instance-of v7, v6, Lkotlinx/coroutines/Waiter;

    .line 206
    .line 207
    if-eqz v7, :cond_d

    .line 208
    .line 209
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-virtual {v4, v5, v6, v7}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_9

    .line 218
    .line 219
    invoke-static {v1, v6}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v4, v5, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 224
    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_c
    :goto_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-virtual {v4, v5, v6, v7}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_9

    .line 236
    .line 237
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 238
    .line 239
    .line 240
    :cond_d
    :goto_7
    add-int/lit8 v5, v5, -0x1

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_e
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_f
    if-eqz v1, :cond_11

    .line 251
    .line 252
    instance-of p1, v1, Ljava/util/ArrayList;

    .line 253
    .line 254
    if-nez p1, :cond_10

    .line 255
    .line 256
    check-cast v1, Lkotlinx/coroutines/Waiter;

    .line 257
    .line 258
    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lkotlinx/coroutines/Waiter;Z)V

    .line 259
    .line 260
    .line 261
    goto :goto_9

    .line 262
    :cond_10
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>"

    .line 263
    .line 264
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    check-cast v1, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    sub-int/2addr p1, v2

    .line 274
    :goto_8
    if-ge v3, p1, :cond_11

    .line 275
    .line 276
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    check-cast p2, Lkotlinx/coroutines/Waiter;

    .line 281
    .line 282
    invoke-virtual {p0, p2, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lkotlinx/coroutines/Waiter;Z)V

    .line 283
    .line 284
    .line 285
    add-int/lit8 p1, p1, -0x1

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_11
    :goto_9
    return-object v0
.end method

.method public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v7, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    .line 12
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 17
    .line 18
    move-object v8, v0

    .line 19
    :goto_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 20
    .line 21
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v9

    .line 25
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 26
    .line 27
    int-to-long v0, v0

    .line 28
    div-long v0, v9, v0

    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    cmp-long v4, v2, v9

    .line 35
    .line 36
    if-gtz v4, :cond_2

    .line 37
    .line 38
    iget-wide v2, v8, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 39
    .line 40
    cmp-long v4, v2, v0

    .line 41
    .line 42
    if-gez v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v6, v0, v1, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(JLkotlinx/coroutines/channels/ChannelSegment;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iget-wide v2, v8, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 58
    .line 59
    cmp-long v4, v2, v0

    .line 60
    .line 61
    if-eqz v4, :cond_d

    .line 62
    .line 63
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()Lkotlin/reflect/KFunction;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 68
    .line 69
    :goto_1
    invoke-static {v8, v0, v1, v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v3}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_7

    .line 78
    .line 79
    invoke-static {v3}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    :cond_3
    :goto_2
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Lkotlinx/coroutines/internal/Segment;

    .line 88
    .line 89
    iget-wide v11, v5, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 90
    .line 91
    iget-wide v13, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 92
    .line 93
    cmp-long v15, v11, v13

    .line 94
    .line 95
    if-ltz v15, :cond_4

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-nez v11, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-virtual {v7, v6, v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    if-eqz v11, :cond_6

    .line 110
    .line 111
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_7

    .line 116
    .line 117
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    if-eq v11, v5, :cond_5

    .line 126
    .line 127
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_3

    .line 132
    .line 133
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_7
    :goto_3
    invoke-static {v3}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    const/4 v11, 0x0

    .line 142
    if-eqz v2, :cond_8

    .line 143
    .line 144
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v0, v1, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(JLkotlinx/coroutines/channels/ChannelSegment;)V

    .line 148
    .line 149
    .line 150
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_8
    invoke-static {v3}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    move-object v12, v2

    .line 159
    check-cast v12, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 160
    .line 161
    iget-wide v2, v12, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 162
    .line 163
    cmp-long v4, v2, v0

    .line 164
    .line 165
    if-lez v4, :cond_a

    .line 166
    .line 167
    const-wide/16 v0, 0x1

    .line 168
    .line 169
    add-long v4, v9, v0

    .line 170
    .line 171
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 172
    .line 173
    int-to-long v13, v0

    .line 174
    mul-long v15, v2, v13

    .line 175
    .line 176
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 177
    .line 178
    move-object/from16 v1, p0

    .line 179
    .line 180
    move-wide v2, v4

    .line 181
    move-wide v4, v15

    .line 182
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_9

    .line 187
    .line 188
    iget-wide v0, v12, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 189
    .line 190
    mul-long v0, v0, v13

    .line 191
    .line 192
    sub-long/2addr v0, v9

    .line 193
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 194
    .line 195
    invoke-virtual {v2, v6, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 200
    .line 201
    and-long/2addr v0, v3

    .line 202
    const-wide/16 v12, 0x0

    .line 203
    .line 204
    cmp-long v5, v0, v12

    .line 205
    .line 206
    if-eqz v5, :cond_b

    .line 207
    .line 208
    :goto_4
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    and-long/2addr v0, v3

    .line 213
    cmp-long v5, v0, v12

    .line 214
    .line 215
    if-eqz v5, :cond_b

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_9
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_a
    move-object v11, v12

    .line 223
    :cond_b
    :goto_5
    if-nez v11, :cond_c

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_c
    move-object v8, v11

    .line 228
    :cond_d
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 229
    .line 230
    int-to-long v0, v0

    .line 231
    rem-long v0, v9, v0

    .line 232
    .line 233
    long-to-int v1, v0

    .line 234
    invoke-virtual {v8, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    instance-of v2, v0, Lkotlinx/coroutines/Waiter;

    .line 239
    .line 240
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 241
    .line 242
    const/4 v4, 0x0

    .line 243
    if-eqz v2, :cond_f

    .line 244
    .line 245
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 246
    .line 247
    .line 248
    move-result-wide v11

    .line 249
    cmp-long v2, v9, v11

    .line 250
    .line 251
    if-ltz v2, :cond_f

    .line 252
    .line 253
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v8, v1, v0, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_f

    .line 262
    .line 263
    invoke-virtual {v6, v0, v8, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_e

    .line 268
    .line 269
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 270
    .line 271
    invoke-virtual {v8, v1, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_8

    .line 275
    .line 276
    :cond_e
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v8, v1, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v8, v1, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_f
    :goto_6
    invoke-virtual {v8, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    instance-of v2, v0, Lkotlinx/coroutines/Waiter;

    .line 292
    .line 293
    if-eqz v2, :cond_12

    .line 294
    .line 295
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 296
    .line 297
    .line 298
    move-result-wide v11

    .line 299
    cmp-long v2, v9, v11

    .line 300
    .line 301
    if-gez v2, :cond_10

    .line 302
    .line 303
    new-instance v2, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 304
    .line 305
    move-object v5, v0

    .line 306
    check-cast v5, Lkotlinx/coroutines/Waiter;

    .line 307
    .line 308
    invoke-direct {v2, v5}, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;-><init>(Lkotlinx/coroutines/Waiter;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v8, v1, v0, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_f

    .line 316
    .line 317
    goto/16 :goto_8

    .line 318
    .line 319
    :cond_10
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v8, v1, v0, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-eqz v2, :cond_f

    .line 328
    .line 329
    invoke-virtual {v6, v0, v8, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_11

    .line 334
    .line 335
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 336
    .line 337
    invoke-virtual {v8, v1, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_11
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v8, v1, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v8, v1, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 349
    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_12
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    if-ne v0, v2, :cond_13

    .line 357
    .line 358
    :goto_7
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :cond_13
    if-nez v0, :cond_14

    .line 364
    .line 365
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v8, v1, v0, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_f

    .line 374
    .line 375
    goto :goto_8

    .line 376
    :cond_14
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 377
    .line 378
    if-ne v0, v2, :cond_15

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_15
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    if-eq v0, v2, :cond_19

    .line 386
    .line 387
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    if-eq v0, v2, :cond_19

    .line 392
    .line 393
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    if-ne v0, v2, :cond_16

    .line 398
    .line 399
    goto :goto_8

    .line 400
    :cond_16
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    if-ne v0, v2, :cond_17

    .line 405
    .line 406
    goto :goto_8

    .line 407
    :cond_17
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    if-ne v0, v2, :cond_18

    .line 412
    .line 413
    goto :goto_6

    .line 414
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 415
    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v3, "Unexpected cell state: "

    .line 419
    .line 420
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    throw v1

    .line 438
    :cond_19
    :goto_8
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 439
    .line 440
    .line 441
    return-void
.end method

.method public final 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 10

    .line 1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()Lkotlin/reflect/KFunction;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    :goto_0
    invoke-static {p3, p1, p2, v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_4

    .line 16
    .line 17
    invoke-static {v1}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    :goto_1
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 22
    .line 23
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lkotlinx/coroutines/internal/Segment;

    .line 28
    .line 29
    iget-wide v5, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 30
    .line 31
    iget-wide v7, v2, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 32
    .line 33
    cmp-long v9, v5, v7

    .line 34
    .line 35
    if-ltz v9, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v3, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eq v5, v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    :goto_2
    invoke-static {v1}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v2, 0x0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 85
    .line 86
    .line 87
    iget-wide p1, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 88
    .line 89
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 90
    .line 91
    int-to-long v0, v0

    .line 92
    mul-long p1, p1, v0

    .line 93
    .line 94
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    cmp-long v3, p1, v0

    .line 99
    .line 100
    if-gez v3, :cond_d

    .line 101
    .line 102
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_5
    invoke-static {v1}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    check-cast p3, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 112
    .line 113
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_9

    .line 118
    .line 119
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 120
    .line 121
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 126
    .line 127
    int-to-long v3, v3

    .line 128
    div-long/2addr v0, v3

    .line 129
    cmp-long v3, p1, v0

    .line 130
    .line 131
    if-gtz v3, :cond_9

    .line 132
    .line 133
    :cond_6
    :goto_3
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 134
    .line 135
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Lkotlinx/coroutines/internal/Segment;

    .line 140
    .line 141
    iget-wide v3, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 142
    .line 143
    iget-wide v5, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 144
    .line 145
    cmp-long v7, v3, v5

    .line 146
    .line 147
    if-gez v7, :cond_9

    .line 148
    .line 149
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_9

    .line 154
    .line 155
    :cond_7
    invoke-virtual {v0, p0, v1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_8

    .line 160
    .line 161
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_9

    .line 166
    .line 167
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    if-eq v3, v1, :cond_7

    .line 176
    .line 177
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_9
    :goto_4
    iget-wide v0, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 188
    .line 189
    cmp-long v3, v0, p1

    .line 190
    .line 191
    if-lez v3, :cond_c

    .line 192
    .line 193
    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 194
    .line 195
    int-to-long p1, p1

    .line 196
    mul-long v0, v0, p1

    .line 197
    .line 198
    :cond_a
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 199
    .line 200
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 201
    .line 202
    .line 203
    move-result-wide v5

    .line 204
    cmp-long p1, v5, v0

    .line 205
    .line 206
    if-ltz p1, :cond_b

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_b
    move-object v4, p0

    .line 210
    move-wide v7, v0

    .line 211
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_a

    .line 216
    .line 217
    :goto_5
    iget-wide p1, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 218
    .line 219
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 220
    .line 221
    int-to-long v0, v0

    .line 222
    mul-long p1, p1, v0

    .line 223
    .line 224
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 225
    .line 226
    .line 227
    move-result-wide v0

    .line 228
    cmp-long v3, p1, v0

    .line 229
    .line 230
    if-gez v3, :cond_d

    .line 231
    .line 232
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 233
    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_c
    move-object v2, p3

    .line 237
    :cond_d
    :goto_6
    return-object v2
.end method

.method public final 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()Ljava/lang/Throwable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    .line 8
    .line 9
    const-string v1, "Channel was closed"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(JZ)Z
    .locals 11

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v1, v0

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz v1, :cond_13

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_13

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const-wide v4, 0xfffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-eq v1, v3, :cond_12

    .line 19
    .line 20
    const/4 p3, 0x3

    .line 21
    if-ne v1, p3, :cond_11

    .line 22
    .line 23
    and-long/2addr p1, v4

    .line 24
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(J)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    invoke-static {p3, v2, p3}, Lkotlinx/coroutines/internal/InlineList;->constructor-impl$default(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_0
    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 36
    .line 37
    sub-int/2addr v3, v2

    .line 38
    :goto_0
    const/4 v4, -0x1

    .line 39
    if-ge v4, v3, :cond_b

    .line 40
    .line 41
    iget-wide v5, p1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 42
    .line 43
    sget v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 44
    .line 45
    int-to-long v7, v7

    .line 46
    mul-long v5, v5, v7

    .line 47
    .line 48
    int-to-long v7, v3

    .line 49
    add-long/2addr v5, v7

    .line 50
    :cond_1
    invoke-virtual {p1, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    if-eq v7, v8, :cond_c

    .line 59
    .line 60
    sget-object v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 61
    .line 62
    if-ne v7, v8, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 65
    .line 66
    .line 67
    move-result-wide v8

    .line 68
    cmp-long v10, v5, v8

    .line 69
    .line 70
    if-ltz v10, :cond_c

    .line 71
    .line 72
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {p1, v3, v7, v8}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_1

    .line 81
    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {p2, v4, p3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    :cond_2
    invoke-virtual {p1, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    if-eq v7, v8, :cond_a

    .line 105
    .line 106
    if-nez v7, :cond_4

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    instance-of v8, v7, Lkotlinx/coroutines/Waiter;

    .line 110
    .line 111
    if-nez v8, :cond_7

    .line 112
    .line 113
    instance-of v8, v7, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 114
    .line 115
    if-eqz v8, :cond_5

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    if-eq v7, v8, :cond_c

    .line 123
    .line 124
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    if-ne v7, v8, :cond_6

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    if-eq v7, v8, :cond_1

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 139
    .line 140
    .line 141
    move-result-wide v8

    .line 142
    cmp-long v10, v5, v8

    .line 143
    .line 144
    if-ltz v10, :cond_c

    .line 145
    .line 146
    instance-of v8, v7, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 147
    .line 148
    if-eqz v8, :cond_8

    .line 149
    .line 150
    move-object v8, v7

    .line 151
    check-cast v8, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 152
    .line 153
    iget-object v8, v8, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/Waiter;

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_8
    move-object v8, v7

    .line 157
    check-cast v8, Lkotlinx/coroutines/Waiter;

    .line 158
    .line 159
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-virtual {p1, v3, v7, v9}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_1

    .line 168
    .line 169
    if-eqz p2, :cond_9

    .line 170
    .line 171
    invoke-virtual {p1, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-static {p2, v4, p3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    :cond_9
    invoke-static {v1, v8}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p1, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_a
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {p1, v3, v7, v8}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-eqz v7, :cond_1

    .line 199
    .line 200
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 201
    .line 202
    .line 203
    :goto_4
    add-int/lit8 v3, v3, -0x1

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_b
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 212
    .line 213
    if-nez p1, :cond_0

    .line 214
    .line 215
    :cond_c
    :goto_5
    if-eqz v1, :cond_e

    .line 216
    .line 217
    instance-of p1, v1, Ljava/util/ArrayList;

    .line 218
    .line 219
    if-nez p1, :cond_d

    .line 220
    .line 221
    check-cast v1, Lkotlinx/coroutines/Waiter;

    .line 222
    .line 223
    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lkotlinx/coroutines/Waiter;Z)V

    .line 224
    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_d
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>"

    .line 228
    .line 229
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    check-cast v1, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    sub-int/2addr p1, v2

    .line 239
    :goto_6
    if-ge v4, p1, :cond_e

    .line 240
    .line 241
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    check-cast p2, Lkotlinx/coroutines/Waiter;

    .line 246
    .line 247
    invoke-virtual {p0, p2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lkotlinx/coroutines/Waiter;Z)V

    .line 248
    .line 249
    .line 250
    add-int/lit8 p1, p1, -0x1

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_e
    :goto_7
    if-nez p3, :cond_10

    .line 254
    .line 255
    :cond_f
    :goto_8
    const/4 v0, 0x1

    .line 256
    goto :goto_9

    .line 257
    :cond_10
    throw p3

    .line 258
    :cond_11
    const-string p1, "unexpected close status: "

    .line 259
    .line 260
    invoke-static {v1, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p2

    .line 274
    :cond_12
    and-long/2addr p1, v4

    .line 275
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(J)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 276
    .line 277
    .line 278
    if-eqz p3, :cond_f

    .line 279
    .line 280
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->hasElements$kotlinx_coroutines_core()Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-nez p1, :cond_13

    .line 285
    .line 286
    goto :goto_8

    .line 287
    :cond_13
    :goto_9
    return v0
.end method

.method public final 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두()Z
    .locals 5

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    const-wide v2, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    return v0
.end method

.method public final 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(JLkotlinx/coroutines/channels/ChannelSegment;)V
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-gez v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move-object p3, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move-object p3, p1

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :goto_2
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannel;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lkotlinx/coroutines/internal/Segment;

    .line 42
    .line 43
    iget-wide v0, p2, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 44
    .line 45
    iget-wide v2, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 46
    .line 47
    cmp-long v4, v0, v2

    .line 48
    .line 49
    if-ltz v4, :cond_4

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 72
    .line 73
    .line 74
    :cond_6
    :goto_3
    return-void

    .line 75
    :cond_7
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eq v0, p2, :cond_5

    .line 80
    .line 81
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 88
    .line 89
    .line 90
    goto :goto_2
.end method

.method public final 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, p2, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, p1, v3, v2, v3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p1, v1}, L뒝땻뎡딸땭딐뒉뎽득된뒘땲땃딞뒬뎽돝딁뒻딌딃뒀뒤딃뒙됩딜땱된듔듔뒀땱딜듔뒹땰뎸딌뒾땦됩듸뒤딌딜땍둬땳듟뎡듰땱딃딝땪뒷딀딁도땮딞뎰뎸뒉두뒋뎨뎸땀됨듰땱돴땱드딽땵둣뎠둔돶둥딽뒻듻뎠돴딽땁뒉듻둘둥도돠뎡땰딠돳땟둠땫듌땣돝땬돠뒻땱뒤딅뒤딸됴돤땭뎽땩듼땝뒷딸땸뒨됐뒀듻뒀땸;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-ne p1, v0, :cond_1

    .line 73
    .line 74
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-ne p1, p2, :cond_2

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p1
.end method

.method public final 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p5, L돳딹돛땅도듻뎽돷돵둠듟뒙땄땹돛땡땱땁딤땠둑돠듐딻돤뒤땟되뒙뎨땅땐뒨되듽딌돠뎬땮뒻땄딎땵땟돷땨돴딀땡딀딝딻딠땄돵땍듐듬뒉땡뒼땍땁뒨둘듰듌땧돨돼둔뎠땻듨땜뎹돷듼듬둘됨둔될뎽땠뒝듼둡땍듌딻두돸뒋뎬딠땁땋돴땭듔돠뎻뒋듸딅딻둑뒀딟땝되땰따두딄돶돼땤듬듰돛딽뒈뒻땦뎽땠뒉돠;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, L돳딹돛땅도듻뎽돷돵둠듟뒙땄땹돛땡땱땁딤땠둑돠듐딻돤뒤땟되뒙뎨땅땐뒨되듽딌돠뎬땮뒻땄딎땵땟돷땨돴딀땡딀딝딻딠땄돵땍듐듬뒉땡뒼땍땁뒨둘듰듌땧돨돼둔뎠땻듨땜뎹돷듼듬둘됨둔될뎽땠뒝듼둡땍듌딻두돸뒋뎬딠땁땋돴땭듔돠뎻뒋듸딅딻둑뒀딟땝되땰따두딄돶돼땤듬듰돛딽뒈뒻땦뎽땠뒉돠;

    .line 7
    .line 8
    iget v1, v0, L돳딹돛땅도듻뎽돷돵둠듟뒙땄땹돛땡땱땁딤땠둑돠듐딻돤뒤땟되뒙뎨땅땐뒨되듽딌돠뎬땮뒻땄딎땵땟돷땨돴딀땡딀딝딻딠땄돵땍듐듬뒉땡뒼땍땁뒨둘듰듌땧돨돼둔뎠땻듨땜뎹돷듼듬둘됨둔될뎽땠뒝듼둡땍듌딻두돸뒋뎬딠땁땋돴땭듔돠뎻뒋듸딅딻둑뒀딟땝되땰따두딄돶돼땤듬듰돛딽뒈뒻땦뎽땠뒉돠;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, L돳딹돛땅도듻뎽돷돵둠듟뒙땄땹돛땡땱땁딤땠둑돠듐딻돤뒤땟되뒙뎨땅땐뒨되듽딌돠뎬땮뒻땄딎땵땟돷땨돴딀땡딀딝딻딠땄돵땍듐듬뒉땡뒼땍땁뒨둘듰듌땧돨돼둔뎠땻듨땜뎹돷듼듬둘됨둔될뎽땠뒝듼둡땍듌딻두돸뒋뎬딠땁땋돴땭듔돠뎻뒋듸딅딻둑뒀딟땝되땰따두딄돶돼땤듬듰돛딽뒈뒻땦뎽땠뒉돠;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, L돳딹돛땅도듻뎽돷돵둠듟뒙땄땹돛땡땱땁딤땠둑돠듐딻돤뒤땟되뒙뎨땅땐뒨되듽딌돠뎬땮뒻땄딎땵땟돷땨돴딀땡딀딝딻딠땄돵땍듐듬뒉땡뒼땍땁뒨둘듰듌땧돨돼둔뎠땻듨땜뎹돷듼듬둘됨둔될뎽땠뒝듼둡땍듌딻두돸뒋뎬딠땁땋돴땭듔돠뎻뒋듸딅딻둑뒀딟땝되땰따두딄돶돼땤듬듰돛딽뒈뒻땦뎽땠뒉돠;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, L돳딹돛땅도듻뎽돷돵둠듟뒙땄땹돛땡땱땁딤땠둑돠듐딻돤뒤땟되뒙뎨땅땐뒨되듽딌돠뎬땮뒻땄딎땵땟돷땨돴딀땡딀딝딻딠땄돵땍듐듬뒉땡뒼땍땁뒨둘듰듌땧돨돼둔뎠땻듨땜뎹돷듼듬둘됨둔될뎽땠뒝듼둡땍듌딻두돸뒋뎬딠땁땋돴땭듔돠뎻뒋듸딅딻둑뒀딟땝되땰따두딄돶돼땤듬듰돛딽뒈뒻땦뎽땠뒉돠;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, L돳딹돛땅도듻뎽돷돵둠듟뒙땄땹돛땡땱땁딤땠둑돠듐딻돤뒤땟되뒙뎨땅땐뒨되듽딌돠뎬땮뒻땄딎땵땟돷땨돴딀땡딀딝딻딠땄돵땍듐듬뒉땡뒼땍땁뒨둘듰듌땧돨돼둔뎠땻듨땜뎹돷듼듬둘됨둔될뎽땠뒝듼둡땍듌딻두돸뒋뎬딠땁땋돴땭듔돠뎻뒋듸딅딻둑뒀딟땝되땰따두딄돶돼땤듬듰돛딽뒈뒻땦뎽땠뒉돠;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, L돳딹돛땅도듻뎽돷돵둠듟뒙땄땹돛땡땱땁딤땠둑돠듐딻돤뒤땟되뒙뎨땅땐뒨되듽딌돠뎬땮뒻땄딎땵땟돷땨돴딀땡딀딝딻딠땄돵땍듐듬뒉땡뒼땍땁뒨둘듰듌땧돨돼둔뎠땻듨땜뎹돷듼듬둘됨둔될뎽땠뒝듼둡땍듌딻두돸뒋뎬딠땁땋돴땭듔돠뎻뒋듸딅딻둑뒀딟땝되땰따두딄돶돼땤듬듰돛딽뒈뒻땦뎽땠뒉돠;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput v3, v0, L돳딹돛땅도듻뎽돷돵둠듟뒙땄땹돛땡땱땁딤땠둑돠듐딻돤뒤땟되뒙뎨땅땐뒨되듽딌돠뎬땮뒻땄딎땵땟돷땨돴딀땡딀딝딻딠땄돵땍듐듬뒉땡뒼땍땁뒨둘듰듌땧돨돼둔뎠땻듨땜뎹돷듼듬둘됨둔될뎽땠뒝듼둡땍듌딻두돸뒋뎬딠땁땋돴땭듔돠뎻뒋듸딅딻둑뒀딟땝되땰따두딄돶돼땤듬듰돛딽뒈뒻땦뎽땠뒉돠;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p5

    .line 60
    invoke-static {p5}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 61
    .line 62
    .line 63
    move-result-object p5

    .line 64
    :try_start_0
    new-instance v8, L땃들뒾땍땳딟뒵딤딸뎨뒈뒘듟될돳돸딄딜듻땜땱듽뎰땻딠땲둥딹딁뒵딝뒈듼땣뒐뎬둠돸땪땨딁드둠땀됐들됴딄돷득듼땦뒾딠듸뎠땥딎딐땫땦들땮딻땤땰둘돸돴딤딠돸딞뒼땭돳든뒈땁땭딎땣될뒝땦듼뒷땧뒵딹딃뒼땟딃듔뎰됴둑듌땩딜됨디땍디딃땦듻뎽땄땫땻뎨딤돠뒬듨땣딌뒵따뒼딞뒙뒼든듻뒼뒵땝;

    .line 65
    .line 66
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel>>"

    .line 67
    .line 68
    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v8, p5}, L땃들뒾땍땳딟뒵딤딸뎨뒈뒘듟될돳돸딄딜듻땜땱듽뎰땻딠땲둥딹딁뒵딝뒈듼땣뒐뎬둠돸땪땨딁드둠땀됐들됴딄돷득듼땦뒾딠듸뎠땥딎딐땫땦들땮딻땤땰둘돸돴딤딠돸딞뒼땭돳든뒈땁땭딎땣될뒝땦듼뒷땧뒵딹딃뒼땟딃듔뎰됴둑듌땩딜됨디땍디딃땦듻뎽땄땫땻뎨딤돠뒬듨땣딌뒵따뒼딞뒙뒼든듻뒼뒵땝;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 72
    .line 73
    .line 74
    move-object v2, p0

    .line 75
    move-object v3, p1

    .line 76
    move v4, p2

    .line 77
    move-wide v5, p3

    .line 78
    move-object v7, v8

    .line 79
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-ne v2, v3, :cond_3

    .line 88
    .line 89
    invoke-static {p0, v8, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const/4 v9, 0x0

    .line 102
    if-ne v2, p2, :cond_d

    .line 103
    .line 104
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    cmp-long p2, p3, v2

    .line 109
    .line 110
    if-gez p2, :cond_4

    .line 111
    .line 112
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 113
    .line 114
    .line 115
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 124
    .line 125
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_6

    .line 130
    .line 131
    invoke-static {p0, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedReceiveCatchingOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 141
    .line 142
    .line 143
    move-result-wide p2

    .line 144
    sget p4, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 145
    .line 146
    int-to-long v2, p4

    .line 147
    div-long v4, p2, v2

    .line 148
    .line 149
    rem-long v2, p2, v2

    .line 150
    .line 151
    long-to-int p4, v2

    .line 152
    iget-wide v2, p1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 153
    .line 154
    cmp-long v6, v2, v4

    .line 155
    .line 156
    if-eqz v6, :cond_8

    .line 157
    .line 158
    invoke-static {p0, v4, v5, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-nez v2, :cond_7

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    move-object p1, v2

    .line 166
    :cond_8
    move-object v2, p0

    .line 167
    move-object v3, p1

    .line 168
    move v4, p4

    .line 169
    move-wide v5, p2

    .line 170
    move-object v7, v8

    .line 171
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    if-ne v2, v3, :cond_9

    .line 180
    .line 181
    invoke-static {p0, v8, p1, p4}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 186
    .line 187
    .line 188
    move-result-object p4

    .line 189
    if-ne v2, p4, :cond_a

    .line 190
    .line 191
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 192
    .line 193
    .line 194
    move-result-wide v2

    .line 195
    cmp-long p4, p2, v2

    .line 196
    .line 197
    if-gez p4, :cond_5

    .line 198
    .line 199
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    if-eq v2, p2, :cond_c

    .line 208
    .line 209
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 210
    .line 211
    .line 212
    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 213
    .line 214
    invoke-virtual {p1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iget-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 223
    .line 224
    if-eqz p2, :cond_b

    .line 225
    .line 226
    invoke-static {p0, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$bindCancellationFunResult(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    :cond_b
    check-cast v9, Lkotlin/jvm/functions/Function3;

    .line 231
    .line 232
    :goto_2
    invoke-virtual {p5, p1, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 237
    .line 238
    const-string p2, "unexpected"

    .line 239
    .line 240
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p1

    .line 244
    :cond_d
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 245
    .line 246
    .line 247
    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 248
    .line 249
    invoke-virtual {p1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    iget-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 258
    .line 259
    if-eqz p2, :cond_e

    .line 260
    .line 261
    invoke-static {p0, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$bindCancellationFunResult(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    :cond_e
    check-cast v9, Lkotlin/jvm/functions/Function3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :goto_3
    invoke-virtual {p5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p5

    .line 272
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    if-ne p5, p1, :cond_f

    .line 277
    .line 278
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 279
    .line 280
    .line 281
    :cond_f
    if-ne p5, v1, :cond_10

    .line 282
    .line 283
    return-object v1

    .line 284
    :cond_10
    :goto_4
    check-cast p5, Lkotlinx/coroutines/channels/ChannelResult;

    .line 285
    .line 286
    invoke-virtual {p5}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    return-object p1

    .line 291
    :goto_5
    invoke-virtual {p5}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 292
    .line 293
    .line 294
    throw p1
.end method

.method public final 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move v3, p2

    .line 12
    move-wide v4, p3

    .line 13
    move-object v6, v0

    .line 14
    :try_start_0
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    invoke-static {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const/4 v7, 0x0

    .line 37
    if-ne v1, p2, :cond_b

    .line 38
    .line 39
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    cmp-long p2, p3, v1

    .line 44
    .line 45
    if-gez p2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 59
    .line 60
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 76
    .line 77
    .line 78
    move-result-wide p2

    .line 79
    sget p4, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 80
    .line 81
    int-to-long v1, p4

    .line 82
    div-long v1, p2, v1

    .line 83
    .line 84
    int-to-long v3, p4

    .line 85
    rem-long v3, p2, v3

    .line 86
    .line 87
    long-to-int p4, v3

    .line 88
    iget-wide v3, p1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 89
    .line 90
    cmp-long v5, v3, v1

    .line 91
    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    invoke-static {p0, v1, v2, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-nez v1, :cond_4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    move-object p1, v1

    .line 102
    :cond_5
    move-object v1, p0

    .line 103
    move-object v2, p1

    .line 104
    move v3, p4

    .line 105
    move-wide v4, p2

    .line 106
    move-object v6, v0

    .line 107
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-ne v1, v2, :cond_7

    .line 116
    .line 117
    instance-of p2, v0, Lkotlinx/coroutines/Waiter;

    .line 118
    .line 119
    if-eqz p2, :cond_6

    .line 120
    .line 121
    move-object v7, v0

    .line 122
    :cond_6
    if-eqz v7, :cond_d

    .line 123
    .line 124
    invoke-static {p0, v7, p1, p4}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    if-ne v1, p4, :cond_8

    .line 133
    .line 134
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    cmp-long p4, p2, v1

    .line 139
    .line 140
    if-gez p4, :cond_2

    .line 141
    .line 142
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    if-eq v1, p2, :cond_a

    .line 151
    .line 152
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 156
    .line 157
    if-eqz p1, :cond_9

    .line 158
    .line 159
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$bindCancellationFun(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    :cond_9
    check-cast v7, Lkotlin/jvm/functions/Function3;

    .line 164
    .line 165
    :goto_1
    invoke-virtual {v0, v1, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    const-string p2, "unexpected"

    .line 172
    .line 173
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_b
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 181
    .line 182
    if-eqz p1, :cond_c

    .line 183
    .line 184
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$bindCancellationFun(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    :cond_c
    check-cast v7, Lkotlin/jvm/functions/Function3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_d
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    if-ne p1, p2, :cond_e

    .line 200
    .line 201
    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 202
    .line 203
    .line 204
    :cond_e
    return-object p1

    .line 205
    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 206
    .line 207
    .line 208
    throw p1
.end method

.method public final 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lkotlinx/coroutines/Waiter;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, L돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, L돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝;

    .line 6
    .line 7
    iget-object p1, p1, L돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 8
    .line 9
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 10
    .line 11
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    :goto_0
    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    instance-of p2, p1, L땃들뒾땍땳딟뒵딤딸뎨뒈뒘듟될돳돸딄딜듻땜땱듽뎰땻딠땲둥딹딁뒵딝뒈듼땣뒐뎬둠돸땪땨딁드둠땀됐들됴딄돷득듼땦뒾딠듸뎠땥딎딐땫땦들땮딻땤땰둘돸돴딤딠돸딞뒼땭돳든뒈땁땭딎땣될뒝땦듼뒷땧뒵딹딃뒼땟딃듔뎰됴둑듌땩딜됨디땍디딃땦듻뎽땄땫땻뎨딤돠뒬듨땣딌뒵따뒼딞뒙뒼든듻뒼뒵땝;

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    check-cast p1, L땃들뒾땍땳딟뒵딤딸뎨뒈뒘듟될돳돸딄딜듻땜땱듽뎰땻딠땲둥딹딁뒵딝뒈듼땣뒐뎬둠돸땪땨딁드둠땀됐들됴딄돷득듼땦뒾딠듸뎠땥딎딐땫땦들땮딻땤땰둘돸돴딤딠돸딞뒼땭돳든뒈땁땭딎땣될뒝땦듼뒷땧뒵딹딃뒼땟딃듔뎰됴둑듌땩딜됨디땍디딃땦듻뎽땄땫땻뎨딤돠뒬듨땣딌뒵따뒼딞뒙뒼든듻뒼뒵땝;

    .line 58
    .line 59
    iget-object p1, p1, L땃들뒾땍땳딟뒵딤딸뎨뒈뒘듟될돳돸딄딜듻땜땱듽뎰땻딠땲둥딹딁뒵딝뒈듼땣뒐뎬둠돸땪땨딁드둠땀됐들됴딄돷득듼땦뒾딠듸뎠땥딎딐땫땦들땮딻땤땰둘돸돴딤딠돸딞뒼땭돳든뒈땁땭딎땣될뒝땦듼뒷땧뒵딹딃뒼땟딃듔뎰됴둑듌땩딜됨디땍디딃땦듻뎽땄땫땻뎨딤돠뒬듨땣딌뒵따뒼딞뒙뒼든듻뒼뒵땝;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 60
    .line 61
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 62
    .line 63
    sget-object p2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 64
    .line 65
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p2, v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p2}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    instance-of p2, p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    .line 86
    .line 87
    if-eqz p2, :cond_5

    .line 88
    .line 89
    check-cast p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    .line 90
    .line 91
    iget-object p2, p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 92
    .line 93
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    iput-object v0, p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 98
    .line 99
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/Object;

    .line 104
    .line 105
    iget-object p1, p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 106
    .line 107
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-nez p1, :cond_4

    .line 112
    .line 113
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 114
    .line 115
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 126
    .line 127
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    instance-of p2, p1, Lkotlinx/coroutines/selects/SelectInstance;

    .line 140
    .line 141
    if-eqz p2, :cond_6

    .line 142
    .line 143
    check-cast p1, Lkotlinx/coroutines/selects/SelectInstance;

    .line 144
    .line 145
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-interface {p1, p0, p2}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :goto_1
    return-void

    .line 153
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v1, "Unexpected waiter: "

    .line 158
    .line 159
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p2
.end method

.method public final 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    const/4 v8, 0x0

    .line 14
    move-object/from16 v1, p0

    .line 15
    .line 16
    move-object/from16 v2, p1

    .line 17
    .line 18
    move/from16 v3, p2

    .line 19
    .line 20
    move-object/from16 v4, p3

    .line 21
    .line 22
    move-wide/from16 v5, p4

    .line 23
    .line 24
    move-object v7, v10

    .line 25
    :try_start_0
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz v1, :cond_10

    .line 30
    .line 31
    const/4 v11, 0x1

    .line 32
    if-eq v1, v11, :cond_f

    .line 33
    .line 34
    const/4 v12, 0x2

    .line 35
    if-eq v1, v12, :cond_e

    .line 36
    .line 37
    const/4 v13, 0x4

    .line 38
    if-eq v1, v13, :cond_d

    .line 39
    .line 40
    const-string v14, "unexpected"

    .line 41
    .line 42
    const/4 v15, 0x5

    .line 43
    if-ne v1, v15, :cond_c

    .line 44
    .line 45
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 57
    .line 58
    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    const-wide v4, 0xfffffffffffffffL

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    and-long v16, v2, v4

    .line 72
    .line 73
    invoke-static {v9, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    .line 74
    .line 75
    .line 76
    move-result v18

    .line 77
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    .line 78
    .line 79
    int-to-long v3, v2

    .line 80
    div-long v3, v16, v3

    .line 81
    .line 82
    int-to-long v5, v2

    .line 83
    rem-long v5, v16, v5

    .line 84
    .line 85
    long-to-int v8, v5

    .line 86
    iget-wide v5, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 87
    .line 88
    cmp-long v2, v5, v3

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-static {v9, v3, v4, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    if-eqz v18, :cond_0

    .line 99
    .line 100
    :cond_1
    :goto_1
    invoke-static {v9, v0, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto/16 :goto_7

    .line 107
    .line 108
    :cond_2
    move-object v7, v2

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    move-object v7, v1

    .line 111
    :goto_2
    move-object/from16 v1, p0

    .line 112
    .line 113
    move-object v2, v7

    .line 114
    move v3, v8

    .line 115
    move-object/from16 v4, p3

    .line 116
    .line 117
    move-wide/from16 v5, v16

    .line 118
    .line 119
    move-object/from16 p1, v7

    .line 120
    .line 121
    move-object v7, v10

    .line 122
    move/from16 v19, v8

    .line 123
    .line 124
    move/from16 v8, v18

    .line 125
    .line 126
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_b

    .line 131
    .line 132
    if-eq v1, v11, :cond_a

    .line 133
    .line 134
    if-eq v1, v12, :cond_7

    .line 135
    .line 136
    const/4 v2, 0x3

    .line 137
    if-eq v1, v2, :cond_6

    .line 138
    .line 139
    if-eq v1, v13, :cond_5

    .line 140
    .line 141
    if-eq v1, v15, :cond_4

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 145
    .line 146
    .line 147
    :goto_3
    move-object/from16 v1, p1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 151
    .line 152
    .line 153
    move-result-wide v1

    .line 154
    cmp-long v3, v16, v1

    .line 155
    .line 156
    if-gez v3, :cond_1

    .line 157
    .line 158
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_7
    if-eqz v18, :cond_8

    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_8
    instance-of v0, v10, Lkotlinx/coroutines/Waiter;

    .line 175
    .line 176
    if-eqz v0, :cond_9

    .line 177
    .line 178
    move-object v0, v10

    .line 179
    goto :goto_4

    .line 180
    :cond_9
    const/4 v0, 0x0

    .line 181
    :goto_4
    if-eqz v0, :cond_11

    .line 182
    .line 183
    move-object/from16 v2, p1

    .line 184
    .line 185
    move/from16 v1, v19

    .line 186
    .line 187
    invoke-static {v9, v0, v2, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 192
    .line 193
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 194
    .line 195
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    :goto_5
    invoke-interface {v10, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_b
    move-object/from16 v2, p1

    .line 204
    .line 205
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 206
    .line 207
    .line 208
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 209
    .line 210
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 211
    .line 212
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    goto :goto_5

    .line 217
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 218
    .line 219
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    .line 224
    .line 225
    .line 226
    move-result-wide v1

    .line 227
    cmp-long v3, p4, v1

    .line 228
    .line 229
    if-gez v3, :cond_1

    .line 230
    .line 231
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :cond_e
    move-object/from16 v0, p1

    .line 237
    .line 238
    move/from16 v1, p2

    .line 239
    .line 240
    invoke-static {v9, v10, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 241
    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 245
    .line 246
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 247
    .line 248
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    goto :goto_5

    .line 253
    :cond_10
    move-object/from16 v0, p1

    .line 254
    .line 255
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    .line 256
    .line 257
    .line 258
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 259
    .line 260
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 261
    .line 262
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    goto :goto_5

    .line 267
    :cond_11
    :goto_6
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-ne v0, v1, :cond_12

    .line 276
    .line 277
    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 278
    .line 279
    .line 280
    :cond_12
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    if-ne v0, v1, :cond_13

    .line 285
    .line 286
    return-object v0

    .line 287
    :cond_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 288
    .line 289
    return-object v0

    .line 290
    :goto_7
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 291
    .line 292
    .line 293
    throw v0
.end method

.method public final 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/selects/SelectInstance;

    .line 6
    .line 7
    invoke-interface {p1, p0, p2}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p1, L땃들뒾땍땳딟뒵딤딸뎨뒈뒘듟될돳돸딄딜듻땜땱듽뎰땻딠땲둥딹딁뒵딝뒈듼땣뒐뎬둠돸땪땨딁드둠땀됐들됴딄돷득듼땦뒾딠듸뎠땥딎딐땫땦들땮딻땤땰둘돸돴딤딠돸딞뒼땭돳든뒈땁땭딎땣될뒝땦듼뒷땧뒵딹딃뒼땟딃듔뎰됴둑듌땩딜됨디땍디딃땦듻뎽땄땫땻뎨딤돠뒬듨땣딌뒵따뒼딞뒙뒼든듻뒼뒵땝;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, L땃들뒾땍땳딟뒵딤딸뎨뒈뒘듟될돳돸딄딜듻땜땱듽뎰땻딠땲둥딹딁뒵딝뒈듼땣뒐뎬둠돸땪땨딁드둠땀됐들됴딄돷득듼땦뒾딠듸뎠땥딎딐땫땦들땮딻땤땰둘돸돴딤딠돸딞뒼땭돳든뒈땁땭딎땣될뒝땦듼뒷땧뒵딹딃뒼땟딃듔뎰됴둑듌땩딜됨디땍디딃땦듻뎽땄땫땻뎨딤돠뒬듨땣딌뒵따뒼딞뒙뒼든듻뒼뒵땝;

    .line 23
    .line 24
    iget-object p1, p1, L땃들뒾땍땳딟뒵딤딸뎨뒈뒘듟될돳돸딄딜듻땜땱듽뎰땻딠땲둥딹딁뒵딝뒈듼땣뒐뎬둠돸땪땨딁드둠땀됐들됴딄돷득듼땦뒾딠듸뎠땥딎딐땫땦들땮딻땤땰둘돸돴딤딠돸딞뒼땭돳든뒈땁땭딎땣될뒝땦듼뒷땧뒵딹딃뒼땟딃듔뎰됴둑듌땩딜됨디땍디딃땦듻뎽땄땫땻뎨딤돠뒬듨땣딌뒵따뒼딞뒙뒼든듻뒼뒵땝;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 25
    .line 26
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v1, L돰딁뒋땟된딐둘뒝뒹됴딸딻듟땪땁뎡뒘돝돴된땮도돨돰듐딐듰땄뒵뎽뒛땭땅딨둠듔따돠땭땨뒉돠따땐딨돳땟돤둔뒀듐됴딜돝둬땁뒋딟돤땜됨땟딄뒉뒻땝뒈됐뎠듨뒹땄될땣뎹된돶땰뎠둔들뎻듌되듌돠듨됨땹땳둬뒐뒨됴듐딎땤딻땣돼둣뒘됐돷돼땻땀뒉딠땱돨드땪땦뎬둔땯득뎰땄돸뎽돳돷땯뒉드돰뒀땐;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-direct {v1, p0, v0}, L돰딁뒋땟된딐둘뒝뒹됴딸딻듟땪땁뎡뒘돝돴된땮도돨돰듐딐듰땄뒵뎽뒛땭땅딨둠듔따돠땭땨뒉돠따땐딨돳땟돤둔뒀듐됴딜돝둬땁뒋딟돤땜됨땟딄뒉뒻땝뒈됐뎠듨뒹땄될땣뎹된돶땰뎠둔들뎻듌되듌돠듨됨땹땳둬뒐뒨됴듐딎땤딻땣돼둣뒘됐돷돼땻땀뒉딠땱돨드땪땦뎬둔땯득뎰땄돸뎽돳돷땯뒉드돰뒀땐;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static {p1, p2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 56
    .line 57
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    check-cast p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    .line 61
    .line 62
    iget-object v0, p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 68
    .line 69
    iput-object p2, p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/Object;

    .line 70
    .line 71
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 72
    .line 73
    iget-object p1, p1, Lkotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 74
    .line 75
    iget-object v3, p1, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 76
    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    invoke-static {p1, v3, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$bindCancellationFun(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    :cond_3
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 93
    .line 94
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    check-cast p1, Lkotlinx/coroutines/CancellableContinuation;

    .line 98
    .line 99
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    new-instance v1, L돰딁뒋땟된딐둘뒝뒹됴딸딻듟땪땁뎡뒘돝돴된땮도돨돰듐딐듰땄뒵뎽뒛땭땅딨둠듔따돠땭땨뒉돠따땐딨돳땟돤둔뒀듐됴딜돝둬땁뒋딟돤땜됨땟딄뒉뒻땝뒈됐뎠듨뒹땄될땣뎹된돶땰뎠둔들뎻듌되듌돠듨됨땹땳둬뒐뒨됴듐딎땤딻땣돼둣뒘됐돷돼땻땀뒉딠땱돨드땪땦뎬둔땯득뎰땄돸뎽돳돷땯뒉드돰뒀땐;

    .line 104
    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-direct {v1, p0, v0}, L돰딁뒋땟된딐둘뒝뒹됴딸딻듟땪땁뎡뒘돝돴된땮도돨돰듐딐듰땄뒵뎽뒛땭땅딨둠듔따돠땭땨뒉돠따땐딨돳땟돤둔뒀듐됴딜돝둬땁뒋딟돤땜됨땟딄뒉뒻땝뒈됐뎠듨뒹땄될땣뎹된돶땰뎠둔들뎻듌되듌돠듨됨땹땳둬뒐뒨됴듐딎땤딻땣돼둣뒘됐돷돼땻땀뒉딠땱돨드땪땦뎬둔땯득뎰땄돸뎽돳돷땯뒉드돰뒀땐;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;I)V

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-static {p1, p2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    :goto_0
    return p1

    .line 114
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v1, "Unexpected receiver type: "

    .line 119
    .line 120
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p2
.end method

.method public final 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    check-cast p1, Lkotlinx/coroutines/CancellableContinuation;

    .line 14
    .line 15
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    sget-object p3, Lkotlinx/coroutines/channels/BufferedChannelKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/channels/ChannelSegment;

    .line 18
    .line 19
    invoke-interface {p1, p2, v1, v1}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast p1, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 39
    .line 40
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    invoke-virtual {p1, p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectDetailed(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object v0, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->REREGISTER:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    .line 47
    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    sget-object p2, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->SUCCESSFUL:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    .line 54
    .line 55
    if-ne p1, p2, :cond_3

    .line 56
    .line 57
    :goto_0
    const/4 v2, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    instance-of p2, p1, L돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝;

    .line 60
    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    check-cast p1, L돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝;

    .line 64
    .line 65
    iget-object p1, p1, L돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 66
    .line 67
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    sget-object p3, Lkotlinx/coroutines/channels/BufferedChannelKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/channels/ChannelSegment;

    .line 70
    .line 71
    invoke-interface {p1, p2, v1, v1}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    :goto_1
    return v2

    .line 82
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    new-instance p3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v0, "Unexpected waiter: "

    .line 87
    .line 88
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p2
.end method

.method public final 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;J)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide v1, 0xfffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    and-long/2addr v4, v1

    .line 19
    cmp-long v6, p4, v4

    .line 20
    .line 21
    if-ltz v6, :cond_2

    .line 22
    .line 23
    if-nez p3, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p1, p2, v0, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_1
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 45
    .line 46
    if-ne v0, v4, :cond_2

    .line 47
    .line 48
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {p1, p2, v0, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_2
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_b

    .line 71
    .line 72
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-ne v0, v4, :cond_3

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_3
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 81
    .line 82
    if-ne v0, v4, :cond_4

    .line 83
    .line 84
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {p1, p2, v0, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-ne v0, v4, :cond_5

    .line 108
    .line 109
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-ne v0, v4, :cond_6

    .line 120
    .line 121
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    if-ne v0, v4, :cond_7

    .line 132
    .line 133
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-eq v0, v4, :cond_2

    .line 147
    .line 148
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {p1, p2, v0, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_2

    .line 157
    .line 158
    instance-of p3, v0, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 159
    .line 160
    if-eqz p3, :cond_8

    .line 161
    .line 162
    check-cast v0, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 163
    .line 164
    iget-object v0, v0, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/Waiter;

    .line 165
    .line 166
    :cond_8
    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    .line 167
    .line 168
    .line 169
    move-result p4

    .line 170
    if-eqz p4, :cond_9

    .line 171
    .line 172
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    goto :goto_1

    .line 187
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 188
    .line 189
    .line 190
    move-result-object p4

    .line 191
    invoke-virtual {p1, p2, p4}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    const/4 p4, 0x0

    .line 195
    invoke-virtual {p1, p2, p4}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 196
    .line 197
    .line 198
    if-eqz p3, :cond_a

    .line 199
    .line 200
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V

    .line 201
    .line 202
    .line 203
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    goto :goto_1

    .line 208
    :cond_b
    :goto_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v4

    .line 212
    and-long/2addr v4, v1

    .line 213
    cmp-long v6, p4, v4

    .line 214
    .line 215
    if-gez v6, :cond_c

    .line 216
    .line 217
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {p1, p2, v0, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_2

    .line 226
    .line 227
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V

    .line 228
    .line 229
    .line 230
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    goto :goto_1

    .line 235
    :cond_c
    if-nez p3, :cond_d

    .line 236
    .line 237
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    goto :goto_1

    .line 242
    :cond_d
    invoke-virtual {p1, p2, v0, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_2

    .line 247
    .line 248
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V

    .line 249
    .line 250
    .line 251
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    :goto_1
    return-object p1
.end method

.method public final 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 5

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(J)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    if-nez p7, :cond_1

    .line 18
    .line 19
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 20
    .line 21
    invoke-virtual {p1, p2, v4, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return v3

    .line 28
    :cond_1
    if-eqz p7, :cond_2

    .line 29
    .line 30
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, p2, v4, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    if-nez p6, :cond_3

    .line 45
    .line 46
    const/4 p1, 0x3

    .line 47
    return p1

    .line 48
    :cond_3
    invoke-virtual {p1, p2, v4, p6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const/4 p1, 0x2

    .line 55
    return p1

    .line 56
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-ne v0, v4, :cond_5

    .line 61
    .line 62
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 63
    .line 64
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    return v3

    .line 71
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    const/4 p5, 0x5

    .line 76
    if-ne v0, p4, :cond_6

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 79
    .line 80
    .line 81
    return p5

    .line 82
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    if-ne v0, p4, :cond_7

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 89
    .line 90
    .line 91
    return p5

    .line 92
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    if-ne v0, p4, :cond_8

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 102
    .line 103
    .line 104
    return v1

    .line 105
    :cond_8
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 106
    .line 107
    .line 108
    instance-of p4, v0, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 109
    .line 110
    if-eqz p4, :cond_9

    .line 111
    .line 112
    check-cast v0, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;

    .line 113
    .line 114
    iget-object v0, v0, L땲돸뒵땀됴돵땃뒀둥땃딹돠뒷뎨뎡뒻듔듔땯땟듸득듬딽돠돤돴딞딌돛뒈뒷뎠들뒉됨듽딐됴듟뎨듰뒻땡딹돵뎬땔뒐딄땹돳될됨됨돳뒉딀땬됴땩땹돷딻뎽두든듐뒈뒈딨땣뒾된됩돨뎽땸될땋땔뒻뎻돷딄뎠뒋뒐딄따두딎땬뎽땰딅딞뎸땅딻뒈땸뎨됴됴땔듨뒐딃따딌딹땅땟돤땔뎻뒨딁딃뒬딃땃돛뎬땻뒻됴딤둥;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/Waiter;

    .line 115
    .line 116
    :cond_9
    invoke-virtual {p0, v0, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-eqz p3, :cond_a

    .line 121
    .line 122
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveDequeued()V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->getAndSetState$kotlinx_coroutines_core(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    .line 142
    .line 143
    .line 144
    move-result-object p4

    .line 145
    if-eq p3, p4, :cond_b

    .line 146
    .line 147
    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 148
    .line 149
    .line 150
    :cond_b
    const/4 v2, 0x5

    .line 151
    :goto_0
    return v2
.end method
