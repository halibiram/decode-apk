package kotlinx.coroutines;

import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0513x476a4a0c;
import defpackage.C0577xfd52c4da;
import defpackage.C0578x2696c5f2;
import defpackage.C0698x7c2d0124;
import defpackage.C0885xce2e5585;
import defpackage.C0893xc79fc11b;
import defpackage.C0902x2a985365;
import defpackage.C0903xbe8a9b66;
import defpackage.C0904x698af4e0;
import defpackage.C0905x83cf5b7;
import defpackage.C0906x83a5fc61;
import defpackage.C0907x5a76b510;
import defpackage.C0908x61b90715;
import defpackage.C0909x548acde4;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectClause0;
import kotlinx.coroutines.selects.SelectClause0Impl;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\n\u008b\u0001\u008c\u0001\u008d\u0001\u008e\u0001\u008b\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0004¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0012\u001a\u00060\u0010j\u0002`\u0011¢\u0006\u0004\b\u0012\u0010\u0013J#\u0010\u0017\u001a\u00060\u0010j\u0002`\u0011*\u00020\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0004¢\u0006\u0004\b\u0017\u0010\u0018J6\u0010 \u001a\u00020\u001f2'\u0010\u001e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0014¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\t0\u0019j\u0002`\u001d¢\u0006\u0004\b \u0010!JF\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00042'\u0010\u001e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0014¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\t0\u0019j\u0002`\u001d¢\u0006\u0004\b \u0010$J\u001f\u0010)\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%H\u0000¢\u0006\u0004\b'\u0010(J\u0010\u0010*\u001a\u00020\tH\u0086@¢\u0006\u0004\b*\u0010+J\u0017\u0010.\u001a\u00020\t2\u0006\u0010&\u001a\u00020%H\u0000¢\u0006\u0004\b,\u0010-J\u001f\u0010/\u001a\u00020\t2\u000e\u0010\u001c\u001a\n\u0018\u00010\u0010j\u0004\u0018\u0001`\u0011H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0015H\u0014¢\u0006\u0004\b1\u00102J\u0019\u0010/\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014H\u0017¢\u0006\u0004\b/\u00103J\u0017\u00104\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b4\u00105J\u0015\u00107\u001a\u00020\t2\u0006\u00106\u001a\u00020\u0003¢\u0006\u0004\b7\u00108J\u0017\u00109\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b9\u00103J\u0017\u0010:\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b:\u00103J\u0019\u0010>\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010;H\u0000¢\u0006\u0004\b<\u0010=J(\u0010B\u001a\u00020?2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0014H\u0080\b¢\u0006\u0004\b@\u0010AJ\u0013\u0010C\u001a\u00060\u0010j\u0002`\u0011H\u0016¢\u0006\u0004\bC\u0010\u0013J\u0019\u0010F\u001a\u00020\u00042\b\u0010D\u001a\u0004\u0018\u00010;H\u0000¢\u0006\u0004\bE\u0010=J\u001b\u0010I\u001a\u0004\u0018\u00010;2\b\u0010D\u001a\u0004\u0018\u00010;H\u0000¢\u0006\u0004\bG\u0010HJ\u0015\u0010L\u001a\u00020K2\u0006\u0010J\u001a\u00020\u0002¢\u0006\u0004\bL\u0010MJ\u0017\u0010P\u001a\u00020\t2\u0006\u0010N\u001a\u00020\u0014H\u0010¢\u0006\u0004\bO\u00105J\u0019\u0010\"\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\"\u00105J\u0017\u0010Q\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\u0014H\u0014¢\u0006\u0004\bQ\u00103J\u0019\u0010S\u001a\u00020\t2\b\u0010R\u001a\u0004\u0018\u00010;H\u0014¢\u0006\u0004\bS\u0010TJ\u0019\u0010U\u001a\u00020\t2\b\u0010R\u001a\u0004\u0018\u00010;H\u0014¢\u0006\u0004\bU\u0010TJ\u000f\u0010V\u001a\u00020\u0015H\u0016¢\u0006\u0004\bV\u00102J\u000f\u0010W\u001a\u00020\u0015H\u0007¢\u0006\u0004\bW\u00102J\u000f\u0010Y\u001a\u00020\u0015H\u0010¢\u0006\u0004\bX\u00102J\u000f\u0010Z\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\bZ\u0010[J\u0011\u0010^\u001a\u0004\u0018\u00010;H\u0000¢\u0006\u0004\b\\\u0010]J\u0012\u0010_\u001a\u0004\u0018\u00010;H\u0084@¢\u0006\u0004\b_\u0010+R\u0015\u0010c\u001a\u0006\u0012\u0002\b\u00030`8F¢\u0006\u0006\u001a\u0004\ba\u0010bR(\u0010i\u001a\u0004\u0018\u00010K2\b\u0010d\u001a\u0004\u0018\u00010K8@@@X\u0080\u000e¢\u0006\f\u001a\u0004\be\u0010f\"\u0004\bg\u0010hR\u0016\u0010\b\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bj\u0010kR\u0016\u0010R\u001a\u0004\u0018\u00010;8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bl\u0010]R\u0014\u0010m\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bm\u0010\rR\u0011\u0010n\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bn\u0010\rR\u0011\u0010o\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bo\u0010\rR\u0016\u0010q\u001a\u0004\u0018\u00010\u00148DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bp\u0010[R\u0014\u0010s\u001a\u00020\u00048DX\u0084\u0004¢\u0006\u0006\u001a\u0004\br\u0010\rR\u0017\u0010x\u001a\u00020t8F¢\u0006\f\u0012\u0004\bw\u0010\u000f\u001a\u0004\bu\u0010vR\u0014\u0010z\u001a\u00020\u00048PX\u0090\u0004¢\u0006\u0006\u001a\u0004\by\u0010\rR\u0017\u0010~\u001a\b\u0012\u0004\u0012\u00020\u00010{8F¢\u0006\u0006\u001a\u0004\b|\u0010}R\u0014\u0010\u007f\u001a\u00020\u00048TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u007f\u0010\rR\u0016\u0010\u0081\u0001\u001a\u00020\u00048PX\u0090\u0004¢\u0006\u0007\u001a\u0005\b\u0080\u0001\u0010\rR\u0013\u0010\u0082\u0001\u001a\u00020\u00048F¢\u0006\u0007\u001a\u0005\b\u0082\u0001\u0010\rR#\u0010\u0087\u0001\u001a\u0007\u0012\u0002\b\u00030\u0083\u00018DX\u0084\u0004¢\u0006\u000f\u0012\u0005\b\u0086\u0001\u0010\u000f\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0015\u0010\u0089\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010;0\u0088\u00018\u0002X\u0082\u0004R\u0015\u0010\u008a\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010K0\u0088\u00018\u0002X\u0082\u0004¨\u0006\u008f\u0001"}, d2 = {"Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/ChildJob;", "Lkotlinx/coroutines/ParentJob;", "", "active", "<init>", "(Z)V", "parent", "", "initParentJob", "(Lkotlinx/coroutines/Job;)V", "start", "()Z", "onStart", "()V", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "getCancellationException", "()Ljava/util/concurrent/CancellationException;", "", "", "message", "toCancellationException", "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "cause", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletion", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "onCancelling", "invokeImmediately", "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/JobNode;", "node", "invokeOnCompletionInternal$kotlinx_coroutines_core", "(ZLkotlinx/coroutines/JobNode;)Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletionInternal", "join", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeNode$kotlinx_coroutines_core", "(Lkotlinx/coroutines/JobNode;)V", "removeNode", "cancel", "(Ljava/util/concurrent/CancellationException;)V", "cancellationExceptionMessage", "()Ljava/lang/String;", "(Ljava/lang/Throwable;)Z", "cancelInternal", "(Ljava/lang/Throwable;)V", "parentJob", "parentCancelled", "(Lkotlinx/coroutines/ParentJob;)V", "childCancelled", "cancelCoroutine", "", "cancelImpl$kotlinx_coroutines_core", "(Ljava/lang/Object;)Z", "cancelImpl", "Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException$kotlinx_coroutines_core", "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException", "getChildJobCancellationCause", "proposedUpdate", "makeCompleting$kotlinx_coroutines_core", "makeCompleting", "makeCompletingOnce$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "makeCompletingOnce", "child", "Lkotlinx/coroutines/ChildHandle;", "attachChild", "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;", "exception", "handleOnCompletionException$kotlinx_coroutines_core", "handleOnCompletionException", "handleJobException", "state", "onCompletionInternal", "(Ljava/lang/Object;)V", "afterCompletion", "toString", "toDebugString", "nameString$kotlinx_coroutines_core", "nameString", "getCompletionExceptionOrNull", "()Ljava/lang/Throwable;", "getCompletedInternal$kotlinx_coroutines_core", "()Ljava/lang/Object;", "getCompletedInternal", "awaitInternal", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "key", "value", "getParentHandle$kotlinx_coroutines_core", "()Lkotlinx/coroutines/ChildHandle;", "setParentHandle$kotlinx_coroutines_core", "(Lkotlinx/coroutines/ChildHandle;)V", "parentHandle", "getParent", "()Lkotlinx/coroutines/Job;", "getState$kotlinx_coroutines_core", "isActive", "isCompleted", "isCancelled", "getCompletionCause", "completionCause", "getCompletionCauseHandled", "completionCauseHandled", "Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin$annotations", "onJoin", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", "children", "isScopedCoroutine", "getHandlesException$kotlinx_coroutines_core", "handlesException", "isCompletedExceptionally", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwaitInternal", "()Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwaitInternal$annotations", "onAwaitInternal", "Lkotlinx/atomicfu/AtomicRef;", "_state", "_parentHandle", "딁땩돸둣됴듟돨돸뎠땜둣듌땡땡둘뎠뎰도뎸듸딀두땳뒀딜듔땝땩됴듼땮돸되땤딄딐됨듼땲되둠땜두딁뒘뒾듌딻돴도딹땲땅땲둘땬됴땵뎽땤드땮뒘둑땃땹땔뒬땹땍도딅땹딎뎡땰돳디땤뎸땔둔되듽딀든뒋땮땡듐뒙둥돛딝디뒀듻땀땍뎬땭두땤뒵듸따딅땋뎸땬딹듻둘딐땬땤딅딄둑듰둔뒨됐된됨뒙들됫땣땨", "딁땤뎻땦땰듼땤돴듻둠디뒬돷뎰딄뒙듐땠땅듨뒈땨둣도땳땩돷뒛땟돨듰딹듟땍딸듼뎨디뒛뒼든듬뒵디듰땱땜딨뒬땝둥딜딟돠땳땪돵뒙뒨둑듐뒵뒋듸딝땦땔뒬땍땣땧뎨땄뎬둬들돷돼땫됴든듼돠딐땱딎둠뒛듬돛딞들됐땬땭뒐딄딹뎸뎽땠딹뒋뎽뒼땲딸드땨두뎨딎디돳됫뎨딠땣둡땅듨뒘뎡딌땃땣땨돛든땹", "딁땃딀듌돛듽땳딹듐딠땟뒼딞돷땜뎽땋드땝딃딃돰딄둡뒋뒹됫뎬땜뒼둣둡땤듼둥땔땯딄둔뒈딀땦땹듽둑듰둠땸땋돝든땵돳돨딐땦땋땟뒹도뎬듟뒨땡땲뒹뒹땩뒛땟딸땟따딤땸듔돠뒛듔땥둣땥돴땲따뒤됫듐딌뒋돠뎸땭됨땠땧뒐땐땨뒼뎰둬땬뒀둑뒤뎹뒉도땲딞땯돷따딀땫뒷뎰땠딽듻땧뒉땹땦땸뎽듌뒋땋", "딁딝돨딝둥딟땨뒻돤땭땜딄땤돴뎨딐딽듽땵둑도땵땭땻들딹돴땜땁딹땝뒼땍땁딐뒀뒵땥딃땯딐땋땣땩뒐뒐둘땵돝땨땁땧돰따따둡땲뒀땱돵딻딐뒤땯땩뎹듔돨땰땔딟뒬될땝딌땃듸땰뒛땠뎨돸돴뒉땅딜땸돝돼듌듬땐뒀땭듔딟돼땳뒝뒤땜땳둘든될땍뒙뒝딄딄돷땅땯둑뒨뒵땤됐땳돵돛딨땃듼딅듨뒵땀딀뎽", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 7 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 8 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 9 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1583:1\n732#1,3:1587\n361#1,2:1597\n363#1,5:1602\n368#1,5:1608\n373#1,2:1616\n361#1,2:1618\n363#1,5:1623\n368#1,5:1629\n373#1,2:1637\n169#1,2:1645\n734#1:1647\n536#1:1648\n169#1,2:1649\n537#1,15:1651\n169#1,2:1666\n169#1,2:1668\n169#1,2:1681\n732#1,3:1683\n732#1,3:1686\n169#1,2:1689\n732#1,3:1691\n169#1,2:1694\n169#1,2:1698\n169#1,2:1700\n536#1:1704\n169#1,2:1705\n537#1,15:1707\n1#2:1584\n1#2:1607\n1#2:1628\n29#3:1585\n29#3:1696\n29#3:1702\n16#4:1586\n16#4:1697\n16#4:1703\n295#5,2:1590\n295#5,2:1592\n23#6:1594\n159#7:1595\n159#7:1596\n149#7,4:1722\n273#8,3:1599\n276#8,3:1613\n273#8,3:1620\n276#8,3:1634\n273#8,6:1639\n426#9,11:1670\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n241#1:1587,3\n324#1:1597,2\n324#1:1602,5\n324#1:1608,5\n324#1:1616,2\n357#1:1618,2\n357#1:1623,5\n357#1:1629,5\n357#1:1637,2\n377#1:1645,2\n422#1:1647\n468#1:1648\n468#1:1649,2\n468#1:1651,15\n536#1:1666,2\n579#1:1668,2\n621#1:1681,2\n648#1:1683,3\n657#1:1686,3\n721#1:1689,2\n750#1:1691,3\n763#1:1694,2\n836#1:1698,2\n858#1:1700,2\n1023#1:1704\n1023#1:1705,2\n1023#1:1707,15\n324#1:1607\n357#1:1628\n204#1:1585\n766#1:1696\n911#1:1702\n204#1:1586\n766#1:1697\n911#1:1703\n252#1:1590,2\n256#1:1592,2\n264#1:1594\n270#1:1595\n272#1:1596\n1327#1:1722,4\n324#1:1599,3\n324#1:1613,3\n357#1:1620,3\n357#1:1634,3\n362#1:1639,6\n585#1:1670,11\n*E\n"})
/* loaded from: classes3.dex */
public class JobSupport implements Job, ChildJob, ParentJob {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f1789xfbe0c504 = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f1790x3271d0aa = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    public JobSupport(boolean z) {
        this._state$volatile = z ? JobSupportKt.f1796x9e171bf9 : JobSupportKt.f1795x9738a56c;
    }

    public static final void access$continueCompleting(JobSupport jobSupport, C0904x698af4e0 c0904x698af4e0, C0578x2696c5f2 c0578x2696c5f2, Object obj) {
        jobSupport.getClass();
        C0578x2696c5f2 m2231x3db60231 = m2231x3db60231(c0578x2696c5f2);
        if (m2231x3db60231 == null || !jobSupport.m2246x85f0360e(c0904x698af4e0, m2231x3db60231, obj)) {
            c0904x698af4e0.f5038xfbe0c504.close(2);
            C0578x2696c5f2 m2231x3db602312 = m2231x3db60231(c0578x2696c5f2);
            if (m2231x3db602312 == null || !jobSupport.m2246x85f0360e(c0904x698af4e0, m2231x3db602312, obj)) {
                jobSupport.afterCompletion(jobSupport.m2237x9738a56c(c0904x698af4e0, obj));
            }
        }
    }

    public static final Object access$onAwaitInternalProcessResFunc(JobSupport jobSupport, Object obj, Object obj2) {
        jobSupport.getClass();
        if (!(obj2 instanceof CompletedExceptionally)) {
            return obj2;
        }
        throw ((CompletedExceptionally) obj2).cause;
    }

    public static final void access$onAwaitInternalRegFunc(JobSupport jobSupport, SelectInstance selectInstance, Object obj) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                    state$kotlinx_coroutines_core = JobSupportKt.unboxState(state$kotlinx_coroutines_core);
                }
                selectInstance.selectInRegistrationPhase(state$kotlinx_coroutines_core);
                return;
            }
        } while (jobSupport.m2244x8c6fc18a(state$kotlinx_coroutines_core) < 0);
        selectInstance.disposeOnCompletion(JobKt.invokeOnCompletion$default(jobSupport, false, new C0905x83cf5b7(jobSupport, selectInstance, 0), 1, null));
    }

    public static final void access$registerSelectForOnJoin(JobSupport jobSupport, SelectInstance selectInstance, Object obj) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                selectInstance.selectInRegistrationPhase(Unit.INSTANCE);
                return;
            }
        } while (jobSupport.m2244x8c6fc18a(state$kotlinx_coroutines_core) < 0);
        selectInstance.disposeOnCompletion(JobKt.invokeOnCompletion$default(jobSupport, false, new C0905x83cf5b7(jobSupport, selectInstance, 1), 1, null));
    }

    public static /* synthetic */ JobCancellationException defaultCancellationException$kotlinx_coroutines_core$default(JobSupport jobSupport, String str, Throwable th, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                th = null;
            }
            if (str == null) {
                str = jobSupport.cancellationExceptionMessage();
            }
            return new JobCancellationException(str, th, jobSupport);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: defaultCancellationException");
    }

    public static /* synthetic */ void getOnAwaitInternal$annotations() {
    }

    public static /* synthetic */ void getOnJoin$annotations() {
    }

    public static /* synthetic */ CancellationException toCancellationException$default(JobSupport jobSupport, Throwable th, String str, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                str = null;
            }
            return jobSupport.toCancellationException(th, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
    }

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public static C0578x2696c5f2 m2231x3db60231(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.isRemoved()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getPrevNode();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode();
            if (!lockFreeLinkedListNode.isRemoved()) {
                if (lockFreeLinkedListNode instanceof C0578x2696c5f2) {
                    return (C0578x2696c5f2) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
    public static String m2232x1aebc6d9(Object obj) {
        if (obj instanceof C0904x698af4e0) {
            C0904x698af4e0 c0904x698af4e0 = (C0904x698af4e0) obj;
            if (c0904x698af4e0.m3471x1378447b()) {
                return "Cancelling";
            }
            if (C0904x698af4e0.f5035x3271d0aa.get(c0904x698af4e0) != 1) {
                return "Active";
            }
            return "Completing";
        }
        if (obj instanceof Incomplete) {
            if (((Incomplete) obj).isActive()) {
                return "Active";
            }
            return "New";
        }
        if (obj instanceof CompletedExceptionally) {
            return "Cancelled";
        }
        return "Completed";
    }

    public void afterCompletion(@Nullable Object state) {
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final ChildHandle attachChild(@NotNull ChildJob child) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        CompletedExceptionally completedExceptionally;
        CompletedExceptionally completedExceptionally2;
        C0578x2696c5f2 c0578x2696c5f2 = new C0578x2696c5f2(child);
        c0578x2696c5f2.setJob(this);
        loop0: while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof C0698x7c2d0124) {
                C0698x7c2d0124 c0698x7c2d0124 = (C0698x7c2d0124) state$kotlinx_coroutines_core;
                if (c0698x7c2d0124.f4544xfbe0c504) {
                    do {
                        atomicReferenceFieldUpdater = f1789xfbe0c504;
                        if (atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, c0578x2696c5f2)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == state$kotlinx_coroutines_core);
                } else {
                    m2242x1db10c9d(c0698x7c2d0124);
                }
            } else {
                Throwable th = null;
                if (state$kotlinx_coroutines_core instanceof Incomplete) {
                    NodeList list = ((Incomplete) state$kotlinx_coroutines_core).getList();
                    if (list == null) {
                        Intrinsics.checkNotNull(state$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                        m2243xd2bcb0cf((JobNode) state$kotlinx_coroutines_core);
                    } else if (!list.addLast(c0578x2696c5f2, 7)) {
                        boolean addLast = list.addLast(c0578x2696c5f2, 3);
                        Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
                        if (state$kotlinx_coroutines_core2 instanceof C0904x698af4e0) {
                            th = ((C0904x698af4e0) state$kotlinx_coroutines_core2).m3470x3271d0aa();
                        } else {
                            if (state$kotlinx_coroutines_core2 instanceof CompletedExceptionally) {
                                completedExceptionally2 = (CompletedExceptionally) state$kotlinx_coroutines_core2;
                            } else {
                                completedExceptionally2 = null;
                            }
                            if (completedExceptionally2 != null) {
                                th = completedExceptionally2.cause;
                            }
                        }
                        c0578x2696c5f2.invoke(th);
                        if (!addLast) {
                            return NonDisposableHandle.INSTANCE;
                        }
                    }
                } else {
                    Object state$kotlinx_coroutines_core3 = getState$kotlinx_coroutines_core();
                    if (state$kotlinx_coroutines_core3 instanceof CompletedExceptionally) {
                        completedExceptionally = (CompletedExceptionally) state$kotlinx_coroutines_core3;
                    } else {
                        completedExceptionally = null;
                    }
                    if (completedExceptionally != null) {
                        th = completedExceptionally.cause;
                    }
                    c0578x2696c5f2.invoke(th);
                    return NonDisposableHandle.INSTANCE;
                }
            }
        }
        return c0578x2696c5f2;
    }

    @Nullable
    public final Object awaitInternal(@NotNull Continuation<Object> continuation) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                    return JobSupportKt.unboxState(state$kotlinx_coroutines_core);
                }
                throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
            }
        } while (m2244x8c6fc18a(state$kotlinx_coroutines_core) < 0);
        return m2233xfbe0c504(continuation);
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        cancel((CancellationException) null);
    }

    public final boolean cancelCoroutine(@Nullable Throwable cause) {
        return cancelImpl$kotlinx_coroutines_core(cause);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003d, code lost:
    
        r0 = kotlinx.coroutines.JobSupportKt.f1791xfbe0c504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.COMPLETING_WAITING_CHILDREN) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
    
        r0 = m2245xab142723(r0, new kotlinx.coroutines.CompletedExceptionally(m2236x75d576dc(r11), false, 2, null));
        r1 = kotlinx.coroutines.JobSupportKt.f1792x3271d0aa;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
    
        if (r0 == r1) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
    
        r1 = kotlinx.coroutines.JobSupportKt.f1791xfbe0c504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
    
        if (r0 != r1) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004d, code lost:
    
        r1 = getState$kotlinx_coroutines_core();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
    
        if ((r1 instanceof defpackage.C0904x698af4e0) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ab, code lost:
    
        if ((r1 instanceof kotlinx.coroutines.Incomplete) == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ad, code lost:
    
        if (r0 != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00af, code lost:
    
        r0 = m2236x75d576dc(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b3, code lost:
    
        r6 = (kotlinx.coroutines.Incomplete) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000c, code lost:
    
        if (getOnCancelComplete$kotlinx_coroutines_core() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ba, code lost:
    
        if (r6.isActive() == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e0, code lost:
    
        r6 = m2245xab142723(r1, new kotlinx.coroutines.CompletedExceptionally(r0, false, 2, null));
        r7 = kotlinx.coroutines.JobSupportKt.f1791xfbe0c504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ed, code lost:
    
        if (r6 == r7) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ef, code lost:
    
        r1 = kotlinx.coroutines.JobSupportKt.f1792x3271d0aa;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f3, code lost:
    
        if (r6 == r1) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f5, code lost:
    
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
    
        r0 = getState$kotlinx_coroutines_core();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x010e, code lost:
    
        throw new java.lang.IllegalStateException(("Cannot happen in " + r1).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bc, code lost:
    
        r7 = m2239x34271fae(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c0, code lost:
    
        if (r7 != null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c3, code lost:
    
        r8 = new defpackage.C0904x698af4e0(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c8, code lost:
    
        r1 = kotlinx.coroutines.JobSupport.f1789xfbe0c504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ce, code lost:
    
        if (r1.compareAndSet(r10, r6, r8) == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0014, code lost:
    
        if ((r0 instanceof kotlinx.coroutines.Incomplete) == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00dc, code lost:
    
        if (r1.get(r10) == r6) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00d0, code lost:
    
        m2241x9d12c1f4(r7, r0);
        r11 = kotlinx.coroutines.JobSupportKt.f1791xfbe0c504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0072, code lost:
    
        r0 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x010f, code lost:
    
        r11 = kotlinx.coroutines.JobSupportKt.f1793x1378447b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0055, code lost:
    
        monitor-enter(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0056, code lost:
    
        r3 = (defpackage.C0904x698af4e0) r1;
        r3.getClass();
        r3 = defpackage.C0904x698af4e0.f5037x75d576dc.get(r3);
        r6 = kotlinx.coroutines.JobSupportKt.f1794x75d576dc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0066, code lost:
    
        if (r3 != r6) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0068, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x006b, code lost:
    
        if (r3 == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x006d, code lost:
    
        r11 = kotlinx.coroutines.JobSupportKt.f1793x1378447b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0071, code lost:
    
        monitor-exit(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0077, code lost:
    
        r3 = ((defpackage.C0904x698af4e0) r1).m3471x1378447b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0018, code lost:
    
        if ((r0 instanceof defpackage.C0904x698af4e0) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x007e, code lost:
    
        if (r11 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0080, code lost:
    
        if (r3 != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x008e, code lost:
    
        r11 = ((defpackage.C0904x698af4e0) r1).m3470x3271d0aa();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0095, code lost:
    
        if (r3 != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0097, code lost:
    
        r2 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0098, code lost:
    
        monitor-exit(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0099, code lost:
    
        if (r2 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x009b, code lost:
    
        m2241x9d12c1f4(((defpackage.C0904x698af4e0) r1).f5038xfbe0c504, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00a2, code lost:
    
        r11 = kotlinx.coroutines.JobSupportKt.f1791xfbe0c504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0082, code lost:
    
        if (r0 != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
    
        r1 = (defpackage.C0904x698af4e0) r0;
        r1.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0084, code lost:
    
        r0 = m2236x75d576dc(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0088, code lost:
    
        ((defpackage.C0904x698af4e0) r1).m3469xfbe0c504(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x006a, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0115, code lost:
    
        r11 = kotlinx.coroutines.JobSupportKt.f1791xfbe0c504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0119, code lost:
    
        if (r0 != r11) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x011b, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x011f, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.COMPLETING_WAITING_CHILDREN) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
    
        if (defpackage.C0904x698af4e0.f5035x3271d0aa.get(r1) != 1) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0122, code lost:
    
        r11 = kotlinx.coroutines.JobSupportKt.f1793x1378447b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0126, code lost:
    
        if (r0 != r11) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0129, code lost:
    
        afterCompletion(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:?, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean cancelImpl$kotlinx_coroutines_core(@Nullable Object cause) {
        Object obj;
        obj = JobSupportKt.f1791xfbe0c504;
        Throwable th = null;
    }

    public void cancelInternal(@NotNull Throwable cause) {
        cancelImpl$kotlinx_coroutines_core(cause);
    }

    @NotNull
    public String cancellationExceptionMessage() {
        return "Job was cancelled";
    }

    public boolean childCancelled(@NotNull Throwable cause) {
        if (cause instanceof CancellationException) {
            return true;
        }
        if (cancelImpl$kotlinx_coroutines_core(cause) && getHandlesException()) {
            return true;
        }
        return false;
    }

    public boolean complete(Object obj) {
        return makeCompleting$kotlinx_coroutines_core(obj);
    }

    @NotNull
    public final JobCancellationException defaultCancellationException$kotlinx_coroutines_core(@Nullable String message, @Nullable Throwable cause) {
        if (message == null) {
            message = cancellationExceptionMessage();
        }
        return new JobCancellationException(message, cause, this);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) Job.DefaultImpls.fold(this, r, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        return (E) Job.DefaultImpls.get(this, key);
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final CancellationException getCancellationException() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof C0904x698af4e0) {
            Throwable m3470x3271d0aa = ((C0904x698af4e0) state$kotlinx_coroutines_core).m3470x3271d0aa();
            if (m3470x3271d0aa != null) {
                CancellationException cancellationException = toCancellationException(m3470x3271d0aa, DebugStringsKt.getClassSimpleName(this) + " is cancelling");
                if (cancellationException != null) {
                    return cancellationException;
                }
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
            if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                return toCancellationException$default(this, ((CompletedExceptionally) state$kotlinx_coroutines_core).cause, null, 1, null);
            }
            return new JobCancellationException(DebugStringsKt.getClassSimpleName(this) + " has completed normally", null, this);
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    @Override // kotlinx.coroutines.ParentJob
    @NotNull
    public CancellationException getChildJobCancellationCause() {
        CancellationException cancellationException;
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        CancellationException cancellationException2 = null;
        if (state$kotlinx_coroutines_core instanceof C0904x698af4e0) {
            cancellationException = ((C0904x698af4e0) state$kotlinx_coroutines_core).m3470x3271d0aa();
        } else if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            cancellationException = ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        } else if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
            cancellationException = null;
        } else {
            throw new IllegalStateException(("Cannot be cancelling child in this state: " + state$kotlinx_coroutines_core).toString());
        }
        if (cancellationException instanceof CancellationException) {
            cancellationException2 = cancellationException;
        }
        if (cancellationException2 == null) {
            return new JobCancellationException("Parent job is ".concat(m2232x1aebc6d9(state$kotlinx_coroutines_core)), cancellationException, this);
        }
        return cancellationException2;
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final Sequence<Job> getChildren() {
        return SequencesKt__SequenceBuilderKt.sequence(new C0906x83a5fc61(this, null));
    }

    public Object getCompleted() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }

    @Nullable
    public final Object getCompletedInternal$kotlinx_coroutines_core() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
            if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                return JobSupportKt.unboxState(state$kotlinx_coroutines_core);
            }
            throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        }
        throw new IllegalStateException("This job has not completed yet");
    }

    @Nullable
    public final Throwable getCompletionCause() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof C0904x698af4e0) {
            Throwable m3470x3271d0aa = ((C0904x698af4e0) state$kotlinx_coroutines_core).m3470x3271d0aa();
            if (m3470x3271d0aa == null) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            return m3470x3271d0aa;
        }
        if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
            if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                return ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
            }
            return null;
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    public final boolean getCompletionCauseHandled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if ((state$kotlinx_coroutines_core instanceof CompletedExceptionally) && ((CompletedExceptionally) state$kotlinx_coroutines_core).getHandled()) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Throwable getCompletionExceptionOrNull() {
        CompletedExceptionally completedExceptionally;
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
            if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                completedExceptionally = (CompletedExceptionally) state$kotlinx_coroutines_core;
            } else {
                completedExceptionally = null;
            }
            if (completedExceptionally == null) {
                return null;
            }
            return completedExceptionally.cause;
        }
        throw new IllegalStateException("This job has not completed yet");
    }

    /* renamed from: getHandlesException$kotlinx_coroutines_core */
    public boolean getHandlesException() {
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public final CoroutineContext.Key<?> getKey() {
        return Job.INSTANCE;
    }

    @NotNull
    public final SelectClause1<?> getOnAwaitInternal() {
        C0907x5a76b510 c0907x5a76b510 = C0907x5a76b510.f5047xfbe0c504;
        Intrinsics.checkNotNull(c0907x5a76b510, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0907x5a76b510, 3);
        C0908x61b90715 c0908x61b90715 = C0908x61b90715.f5048xfbe0c504;
        Intrinsics.checkNotNull(c0908x61b90715, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0908x61b90715, 3), null, 8, null);
    }

    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return false;
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final SelectClause0 getOnJoin() {
        C0909x548acde4 c0909x548acde4 = C0909x548acde4.f5049xfbe0c504;
        Intrinsics.checkNotNull(c0909x548acde4, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        return new SelectClause0Impl(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0909x548acde4, 3), null, 4, null);
    }

    @Override // kotlinx.coroutines.Job
    @Nullable
    public Job getParent() {
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            return parentHandle$kotlinx_coroutines_core.getParent();
        }
        return null;
    }

    @Nullable
    public final ChildHandle getParentHandle$kotlinx_coroutines_core() {
        return (ChildHandle) f1790x3271d0aa.get(this);
    }

    @Nullable
    public final Object getState$kotlinx_coroutines_core() {
        return f1789xfbe0c504.get(this);
    }

    public boolean handleJobException(@NotNull Throwable exception) {
        return false;
    }

    public final void initParentJob(@Nullable Job parent) {
        if (parent == null) {
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
            return;
        }
        parent.start();
        ChildHandle attachChild = parent.attachChild(this);
        setParentHandle$kotlinx_coroutines_core(attachChild);
        if (isCompleted()) {
            attachChild.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
        }
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final DisposableHandle invokeOnCompletion(@NotNull Function1<? super Throwable, Unit> handler) {
        return invokeOnCompletionInternal$kotlinx_coroutines_core(true, new C0513x476a4a0c(handler, 2));
    }

    @NotNull
    public final DisposableHandle invokeOnCompletionInternal$kotlinx_coroutines_core(boolean invokeImmediately, @NotNull JobNode node) {
        boolean z;
        Throwable th;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        CompletedExceptionally completedExceptionally;
        boolean addLast;
        C0904x698af4e0 c0904x698af4e0;
        Throwable th2;
        node.setJob(this);
        loop0: while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            z = true;
            th = null;
            if (state$kotlinx_coroutines_core instanceof C0698x7c2d0124) {
                C0698x7c2d0124 c0698x7c2d0124 = (C0698x7c2d0124) state$kotlinx_coroutines_core;
                if (c0698x7c2d0124.f4544xfbe0c504) {
                    do {
                        atomicReferenceFieldUpdater = f1789xfbe0c504;
                        if (atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, node)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == state$kotlinx_coroutines_core);
                } else {
                    m2242x1db10c9d(c0698x7c2d0124);
                }
            } else if (state$kotlinx_coroutines_core instanceof Incomplete) {
                Incomplete incomplete = (Incomplete) state$kotlinx_coroutines_core;
                NodeList list = incomplete.getList();
                if (list == null) {
                    Intrinsics.checkNotNull(state$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    m2243xd2bcb0cf((JobNode) state$kotlinx_coroutines_core);
                } else {
                    if (node.getOnCancelling()) {
                        if (incomplete instanceof C0904x698af4e0) {
                            c0904x698af4e0 = (C0904x698af4e0) incomplete;
                        } else {
                            c0904x698af4e0 = null;
                        }
                        if (c0904x698af4e0 != null) {
                            th2 = c0904x698af4e0.m3470x3271d0aa();
                        } else {
                            th2 = null;
                        }
                        if (th2 == null) {
                            addLast = list.addLast(node, 5);
                        } else {
                            if (invokeImmediately) {
                                node.invoke(th2);
                            }
                            return NonDisposableHandle.INSTANCE;
                        }
                    } else {
                        addLast = list.addLast(node, 1);
                    }
                    if (addLast) {
                        break;
                    }
                }
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            return node;
        }
        if (invokeImmediately) {
            Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core2 instanceof CompletedExceptionally) {
                completedExceptionally = (CompletedExceptionally) state$kotlinx_coroutines_core2;
            } else {
                completedExceptionally = null;
            }
            if (completedExceptionally != null) {
                th = completedExceptionally.cause;
            }
            node.invoke(th);
        }
        return NonDisposableHandle.INSTANCE;
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if ((state$kotlinx_coroutines_core instanceof Incomplete) && ((Incomplete) state$kotlinx_coroutines_core).isActive()) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCancelled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally) && (!(state$kotlinx_coroutines_core instanceof C0904x698af4e0) || !((C0904x698af4e0) state$kotlinx_coroutines_core).m3471x1378447b())) {
            return false;
        }
        return true;
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof Incomplete);
    }

    public final boolean isCompletedExceptionally() {
        return getState$kotlinx_coroutines_core() instanceof CompletedExceptionally;
    }

    public boolean isScopedCoroutine() {
        return false;
    }

    @Override // kotlinx.coroutines.Job
    @Nullable
    public final Object join(@NotNull Continuation<? super Unit> continuation) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                JobKt.ensureActive(continuation.getContext());
                return Unit.INSTANCE;
            }
        } while (m2244x8c6fc18a(state$kotlinx_coroutines_core) < 0);
        Object m2240x95f25580 = m2240x95f25580(continuation);
        if (m2240x95f25580 == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return m2240x95f25580;
        }
        return Unit.INSTANCE;
    }

    public final boolean makeCompleting$kotlinx_coroutines_core(@Nullable Object proposedUpdate) {
        Object m2245xab142723;
        Symbol symbol;
        Symbol symbol2;
        do {
            m2245xab142723 = m2245xab142723(getState$kotlinx_coroutines_core(), proposedUpdate);
            symbol = JobSupportKt.f1791xfbe0c504;
            if (m2245xab142723 == symbol) {
                return false;
            }
            if (m2245xab142723 != JobSupportKt.COMPLETING_WAITING_CHILDREN) {
                symbol2 = JobSupportKt.f1792x3271d0aa;
            } else {
                return true;
            }
        } while (m2245xab142723 == symbol2);
        afterCompletion(m2245xab142723);
        return true;
    }

    @Nullable
    public final Object makeCompletingOnce$kotlinx_coroutines_core(@Nullable Object proposedUpdate) {
        Object m2245xab142723;
        Symbol symbol;
        CompletedExceptionally completedExceptionally;
        Symbol symbol2;
        do {
            m2245xab142723 = m2245xab142723(getState$kotlinx_coroutines_core(), proposedUpdate);
            symbol = JobSupportKt.f1791xfbe0c504;
            if (m2245xab142723 != symbol) {
                symbol2 = JobSupportKt.f1792x3271d0aa;
            } else {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + proposedUpdate;
                Throwable th = null;
                if (proposedUpdate instanceof CompletedExceptionally) {
                    completedExceptionally = (CompletedExceptionally) proposedUpdate;
                } else {
                    completedExceptionally = null;
                }
                if (completedExceptionally != null) {
                    th = completedExceptionally.cause;
                }
                throw new IllegalStateException(str, th);
            }
        } while (m2245xab142723 == symbol2);
        return m2245xab142723;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return Job.DefaultImpls.minusKey(this, key);
    }

    @NotNull
    public String nameString$kotlinx_coroutines_core() {
        return DebugStringsKt.getClassSimpleName(this);
    }

    public void onCancelling(@Nullable Throwable cause) {
    }

    public void onCompletionInternal(@Nullable Object state) {
    }

    public void onStart() {
    }

    @Override // kotlinx.coroutines.ChildJob
    public final void parentCancelled(@NotNull ParentJob parentJob) {
        cancelImpl$kotlinx_coroutines_core(parentJob);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return Job.DefaultImpls.plus(this, coroutineContext);
    }

    public final void removeNode$kotlinx_coroutines_core(@NotNull JobNode node) {
        C0698x7c2d0124 c0698x7c2d0124;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof JobNode) {
                if (state$kotlinx_coroutines_core == node) {
                    c0698x7c2d0124 = JobSupportKt.f1796x9e171bf9;
                    do {
                        atomicReferenceFieldUpdater = f1789xfbe0c504;
                        if (atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, c0698x7c2d0124)) {
                            return;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == state$kotlinx_coroutines_core);
                } else {
                    return;
                }
            } else {
                if ((state$kotlinx_coroutines_core instanceof Incomplete) && ((Incomplete) state$kotlinx_coroutines_core).getList() != null) {
                    node.mo2347remove();
                    return;
                }
                return;
            }
        }
    }

    public final void setParentHandle$kotlinx_coroutines_core(@Nullable ChildHandle childHandle) {
        f1790x3271d0aa.set(this, childHandle);
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        int m2244x8c6fc18a;
        do {
            m2244x8c6fc18a = m2244x8c6fc18a(getState$kotlinx_coroutines_core());
            if (m2244x8c6fc18a == 0) {
                return false;
            }
        } while (m2244x8c6fc18a != 1);
        return true;
    }

    @NotNull
    public final CancellationException toCancellationException(@NotNull Throwable th, @Nullable String str) {
        CancellationException cancellationException;
        if (th instanceof CancellationException) {
            cancellationException = (CancellationException) th;
        } else {
            cancellationException = null;
        }
        if (cancellationException == null) {
            if (str == null) {
                str = cancellationExceptionMessage();
            }
            cancellationException = new JobCancellationException(str, th, this);
        }
        return cancellationException;
    }

    @InternalCoroutinesApi
    @NotNull
    public final String toDebugString() {
        return nameString$kotlinx_coroutines_core() + '{' + m2232x1aebc6d9(getState$kotlinx_coroutines_core()) + '}';
    }

    @NotNull
    public String toString() {
        return toDebugString() + '@' + DebugStringsKt.getHexAddress(this);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Object m2233xfbe0c504(Continuation continuation) {
        C0902x2a985365 c0902x2a985365 = new C0902x2a985365(this, IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        c0902x2a985365.initCancellability();
        CancellableContinuationKt.disposeOnCancellation(c0902x2a985365, JobKt.invokeOnCompletion$default(this, false, new C0513x476a4a0c(c0902x2a985365, 3), 1, null));
        Object result = c0902x2a985365.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final boolean m2234x3271d0aa(Throwable th) {
        if (isScopedCoroutine()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null && parentHandle$kotlinx_coroutines_core != NonDisposableHandle.INSTANCE) {
            if (parentHandle$kotlinx_coroutines_core.childCancelled(th) || z) {
                return true;
            }
            return false;
        }
        return z;
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final void m2235x1378447b(Incomplete incomplete, Object obj) {
        CompletedExceptionally completedExceptionally;
        Throwable th;
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            parentHandle$kotlinx_coroutines_core.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
        }
        CompletionHandlerException completionHandlerException = null;
        if (obj instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) obj;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally != null) {
            th = completedExceptionally.cause;
        } else {
            th = null;
        }
        if (incomplete instanceof JobNode) {
            try {
                ((JobNode) incomplete).invoke(th);
                return;
            } catch (Throwable th2) {
                handleOnCompletionException$kotlinx_coroutines_core(new CompletionHandlerException("Exception in completion handler " + incomplete + " for " + this, th2));
                return;
            }
        }
        NodeList list = incomplete.getList();
        if (list != null) {
            list.close(1);
            Object next = list.getNext();
            Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(lockFreeLinkedListNode, list); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
                if (lockFreeLinkedListNode instanceof JobNode) {
                    try {
                        ((JobNode) lockFreeLinkedListNode).invoke(th);
                    } catch (Throwable th3) {
                        if (completionHandlerException != null) {
                            AbstractC0720xaa9ccb5a.addSuppressed(completionHandlerException, th3);
                        } else {
                            completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNode + " for " + this, th3);
                        }
                    }
                }
            }
            if (completionHandlerException != null) {
                handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
            }
        }
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Throwable m2236x75d576dc(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof Throwable;
        }
        if (z) {
            Throwable th = (Throwable) obj;
            if (th == null) {
                return new JobCancellationException(cancellationExceptionMessage(), null, this);
            }
            return th;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((ParentJob) obj).getChildJobCancellationCause();
    }

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final Object m2237x9738a56c(C0904x698af4e0 c0904x698af4e0, Object obj) {
        CompletedExceptionally completedExceptionally;
        Throwable th;
        boolean m3471x1378447b;
        Throwable m2238x9e171bf9;
        if (obj instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) obj;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally != null) {
            th = completedExceptionally.cause;
        } else {
            th = null;
        }
        synchronized (c0904x698af4e0) {
            m3471x1378447b = c0904x698af4e0.m3471x1378447b();
            ArrayList<Throwable> m3472x75d576dc = c0904x698af4e0.m3472x75d576dc(th);
            m2238x9e171bf9 = m2238x9e171bf9(c0904x698af4e0, m3472x75d576dc);
            if (m2238x9e171bf9 != null && m3472x75d576dc.size() > 1) {
                Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(m3472x75d576dc.size()));
                for (Throwable th2 : m3472x75d576dc) {
                    if (th2 != m2238x9e171bf9 && th2 != m2238x9e171bf9 && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                        AbstractC0720xaa9ccb5a.addSuppressed(m2238x9e171bf9, th2);
                    }
                }
            }
        }
        if (m2238x9e171bf9 != null && m2238x9e171bf9 != th) {
            obj = new CompletedExceptionally(m2238x9e171bf9, false, 2, null);
        }
        if (m2238x9e171bf9 != null && (m2234x3271d0aa(m2238x9e171bf9) || handleJobException(m2238x9e171bf9))) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            ((CompletedExceptionally) obj).makeHandled();
        }
        if (!m3471x1378447b) {
            onCancelling(m2238x9e171bf9);
        }
        onCompletionInternal(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1789xfbe0c504;
        Object boxIncomplete = JobSupportKt.boxIncomplete(obj);
        while (!atomicReferenceFieldUpdater.compareAndSet(this, c0904x698af4e0, boxIncomplete) && atomicReferenceFieldUpdater.get(this) == c0904x698af4e0) {
        }
        m2235x1378447b(c0904x698af4e0, obj);
        return obj;
    }

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final Throwable m2238x9e171bf9(C0904x698af4e0 c0904x698af4e0, ArrayList arrayList) {
        Object obj;
        Object obj2 = null;
        if (arrayList.isEmpty()) {
            if (!c0904x698af4e0.m3471x1378447b()) {
                return null;
            }
            return new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (!(((Throwable) obj) instanceof CancellationException)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) arrayList.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                Throwable th3 = (Throwable) next;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj2 = next;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final NodeList m2239x34271fae(Incomplete incomplete) {
        NodeList list = incomplete.getList();
        if (list == null) {
            if (incomplete instanceof C0698x7c2d0124) {
                return new NodeList();
            }
            if (incomplete instanceof JobNode) {
                m2243xd2bcb0cf((JobNode) incomplete);
                return null;
            }
            throw new IllegalStateException(("State should have list: " + incomplete).toString());
        }
        return list;
    }

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public final Object m2240x95f25580(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationKt.disposeOnCancellation(cancellableContinuationImpl, JobKt.invokeOnCompletion$default(this, false, new C0577xfd52c4da(cancellableContinuationImpl, 1), 1, null));
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return result;
        }
        return Unit.INSTANCE;
    }

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public final void m2241x9d12c1f4(NodeList nodeList, Throwable th) {
        onCancelling(th);
        nodeList.close(4);
        Object next = nodeList.getNext();
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(lockFreeLinkedListNode, nodeList); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
            if ((lockFreeLinkedListNode instanceof JobNode) && ((JobNode) lockFreeLinkedListNode).getOnCancelling()) {
                try {
                    ((JobNode) lockFreeLinkedListNode).invoke(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        AbstractC0720xaa9ccb5a.addSuppressed(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNode + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
        m2234x3271d0aa(th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [딀둔듟돶듸둠듨듨뎽뒈딸돰뒐뒨땹땤뒙땨땮딽듔딎뎸뎨됨딀딝땟뒹딻됫딤딻땦돼딃땯뒷딠돵땻뎰땰듐듐땨뒛땵돠따땨됐듬둘뎹딨뎽딨딅돷돷듽딎땥돴둘땜땪땬뒋듌뎸땜들드땲땜됴돰땬듐땸되되딻땤둬땯땄됨땯딎땅땐딤땱듐돶듟돷돶뎬딅땤뒉뒻딄땠됩됴되둔둔딀땝듻땳땔둥둣뒝뎰땀돳돤땬득뒹둑돤] */
    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public final void m2242x1db10c9d(C0698x7c2d0124 c0698x7c2d0124) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        NodeList nodeList = new NodeList();
        if (!c0698x7c2d0124.f4544xfbe0c504) {
            nodeList = new C0885xce2e5585(nodeList);
        }
        do {
            atomicReferenceFieldUpdater = f1789xfbe0c504;
            if (atomicReferenceFieldUpdater.compareAndSet(this, c0698x7c2d0124, nodeList)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == c0698x7c2d0124);
    }

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public final void m2243xd2bcb0cf(JobNode jobNode) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        jobNode.addOneIfEmpty(new NodeList());
        LockFreeLinkedListNode nextNode = jobNode.getNextNode();
        do {
            atomicReferenceFieldUpdater = f1789xfbe0c504;
            if (atomicReferenceFieldUpdater.compareAndSet(this, jobNode, nextNode)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == jobNode);
    }

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁, reason: contains not printable characters */
    public final int m2244x8c6fc18a(Object obj) {
        C0698x7c2d0124 c0698x7c2d0124;
        boolean z = obj instanceof C0698x7c2d0124;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1789xfbe0c504;
        if (z) {
            if (!((C0698x7c2d0124) obj).f4544xfbe0c504) {
                c0698x7c2d0124 = JobSupportKt.f1796x9e171bf9;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c0698x7c2d0124)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        return -1;
                    }
                }
                onStart();
                return 1;
            }
            return 0;
        }
        if (!(obj instanceof C0885xce2e5585)) {
            return 0;
        }
        NodeList nodeList = ((C0885xce2e5585) obj).f5008xfbe0c504;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, nodeList)) {
            if (atomicReferenceFieldUpdater.get(this) != obj) {
                return -1;
            }
        }
        onStart();
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Throwable, T] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* renamed from: 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨, reason: contains not printable characters */
    public final Object m2245xab142723(Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Symbol symbol;
        C0904x698af4e0 c0904x698af4e0;
        boolean z;
        CompletedExceptionally completedExceptionally;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        if (!(obj instanceof Incomplete)) {
            symbol5 = JobSupportKt.f1791xfbe0c504;
            return symbol5;
        }
        ?? r1 = 0;
        if (((obj instanceof C0698x7c2d0124) || (obj instanceof JobNode)) && !(obj instanceof C0578x2696c5f2) && !(obj2 instanceof CompletedExceptionally)) {
            Incomplete incomplete = (Incomplete) obj;
            Object boxIncomplete = JobSupportKt.boxIncomplete(obj2);
            do {
                atomicReferenceFieldUpdater = f1789xfbe0c504;
                if (atomicReferenceFieldUpdater.compareAndSet(this, incomplete, boxIncomplete)) {
                    onCancelling(null);
                    onCompletionInternal(obj2);
                    m2235x1378447b(incomplete, obj2);
                    return obj2;
                }
            } while (atomicReferenceFieldUpdater.get(this) == incomplete);
            symbol = JobSupportKt.f1792x3271d0aa;
            return symbol;
        }
        Incomplete incomplete2 = (Incomplete) obj;
        NodeList m2239x34271fae = m2239x34271fae(incomplete2);
        if (m2239x34271fae == null) {
            symbol4 = JobSupportKt.f1792x3271d0aa;
            return symbol4;
        }
        if (incomplete2 instanceof C0904x698af4e0) {
            c0904x698af4e0 = (C0904x698af4e0) incomplete2;
        } else {
            c0904x698af4e0 = null;
        }
        if (c0904x698af4e0 == null) {
            c0904x698af4e0 = new C0904x698af4e0(m2239x34271fae, null);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (c0904x698af4e0) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C0904x698af4e0.f5035x3271d0aa;
            if (atomicIntegerFieldUpdater.get(c0904x698af4e0) == 1) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                symbol3 = JobSupportKt.f1791xfbe0c504;
                return symbol3;
            }
            atomicIntegerFieldUpdater.set(c0904x698af4e0, 1);
            if (c0904x698af4e0 != incomplete2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f1789xfbe0c504;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, incomplete2, c0904x698af4e0)) {
                    if (atomicReferenceFieldUpdater2.get(this) != incomplete2) {
                        symbol2 = JobSupportKt.f1792x3271d0aa;
                        return symbol2;
                    }
                }
            }
            boolean m3471x1378447b = c0904x698af4e0.m3471x1378447b();
            if (obj2 instanceof CompletedExceptionally) {
                completedExceptionally = (CompletedExceptionally) obj2;
            } else {
                completedExceptionally = null;
            }
            if (completedExceptionally != null) {
                c0904x698af4e0.m3469xfbe0c504(completedExceptionally.cause);
            }
            Throwable m3470x3271d0aa = c0904x698af4e0.m3470x3271d0aa();
            if (!m3471x1378447b) {
                r1 = m3470x3271d0aa;
            }
            objectRef.element = r1;
            if (r1 != 0) {
                m2241x9d12c1f4(m2239x34271fae, r1);
            }
            C0578x2696c5f2 m2231x3db60231 = m2231x3db60231(m2239x34271fae);
            if (m2231x3db60231 != null && m2246x85f0360e(c0904x698af4e0, m2231x3db60231, obj2)) {
                return JobSupportKt.COMPLETING_WAITING_CHILDREN;
            }
            m2239x34271fae.close(2);
            C0578x2696c5f2 m2231x3db602312 = m2231x3db60231(m2239x34271fae);
            if (m2231x3db602312 != null && m2246x85f0360e(c0904x698af4e0, m2231x3db602312, obj2)) {
                return JobSupportKt.COMPLETING_WAITING_CHILDREN;
            }
            return m2237x9738a56c(c0904x698af4e0, obj2);
        }
    }

    /* renamed from: 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐, reason: contains not printable characters */
    public final boolean m2246x85f0360e(C0904x698af4e0 c0904x698af4e0, C0578x2696c5f2 c0578x2696c5f2, Object obj) {
        while (JobKt.invokeOnCompletion(c0578x2696c5f2.f4286x75d576dc, false, new C0903xbe8a9b66(this, c0904x698af4e0, c0578x2696c5f2, obj)) == NonDisposableHandle.INSTANCE) {
            c0578x2696c5f2 = m2231x3db60231(c0578x2696c5f2);
            if (c0578x2696c5f2 == null) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Added since 1.2.0 for binary compatibility with versions <= 1.1.x")
    public /* synthetic */ boolean cancel(Throwable cause) {
        Throwable jobCancellationException;
        if (cause == null || (jobCancellationException = toCancellationException$default(this, cause, null, 1, null)) == null) {
            jobCancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(jobCancellationException);
        return true;
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    public Job plus(@NotNull Job job) {
        return Job.DefaultImpls.plus((Job) this, job);
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final DisposableHandle invokeOnCompletion(boolean onCancelling, boolean invokeImmediately, @NotNull Function1<? super Throwable, Unit> handler) {
        JobNode c0513x476a4a0c;
        if (onCancelling) {
            c0513x476a4a0c = new C0893xc79fc11b(handler);
        } else {
            c0513x476a4a0c = new C0513x476a4a0c(handler, 2);
        }
        return invokeOnCompletionInternal$kotlinx_coroutines_core(invokeImmediately, c0513x476a4a0c);
    }

    @Override // kotlinx.coroutines.Job
    public void cancel(@Nullable CancellationException cause) {
        if (cause == null) {
            cause = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cause);
    }

    public void handleOnCompletionException$kotlinx_coroutines_core(@NotNull Throwable exception) {
        throw exception;
    }
}
