package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Longs;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0461xe717dee;
import defpackage.C0462x3c05abf3;
import defpackage.C0464xd385fe9c;
import defpackage.C0465xe275586d;
import defpackage.C0466x6a412221;
import defpackage.C0467xb0573c37;
import defpackage.C0468xc33c59f3;
import defpackage.C0469xfdbfca41;
import defpackage.C0470xe7440857;
import defpackage.C0471xd033de3a;
import defpackage.C0472xa8c9007c;
import defpackage.C0473x9e71a976;
import defpackage.C0474x4db104dd;
import defpackage.C0475x736ce035;
import defpackage.C1075xbbcf7a82;
import defpackage.C1295xec5e1b4c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt___StringsKt;
import kotlin.time.DurationKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectClause2Impl;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002{|B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\"\b\u0002\u0010\b\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0007¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e2\u0006\u0010\u000b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00028\u0000H\u0090@¢\u0006\u0004\b\u0013\u0010\rJ\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e2\u0006\u0010\u000b\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\u0015\u0010\u0010J\u000f\u0010\u0019\u001a\u00020\u0012H\u0010¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001c\u0010\u001bJ\u0010\u0010\u001d\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u001d\u0010\u001eJ\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0096@¢\u0006\u0004\b\u001f\u0010\u001eJ\u0015\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020$H\u0004¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010(\u001a\u00020$H\u0000¢\u0006\u0004\b)\u0010'J%\u0010.\u001a\u00020\u00062\n\u0010,\u001a\u0006\u0012\u0002\b\u00030+2\b\u0010\u000b\u001a\u0004\u0018\u00010-H\u0014¢\u0006\u0004\b.\u0010/J\u0016\u00101\u001a\b\u0012\u0004\u0012\u00028\u000000H\u0096\u0002¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0006H\u0014¢\u0006\u0004\b3\u0010\u001bJ\u0019\u00106\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u000104¢\u0006\u0004\b8\u00107J\r\u00108\u001a\u00020\u0006¢\u0006\u0004\b8\u0010\u001bJ\u001d\u00108\u001a\u00020\u00062\u000e\u00105\u001a\n\u0018\u000109j\u0004\u0018\u0001`:¢\u0006\u0004\b8\u0010;J\u0019\u0010=\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u000104H\u0010¢\u0006\u0004\b<\u00107J!\u0010>\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u0001042\u0006\u00108\u001a\u00020\u0012H\u0014¢\u0006\u0004\b>\u0010?J4\u0010C\u001a\u00020\u00062#\u0010B\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u000104¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(5\u0012\u0004\u0012\u00020\u00060\u0005H\u0016¢\u0006\u0004\bC\u0010DJ\u000f\u0010F\u001a\u00020\u0012H\u0000¢\u0006\u0004\bE\u0010\u0018J\u000f\u0010H\u001a\u00020GH\u0016¢\u0006\u0004\bH\u0010IJ\u000f\u0010K\u001a\u00020GH\u0000¢\u0006\u0004\bJ\u0010IJ\r\u0010L\u001a\u00020\u0006¢\u0006\u0004\bL\u0010\u001bR.\u0010\b\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00078\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\b\u0010MR\u0014\u0010P\u001a\u00020$8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bN\u0010OR\u0014\u0010R\u001a\u00020$8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010OR,\u0010W\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000S8VX\u0096\u0004¢\u0006\f\u0012\u0004\bV\u0010\u001b\u001a\u0004\bT\u0010UR \u0010\\\u001a\b\u0012\u0004\u0012\u00028\u00000X8VX\u0096\u0004¢\u0006\f\u0012\u0004\b[\u0010\u001b\u001a\u0004\bY\u0010ZR&\u0010_\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000e0X8VX\u0096\u0004¢\u0006\f\u0012\u0004\b^\u0010\u001b\u001a\u0004\b]\u0010ZR\"\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000X8VX\u0096\u0004¢\u0006\f\u0012\u0004\ba\u0010\u001b\u001a\u0004\b`\u0010ZR\u0016\u0010e\u001a\u0004\u0018\u0001048DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bc\u0010dR\u0014\u0010g\u001a\u0002048DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bf\u0010dR\u0014\u0010h\u001a\u00020\u00128TX\u0094\u0004¢\u0006\u0006\u001a\u0004\bh\u0010\u0018R\u001a\u0010i\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\bj\u0010\u001b\u001a\u0004\bi\u0010\u0018R\u001a\u0010k\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\bl\u0010\u001b\u001a\u0004\bk\u0010\u0018R\u001a\u0010m\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\bn\u0010\u001b\u001a\u0004\bm\u0010\u0018R\u000b\u0010p\u001a\u00020o8\u0002X\u0082\u0004R\u000b\u0010q\u001a\u00020o8\u0002X\u0082\u0004R\u000b\u0010r\u001a\u00020o8\u0002X\u0082\u0004R\u000b\u0010s\u001a\u00020o8\u0002X\u0082\u0004R\u0017\u0010v\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000u0t8\u0002X\u0082\u0004R\u0017\u0010w\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000u0t8\u0002X\u0082\u0004R\u0017\u0010x\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000u0t8\u0002X\u0082\u0004R\u0013\u0010y\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0t8\u0002X\u0082\u0004R\u0013\u0010z\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0t8\u0002X\u0082\u0004¨\u0006}"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/Channel;", "", "capacity", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(ILkotlin/jvm/functions/Function1;)V", "element", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ChannelResult;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "", "sendBroadcast$kotlinx_coroutines_core", "sendBroadcast", "trySendDropOldest-JP2dKIU", "trySendDropOldest", "shouldSendSuspend$kotlinx_coroutines_core", "()Z", "shouldSendSuspend", "onReceiveEnqueued", "()V", "onReceiveDequeued", "receive", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "receiveCatching-JP2dKIU", "receiveCatching", "tryReceive-PtdJZtk", "()Ljava/lang/Object;", "tryReceive", "", "globalCellIndex", "dropFirstElementUntilTheSpecifiedCellIsInTheBuffer", "(J)V", "globalIndex", "waitExpandBufferCompletion$kotlinx_coroutines_core", "waitExpandBufferCompletion", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "", "registerSelectForSend", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/ChannelIterator;", "iterator", "()Lkotlinx/coroutines/channels/ChannelIterator;", "onClosedIdempotent", "", "cause", "close", "(Ljava/lang/Throwable;)Z", "cancel", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Ljava/util/concurrent/CancellationException;)V", "cancelImpl$kotlinx_coroutines_core", "cancelImpl", "closeOrCancelImpl", "(Ljava/lang/Throwable;Z)Z", "Lkotlin/ParameterName;", "name", "handler", "invokeOnClose", "(Lkotlin/jvm/functions/Function1;)V", "hasElements$kotlinx_coroutines_core", "hasElements", "", "toString", "()Ljava/lang/String;", "toStringDebug$kotlinx_coroutines_core", "toStringDebug", "checkSegmentStructureInvariants", "Lkotlin/jvm/functions/Function1;", "getSendersCounter$kotlinx_coroutines_core", "()J", "sendersCounter", "getReceiversCounter$kotlinx_coroutines_core", "receiversCounter", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend$annotations", "onSend", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive", "()Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive$annotations", "onReceive", "getOnReceiveCatching", "getOnReceiveCatching$annotations", "onReceiveCatching", "getOnReceiveOrNull", "getOnReceiveOrNull$annotations", "onReceiveOrNull", "getCloseCause", "()Ljava/lang/Throwable;", "closeCause", "getSendException", "sendException", "isConflatedDropOldest", "isClosedForSend", "isClosedForSend$annotations", "isClosedForReceive", "isClosedForReceive$annotations", "isEmpty", "isEmpty$annotations", "Lkotlinx/atomicfu/AtomicLong;", "sendersAndCloseStatus", "receivers", "bufferEnd", "completedExpandBuffersAndPauseFlag", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/channels/ChannelSegment;", "sendSegment", "receiveSegment", "bufferEndSegment", "_closeCause", "closeHandler", "돰듰땃듔돴딎땯둘돤듐뎬된뒐돳땭된듻뒤듔땲둣딄땧둑딹땐뒾땋딤돰듼듻뒼됴땭듼땀돳됐뎽뎰돷땧듨뒤듌드돝땃듬땩땸땭땩돤딁뒻땯뒐땦땸돛땣뒐땫땋땟땸돶땹땱딻두둔둬뒹땟둬듰돤땝둣땻될둣딅뎸됫땝땭땨뎹둣땳든듟돛됩듽땸땀드땳땩땱뒹뎹딞딐뎸듟뒛듟딐돷땣뒈듐땬뎹딨딞돵땻땃땰땟뒵뎬돝", "kotlinx/coroutines/channels/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n+ 8 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 9 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 10 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3116:1\n270#1,6:3119\n277#1,68:3126\n394#1,18:3217\n241#1:3235\n266#1,10:3236\n277#1,48:3247\n415#1:3295\n331#1,14:3296\n419#1,3:3311\n241#1:3324\n266#1,10:3325\n277#1,68:3336\n241#1:3414\n266#1,10:3415\n277#1,68:3426\n241#1:3498\n266#1,10:3499\n277#1,68:3510\n241#1:3579\n266#1,10:3580\n277#1,68:3591\n906#1,52:3661\n984#1,8:3717\n878#1:3725\n902#1,33:3726\n994#1:3759\n936#1,14:3760\n955#1,3:3775\n999#1,6:3778\n906#1,52:3792\n984#1,8:3848\n878#1:3856\n902#1,33:3857\n994#1:3890\n936#1,14:3891\n955#1,3:3906\n999#1,6:3909\n878#1:3924\n902#1,48:3925\n955#1,3:3974\n878#1:3977\n902#1,48:3978\n955#1,3:4027\n241#1:4039\n266#1,10:4040\n277#1,68:4051\n878#1:4120\n902#1,48:4121\n955#1,3:4170\n1#2:3117\n3099#3:3118\n3099#3:3125\n3099#3:3246\n3099#3:3335\n3099#3:3425\n3099#3:3497\n3099#3:3509\n3099#3:3590\n3099#3:3660\n3099#3:3923\n3099#3:4030\n3099#3:4031\n3113#3:4032\n3113#3:4033\n3112#3:4034\n3112#3:4035\n3112#3:4036\n3113#3:4037\n3112#3:4038\n3099#3:4050\n3100#3:4173\n3099#3:4174\n3099#3:4175\n3099#3:4176\n3100#3:4177\n3099#3:4178\n3100#3:4201\n3099#3:4202\n3099#3:4203\n3100#3:4204\n3099#3:4254\n3100#3:4255\n3100#3:4256\n3100#3:4274\n3100#3:4275\n426#4,9:3194\n435#4,2:3211\n444#4,4:3213\n448#4,8:3314\n426#4,9:3405\n435#4,2:3495\n444#4,4:3713\n448#4,8:3784\n444#4,4:3844\n448#4,8:3915\n204#5:3203\n205#5:3206\n204#5:3207\n205#5:3210\n57#6,2:3204\n57#6,2:3208\n57#6,2:3322\n266#7:3310\n266#7:3404\n266#7:3494\n266#7:3578\n266#7:3659\n266#7:4119\n902#8:3774\n902#8:3905\n902#8:3973\n902#8:4026\n902#8:4169\n33#9,11:4179\n33#9,11:4190\n68#10,3:4205\n42#10,8:4208\n68#10,3:4216\n42#10,8:4219\n42#10,8:4227\n68#10,3:4235\n42#10,8:4238\n42#10,8:4246\n774#11:4257\n865#11,2:4258\n2318#11,14:4260\n774#11:4276\n865#11,2:4277\n2318#11,14:4279\n774#11:4293\n865#11,2:4294\n2318#11,14:4296\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n*L\n110#1:3119,6\n110#1:3126,68\n151#1:3217,18\n151#1:3235\n151#1:3236,10\n151#1:3247,48\n151#1:3295\n151#1:3296,14\n151#1:3311,3\n191#1:3324\n191#1:3325,10\n191#1:3336,68\n222#1:3414\n222#1:3415,10\n222#1:3426,68\n353#1:3498\n353#1:3499,10\n353#1:3510,68\n411#1:3579\n411#1:3580,10\n411#1:3591,68\n687#1:3661,52\n716#1:3717,8\n716#1:3725\n716#1:3726,33\n716#1:3759\n716#1:3760,14\n716#1:3775,3\n716#1:3778,6\n752#1:3792,52\n768#1:3848,8\n768#1:3856\n768#1:3857,33\n768#1:3890\n768#1:3891,14\n768#1:3906,3\n768#1:3909,6\n801#1:3924\n801#1:3925,48\n801#1:3974,3\n991#1:3977\n991#1:3978,48\n991#1:4027,3\n1484#1:4039\n1484#1:4040,10\n1484#1:4051,68\n1532#1:4120\n1532#1:4121,48\n1532#1:4170,3\n67#1:3118\n110#1:3125\n151#1:3246\n191#1:3335\n222#1:3425\n275#1:3497\n353#1:3509\n411#1:3590\n626#1:3660\n791#1:3923\n1027#1:4030\n1076#1:4031\n1394#1:4032\n1396#1:4033\n1426#1:4034\n1436#1:4035\n1445#1:4036\n1446#1:4037\n1453#1:4038\n1484#1:4050\n1898#1:4173\n1900#1:4174\n1902#1:4175\n1915#1:4176\n1926#1:4177\n1927#1:4178\n2229#1:4201\n2242#1:4202\n2252#1:4203\n2255#1:4204\n2572#1:4254\n2574#1:4255\n2599#1:4256\n2661#1:4274\n2662#1:4275\n131#1:3194,9\n131#1:3211,2\n150#1:3213,4\n150#1:3314,8\n218#1:3405,9\n218#1:3495,2\n715#1:3713,4\n715#1:3784,8\n766#1:3844,4\n766#1:3915,8\n135#1:3203\n135#1:3206\n138#1:3207\n138#1:3210\n135#1:3204,2\n138#1:3208,2\n180#1:3322,2\n151#1:3310\n191#1:3404\n222#1:3494\n353#1:3578\n411#1:3659\n1484#1:4119\n716#1:3774\n768#1:3905\n801#1:3973\n991#1:4026\n1532#1:4169\n2131#1:4179,11\n2186#1:4190,11\n2394#1:4205,3\n2394#1:4208,8\n2449#1:4216,3\n2449#1:4219,8\n2468#1:4227,8\n2498#1:4235,3\n2498#1:4238,8\n2559#1:4246,8\n2608#1:4257\n2608#1:4258,2\n2609#1:4260,14\n2673#1:4276\n2673#1:4277,2\n2674#1:4279,14\n2714#1:4293\n2714#1:4294,2\n2715#1:4296,14\n*E\n"})
/* loaded from: classes3.dex */
public class BufferedChannel<E> implements Channel<E> {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f1812x1378447b = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f1813x75d576dc = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f1814x9738a56c = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f1815x9e171bf9 = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f1816x34271fae = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f1817x95f25580 = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f1818x3db60231 = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f1819x9d12c1f4 = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f1820x1db10c9d = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
    private volatile /* synthetic */ Object _closeCause$volatile;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;

    @JvmField
    @Nullable
    public final Function1<E, Unit> onUndeliveredElement;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final int f1821xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final C0461xe717dee f1822x3271d0aa;

    /* JADX WARN: Multi-variable type inference failed */
    public BufferedChannel(int i, @Nullable Function1<? super E, Unit> function1) {
        Symbol symbol;
        this.f1821xfbe0c504 = i;
        this.onUndeliveredElement = function1;
        if (i >= 0) {
            this.bufferEnd$volatile = BufferedChannelKt.access$initialBufferEnd(i);
            this.completedExpandBuffersAndPauseFlag$volatile = f1814x9738a56c.get(this);
            ChannelSegment channelSegment = new ChannelSegment(0L, null, this, 3);
            this.sendSegment$volatile = channelSegment;
            this.receiveSegment$volatile = channelSegment;
            if (m2268x95f25580()) {
                channelSegment = BufferedChannelKt.f1823xfbe0c504;
                Intrinsics.checkNotNull(channelSegment, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
            }
            this.bufferEndSegment$volatile = channelSegment;
            this.f1822x3271d0aa = function1 != 0 ? new C0461xe717dee(this, 0) : null;
            symbol = BufferedChannelKt.f1839xad53da1a;
            this._closeCause$volatile = symbol;
            return;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Invalid channel capacity: ", ", should be >=0").toString());
    }

    public static final Function3 access$bindCancellationFun(BufferedChannel bufferedChannel, Function1 function1, Object obj) {
        bufferedChannel.getClass();
        return new C0462x3c05abf3(function1, obj, 0);
    }

    public static final KFunction access$bindCancellationFunResult(BufferedChannel bufferedChannel, Function1 function1) {
        bufferedChannel.getClass();
        return new C0465xe275586d(bufferedChannel, 1);
    }

    public static final ChannelSegment access$findSegmentSend(BufferedChannel bufferedChannel, long j, ChannelSegment channelSegment) {
        Object findSegmentInternal;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j2;
        long j3;
        bufferedChannel.getClass();
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            findSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j, function2);
            if (!SegmentOrClosed.m2356isClosedimpl(findSegmentInternal)) {
                Segment m2354getSegmentimpl = SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1816x34271fae;
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(bufferedChannel);
                    if (segment.id >= m2354getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!m2354getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(bufferedChannel, segment, m2354getSegmentimpl)) {
                        if (atomicReferenceFieldUpdater.get(bufferedChannel) != segment) {
                            if (m2354getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                m2354getSegmentimpl.remove();
                            }
                        }
                    }
                    if (segment.decPointers$kotlinx_coroutines_core()) {
                        segment.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.m2356isClosedimpl(findSegmentInternal)) {
            bufferedChannel.isClosedForSend();
            if (channelSegment.id * BufferedChannelKt.SEGMENT_SIZE >= bufferedChannel.getReceiversCounter$kotlinx_coroutines_core()) {
                return null;
            }
            channelSegment.cleanPrev();
            return null;
        }
        ChannelSegment channelSegment2 = (ChannelSegment) SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
        long j4 = channelSegment2.id;
        if (j4 > j) {
            long j5 = j4 * BufferedChannelKt.SEGMENT_SIZE;
            do {
                atomicLongFieldUpdater = f1812x1378447b;
                j2 = atomicLongFieldUpdater.get(bufferedChannel);
                j3 = 1152921504606846975L & j2;
                if (j3 >= j5) {
                    break;
                }
            } while (!atomicLongFieldUpdater.compareAndSet(bufferedChannel, j2, BufferedChannelKt.access$constructSendersAndCloseStatus(j3, (int) (j2 >> 60))));
            if (channelSegment2.id * BufferedChannelKt.SEGMENT_SIZE >= bufferedChannel.getReceiversCounter$kotlinx_coroutines_core()) {
                return null;
            }
            channelSegment2.cleanPrev();
            return null;
        }
        return channelSegment2;
    }

    /* renamed from: access$onCancellationChannelResultImplDoNotCall-5_sEAP8, reason: not valid java name */
    public static final void m2255access$onCancellationChannelResultImplDoNotCall5_sEAP8(BufferedChannel bufferedChannel, Throwable th, Object obj, CoroutineContext coroutineContext) {
        Function1<E, Unit> function1 = bufferedChannel.onUndeliveredElement;
        Intrinsics.checkNotNull(function1);
        Object m2290getOrNullimpl = ChannelResult.m2290getOrNullimpl(obj);
        Intrinsics.checkNotNull(m2290getOrNullimpl);
        OnUndeliveredElementKt.callUndeliveredElement(function1, m2290getOrNullimpl, coroutineContext);
    }

    public static final void access$onCancellationImplDoNotCall(BufferedChannel bufferedChannel, Throwable th, Object obj, CoroutineContext coroutineContext) {
        Function1<E, Unit> function1 = bufferedChannel.onUndeliveredElement;
        Intrinsics.checkNotNull(function1);
        OnUndeliveredElementKt.callUndeliveredElement(function1, obj, coroutineContext);
    }

    public static final void access$onClosedReceiveCatchingOnNoWaiterSuspend(BufferedChannel bufferedChannel, CancellableContinuation cancellableContinuation) {
        bufferedChannel.getClass();
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m1764constructorimpl(ChannelResult.m2285boximpl(ChannelResult.INSTANCE.m2298closedJP2dKIU(bufferedChannel.getCloseCause()))));
    }

    public static final void access$onClosedReceiveOnNoWaiterSuspend(BufferedChannel bufferedChannel, CancellableContinuation cancellableContinuation) {
        bufferedChannel.getClass();
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(bufferedChannel.m2266x9738a56c())));
    }

    public static final void access$onClosedSendOnNoWaiterSuspend(BufferedChannel bufferedChannel, Object obj, CancellableContinuation cancellableContinuation) {
        Function1<E, Unit> function1 = bufferedChannel.onUndeliveredElement;
        if (function1 != null) {
            OnUndeliveredElementKt.callUndeliveredElement(function1, obj, cancellableContinuation.getContext());
        }
        Throwable sendException = bufferedChannel.getSendException();
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(sendException)));
    }

    public static final void access$prepareReceiverForSuspension(BufferedChannel bufferedChannel, Waiter waiter, ChannelSegment channelSegment, int i) {
        bufferedChannel.onReceiveEnqueued();
        waiter.invokeOnCancellation(channelSegment, i);
    }

    public static final void access$prepareSenderForSuspension(BufferedChannel bufferedChannel, Waiter waiter, ChannelSegment channelSegment, int i) {
        bufferedChannel.getClass();
        waiter.invokeOnCancellation(channelSegment, i + BufferedChannelKt.SEGMENT_SIZE);
    }

    public static final Object access$processResultSelectReceive(BufferedChannel bufferedChannel, Object obj, Object obj2) {
        bufferedChannel.getClass();
        if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return obj2;
        }
        throw bufferedChannel.m2266x9738a56c();
    }

    public static final Object access$processResultSelectReceiveCatching(BufferedChannel bufferedChannel, Object obj, Object obj2) {
        Object m2300successJP2dKIU;
        bufferedChannel.getClass();
        if (obj2 == BufferedChannelKt.getCHANNEL_CLOSED()) {
            m2300successJP2dKIU = ChannelResult.INSTANCE.m2298closedJP2dKIU(bufferedChannel.getCloseCause());
        } else {
            m2300successJP2dKIU = ChannelResult.INSTANCE.m2300successJP2dKIU(obj2);
        }
        return ChannelResult.m2285boximpl(m2300successJP2dKIU);
    }

    public static final Object access$processResultSelectReceiveOrNull(BufferedChannel bufferedChannel, Object obj, Object obj2) {
        bufferedChannel.getClass();
        if (obj2 == BufferedChannelKt.getCHANNEL_CLOSED()) {
            if (bufferedChannel.getCloseCause() == null) {
                return null;
            }
            throw bufferedChannel.m2266x9738a56c();
        }
        return obj2;
    }

    public static final Object access$processResultSelectSend(BufferedChannel bufferedChannel, Object obj, Object obj2) {
        bufferedChannel.getClass();
        if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return bufferedChannel;
        }
        throw bufferedChannel.getSendException();
    }

    public static final void access$registerSelectForReceive(BufferedChannel bufferedChannel, SelectInstance selectInstance, Object obj) {
        Symbol symbol;
        Waiter waiter;
        Symbol symbol2;
        Symbol symbol3;
        bufferedChannel.getClass();
        ChannelSegment channelSegment = (ChannelSegment) f1817x95f25580.get(bufferedChannel);
        while (!bufferedChannel.isClosedForReceive()) {
            long andIncrement = f1813x75d576dc.getAndIncrement(bufferedChannel);
            long j = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = andIncrement / j;
            int i = (int) (andIncrement % j);
            if (channelSegment.id != j2) {
                ChannelSegment m2265x75d576dc = bufferedChannel.m2265x75d576dc(j2, channelSegment);
                if (m2265x75d576dc == null) {
                    continue;
                } else {
                    channelSegment = m2265x75d576dc;
                }
            }
            Object m2278xc20437a5 = bufferedChannel.m2278xc20437a5(channelSegment, i, selectInstance, andIncrement);
            symbol = BufferedChannelKt.f1833x1db10c9d;
            if (m2278xc20437a5 != symbol) {
                symbol2 = BufferedChannelKt.f1835x8c6fc18a;
                if (m2278xc20437a5 != symbol2) {
                    symbol3 = BufferedChannelKt.f1834xd2bcb0cf;
                    if (m2278xc20437a5 != symbol3) {
                        channelSegment.cleanPrev();
                        selectInstance.selectInRegistrationPhase(m2278xc20437a5);
                        return;
                    }
                    throw new IllegalStateException("unexpected");
                }
                if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
            } else {
                if (selectInstance instanceof Waiter) {
                    waiter = (Waiter) selectInstance;
                } else {
                    waiter = null;
                }
                if (waiter != null) {
                    access$prepareReceiverForSuspension(bufferedChannel, waiter, channelSegment, i);
                    return;
                }
                return;
            }
        }
        selectInstance.selectInRegistrationPhase(BufferedChannelKt.getCHANNEL_CLOSED());
    }

    public static final int access$updateCellSend(BufferedChannel bufferedChannel, ChannelSegment channelSegment, int i, Object obj, long j, Object obj2, boolean z) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        bufferedChannel.getClass();
        channelSegment.storeElement$kotlinx_coroutines_core(i, obj);
        if (z) {
            return bufferedChannel.m2279x4440ab85(channelSegment, i, obj, j, obj2, z);
        }
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        if (state$kotlinx_coroutines_core == null) {
            if (bufferedChannel.m2262xfbe0c504(j)) {
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, obj2)) {
                    return 2;
                }
            }
        } else if (state$kotlinx_coroutines_core instanceof Waiter) {
            channelSegment.cleanElement$kotlinx_coroutines_core(i);
            if (bufferedChannel.m2276xad53da1a(state$kotlinx_coroutines_core, obj)) {
                symbol3 = BufferedChannelKt.f1829x34271fae;
                channelSegment.setState$kotlinx_coroutines_core(i, symbol3);
                bufferedChannel.onReceiveDequeued();
                return 0;
            }
            symbol = BufferedChannelKt.f1831x3db60231;
            Object andSetState$kotlinx_coroutines_core = channelSegment.getAndSetState$kotlinx_coroutines_core(i, symbol);
            symbol2 = BufferedChannelKt.f1831x3db60231;
            if (andSetState$kotlinx_coroutines_core != symbol2) {
                channelSegment.onCancelledRequest(i, true);
            }
            return 5;
        }
        return bufferedChannel.m2279x4440ab85(channelSegment, i, obj, j, obj2, z);
    }

    public static /* synthetic */ void getOnReceive$annotations() {
    }

    public static /* synthetic */ void getOnReceiveCatching$annotations() {
    }

    public static /* synthetic */ void getOnReceiveOrNull$annotations() {
    }

    public static /* synthetic */ void getOnSend$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isClosedForReceive$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isClosedForSend$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isEmpty$annotations() {
    }

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static void m2257x9e171bf9(BufferedChannel bufferedChannel) {
        bufferedChannel.getClass();
        AtomicLongFieldUpdater atomicLongFieldUpdater = f1815x9e171bf9;
        if ((atomicLongFieldUpdater.addAndGet(bufferedChannel, 1L) & Longs.MAX_POWER_OF_TWO) == 0) {
            return;
        }
        do {
        } while ((atomicLongFieldUpdater.get(bufferedChannel) & Longs.MAX_POWER_OF_TWO) != 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object m2258xd2bcb0cf(BufferedChannel bufferedChannel, Continuation continuation) {
        C0474x4db104dd c0474x4db104dd;
        int i;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        if (continuation instanceof C0474x4db104dd) {
            c0474x4db104dd = (C0474x4db104dd) continuation;
            int i2 = c0474x4db104dd.f3954x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0474x4db104dd.f3954x1378447b = i2 - Integer.MIN_VALUE;
                C0474x4db104dd c0474x4db104dd2 = c0474x4db104dd;
                Object obj = c0474x4db104dd2.f3952xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0474x4db104dd2.f3954x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                        return ((ChannelResult) obj).getHolder();
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ChannelSegment channelSegment = (ChannelSegment) f1817x95f25580.get(bufferedChannel);
                while (!bufferedChannel.isClosedForReceive()) {
                    long andIncrement = f1813x75d576dc.getAndIncrement(bufferedChannel);
                    long j = BufferedChannelKt.SEGMENT_SIZE;
                    long j2 = andIncrement / j;
                    int i3 = (int) (andIncrement % j);
                    if (channelSegment.id != j2) {
                        ChannelSegment m2265x75d576dc = bufferedChannel.m2265x75d576dc(j2, channelSegment);
                        if (m2265x75d576dc == null) {
                            continue;
                        } else {
                            channelSegment = m2265x75d576dc;
                        }
                    }
                    Object m2278xc20437a5 = bufferedChannel.m2278xc20437a5(channelSegment, i3, null, andIncrement);
                    symbol = BufferedChannelKt.f1833x1db10c9d;
                    if (m2278xc20437a5 != symbol) {
                        symbol2 = BufferedChannelKt.f1835x8c6fc18a;
                        if (m2278xc20437a5 != symbol2) {
                            symbol3 = BufferedChannelKt.f1834xd2bcb0cf;
                            if (m2278xc20437a5 == symbol3) {
                                c0474x4db104dd2.f3954x1378447b = 1;
                                Object m2272x8c6fc18a = bufferedChannel.m2272x8c6fc18a(channelSegment, i3, andIncrement, c0474x4db104dd2);
                                if (m2272x8c6fc18a == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                return m2272x8c6fc18a;
                            }
                            channelSegment.cleanPrev();
                            return ChannelResult.INSTANCE.m2300successJP2dKIU(m2278xc20437a5);
                        }
                        if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                            channelSegment.cleanPrev();
                        }
                    } else {
                        throw new IllegalStateException("unexpected");
                    }
                }
                return ChannelResult.INSTANCE.m2298closedJP2dKIU(bufferedChannel.getCloseCause());
            }
        }
        c0474x4db104dd = new C0474x4db104dd(bufferedChannel, continuation);
        C0474x4db104dd c0474x4db104dd22 = c0474x4db104dd;
        Object obj2 = c0474x4db104dd22.f3952xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0474x4db104dd22.f3954x1378447b;
        if (i == 0) {
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final boolean cancel(@Nullable Throwable cause) {
        return cancelImpl$kotlinx_coroutines_core(cause);
    }

    public boolean cancelImpl$kotlinx_coroutines_core(@Nullable Throwable cause) {
        if (cause == null) {
            cause = new CancellationException("Channel was cancelled");
        }
        return closeOrCancelImpl(cause, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void checkSegmentStructureInvariants() {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        ChannelSegment channelSegment;
        ChannelSegment channelSegment2;
        boolean m2268x95f25580 = m2268x95f25580();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1817x95f25580;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f1818x3db60231;
        if (m2268x95f25580) {
            Object obj = atomicReferenceFieldUpdater2.get(this);
            channelSegment2 = BufferedChannelKt.f1823xfbe0c504;
            if (obj != channelSegment2) {
                throw new IllegalStateException(("bufferEndSegment must be NULL_SEGMENT for rendezvous and unlimited channels; they do not manipulate it.\nChannel state: " + this).toString());
            }
        } else if (((ChannelSegment) atomicReferenceFieldUpdater.get(this)).id > ((ChannelSegment) atomicReferenceFieldUpdater2.get(this)).id) {
            throw new IllegalStateException(("bufferEndSegment should not have lower id than receiveSegment.\nChannel state: " + this).toString());
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = f1816x34271fae;
        List listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ChannelSegment[]{atomicReferenceFieldUpdater.get(this), atomicReferenceFieldUpdater3.get(this), atomicReferenceFieldUpdater2.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : listOf) {
            ChannelSegment channelSegment3 = (ChannelSegment) obj2;
            channelSegment = BufferedChannelKt.f1823xfbe0c504;
            if (channelSegment3 != channelSegment) {
                arrayList.add(obj2);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                long j = ((ChannelSegment) next).id;
                do {
                    Object next2 = it.next();
                    long j2 = ((ChannelSegment) next2).id;
                    if (j > j2) {
                        next = next2;
                        j = j2;
                    }
                } while (it.hasNext());
            }
            ChannelSegment channelSegment4 = (ChannelSegment) next;
            if (channelSegment4.getPrev() == 0) {
                while (channelSegment4.getNext() != 0) {
                    S next3 = channelSegment4.getNext();
                    Intrinsics.checkNotNull(next3);
                    if (((ChannelSegment) next3).getPrev() != 0) {
                        S next4 = channelSegment4.getNext();
                        Intrinsics.checkNotNull(next4);
                        if (((ChannelSegment) next4).getPrev() != channelSegment4) {
                            throw new IllegalStateException(("The `segment.next.prev === segment` invariant is violated.\nChannel state: " + this).toString());
                        }
                    }
                    int i = BufferedChannelKt.SEGMENT_SIZE;
                    int i2 = 0;
                    for (int i3 = 0; i3 < i; i3++) {
                        Object state$kotlinx_coroutines_core = channelSegment4.getState$kotlinx_coroutines_core(i3);
                        if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.BUFFERED) && !(state$kotlinx_coroutines_core instanceof Waiter)) {
                            symbol = BufferedChannelKt.f1831x3db60231;
                            if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, symbol)) {
                                symbol2 = BufferedChannelKt.f1830x95f25580;
                                if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, symbol2) && !Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                    symbol3 = BufferedChannelKt.f1828x9e171bf9;
                                    if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, symbol3)) {
                                        symbol4 = BufferedChannelKt.f1829x34271fae;
                                        if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, symbol4)) {
                                            throw new IllegalStateException(("Unexpected segment cell state: " + state$kotlinx_coroutines_core + ".\nChannel state: " + this).toString());
                                        }
                                    }
                                    if (channelSegment4.getElement$kotlinx_coroutines_core(i3) != null) {
                                        throw new IllegalStateException("Check failed.");
                                    }
                                }
                            }
                            if (channelSegment4.getElement$kotlinx_coroutines_core(i3) == null) {
                                i2++;
                            } else {
                                throw new IllegalStateException("Check failed.");
                            }
                        }
                    }
                    if (i2 == BufferedChannelKt.SEGMENT_SIZE && channelSegment4 != atomicReferenceFieldUpdater.get(this) && channelSegment4 != atomicReferenceFieldUpdater3.get(this) && channelSegment4 != atomicReferenceFieldUpdater2.get(this)) {
                        throw new IllegalStateException(("Logically removed segment is reachable.\nChannel state: " + this).toString());
                    }
                    S next5 = channelSegment4.getNext();
                    Intrinsics.checkNotNull(next5);
                    channelSegment4 = (ChannelSegment) next5;
                }
                return;
            }
            throw new IllegalStateException(("All processed segments should be unreachable from the data structure, but the `prev` link of the leftmost segment is non-null.\nChannel state: " + this).toString());
        }
        throw new NoSuchElementException();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean close(@Nullable Throwable cause) {
        return closeOrCancelImpl(cause, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
    
        r3 = kotlinx.coroutines.channels.BufferedChannelKt.f1839xad53da1a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
    
        r4 = kotlinx.coroutines.channels.BufferedChannel.f1819x9d12c1f4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
    
        if (r4.compareAndSet(r13, r3, r14) == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (r4.get(r13) == r3) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
    
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
    
        if (r15 == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003c, code lost:
    
        r5 = r9.get(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
    
        if (r9.compareAndSet(r13, r5, kotlinx.coroutines.channels.BufferedChannelKt.access$constructSendersAndCloseStatus(r5 & 1152921504606846975L, 3)) == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0073, code lost:
    
        isClosedForSend();
        onClosedIdempotent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0079, code lost:
    
        if (r11 == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007b, code lost:
    
        r14 = kotlinx.coroutines.channels.BufferedChannel.f1820x1db10c9d;
        r15 = r14.get(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0081, code lost:
    
        if (r15 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0083, code lost:
    
        r0 = kotlinx.coroutines.channels.BufferedChannelKt.f1837xab142723;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0090, code lost:
    
        if (r14.compareAndSet(r13, r15, r0) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000a, code lost:
    
        if (r15 != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a9, code lost:
    
        if (r14.get(r13) == r15) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0092, code lost:
    
        if (r15 != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0095, code lost:
    
        r14 = (kotlin.jvm.functions.Function1) kotlin.jvm.internal.TypeIntrinsics.beforeCheckcastToFunctionOfArity(r15, 1);
        ((kotlin.jvm.functions.Function1) r15).invoke(getCloseCause());
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0088, code lost:
    
        r0 = kotlinx.coroutines.channels.BufferedChannelKt.f1838x85f0360e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ac, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000c, code lost:
    
        r5 = r9.get(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x004f, code lost:
    
        r5 = r9.get(r13);
        r15 = (int) (r5 >> 60);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0056, code lost:
    
        if (r15 == 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0058, code lost:
    
        if (r15 == 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x005b, code lost:
    
        r14 = kotlinx.coroutines.channels.BufferedChannelKt.access$constructSendersAndCloseStatus(r5 & 1152921504606846975L, 3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0071, code lost:
    
        if (r9.compareAndSet(r13, r5, r14) == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:
    
        if (((int) (r5 >> 60)) != 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0063, code lost:
    
        r14 = kotlinx.coroutines.channels.BufferedChannelKt.access$constructSendersAndCloseStatus(r5 & 1152921504606846975L, 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x002f, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
    
        if (r9.compareAndSet(r13, r5, kotlinx.coroutines.channels.BufferedChannelKt.access$constructSendersAndCloseStatus(r5 & 1152921504606846975L, 1)) == false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean closeOrCancelImpl(@Nullable Throwable cause, boolean cancel) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f1812x1378447b;
    }

    public final void dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(long globalCellIndex) {
        Symbol symbol;
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        ChannelSegment channelSegment = (ChannelSegment) f1817x95f25580.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f1813x75d576dc;
            long j = atomicLongFieldUpdater.get(this);
            if (globalCellIndex < Math.max(this.f1821xfbe0c504 + j, f1814x9738a56c.get(this))) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j, j + 1)) {
                int i = BufferedChannelKt.SEGMENT_SIZE;
                long j2 = j / i;
                int i2 = (int) (j % i);
                if (channelSegment.id != j2) {
                    ChannelSegment m2265x75d576dc = m2265x75d576dc(j2, channelSegment);
                    if (m2265x75d576dc == null) {
                        continue;
                    } else {
                        channelSegment = m2265x75d576dc;
                    }
                }
                Object m2278xc20437a5 = m2278xc20437a5(channelSegment, i2, null, j);
                symbol = BufferedChannelKt.f1835x8c6fc18a;
                if (m2278xc20437a5 == symbol) {
                    if (j < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                } else {
                    channelSegment.cleanPrev();
                    Function1<E, Unit> function1 = this.onUndeliveredElement;
                    if (function1 != null && (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, m2278xc20437a5, null, 2, null)) != null) {
                        throw callUndeliveredElementCatchingException$default;
                    }
                }
            }
        }
    }

    @Nullable
    public final Throwable getCloseCause() {
        return (Throwable) f1819x9d12c1f4.get(this);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<E> getOnReceive() {
        C0466x6a412221 c0466x6a412221 = C0466x6a412221.f3944xfbe0c504;
        Intrinsics.checkNotNull(c0466x6a412221, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0466x6a412221, 3);
        C0467xb0573c37 c0467xb0573c37 = C0467xb0573c37.f3945xfbe0c504;
        Intrinsics.checkNotNull(c0467xb0573c37, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0467xb0573c37, 3), this.f1822x3271d0aa);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<ChannelResult<E>> getOnReceiveCatching() {
        C0468xc33c59f3 c0468xc33c59f3 = C0468xc33c59f3.f3946xfbe0c504;
        Intrinsics.checkNotNull(c0468xc33c59f3, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0468xc33c59f3, 3);
        C0469xfdbfca41 c0469xfdbfca41 = C0469xfdbfca41.f3947xfbe0c504;
        Intrinsics.checkNotNull(c0469xfdbfca41, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0469xfdbfca41, 3), this.f1822x3271d0aa);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<E> getOnReceiveOrNull() {
        C0470xe7440857 c0470xe7440857 = C0470xe7440857.f3948xfbe0c504;
        Intrinsics.checkNotNull(c0470xe7440857, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0470xe7440857, 3);
        C0471xd033de3a c0471xd033de3a = C0471xd033de3a.f3949xfbe0c504;
        Intrinsics.checkNotNull(c0471xd033de3a, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0471xd033de3a, 3), this.f1822x3271d0aa);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    public SelectClause2<E, BufferedChannel<E>> getOnSend() {
        C0472xa8c9007c c0472xa8c9007c = C0472xa8c9007c.f3950xfbe0c504;
        Intrinsics.checkNotNull(c0472xa8c9007c, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0472xa8c9007c, 3);
        C0473x9e71a976 c0473x9e71a976 = C0473x9e71a976.f3951xfbe0c504;
        Intrinsics.checkNotNull(c0473x9e71a976, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause2Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0473x9e71a976, 3), null, 8, null);
    }

    public final long getReceiversCounter$kotlinx_coroutines_core() {
        return f1813x75d576dc.get(this);
    }

    @NotNull
    public final Throwable getSendException() {
        Throwable closeCause = getCloseCause();
        if (closeCause == null) {
            return new ClosedSendChannelException(ChannelsKt.DEFAULT_CLOSE_MESSAGE);
        }
        return closeCause;
    }

    public final long getSendersCounter$kotlinx_coroutines_core() {
        return f1812x1378447b.get(this) & 1152921504606846975L;
    }

    public final boolean hasElements$kotlinx_coroutines_core() {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1817x95f25580;
            ChannelSegment channelSegment = (ChannelSegment) atomicReferenceFieldUpdater.get(this);
            long receiversCounter$kotlinx_coroutines_core = getReceiversCounter$kotlinx_coroutines_core();
            if (getSendersCounter$kotlinx_coroutines_core() <= receiversCounter$kotlinx_coroutines_core) {
                return false;
            }
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = receiversCounter$kotlinx_coroutines_core / i;
            if (channelSegment.id != j && (channelSegment = m2265x75d576dc(j, channelSegment)) == null) {
                if (((ChannelSegment) atomicReferenceFieldUpdater.get(this)).id < j) {
                    return false;
                }
            } else {
                channelSegment.cleanPrev();
                int i2 = (int) (receiversCounter$kotlinx_coroutines_core % i);
                while (true) {
                    Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i2);
                    if (state$kotlinx_coroutines_core != null) {
                        symbol2 = BufferedChannelKt.f1825x1378447b;
                        if (state$kotlinx_coroutines_core != symbol2) {
                            if (state$kotlinx_coroutines_core != BufferedChannelKt.BUFFERED) {
                                symbol3 = BufferedChannelKt.f1830x95f25580;
                                if (state$kotlinx_coroutines_core != symbol3 && state$kotlinx_coroutines_core != BufferedChannelKt.getCHANNEL_CLOSED()) {
                                    symbol4 = BufferedChannelKt.f1829x34271fae;
                                    if (state$kotlinx_coroutines_core != symbol4) {
                                        symbol5 = BufferedChannelKt.f1828x9e171bf9;
                                        if (state$kotlinx_coroutines_core != symbol5) {
                                            symbol6 = BufferedChannelKt.f1827x9738a56c;
                                            if (state$kotlinx_coroutines_core != symbol6) {
                                                symbol7 = BufferedChannelKt.f1826x75d576dc;
                                                if (state$kotlinx_coroutines_core != symbol7 && receiversCounter$kotlinx_coroutines_core == getReceiversCounter$kotlinx_coroutines_core()) {
                                                    return true;
                                                }
                                            } else {
                                                return true;
                                            }
                                        }
                                    }
                                }
                            } else {
                                return true;
                            }
                        }
                    }
                    symbol = BufferedChannelKt.f1828x9e171bf9;
                    if (channelSegment.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core, symbol)) {
                        m2264x1378447b();
                        break;
                    }
                }
                f1813x75d576dc.compareAndSet(this, receiversCounter$kotlinx_coroutines_core, receiversCounter$kotlinx_coroutines_core + 1);
            }
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public void invokeOnClose(@NotNull Function1<? super Throwable, Unit> handler) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        do {
            atomicReferenceFieldUpdater = f1820x1db10c9d;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, handler)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            symbol = BufferedChannelKt.f1837xab142723;
            if (obj == symbol) {
                symbol3 = BufferedChannelKt.f1837xab142723;
                symbol4 = BufferedChannelKt.f1838x85f0360e;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, symbol3, symbol4)) {
                    if (atomicReferenceFieldUpdater.get(this) != symbol3) {
                        break;
                    }
                }
                handler.invoke(getCloseCause());
                return;
            }
            symbol2 = BufferedChannelKt.f1838x85f0360e;
            if (obj == symbol2) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isClosedForReceive() {
        return m2267x34271fae(f1812x1378447b.get(this), true);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        return m2267x34271fae(f1812x1378447b.get(this), false);
    }

    public boolean isConflatedDropOldest() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        if (isClosedForReceive() || hasElements$kotlinx_coroutines_core()) {
            return false;
        }
        return !isClosedForReceive();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public ChannelIterator<E> iterator() {
        return new C0309x3271d0aa(this);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e) {
        return Channel.DefaultImpls.offer(this, e);
    }

    public void onClosedIdempotent() {
    }

    public void onReceiveDequeued() {
    }

    public void onReceiveEnqueued() {
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    public E poll() {
        return (E) Channel.DefaultImpls.poll(this);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    public Object receive(@NotNull Continuation<? super E> continuation) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        ChannelSegment channelSegment = (ChannelSegment) f1817x95f25580.get(this);
        while (!isClosedForReceive()) {
            long andIncrement = f1813x75d576dc.getAndIncrement(this);
            long j = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = andIncrement / j;
            int i = (int) (andIncrement % j);
            if (channelSegment.id != j2) {
                ChannelSegment m2265x75d576dc = m2265x75d576dc(j2, channelSegment);
                if (m2265x75d576dc == null) {
                    continue;
                } else {
                    channelSegment = m2265x75d576dc;
                }
            }
            Object m2278xc20437a5 = m2278xc20437a5(channelSegment, i, null, andIncrement);
            symbol = BufferedChannelKt.f1833x1db10c9d;
            if (m2278xc20437a5 != symbol) {
                symbol2 = BufferedChannelKt.f1835x8c6fc18a;
                if (m2278xc20437a5 != symbol2) {
                    symbol3 = BufferedChannelKt.f1834xd2bcb0cf;
                    if (m2278xc20437a5 == symbol3) {
                        return m2273x1aebc6d9(channelSegment, i, andIncrement, continuation);
                    }
                    channelSegment.cleanPrev();
                    return m2278xc20437a5;
                }
                if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
            } else {
                throw new IllegalStateException("unexpected");
            }
        }
        throw StackTraceRecoveryKt.recoverStackTrace(m2266x9738a56c());
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    /* renamed from: receiveCatching-JP2dKIU, reason: not valid java name */
    public Object mo2259receiveCatchingJP2dKIU(@NotNull Continuation<? super ChannelResult<? extends E>> continuation) {
        return m2258xd2bcb0cf(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @Nullable
    public Object receiveOrNull(@NotNull Continuation<? super E> continuation) {
        return Channel.DefaultImpls.receiveOrNull(this, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0082, code lost:
    
        r14.selectInRegistrationPhase(kotlin.Unit.INSTANCE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void registerSelectForSend(@NotNull SelectInstance<?> select, @Nullable Object element) {
        Waiter waiter;
        ChannelSegment channelSegment = (ChannelSegment) f1816x34271fae.get(this);
        while (true) {
            long andIncrement = f1812x1378447b.getAndIncrement(this);
            long j = 1152921504606846975L & andIncrement;
            boolean m2267x34271fae = m2267x34271fae(andIncrement, false);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / i;
            int i2 = (int) (j % i);
            if (channelSegment.id != j2) {
                ChannelSegment access$findSegmentSend = access$findSegmentSend(this, j2, channelSegment);
                if (access$findSegmentSend == null) {
                    if (m2267x34271fae) {
                        break;
                    }
                } else {
                    channelSegment = access$findSegmentSend;
                }
            }
            int access$updateCellSend = access$updateCellSend(this, channelSegment, i2, element, j, select, m2267x34271fae);
            if (access$updateCellSend != 0) {
                if (access$updateCellSend == 1) {
                    break;
                }
                if (access$updateCellSend != 2) {
                    if (access$updateCellSend != 3) {
                        if (access$updateCellSend != 4) {
                            if (access$updateCellSend == 5) {
                                channelSegment.cleanPrev();
                            }
                        } else if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                            channelSegment.cleanPrev();
                        }
                    } else {
                        throw new IllegalStateException("unexpected");
                    }
                } else if (m2267x34271fae) {
                    channelSegment.onSlotCleaned();
                } else {
                    if (select instanceof Waiter) {
                        waiter = (Waiter) select;
                    } else {
                        waiter = null;
                    }
                    if (waiter != null) {
                        access$prepareSenderForSuspension(this, waiter, channelSegment, i2);
                        return;
                    }
                    return;
                }
            } else {
                channelSegment.cleanPrev();
                break;
            }
        }
        m2270x9d12c1f4(select, element);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x009c, code lost:
    
        return kotlin.Unit.INSTANCE;
     */
    @Override // kotlinx.coroutines.channels.SendChannel
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object send(E e, @NotNull Continuation<? super Unit> continuation) {
        ChannelSegment channelSegment = (ChannelSegment) f1816x34271fae.get(this);
        while (true) {
            long andIncrement = f1812x1378447b.getAndIncrement(this);
            long j = 1152921504606846975L & andIncrement;
            boolean m2267x34271fae = m2267x34271fae(andIncrement, false);
            long j2 = BufferedChannelKt.SEGMENT_SIZE;
            long j3 = j / j2;
            int i = (int) (j % j2);
            if (channelSegment.id != j3) {
                ChannelSegment access$findSegmentSend = access$findSegmentSend(this, j3, channelSegment);
                if (access$findSegmentSend == null) {
                    if (m2267x34271fae) {
                        Object m2271x1db10c9d = m2271x1db10c9d(e, continuation);
                        if (m2271x1db10c9d == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                            return m2271x1db10c9d;
                        }
                    }
                } else {
                    channelSegment = access$findSegmentSend;
                }
            }
            int access$updateCellSend = access$updateCellSend(this, channelSegment, i, e, j, null, m2267x34271fae);
            if (access$updateCellSend != 0) {
                if (access$updateCellSend == 1) {
                    break;
                }
                if (access$updateCellSend != 2) {
                    if (access$updateCellSend != 3) {
                        if (access$updateCellSend != 4) {
                            if (access$updateCellSend == 5) {
                                channelSegment.cleanPrev();
                            }
                        } else {
                            if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                                channelSegment.cleanPrev();
                            }
                            Object m2271x1db10c9d2 = m2271x1db10c9d(e, continuation);
                            if (m2271x1db10c9d2 == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                                return m2271x1db10c9d2;
                            }
                        }
                    } else {
                        Object m2275x85f0360e = m2275x85f0360e(channelSegment, i, e, j, continuation);
                        if (m2275x85f0360e == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                            return m2275x85f0360e;
                        }
                    }
                } else if (m2267x34271fae) {
                    channelSegment.onSlotCleaned();
                    Object m2271x1db10c9d3 = m2271x1db10c9d(e, continuation);
                    if (m2271x1db10c9d3 == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                        return m2271x1db10c9d3;
                    }
                }
            } else {
                channelSegment.cleanPrev();
                break;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a5, code lost:
    
        r0 = kotlin.Result.INSTANCE;
        r9.resumeWith(kotlin.Result.m1764constructorimpl(kotlin.coroutines.jvm.internal.Boxing.boxBoolean(true)));
     */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object sendBroadcast$kotlinx_coroutines_core(E e, @NotNull Continuation<? super Boolean> continuation) {
        ChannelSegment channelSegment;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        if (this.onUndeliveredElement == null) {
            C0464xd385fe9c c0464xd385fe9c = new C0464xd385fe9c(cancellableContinuationImpl);
            ChannelSegment channelSegment2 = (ChannelSegment) f1816x34271fae.get(this);
            while (true) {
                long andIncrement = f1812x1378447b.getAndIncrement(this);
                long j = andIncrement & 1152921504606846975L;
                boolean m2267x34271fae = m2267x34271fae(andIncrement, false);
                long j2 = BufferedChannelKt.SEGMENT_SIZE;
                long j3 = j / j2;
                int i = (int) (j % j2);
                if (channelSegment2.id != j3) {
                    ChannelSegment access$findSegmentSend = access$findSegmentSend(this, j3, channelSegment2);
                    if (access$findSegmentSend == null) {
                        if (m2267x34271fae) {
                            break;
                        }
                    } else {
                        channelSegment = access$findSegmentSend;
                    }
                } else {
                    channelSegment = channelSegment2;
                }
                ChannelSegment channelSegment3 = channelSegment;
                int access$updateCellSend = access$updateCellSend(this, channelSegment, i, e, j, c0464xd385fe9c, m2267x34271fae);
                if (access$updateCellSend != 0) {
                    if (access$updateCellSend == 1) {
                        break;
                    }
                    if (access$updateCellSend != 2) {
                        if (access$updateCellSend != 3) {
                            if (access$updateCellSend != 4) {
                                if (access$updateCellSend == 5) {
                                    channelSegment3.cleanPrev();
                                }
                                channelSegment2 = channelSegment3;
                            } else if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                                channelSegment3.cleanPrev();
                            }
                        } else {
                            throw new IllegalStateException("unexpected");
                        }
                    } else if (m2267x34271fae) {
                        channelSegment3.onSlotCleaned();
                    } else {
                        access$prepareSenderForSuspension(this, c0464xd385fe9c, channelSegment3, i);
                    }
                } else {
                    channelSegment3.cleanPrev();
                    break;
                }
            }
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(Boxing.boxBoolean(false)));
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        }
        throw new IllegalStateException("the `onUndeliveredElement` feature is unsupported for `sendBroadcast(e)`");
    }

    public boolean shouldSendSuspend$kotlinx_coroutines_core() {
        if (m2267x34271fae(f1812x1378447b.get(this), false)) {
            return false;
        }
        return !m2262xfbe0c504(r0 & 1152921504606846975L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x01c7, code lost:
    
        r3 = (kotlinx.coroutines.channels.ChannelSegment) r3.getNext();
     */
    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        Symbol symbol;
        String str;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        ChannelSegment channelSegment;
        StringBuilder sb = new StringBuilder();
        int i = (int) (f1812x1378447b.get(this) >> 60);
        if (i != 2) {
            if (i == 3) {
                sb.append("cancelled,");
            }
        } else {
            sb.append("closed,");
        }
        sb.append("capacity=" + this.f1821xfbe0c504 + ',');
        sb.append("data=[");
        List listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ChannelSegment[]{f1817x95f25580.get(this), f1816x34271fae.get(this), f1818x3db60231.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listOf) {
            ChannelSegment channelSegment2 = (ChannelSegment) obj;
            channelSegment = BufferedChannelKt.f1823xfbe0c504;
            if (channelSegment2 != channelSegment) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                long j = ((ChannelSegment) next).id;
                do {
                    Object next2 = it.next();
                    long j2 = ((ChannelSegment) next2).id;
                    if (j > j2) {
                        next = next2;
                        j = j2;
                    }
                } while (it.hasNext());
            }
            ChannelSegment channelSegment3 = (ChannelSegment) next;
            long receiversCounter$kotlinx_coroutines_core = getReceiversCounter$kotlinx_coroutines_core();
            long sendersCounter$kotlinx_coroutines_core = getSendersCounter$kotlinx_coroutines_core();
            loop2: do {
                int i2 = BufferedChannelKt.SEGMENT_SIZE;
                int i3 = 0;
                while (true) {
                    if (i3 >= i2) {
                        break;
                    }
                    long j3 = (channelSegment3.id * BufferedChannelKt.SEGMENT_SIZE) + i3;
                    if (j3 >= sendersCounter$kotlinx_coroutines_core && j3 >= receiversCounter$kotlinx_coroutines_core) {
                        break loop2;
                    }
                    Object state$kotlinx_coroutines_core = channelSegment3.getState$kotlinx_coroutines_core(i3);
                    Object element$kotlinx_coroutines_core = channelSegment3.getElement$kotlinx_coroutines_core(i3);
                    if (state$kotlinx_coroutines_core instanceof CancellableContinuation) {
                        if (j3 < receiversCounter$kotlinx_coroutines_core && j3 >= sendersCounter$kotlinx_coroutines_core) {
                            str = "receive";
                        } else if (j3 < sendersCounter$kotlinx_coroutines_core && j3 >= receiversCounter$kotlinx_coroutines_core) {
                            str = "send";
                        } else {
                            str = "cont";
                        }
                    } else if (state$kotlinx_coroutines_core instanceof SelectInstance) {
                        if (j3 < receiversCounter$kotlinx_coroutines_core && j3 >= sendersCounter$kotlinx_coroutines_core) {
                            str = "onReceive";
                        } else if (j3 < sendersCounter$kotlinx_coroutines_core && j3 >= receiversCounter$kotlinx_coroutines_core) {
                            str = "onSend";
                        } else {
                            str = "select";
                        }
                    } else if (state$kotlinx_coroutines_core instanceof C1075xbbcf7a82) {
                        str = "receiveCatching";
                    } else if (state$kotlinx_coroutines_core instanceof C0464xd385fe9c) {
                        str = "sendBroadcast";
                    } else if (!(state$kotlinx_coroutines_core instanceof C1295xec5e1b4c)) {
                        symbol = BufferedChannelKt.f1826x75d576dc;
                        if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, symbol)) {
                            symbol2 = BufferedChannelKt.f1827x9738a56c;
                            if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, symbol2)) {
                                if (state$kotlinx_coroutines_core != null) {
                                    symbol3 = BufferedChannelKt.f1825x1378447b;
                                    if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, symbol3)) {
                                        symbol4 = BufferedChannelKt.f1829x34271fae;
                                        if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, symbol4)) {
                                            symbol5 = BufferedChannelKt.f1828x9e171bf9;
                                            if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, symbol5)) {
                                                symbol6 = BufferedChannelKt.f1831x3db60231;
                                                if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, symbol6)) {
                                                    symbol7 = BufferedChannelKt.f1830x95f25580;
                                                    if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, symbol7) && !Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                                        str = state$kotlinx_coroutines_core.toString();
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                i3++;
                            }
                        }
                        str = "resuming_sender";
                    } else {
                        str = "EB(" + state$kotlinx_coroutines_core + ')';
                    }
                    if (element$kotlinx_coroutines_core != null) {
                        sb.append("(" + str + ',' + element$kotlinx_coroutines_core + "),");
                    } else {
                        sb.append(str + ',');
                    }
                    i3++;
                }
            } while (channelSegment3 != null);
            if (StringsKt___StringsKt.last(sb) == ',') {
                Intrinsics.checkNotNullExpressionValue(sb.deleteCharAt(sb.length() - 1), "deleteCharAt(...)");
            }
            sb.append("]");
            return sb.toString();
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final String toStringDebug$kotlinx_coroutines_core() {
        String str;
        String str2;
        String valueOf;
        ChannelSegment channelSegment;
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder("S=");
        sb2.append(getSendersCounter$kotlinx_coroutines_core());
        sb2.append(",R=");
        sb2.append(getReceiversCounter$kotlinx_coroutines_core());
        sb2.append(",B=");
        sb2.append(f1814x9738a56c.get(this));
        sb2.append(",B'=");
        sb2.append(f1815x9e171bf9.get(this));
        sb2.append(",C=");
        AtomicLongFieldUpdater atomicLongFieldUpdater = f1812x1378447b;
        sb2.append((int) (atomicLongFieldUpdater.get(this) >> 60));
        sb2.append(',');
        sb.append(sb2.toString());
        int i = (int) (atomicLongFieldUpdater.get(this) >> 60);
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    sb.append("CANCELLED,");
                }
            } else {
                sb.append("CLOSED,");
            }
        } else {
            sb.append("CANCELLATION_STARTED,");
        }
        StringBuilder sb3 = new StringBuilder("SEND_SEGM=");
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1816x34271fae;
        sb3.append(DebugStringsKt.getHexAddress(atomicReferenceFieldUpdater.get(this)));
        sb3.append(",RCV_SEGM=");
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f1817x95f25580;
        sb3.append(DebugStringsKt.getHexAddress(atomicReferenceFieldUpdater2.get(this)));
        sb.append(sb3.toString());
        boolean m2268x95f25580 = m2268x95f25580();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = f1818x3db60231;
        if (!m2268x95f25580) {
            sb.append(",EB_SEGM=" + DebugStringsKt.getHexAddress(atomicReferenceFieldUpdater3.get(this)));
        }
        sb.append("  ");
        List listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ChannelSegment[]{atomicReferenceFieldUpdater2.get(this), atomicReferenceFieldUpdater.get(this), atomicReferenceFieldUpdater3.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listOf) {
            ChannelSegment channelSegment2 = (ChannelSegment) obj;
            channelSegment = BufferedChannelKt.f1823xfbe0c504;
            if (channelSegment2 != channelSegment) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                long j = ((ChannelSegment) next).id;
                do {
                    Object next2 = it.next();
                    long j2 = ((ChannelSegment) next2).id;
                    if (j > j2) {
                        next = next2;
                        j = j2;
                    }
                } while (it.hasNext());
            }
            ChannelSegment channelSegment3 = (ChannelSegment) next;
            do {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(DebugStringsKt.getHexAddress(channelSegment3));
                sb4.append("=[");
                if (channelSegment3.isRemoved()) {
                    str = "*";
                } else {
                    str = "";
                }
                sb4.append(str);
                sb4.append(channelSegment3.id);
                sb4.append(",prev=");
                ChannelSegment channelSegment4 = (ChannelSegment) channelSegment3.getPrev();
                String str3 = null;
                if (channelSegment4 != null) {
                    str2 = DebugStringsKt.getHexAddress(channelSegment4);
                } else {
                    str2 = null;
                }
                sb4.append(str2);
                sb4.append(',');
                sb.append(sb4.toString());
                int i2 = BufferedChannelKt.SEGMENT_SIZE;
                for (int i3 = 0; i3 < i2; i3++) {
                    Object state$kotlinx_coroutines_core = channelSegment3.getState$kotlinx_coroutines_core(i3);
                    Object element$kotlinx_coroutines_core = channelSegment3.getElement$kotlinx_coroutines_core(i3);
                    if (state$kotlinx_coroutines_core instanceof CancellableContinuation) {
                        valueOf = "cont";
                    } else if (state$kotlinx_coroutines_core instanceof SelectInstance) {
                        valueOf = "select";
                    } else if (state$kotlinx_coroutines_core instanceof C1075xbbcf7a82) {
                        valueOf = "receiveCatching";
                    } else if (state$kotlinx_coroutines_core instanceof C0464xd385fe9c) {
                        valueOf = "send(broadcast)";
                    } else if (state$kotlinx_coroutines_core instanceof C1295xec5e1b4c) {
                        valueOf = "EB(" + state$kotlinx_coroutines_core + ')';
                    } else {
                        valueOf = String.valueOf(state$kotlinx_coroutines_core);
                    }
                    sb.append("[" + i3 + "]=(" + valueOf + ',' + element$kotlinx_coroutines_core + "),");
                }
                StringBuilder sb5 = new StringBuilder("next=");
                ChannelSegment channelSegment5 = (ChannelSegment) channelSegment3.getNext();
                if (channelSegment5 != null) {
                    str3 = DebugStringsKt.getHexAddress(channelSegment5);
                }
                sb5.append(str3);
                sb5.append("]  ");
                sb.append(sb5.toString());
                channelSegment3 = (ChannelSegment) channelSegment3.getNext();
            } while (channelSegment3 != null);
            return sb.toString();
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    /* renamed from: tryReceive-PtdJZtk, reason: not valid java name */
    public Object mo2260tryReceivePtdJZtk() {
        Object obj;
        ChannelSegment channelSegment;
        Symbol symbol;
        Waiter waiter;
        Symbol symbol2;
        Symbol symbol3;
        long j = f1813x75d576dc.get(this);
        long j2 = f1812x1378447b.get(this);
        if (m2267x34271fae(j2, true)) {
            return ChannelResult.INSTANCE.m2298closedJP2dKIU(getCloseCause());
        }
        if (j < (j2 & 1152921504606846975L)) {
            obj = BufferedChannelKt.f1831x3db60231;
            ChannelSegment channelSegment2 = (ChannelSegment) f1817x95f25580.get(this);
            while (!isClosedForReceive()) {
                long andIncrement = f1813x75d576dc.getAndIncrement(this);
                int i = BufferedChannelKt.SEGMENT_SIZE;
                long j3 = andIncrement / i;
                int i2 = (int) (andIncrement % i);
                if (channelSegment2.id != j3) {
                    ChannelSegment m2265x75d576dc = m2265x75d576dc(j3, channelSegment2);
                    if (m2265x75d576dc == null) {
                        continue;
                    } else {
                        channelSegment = m2265x75d576dc;
                    }
                } else {
                    channelSegment = channelSegment2;
                }
                Object m2278xc20437a5 = m2278xc20437a5(channelSegment, i2, obj, andIncrement);
                symbol = BufferedChannelKt.f1833x1db10c9d;
                if (m2278xc20437a5 != symbol) {
                    symbol2 = BufferedChannelKt.f1835x8c6fc18a;
                    if (m2278xc20437a5 != symbol2) {
                        symbol3 = BufferedChannelKt.f1834xd2bcb0cf;
                        if (m2278xc20437a5 != symbol3) {
                            channelSegment.cleanPrev();
                            return ChannelResult.INSTANCE.m2300successJP2dKIU(m2278xc20437a5);
                        }
                        throw new IllegalStateException("unexpected");
                    }
                    if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                    channelSegment2 = channelSegment;
                } else {
                    if (obj instanceof Waiter) {
                        waiter = (Waiter) obj;
                    } else {
                        waiter = null;
                    }
                    if (waiter != null) {
                        access$prepareReceiverForSuspension(this, waiter, channelSegment, i2);
                    }
                    waitExpandBufferCompletion$kotlinx_coroutines_core(andIncrement);
                    channelSegment.onSlotCleaned();
                    return ChannelResult.INSTANCE.m2299failurePtdJZtk();
                }
            }
            return ChannelResult.INSTANCE.m2298closedJP2dKIU(getCloseCause());
        }
        return ChannelResult.INSTANCE.m2299failurePtdJZtk();
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d5, code lost:
    
        return kotlinx.coroutines.channels.ChannelResult.INSTANCE.m2298closedJP2dKIU(getSendException());
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:?, code lost:
    
        return kotlinx.coroutines.channels.ChannelResult.INSTANCE.m2300successJP2dKIU(kotlin.Unit.INSTANCE);
     */
    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    /* renamed from: trySend-JP2dKIU */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo2254trySendJP2dKIU(E element) {
        Object obj;
        ChannelSegment channelSegment;
        Waiter waiter;
        long j = f1812x1378447b.get(this);
        boolean z = false;
        long j2 = 1152921504606846975L;
        if (!m2267x34271fae(j, false)) {
            z = !m2262xfbe0c504(j & 1152921504606846975L);
        }
        if (!z) {
            obj = BufferedChannelKt.f1830x95f25580;
            ChannelSegment channelSegment2 = (ChannelSegment) f1816x34271fae.get(this);
            while (true) {
                long andIncrement = f1812x1378447b.getAndIncrement(this);
                long j3 = andIncrement & j2;
                boolean m2267x34271fae = m2267x34271fae(andIncrement, false);
                long j4 = BufferedChannelKt.SEGMENT_SIZE;
                long j5 = j3 / j4;
                int i = (int) (j3 % j4);
                if (channelSegment2.id != j5) {
                    ChannelSegment access$findSegmentSend = access$findSegmentSend(this, j5, channelSegment2);
                    if (access$findSegmentSend == null) {
                        if (m2267x34271fae) {
                            break;
                        }
                    } else {
                        channelSegment = access$findSegmentSend;
                    }
                } else {
                    channelSegment = channelSegment2;
                }
                ChannelSegment channelSegment3 = channelSegment;
                int access$updateCellSend = access$updateCellSend(this, channelSegment, i, element, j3, obj, m2267x34271fae);
                if (access$updateCellSend != 0) {
                    if (access$updateCellSend == 1) {
                        break;
                    }
                    if (access$updateCellSend != 2) {
                        if (access$updateCellSend != 3) {
                            if (access$updateCellSend != 4) {
                                if (access$updateCellSend == 5) {
                                    channelSegment3.cleanPrev();
                                }
                                channelSegment2 = channelSegment3;
                                j2 = 1152921504606846975L;
                            } else if (j3 < getReceiversCounter$kotlinx_coroutines_core()) {
                                channelSegment3.cleanPrev();
                            }
                        } else {
                            throw new IllegalStateException("unexpected");
                        }
                    } else if (m2267x34271fae) {
                        channelSegment3.onSlotCleaned();
                    } else {
                        if (obj instanceof Waiter) {
                            waiter = (Waiter) obj;
                        } else {
                            waiter = null;
                        }
                        if (waiter != null) {
                            access$prepareSenderForSuspension(this, waiter, channelSegment3, i);
                        }
                        channelSegment3.onSlotCleaned();
                        return ChannelResult.INSTANCE.m2299failurePtdJZtk();
                    }
                } else {
                    channelSegment3.cleanPrev();
                    break;
                }
            }
        } else {
            return ChannelResult.INSTANCE.m2299failurePtdJZtk();
        }
    }

    @NotNull
    /* renamed from: trySendDropOldest-JP2dKIU, reason: not valid java name */
    public final Object m2261trySendDropOldestJP2dKIU(E element) {
        ChannelSegment channelSegment;
        Waiter waiter;
        Object obj = BufferedChannelKt.BUFFERED;
        ChannelSegment channelSegment2 = (ChannelSegment) f1816x34271fae.get(this);
        while (true) {
            long andIncrement = f1812x1378447b.getAndIncrement(this);
            long j = andIncrement & 1152921504606846975L;
            boolean m2267x34271fae = m2267x34271fae(andIncrement, false);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / i;
            int i2 = (int) (j % i);
            if (channelSegment2.id != j2) {
                ChannelSegment access$findSegmentSend = access$findSegmentSend(this, j2, channelSegment2);
                if (access$findSegmentSend == null) {
                    if (m2267x34271fae) {
                        return ChannelResult.INSTANCE.m2298closedJP2dKIU(getSendException());
                    }
                } else {
                    channelSegment = access$findSegmentSend;
                }
            } else {
                channelSegment = channelSegment2;
            }
            int access$updateCellSend = access$updateCellSend(this, channelSegment, i2, element, j, obj, m2267x34271fae);
            if (access$updateCellSend != 0) {
                if (access$updateCellSend != 1) {
                    if (access$updateCellSend != 2) {
                        if (access$updateCellSend != 3) {
                            if (access$updateCellSend != 4) {
                                if (access$updateCellSend == 5) {
                                    channelSegment.cleanPrev();
                                }
                                channelSegment2 = channelSegment;
                            } else {
                                if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                                    channelSegment.cleanPrev();
                                }
                                return ChannelResult.INSTANCE.m2298closedJP2dKIU(getSendException());
                            }
                        } else {
                            throw new IllegalStateException("unexpected");
                        }
                    } else {
                        if (m2267x34271fae) {
                            channelSegment.onSlotCleaned();
                            return ChannelResult.INSTANCE.m2298closedJP2dKIU(getSendException());
                        }
                        if (obj instanceof Waiter) {
                            waiter = (Waiter) obj;
                        } else {
                            waiter = null;
                        }
                        if (waiter != null) {
                            access$prepareSenderForSuspension(this, waiter, channelSegment, i2);
                        }
                        dropFirstElementUntilTheSpecifiedCellIsInTheBuffer((channelSegment.id * i) + i2);
                        return ChannelResult.INSTANCE.m2300successJP2dKIU(Unit.INSTANCE);
                    }
                } else {
                    return ChannelResult.INSTANCE.m2300successJP2dKIU(Unit.INSTANCE);
                }
            } else {
                channelSegment.cleanPrev();
                return ChannelResult.INSTANCE.m2300successJP2dKIU(Unit.INSTANCE);
            }
        }
    }

    public final void waitExpandBufferCompletion$kotlinx_coroutines_core(long globalIndex) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        int i;
        long j;
        AtomicLongFieldUpdater atomicLongFieldUpdater2;
        boolean z;
        long j2;
        if (m2268x95f25580()) {
            return;
        }
        do {
            atomicLongFieldUpdater = f1814x9738a56c;
        } while (atomicLongFieldUpdater.get(this) <= globalIndex);
        i = BufferedChannelKt.f1824x3271d0aa;
        int i2 = 0;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater3 = f1815x9e171bf9;
            if (i2 < i) {
                long j3 = atomicLongFieldUpdater.get(this);
                if (j3 == (atomicLongFieldUpdater3.get(this) & DurationKt.MAX_MILLIS) && j3 == atomicLongFieldUpdater.get(this)) {
                    return;
                } else {
                    i2++;
                }
            } else {
                do {
                    j = atomicLongFieldUpdater3.get(this);
                } while (!atomicLongFieldUpdater3.compareAndSet(this, j, BufferedChannelKt.access$constructEBCompletedAndPauseFlag(j & DurationKt.MAX_MILLIS, true)));
                while (true) {
                    long j4 = atomicLongFieldUpdater.get(this);
                    atomicLongFieldUpdater2 = f1815x9e171bf9;
                    long j5 = atomicLongFieldUpdater2.get(this);
                    long j6 = j5 & DurationKt.MAX_MILLIS;
                    if ((Longs.MAX_POWER_OF_TWO & j5) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (j4 == j6 && j4 == atomicLongFieldUpdater.get(this)) {
                        break;
                    } else if (!z) {
                        atomicLongFieldUpdater2.compareAndSet(this, j5, BufferedChannelKt.access$constructEBCompletedAndPauseFlag(j6, true));
                    }
                }
                do {
                    j2 = atomicLongFieldUpdater2.get(this);
                } while (!atomicLongFieldUpdater2.compareAndSet(this, j2, BufferedChannelKt.access$constructEBCompletedAndPauseFlag(j2 & DurationKt.MAX_MILLIS, false)));
                return;
            }
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final boolean m2262xfbe0c504(long j) {
        if (j >= f1814x9738a56c.get(this) && j >= getReceiversCounter$kotlinx_coroutines_core() + this.f1821xfbe0c504) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x007b, code lost:
    
        r1 = (kotlinx.coroutines.channels.ChannelSegment) r1.getPrev();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ChannelSegment m2263x3271d0aa(long j) {
        Symbol symbol;
        long j2;
        Symbol symbol2;
        Object obj = f1818x3db60231.get(this);
        ChannelSegment channelSegment = (ChannelSegment) f1816x34271fae.get(this);
        if (channelSegment.id > ((ChannelSegment) obj).id) {
            obj = channelSegment;
        }
        ChannelSegment channelSegment2 = (ChannelSegment) f1817x95f25580.get(this);
        if (channelSegment2.id > ((ChannelSegment) obj).id) {
            obj = channelSegment2;
        }
        ChannelSegment channelSegment3 = (ChannelSegment) ConcurrentLinkedListKt.close((ConcurrentLinkedListNode) obj);
        if (isConflatedDropOldest()) {
            ChannelSegment channelSegment4 = channelSegment3;
            loop0: do {
                int i = BufferedChannelKt.SEGMENT_SIZE - 1;
                while (true) {
                    if (-1 >= i) {
                        break;
                    }
                    j2 = (channelSegment4.id * BufferedChannelKt.SEGMENT_SIZE) + i;
                    if (j2 < getReceiversCounter$kotlinx_coroutines_core()) {
                        break loop0;
                    }
                    while (true) {
                        Object state$kotlinx_coroutines_core = channelSegment4.getState$kotlinx_coroutines_core(i);
                        if (state$kotlinx_coroutines_core != null) {
                            symbol2 = BufferedChannelKt.f1825x1378447b;
                            if (state$kotlinx_coroutines_core != symbol2) {
                                if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
                                    break loop0;
                                }
                            }
                        }
                        if (channelSegment4.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                            channelSegment4.onSlotCleaned();
                            break;
                        }
                    }
                    i--;
                }
            } while (channelSegment4 != null);
            j2 = -1;
            if (j2 != -1) {
                dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(j2);
            }
        }
        Object m2337constructorimpl$default = InlineList.m2337constructorimpl$default(null, 1, null);
        loop3: for (ChannelSegment channelSegment5 = channelSegment3; channelSegment5 != null; channelSegment5 = (ChannelSegment) channelSegment5.getPrev()) {
            for (int i2 = BufferedChannelKt.SEGMENT_SIZE - 1; -1 < i2; i2--) {
                if ((channelSegment5.id * BufferedChannelKt.SEGMENT_SIZE) + i2 < j) {
                    break loop3;
                }
                while (true) {
                    Object state$kotlinx_coroutines_core2 = channelSegment5.getState$kotlinx_coroutines_core(i2);
                    if (state$kotlinx_coroutines_core2 != null) {
                        symbol = BufferedChannelKt.f1825x1378447b;
                        if (state$kotlinx_coroutines_core2 != symbol) {
                            if (state$kotlinx_coroutines_core2 instanceof C1295xec5e1b4c) {
                                if (channelSegment5.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core2, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                    m2337constructorimpl$default = InlineList.m2342plusFjFbRPM(m2337constructorimpl$default, ((C1295xec5e1b4c) state$kotlinx_coroutines_core2).f5711xfbe0c504);
                                    channelSegment5.onCancelledRequest(i2, true);
                                    break;
                                }
                            } else {
                                if (!(state$kotlinx_coroutines_core2 instanceof Waiter)) {
                                    break;
                                }
                                if (channelSegment5.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core2, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                    m2337constructorimpl$default = InlineList.m2342plusFjFbRPM(m2337constructorimpl$default, state$kotlinx_coroutines_core2);
                                    channelSegment5.onCancelledRequest(i2, true);
                                    break;
                                }
                            }
                        }
                    }
                    if (channelSegment5.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core2, BufferedChannelKt.getCHANNEL_CLOSED())) {
                        channelSegment5.onSlotCleaned();
                        break;
                    }
                }
            }
        }
        if (m2337constructorimpl$default != null) {
            if (!(m2337constructorimpl$default instanceof ArrayList)) {
                m2274xab142723((Waiter) m2337constructorimpl$default, true);
            } else {
                Intrinsics.checkNotNull(m2337constructorimpl$default, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
                ArrayList arrayList = (ArrayList) m2337constructorimpl$default;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    m2274xab142723((Waiter) arrayList.get(size), true);
                }
            }
        }
        return channelSegment3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x00cd, code lost:
    
        if ((r2.addAndGet(r17, r0) & com.google.common.primitives.Longs.MAX_POWER_OF_TWO) != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x00d6, code lost:
    
        if ((r2.get(r17) & com.google.common.primitives.Longs.MAX_POWER_OF_TWO) == 0) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01b5, code lost:
    
        m2257x9e171bf9(r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01b8, code lost:
    
        return;
     */
    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m2264x1378447b() {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        Symbol symbol8;
        Symbol symbol9;
        Symbol symbol10;
        Object findSegmentInternal;
        if (m2268x95f25580()) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1818x3db60231;
        ChannelSegment channelSegment = (ChannelSegment) atomicReferenceFieldUpdater.get(this);
        loop0: while (true) {
            long andIncrement = f1814x9738a56c.getAndIncrement(this);
            long j = andIncrement / BufferedChannelKt.SEGMENT_SIZE;
            if (getSendersCounter$kotlinx_coroutines_core() <= andIncrement) {
                if (channelSegment.id < j && channelSegment.getNext() != 0) {
                    m2269x3db60231(j, channelSegment);
                }
                m2257x9e171bf9(this);
                return;
            }
            if (channelSegment.id != j) {
                Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
                while (true) {
                    findSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j, function2);
                    if (!SegmentOrClosed.m2356isClosedimpl(findSegmentInternal)) {
                        Segment m2354getSegmentimpl = SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
                        while (true) {
                            Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                            if (segment.id >= m2354getSegmentimpl.id) {
                                break;
                            }
                            if (!m2354getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                                break;
                            }
                            while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, m2354getSegmentimpl)) {
                                if (atomicReferenceFieldUpdater.get(this) != segment) {
                                    if (m2354getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                        m2354getSegmentimpl.remove();
                                    }
                                }
                            }
                            if (segment.decPointers$kotlinx_coroutines_core()) {
                                segment.remove();
                            }
                        }
                    } else {
                        break;
                    }
                }
                ChannelSegment channelSegment2 = null;
                if (SegmentOrClosed.m2356isClosedimpl(findSegmentInternal)) {
                    isClosedForSend();
                    m2269x3db60231(j, channelSegment);
                    m2257x9e171bf9(this);
                } else {
                    ChannelSegment channelSegment3 = (ChannelSegment) SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
                    long j2 = channelSegment3.id;
                    if (j2 > j) {
                        long j3 = BufferedChannelKt.SEGMENT_SIZE;
                        if (f1814x9738a56c.compareAndSet(this, andIncrement + 1, j2 * j3)) {
                            long j4 = (channelSegment3.id * j3) - andIncrement;
                            AtomicLongFieldUpdater atomicLongFieldUpdater = f1815x9e171bf9;
                        } else {
                            m2257x9e171bf9(this);
                        }
                    } else {
                        channelSegment2 = channelSegment3;
                    }
                }
                if (channelSegment2 == null) {
                    continue;
                } else {
                    channelSegment = channelSegment2;
                }
            }
            int i = (int) (andIncrement % BufferedChannelKt.SEGMENT_SIZE);
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            boolean z = state$kotlinx_coroutines_core instanceof Waiter;
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = f1813x75d576dc;
            if (z && andIncrement >= atomicLongFieldUpdater2.get(this)) {
                symbol9 = BufferedChannelKt.f1827x9738a56c;
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, symbol9)) {
                    if (!m2277x952a0a9e(state$kotlinx_coroutines_core, channelSegment, i)) {
                        symbol10 = BufferedChannelKt.f1830x95f25580;
                        channelSegment.setState$kotlinx_coroutines_core(i, symbol10);
                        channelSegment.onCancelledRequest(i, false);
                        m2257x9e171bf9(this);
                    } else {
                        channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.BUFFERED);
                        break;
                    }
                }
            }
            while (true) {
                Object state$kotlinx_coroutines_core2 = channelSegment.getState$kotlinx_coroutines_core(i);
                if (!(state$kotlinx_coroutines_core2 instanceof Waiter)) {
                    symbol3 = BufferedChannelKt.f1830x95f25580;
                    if (state$kotlinx_coroutines_core2 != symbol3) {
                        if (state$kotlinx_coroutines_core2 == null) {
                            symbol4 = BufferedChannelKt.f1825x1378447b;
                            if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, symbol4)) {
                                break loop0;
                            }
                        } else if (state$kotlinx_coroutines_core2 != BufferedChannelKt.BUFFERED) {
                            symbol5 = BufferedChannelKt.f1828x9e171bf9;
                            if (state$kotlinx_coroutines_core2 == symbol5) {
                                break loop0;
                            }
                            symbol6 = BufferedChannelKt.f1829x34271fae;
                            if (state$kotlinx_coroutines_core2 == symbol6) {
                                break loop0;
                            }
                            symbol7 = BufferedChannelKt.f1831x3db60231;
                            if (state$kotlinx_coroutines_core2 == symbol7 || state$kotlinx_coroutines_core2 == BufferedChannelKt.getCHANNEL_CLOSED()) {
                                break loop0;
                            }
                            symbol8 = BufferedChannelKt.f1826x75d576dc;
                            if (state$kotlinx_coroutines_core2 != symbol8) {
                                throw new IllegalStateException(("Unexpected cell state: " + state$kotlinx_coroutines_core2).toString());
                            }
                        } else {
                            break loop0;
                        }
                    } else {
                        break;
                    }
                } else if (andIncrement >= atomicLongFieldUpdater2.get(this)) {
                    symbol = BufferedChannelKt.f1827x9738a56c;
                    if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, symbol)) {
                        if (!m2277x952a0a9e(state$kotlinx_coroutines_core2, channelSegment, i)) {
                            symbol2 = BufferedChannelKt.f1830x95f25580;
                            channelSegment.setState$kotlinx_coroutines_core(i, symbol2);
                            channelSegment.onCancelledRequest(i, false);
                        } else {
                            channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.BUFFERED);
                            break;
                        }
                    }
                } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, new C1295xec5e1b4c((Waiter) state$kotlinx_coroutines_core2))) {
                    break loop0;
                }
            }
        }
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final ChannelSegment m2265x75d576dc(long j, ChannelSegment channelSegment) {
        Object findSegmentInternal;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j2;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            findSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j, function2);
            if (!SegmentOrClosed.m2356isClosedimpl(findSegmentInternal)) {
                Segment m2354getSegmentimpl = SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1817x95f25580;
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.id >= m2354getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!m2354getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, m2354getSegmentimpl)) {
                        if (atomicReferenceFieldUpdater.get(this) != segment) {
                            if (m2354getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                m2354getSegmentimpl.remove();
                            }
                        }
                    }
                    if (segment.decPointers$kotlinx_coroutines_core()) {
                        segment.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.m2356isClosedimpl(findSegmentInternal)) {
            isClosedForSend();
            if (channelSegment.id * BufferedChannelKt.SEGMENT_SIZE >= getSendersCounter$kotlinx_coroutines_core()) {
                return null;
            }
            channelSegment.cleanPrev();
            return null;
        }
        ChannelSegment channelSegment2 = (ChannelSegment) SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
        if (!m2268x95f25580() && j <= f1814x9738a56c.get(this) / BufferedChannelKt.SEGMENT_SIZE) {
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f1818x3db60231;
                Segment segment2 = (Segment) atomicReferenceFieldUpdater2.get(this);
                if (segment2.id >= channelSegment2.id) {
                    break;
                }
                if (!channelSegment2.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, segment2, channelSegment2)) {
                    if (atomicReferenceFieldUpdater2.get(this) != segment2) {
                        if (channelSegment2.decPointers$kotlinx_coroutines_core()) {
                            channelSegment2.remove();
                        }
                    }
                }
                if (segment2.decPointers$kotlinx_coroutines_core()) {
                    segment2.remove();
                }
            }
        }
        long j3 = channelSegment2.id;
        if (j3 > j) {
            long j4 = j3 * BufferedChannelKt.SEGMENT_SIZE;
            do {
                atomicLongFieldUpdater = f1813x75d576dc;
                j2 = atomicLongFieldUpdater.get(this);
                if (j2 >= j4) {
                    break;
                }
            } while (!atomicLongFieldUpdater.compareAndSet(this, j2, j4));
            if (channelSegment2.id * BufferedChannelKt.SEGMENT_SIZE >= getSendersCounter$kotlinx_coroutines_core()) {
                return null;
            }
            channelSegment2.cleanPrev();
            return null;
        }
        return channelSegment2;
    }

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final Throwable m2266x9738a56c() {
        Throwable closeCause = getCloseCause();
        if (closeCause == null) {
            return new ClosedReceiveChannelException(ChannelsKt.DEFAULT_CLOSE_MESSAGE);
        }
        return closeCause;
    }

    /* JADX WARN: Code restructure failed: missing block: B:91:0x00ce, code lost:
    
        r12 = (kotlinx.coroutines.channels.ChannelSegment) r12.getPrev();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m2267x34271fae(long j, boolean z) {
        Symbol symbol;
        Symbol symbol2;
        Waiter waiter;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        int i = (int) (j >> 60);
        if (i == 0 || i == 1) {
            return false;
        }
        if (i != 2) {
            if (i == 3) {
                ChannelSegment m2263x3271d0aa = m2263x3271d0aa(j & 1152921504606846975L);
                Function1<E, Unit> function1 = this.onUndeliveredElement;
                UndeliveredElementException undeliveredElementException = null;
                Object m2337constructorimpl$default = InlineList.m2337constructorimpl$default(null, 1, null);
                loop0: do {
                    int i2 = BufferedChannelKt.SEGMENT_SIZE - 1;
                    while (true) {
                        if (-1 >= i2) {
                            break;
                        }
                        long j2 = (m2263x3271d0aa.id * BufferedChannelKt.SEGMENT_SIZE) + i2;
                        while (true) {
                            Object state$kotlinx_coroutines_core = m2263x3271d0aa.getState$kotlinx_coroutines_core(i2);
                            symbol = BufferedChannelKt.f1829x34271fae;
                            if (state$kotlinx_coroutines_core == symbol) {
                                break loop0;
                            }
                            if (state$kotlinx_coroutines_core != BufferedChannelKt.BUFFERED) {
                                symbol2 = BufferedChannelKt.f1825x1378447b;
                                if (state$kotlinx_coroutines_core != symbol2 && state$kotlinx_coroutines_core != null) {
                                    if (!(state$kotlinx_coroutines_core instanceof Waiter) && !(state$kotlinx_coroutines_core instanceof C1295xec5e1b4c)) {
                                        symbol3 = BufferedChannelKt.f1827x9738a56c;
                                        if (state$kotlinx_coroutines_core == symbol3) {
                                            break loop0;
                                        }
                                        symbol4 = BufferedChannelKt.f1826x75d576dc;
                                        if (state$kotlinx_coroutines_core == symbol4) {
                                            break loop0;
                                        }
                                        symbol5 = BufferedChannelKt.f1827x9738a56c;
                                        if (state$kotlinx_coroutines_core != symbol5) {
                                            break;
                                        }
                                    } else {
                                        if (j2 < getReceiversCounter$kotlinx_coroutines_core()) {
                                            break loop0;
                                        }
                                        if (state$kotlinx_coroutines_core instanceof C1295xec5e1b4c) {
                                            waiter = ((C1295xec5e1b4c) state$kotlinx_coroutines_core).f5711xfbe0c504;
                                        } else {
                                            waiter = (Waiter) state$kotlinx_coroutines_core;
                                        }
                                        if (m2263x3271d0aa.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                            if (function1 != null) {
                                                undeliveredElementException = OnUndeliveredElementKt.callUndeliveredElementCatchingException(function1, m2263x3271d0aa.getElement$kotlinx_coroutines_core(i2), undeliveredElementException);
                                            }
                                            m2337constructorimpl$default = InlineList.m2342plusFjFbRPM(m2337constructorimpl$default, waiter);
                                            m2263x3271d0aa.cleanElement$kotlinx_coroutines_core(i2);
                                            m2263x3271d0aa.onSlotCleaned();
                                        }
                                    }
                                } else if (m2263x3271d0aa.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                    m2263x3271d0aa.onSlotCleaned();
                                    break;
                                }
                            } else {
                                if (j2 < getReceiversCounter$kotlinx_coroutines_core()) {
                                    break loop0;
                                }
                                if (m2263x3271d0aa.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                    if (function1 != null) {
                                        undeliveredElementException = OnUndeliveredElementKt.callUndeliveredElementCatchingException(function1, m2263x3271d0aa.getElement$kotlinx_coroutines_core(i2), undeliveredElementException);
                                    }
                                    m2263x3271d0aa.cleanElement$kotlinx_coroutines_core(i2);
                                    m2263x3271d0aa.onSlotCleaned();
                                }
                            }
                        }
                        i2--;
                    }
                } while (m2263x3271d0aa != null);
                if (m2337constructorimpl$default != null) {
                    if (!(m2337constructorimpl$default instanceof ArrayList)) {
                        m2274xab142723((Waiter) m2337constructorimpl$default, false);
                    } else {
                        Intrinsics.checkNotNull(m2337constructorimpl$default, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
                        ArrayList arrayList = (ArrayList) m2337constructorimpl$default;
                        for (int size = arrayList.size() - 1; -1 < size; size--) {
                            m2274xab142723((Waiter) arrayList.get(size), false);
                        }
                    }
                }
                if (undeliveredElementException != null) {
                    throw undeliveredElementException;
                }
            } else {
                throw new IllegalStateException(AbstractC0362x4440ab85.m2929x9738a56c(i, "unexpected close status: ").toString());
            }
        } else {
            m2263x3271d0aa(j & 1152921504606846975L);
            if (z && hasElements$kotlinx_coroutines_core()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public final boolean m2268x95f25580() {
        long j = f1814x9738a56c.get(this);
        if (j != 0 && j != Long.MAX_VALUE) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0011, code lost:
    
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m2269x3db60231(long j, ChannelSegment channelSegment) {
        ChannelSegment channelSegment2;
        ChannelSegment channelSegment3;
        while (channelSegment.id < j && (channelSegment3 = (ChannelSegment) channelSegment.getNext()) != null) {
            channelSegment = channelSegment3;
        }
        while (true) {
            if (!channelSegment.isRemoved() || (channelSegment2 = (ChannelSegment) channelSegment.getNext()) == null) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1818x3db60231;
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.id < channelSegment.id) {
                        if (!channelSegment.tryIncPointers$kotlinx_coroutines_core()) {
                            break;
                        }
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, channelSegment)) {
                            if (atomicReferenceFieldUpdater.get(this) != segment) {
                                if (channelSegment.decPointers$kotlinx_coroutines_core()) {
                                    channelSegment.remove();
                                }
                            }
                        }
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
            channelSegment = channelSegment2;
        }
    }

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public final void m2270x9d12c1f4(SelectInstance selectInstance, Object obj) {
        Function1<E, Unit> function1 = this.onUndeliveredElement;
        if (function1 != null) {
            OnUndeliveredElementKt.callUndeliveredElement(function1, obj, selectInstance.getContext());
        }
        selectInstance.selectInRegistrationPhase(BufferedChannelKt.getCHANNEL_CLOSED());
    }

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public final Object m2271x1db10c9d(Object obj, Continuation continuation) {
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Function1<E, Unit> function1 = this.onUndeliveredElement;
        if (function1 != null && (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, obj, null, 2, null)) != null) {
            AbstractC0720xaa9ccb5a.addSuppressed(callUndeliveredElementCatchingException$default, getSendException());
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(callUndeliveredElementCatchingException$default)));
        } else {
            Throwable sendException = getSendException();
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(sendException)));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return result;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m2272x8c6fc18a(ChannelSegment channelSegment, int i, long j, Continuation continuation) {
        C0475x736ce035 c0475x736ce035;
        int i2;
        Symbol symbol;
        Symbol symbol2;
        ChannelResult m2285boximpl;
        Function3 function3;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        if (continuation instanceof C0475x736ce035) {
            c0475x736ce035 = (C0475x736ce035) continuation;
            int i3 = c0475x736ce035.f3957x1378447b;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c0475x736ce035.f3957x1378447b = i3 - Integer.MIN_VALUE;
                Object obj = c0475x736ce035.f3955xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i2 = c0475x736ce035.f3957x1378447b;
                if (i2 == 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    c0475x736ce035.f3957x1378447b = 1;
                    CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(c0475x736ce035));
                    try {
                        Intrinsics.checkNotNull(orCreateCancellableContinuation, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel>>");
                        C1075xbbcf7a82 c1075xbbcf7a82 = new C1075xbbcf7a82(orCreateCancellableContinuation);
                        Object m2278xc20437a5 = m2278xc20437a5(channelSegment, i, c1075xbbcf7a82, j);
                        symbol = BufferedChannelKt.f1833x1db10c9d;
                        if (m2278xc20437a5 != symbol) {
                            symbol2 = BufferedChannelKt.f1835x8c6fc18a;
                            KFunction kFunction = null;
                            if (m2278xc20437a5 == symbol2) {
                                if (j < getSendersCounter$kotlinx_coroutines_core()) {
                                    channelSegment.cleanPrev();
                                }
                                ChannelSegment channelSegment2 = (ChannelSegment) f1817x95f25580.get(this);
                                while (true) {
                                    if (isClosedForReceive()) {
                                        access$onClosedReceiveCatchingOnNoWaiterSuspend(this, orCreateCancellableContinuation);
                                        break;
                                    }
                                    long andIncrement = f1813x75d576dc.getAndIncrement(this);
                                    long j2 = BufferedChannelKt.SEGMENT_SIZE;
                                    long j3 = andIncrement / j2;
                                    int i4 = (int) (andIncrement % j2);
                                    if (channelSegment2.id != j3) {
                                        ChannelSegment m2265x75d576dc = m2265x75d576dc(j3, channelSegment2);
                                        if (m2265x75d576dc != null) {
                                            channelSegment2 = m2265x75d576dc;
                                        }
                                    }
                                    Object m2278xc20437a52 = m2278xc20437a5(channelSegment2, i4, c1075xbbcf7a82, andIncrement);
                                    symbol3 = BufferedChannelKt.f1833x1db10c9d;
                                    if (m2278xc20437a52 != symbol3) {
                                        symbol4 = BufferedChannelKt.f1835x8c6fc18a;
                                        if (m2278xc20437a52 != symbol4) {
                                            symbol5 = BufferedChannelKt.f1834xd2bcb0cf;
                                            if (m2278xc20437a52 != symbol5) {
                                                channelSegment2.cleanPrev();
                                                m2285boximpl = ChannelResult.m2285boximpl(ChannelResult.INSTANCE.m2300successJP2dKIU(m2278xc20437a52));
                                                Function1<E, Unit> function1 = this.onUndeliveredElement;
                                                if (function1 != null) {
                                                    kFunction = access$bindCancellationFunResult(this, function1);
                                                }
                                                function3 = (Function3) kFunction;
                                            } else {
                                                throw new IllegalStateException("unexpected");
                                            }
                                        } else if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                                            channelSegment2.cleanPrev();
                                        }
                                    } else {
                                        access$prepareReceiverForSuspension(this, c1075xbbcf7a82, channelSegment2, i4);
                                        break;
                                    }
                                }
                            } else {
                                channelSegment.cleanPrev();
                                m2285boximpl = ChannelResult.m2285boximpl(ChannelResult.INSTANCE.m2300successJP2dKIU(m2278xc20437a5));
                                Function1<E, Unit> function12 = this.onUndeliveredElement;
                                if (function12 != null) {
                                    kFunction = access$bindCancellationFunResult(this, function12);
                                }
                                function3 = (Function3) kFunction;
                            }
                            orCreateCancellableContinuation.resume((CancellableContinuationImpl) m2285boximpl, (Function3<? super Throwable, ? super CancellableContinuationImpl, ? super CoroutineContext, Unit>) function3);
                        } else {
                            access$prepareReceiverForSuspension(this, c1075xbbcf7a82, channelSegment, i);
                        }
                        obj = orCreateCancellableContinuation.getResult();
                        if (obj == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                            DebugProbesKt.probeCoroutineSuspended(c0475x736ce035);
                        }
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } catch (Throwable th) {
                        orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                        throw th;
                    }
                }
                return ((ChannelResult) obj).getHolder();
            }
        }
        c0475x736ce035 = new C0475x736ce035(this, continuation);
        Object obj2 = c0475x736ce035.f3955xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i2 = c0475x736ce035.f3957x1378447b;
        if (i2 == 0) {
        }
        return ((ChannelResult) obj2).getHolder();
    }

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
    public final Object m2273x1aebc6d9(ChannelSegment channelSegment, int i, long j, Continuation continuation) {
        Symbol symbol;
        Symbol symbol2;
        Function3 function3;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            Object m2278xc20437a5 = m2278xc20437a5(channelSegment, i, orCreateCancellableContinuation, j);
            symbol = BufferedChannelKt.f1833x1db10c9d;
            if (m2278xc20437a5 != symbol) {
                symbol2 = BufferedChannelKt.f1835x8c6fc18a;
                KFunction kFunction = null;
                KFunction kFunction2 = null;
                CancellableContinuationImpl cancellableContinuationImpl = null;
                if (m2278xc20437a5 == symbol2) {
                    if (j < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                    ChannelSegment channelSegment2 = (ChannelSegment) f1817x95f25580.get(this);
                    while (true) {
                        if (isClosedForReceive()) {
                            access$onClosedReceiveOnNoWaiterSuspend(this, orCreateCancellableContinuation);
                            break;
                        }
                        long andIncrement = f1813x75d576dc.getAndIncrement(this);
                        int i2 = BufferedChannelKt.SEGMENT_SIZE;
                        long j2 = andIncrement / i2;
                        int i3 = (int) (andIncrement % i2);
                        if (channelSegment2.id != j2) {
                            ChannelSegment m2265x75d576dc = m2265x75d576dc(j2, channelSegment2);
                            if (m2265x75d576dc != null) {
                                channelSegment2 = m2265x75d576dc;
                            }
                        }
                        m2278xc20437a5 = m2278xc20437a5(channelSegment2, i3, orCreateCancellableContinuation, andIncrement);
                        symbol3 = BufferedChannelKt.f1833x1db10c9d;
                        if (m2278xc20437a5 != symbol3) {
                            symbol4 = BufferedChannelKt.f1835x8c6fc18a;
                            if (m2278xc20437a5 != symbol4) {
                                symbol5 = BufferedChannelKt.f1834xd2bcb0cf;
                                if (m2278xc20437a5 != symbol5) {
                                    channelSegment2.cleanPrev();
                                    Function1<E, Unit> function1 = this.onUndeliveredElement;
                                    if (function1 != null) {
                                        kFunction2 = access$bindCancellationFun(this, function1);
                                    }
                                    function3 = (Function3) kFunction2;
                                } else {
                                    throw new IllegalStateException("unexpected");
                                }
                            } else if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegment2.cleanPrev();
                            }
                        } else {
                            if (orCreateCancellableContinuation instanceof Waiter) {
                                cancellableContinuationImpl = orCreateCancellableContinuation;
                            }
                            if (cancellableContinuationImpl != null) {
                                access$prepareReceiverForSuspension(this, cancellableContinuationImpl, channelSegment2, i3);
                            }
                        }
                    }
                } else {
                    channelSegment.cleanPrev();
                    Function1<E, Unit> function12 = this.onUndeliveredElement;
                    if (function12 != null) {
                        kFunction = access$bindCancellationFun(this, function12);
                    }
                    function3 = (Function3) kFunction;
                }
                orCreateCancellableContinuation.resume((CancellableContinuationImpl) m2278xc20437a5, (Function3<? super Throwable, ? super CancellableContinuationImpl, ? super CoroutineContext, Unit>) function3);
            } else {
                access$prepareReceiverForSuspension(this, orCreateCancellableContinuation, channelSegment, i);
            }
            Object result = orCreateCancellableContinuation.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    /* renamed from: 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨, reason: contains not printable characters */
    public final void m2274xab142723(Waiter waiter, boolean z) {
        Throwable sendException;
        if (waiter instanceof C0464xd385fe9c) {
            CancellableContinuationImpl cancellableContinuationImpl = ((C0464xd385fe9c) waiter).f3942x3271d0aa;
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(Boolean.FALSE));
            return;
        }
        if (waiter instanceof CancellableContinuation) {
            Continuation continuation = (Continuation) waiter;
            Result.Companion companion2 = Result.INSTANCE;
            if (z) {
                sendException = m2266x9738a56c();
            } else {
                sendException = getSendException();
            }
            continuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(sendException)));
            return;
        }
        if (waiter instanceof C1075xbbcf7a82) {
            CancellableContinuationImpl cancellableContinuationImpl2 = ((C1075xbbcf7a82) waiter).f5361xfbe0c504;
            Result.Companion companion3 = Result.INSTANCE;
            cancellableContinuationImpl2.resumeWith(Result.m1764constructorimpl(ChannelResult.m2285boximpl(ChannelResult.INSTANCE.m2298closedJP2dKIU(getCloseCause()))));
            return;
        }
        if (waiter instanceof C0309x3271d0aa) {
            C0309x3271d0aa c0309x3271d0aa = (C0309x3271d0aa) waiter;
            CancellableContinuationImpl cancellableContinuationImpl3 = c0309x3271d0aa.f1853x3271d0aa;
            Intrinsics.checkNotNull(cancellableContinuationImpl3);
            c0309x3271d0aa.f1853x3271d0aa = null;
            c0309x3271d0aa.f1852xfbe0c504 = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = c0309x3271d0aa.f1854x1378447b.getCloseCause();
            if (closeCause == null) {
                Result.Companion companion4 = Result.INSTANCE;
                cancellableContinuationImpl3.resumeWith(Result.m1764constructorimpl(Boolean.FALSE));
                return;
            } else {
                Result.Companion companion5 = Result.INSTANCE;
                cancellableContinuationImpl3.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(closeCause)));
                return;
            }
        }
        if (waiter instanceof SelectInstance) {
            ((SelectInstance) waiter).trySelect(this, BufferedChannelKt.getCHANNEL_CLOSED());
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + waiter).toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011e  */
    /* renamed from: 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m2275x85f0360e(ChannelSegment channelSegment, int i, Object obj, long j, Continuation continuation) {
        Object m1764constructorimpl;
        Object result;
        ChannelSegment channelSegment2;
        CancellableContinuationImpl cancellableContinuationImpl;
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            int access$updateCellSend = access$updateCellSend(this, channelSegment, i, obj, j, orCreateCancellableContinuation, false);
            if (access$updateCellSend != 0) {
                if (access$updateCellSend != 1) {
                    if (access$updateCellSend != 2) {
                        if (access$updateCellSend != 4) {
                            if (access$updateCellSend == 5) {
                                channelSegment.cleanPrev();
                                ChannelSegment channelSegment3 = (ChannelSegment) f1816x34271fae.get(this);
                                while (true) {
                                    long andIncrement = f1812x1378447b.getAndIncrement(this);
                                    long j2 = andIncrement & 1152921504606846975L;
                                    boolean m2267x34271fae = m2267x34271fae(andIncrement, false);
                                    int i2 = BufferedChannelKt.SEGMENT_SIZE;
                                    long j3 = j2 / i2;
                                    int i3 = (int) (j2 % i2);
                                    if (channelSegment3.id != j3) {
                                        ChannelSegment access$findSegmentSend = access$findSegmentSend(this, j3, channelSegment3);
                                        if (access$findSegmentSend == null) {
                                            if (m2267x34271fae) {
                                                break;
                                            }
                                        } else {
                                            channelSegment2 = access$findSegmentSend;
                                        }
                                    } else {
                                        channelSegment2 = channelSegment3;
                                    }
                                    ChannelSegment channelSegment4 = channelSegment2;
                                    int access$updateCellSend2 = access$updateCellSend(this, channelSegment2, i3, obj, j2, orCreateCancellableContinuation, m2267x34271fae);
                                    if (access$updateCellSend2 != 0) {
                                        if (access$updateCellSend2 != 1) {
                                            if (access$updateCellSend2 != 2) {
                                                if (access$updateCellSend2 != 3) {
                                                    if (access$updateCellSend2 != 4) {
                                                        if (access$updateCellSend2 == 5) {
                                                            channelSegment4.cleanPrev();
                                                        }
                                                        channelSegment3 = channelSegment4;
                                                    } else if (j2 < getReceiversCounter$kotlinx_coroutines_core()) {
                                                        channelSegment4.cleanPrev();
                                                    }
                                                } else {
                                                    throw new IllegalStateException("unexpected");
                                                }
                                            } else if (m2267x34271fae) {
                                                channelSegment4.onSlotCleaned();
                                            } else {
                                                if (orCreateCancellableContinuation instanceof Waiter) {
                                                    cancellableContinuationImpl = orCreateCancellableContinuation;
                                                } else {
                                                    cancellableContinuationImpl = null;
                                                }
                                                if (cancellableContinuationImpl != null) {
                                                    access$prepareSenderForSuspension(this, cancellableContinuationImpl, channelSegment4, i3);
                                                }
                                            }
                                        } else {
                                            Result.Companion companion = Result.INSTANCE;
                                            m1764constructorimpl = Result.m1764constructorimpl(Unit.INSTANCE);
                                            break;
                                        }
                                    } else {
                                        channelSegment4.cleanPrev();
                                        Result.Companion companion2 = Result.INSTANCE;
                                        m1764constructorimpl = Result.m1764constructorimpl(Unit.INSTANCE);
                                        break;
                                    }
                                }
                            } else {
                                throw new IllegalStateException("unexpected");
                            }
                        } else if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                            channelSegment.cleanPrev();
                        }
                        access$onClosedSendOnNoWaiterSuspend(this, obj, orCreateCancellableContinuation);
                    } else {
                        access$prepareSenderForSuspension(this, orCreateCancellableContinuation, channelSegment, i);
                    }
                    result = orCreateCancellableContinuation.getResult();
                    if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(continuation);
                    }
                    if (result != AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                        return result;
                    }
                    return Unit.INSTANCE;
                }
                Result.Companion companion3 = Result.INSTANCE;
                m1764constructorimpl = Result.m1764constructorimpl(Unit.INSTANCE);
            } else {
                channelSegment.cleanPrev();
                Result.Companion companion4 = Result.INSTANCE;
                m1764constructorimpl = Result.m1764constructorimpl(Unit.INSTANCE);
            }
            orCreateCancellableContinuation.resumeWith(m1764constructorimpl);
            result = orCreateCancellableContinuation.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            }
            if (result != AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            }
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    /* renamed from: 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌, reason: contains not printable characters */
    public final boolean m2276xad53da1a(Object obj, Object obj2) {
        if (obj instanceof SelectInstance) {
            return ((SelectInstance) obj).trySelect(this, obj2);
        }
        Function3 function3 = null;
        if (obj instanceof C1075xbbcf7a82) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            CancellableContinuationImpl cancellableContinuationImpl = ((C1075xbbcf7a82) obj).f5361xfbe0c504;
            ChannelResult m2285boximpl = ChannelResult.m2285boximpl(ChannelResult.INSTANCE.m2300successJP2dKIU(obj2));
            if (this.onUndeliveredElement != null) {
                function3 = new C0465xe275586d(this, 1);
            }
            return BufferedChannelKt.access$tryResume0(cancellableContinuationImpl, m2285boximpl, function3);
        }
        if (obj instanceof C0309x3271d0aa) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            C0309x3271d0aa c0309x3271d0aa = (C0309x3271d0aa) obj;
            CancellableContinuationImpl cancellableContinuationImpl2 = c0309x3271d0aa.f1853x3271d0aa;
            Intrinsics.checkNotNull(cancellableContinuationImpl2);
            c0309x3271d0aa.f1853x3271d0aa = null;
            c0309x3271d0aa.f1852xfbe0c504 = obj2;
            Boolean bool = Boolean.TRUE;
            BufferedChannel bufferedChannel = c0309x3271d0aa.f1854x1378447b;
            Function1<E, Unit> function1 = bufferedChannel.onUndeliveredElement;
            if (function1 != null) {
                function3 = access$bindCancellationFun(bufferedChannel, function1, obj2);
            }
            return BufferedChannelKt.access$tryResume0(cancellableContinuationImpl2, bool, function3);
        }
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
            if (this.onUndeliveredElement != null) {
                function3 = new C0465xe275586d(this, 0);
            }
            return BufferedChannelKt.access$tryResume0(cancellableContinuation, obj2, function3);
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    /* renamed from: 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬, reason: contains not printable characters */
    public final boolean m2277x952a0a9e(Object obj, ChannelSegment channelSegment, int i) {
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
            Unit unit = Unit.INSTANCE;
            ChannelSegment channelSegment2 = BufferedChannelKt.f1823xfbe0c504;
            Object tryResume = cancellableContinuation.tryResume(unit, null, null);
            if (tryResume == null) {
                return false;
            }
            cancellableContinuation.completeResume(tryResume);
        } else if (obj instanceof SelectInstance) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            TrySelectDetailedResult trySelectDetailed = ((SelectImplementation) obj).trySelectDetailed(this, Unit.INSTANCE);
            if (trySelectDetailed == TrySelectDetailedResult.REREGISTER) {
                channelSegment.cleanElement$kotlinx_coroutines_core(i);
            }
            if (trySelectDetailed != TrySelectDetailedResult.SUCCESSFUL) {
                return false;
            }
        } else if (obj instanceof C0464xd385fe9c) {
            CancellableContinuationImpl cancellableContinuationImpl = ((C0464xd385fe9c) obj).f3942x3271d0aa;
            Boolean bool = Boolean.TRUE;
            ChannelSegment channelSegment3 = BufferedChannelKt.f1823xfbe0c504;
            Object tryResume2 = cancellableContinuationImpl.tryResume(bool, null, null);
            if (tryResume2 == null) {
                return false;
            }
            cancellableContinuationImpl.completeResume(tryResume2);
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
        }
        return true;
    }

    /* renamed from: 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅, reason: contains not printable characters */
    public final Object m2278xc20437a5(ChannelSegment channelSegment, int i, Object obj, long j) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        Symbol symbol8;
        Symbol symbol9;
        Symbol symbol10;
        Symbol symbol11;
        Symbol symbol12;
        Symbol symbol13;
        Symbol symbol14;
        Symbol symbol15;
        Symbol symbol16;
        Symbol symbol17;
        Symbol symbol18;
        Symbol symbol19;
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        AtomicLongFieldUpdater atomicLongFieldUpdater = f1812x1378447b;
        if (state$kotlinx_coroutines_core == null) {
            if (j >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    symbol19 = BufferedChannelKt.f1834xd2bcb0cf;
                    return symbol19;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, obj)) {
                    m2264x1378447b();
                    symbol18 = BufferedChannelKt.f1833x1db10c9d;
                    return symbol18;
                }
            }
        } else if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
            symbol = BufferedChannelKt.f1829x34271fae;
            if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, symbol)) {
                m2264x1378447b();
                return channelSegment.retrieveElement$kotlinx_coroutines_core(i);
            }
        }
        while (true) {
            Object state$kotlinx_coroutines_core2 = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core2 != null) {
                symbol6 = BufferedChannelKt.f1825x1378447b;
                if (state$kotlinx_coroutines_core2 != symbol6) {
                    if (state$kotlinx_coroutines_core2 == BufferedChannelKt.BUFFERED) {
                        symbol7 = BufferedChannelKt.f1829x34271fae;
                        if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, symbol7)) {
                            m2264x1378447b();
                            return channelSegment.retrieveElement$kotlinx_coroutines_core(i);
                        }
                    } else {
                        symbol8 = BufferedChannelKt.f1830x95f25580;
                        if (state$kotlinx_coroutines_core2 == symbol8) {
                            symbol9 = BufferedChannelKt.f1835x8c6fc18a;
                            return symbol9;
                        }
                        symbol10 = BufferedChannelKt.f1828x9e171bf9;
                        if (state$kotlinx_coroutines_core2 == symbol10) {
                            symbol11 = BufferedChannelKt.f1835x8c6fc18a;
                            return symbol11;
                        }
                        if (state$kotlinx_coroutines_core2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
                            symbol13 = BufferedChannelKt.f1827x9738a56c;
                            if (state$kotlinx_coroutines_core2 != symbol13) {
                                symbol14 = BufferedChannelKt.f1826x75d576dc;
                                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, symbol14)) {
                                    boolean z = state$kotlinx_coroutines_core2 instanceof C1295xec5e1b4c;
                                    if (z) {
                                        state$kotlinx_coroutines_core2 = ((C1295xec5e1b4c) state$kotlinx_coroutines_core2).f5711xfbe0c504;
                                    }
                                    if (m2277x952a0a9e(state$kotlinx_coroutines_core2, channelSegment, i)) {
                                        symbol17 = BufferedChannelKt.f1829x34271fae;
                                        channelSegment.setState$kotlinx_coroutines_core(i, symbol17);
                                        m2264x1378447b();
                                        return channelSegment.retrieveElement$kotlinx_coroutines_core(i);
                                    }
                                    symbol15 = BufferedChannelKt.f1830x95f25580;
                                    channelSegment.setState$kotlinx_coroutines_core(i, symbol15);
                                    channelSegment.onCancelledRequest(i, false);
                                    if (z) {
                                        m2264x1378447b();
                                    }
                                    symbol16 = BufferedChannelKt.f1835x8c6fc18a;
                                    return symbol16;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            m2264x1378447b();
                            symbol12 = BufferedChannelKt.f1835x8c6fc18a;
                            return symbol12;
                        }
                    }
                }
            }
            if (j < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                symbol2 = BufferedChannelKt.f1828x9e171bf9;
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, symbol2)) {
                    m2264x1378447b();
                    symbol3 = BufferedChannelKt.f1835x8c6fc18a;
                    return symbol3;
                }
            } else {
                if (obj == null) {
                    symbol4 = BufferedChannelKt.f1834xd2bcb0cf;
                    return symbol4;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, obj)) {
                    m2264x1378447b();
                    symbol5 = BufferedChannelKt.f1833x1db10c9d;
                    return symbol5;
                }
            }
        }
    }

    /* renamed from: 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡, reason: contains not printable characters */
    public final int m2279x4440ab85(ChannelSegment channelSegment, int i, Object obj, long j, Object obj2, boolean z) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        while (true) {
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core != null) {
                symbol2 = BufferedChannelKt.f1825x1378447b;
                if (state$kotlinx_coroutines_core != symbol2) {
                    symbol3 = BufferedChannelKt.f1831x3db60231;
                    if (state$kotlinx_coroutines_core != symbol3) {
                        symbol4 = BufferedChannelKt.f1828x9e171bf9;
                        if (state$kotlinx_coroutines_core == symbol4) {
                            channelSegment.cleanElement$kotlinx_coroutines_core(i);
                            return 5;
                        }
                        if (state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                            channelSegment.cleanElement$kotlinx_coroutines_core(i);
                            isClosedForSend();
                            return 4;
                        }
                        channelSegment.cleanElement$kotlinx_coroutines_core(i);
                        if (state$kotlinx_coroutines_core instanceof C1295xec5e1b4c) {
                            state$kotlinx_coroutines_core = ((C1295xec5e1b4c) state$kotlinx_coroutines_core).f5711xfbe0c504;
                        }
                        if (m2276xad53da1a(state$kotlinx_coroutines_core, obj)) {
                            symbol7 = BufferedChannelKt.f1829x34271fae;
                            channelSegment.setState$kotlinx_coroutines_core(i, symbol7);
                            onReceiveDequeued();
                            return 0;
                        }
                        symbol5 = BufferedChannelKt.f1831x3db60231;
                        Object andSetState$kotlinx_coroutines_core = channelSegment.getAndSetState$kotlinx_coroutines_core(i, symbol5);
                        symbol6 = BufferedChannelKt.f1831x3db60231;
                        if (andSetState$kotlinx_coroutines_core != symbol6) {
                            channelSegment.onCancelledRequest(i, true);
                        }
                        return 5;
                    }
                    channelSegment.cleanElement$kotlinx_coroutines_core(i);
                    return 5;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else if (m2262xfbe0c504(j) && !z) {
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else if (z) {
                symbol = BufferedChannelKt.f1830x95f25580;
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, symbol)) {
                    channelSegment.onCancelledRequest(i, false);
                    return 4;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, obj2)) {
                    return 2;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel() {
        cancelImpl$kotlinx_coroutines_core(null);
    }

    public static final KFunction access$bindCancellationFun(BufferedChannel bufferedChannel, Function1 function1) {
        bufferedChannel.getClass();
        return new C0465xe275586d(bufferedChannel, 0);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel(@Nullable CancellationException cause) {
        cancelImpl$kotlinx_coroutines_core(cause);
    }

    public /* synthetic */ BufferedChannel(int i, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : function1);
    }
}
