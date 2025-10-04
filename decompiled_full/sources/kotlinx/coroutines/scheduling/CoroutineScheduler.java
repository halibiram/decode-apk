package kotlinx.coroutines.scheduling;

import androidx.work.WorkRequest;
import com.tknetwork.tunnel.core.VpnProfile;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.Closeable;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlinx.coroutines.AbstractTimeSource;
import kotlinx.coroutines.AbstractTimeSourceKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 C2\u00020\u00012\u00020\u0002:\u0003CDEB+\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u0011\u001a\u00020\u00102\n\u0010\r\u001a\u00060\fR\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00132\n\u0010\r\u001a\u00060\fR\u00020\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0006H\u0086\b¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u001c\u001a\u00020\u00102\n\u0010\u001b\u001a\u00060\u0019j\u0002`\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010!\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0006¢\u0006\u0004\b!\u0010\"J1\u0010'\u001a\u00020\u00102\n\u0010#\u001a\u00060\u0019j\u0002`\u001a2\f\b\u0002\u0010%\u001a\u00060\u0013j\u0002`$2\b\b\u0002\u0010&\u001a\u00020\u0013¢\u0006\u0004\b'\u0010(J%\u0010*\u001a\u00020)2\n\u0010#\u001a\u00060\u0019j\u0002`\u001a2\n\u0010%\u001a\u00060\u0013j\u0002`$¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020\u0010¢\u0006\u0004\b,\u0010\u001fJ\u000f\u0010-\u001a\u00020\bH\u0016¢\u0006\u0004\b-\u0010.J\u0015\u00100\u001a\u00020\u00102\u0006\u0010/\u001a\u00020)¢\u0006\u0004\b0\u00101R\u0014\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u00102R\u0014\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u00102R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u00103R\u0014\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u00104R\u0014\u00106\u001a\u0002058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0014\u00108\u001a\u0002058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b8\u00107R\u001e\u0010:\u001a\f\u0012\b\u0012\u00060\fR\u00020\u0000098\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0011\u0010<\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b<\u0010=R\u000b\u0010?\u001a\u00020>8\u0002X\u0082\u0004R\u000b\u0010@\u001a\u00020>8\u0002X\u0082\u0004R\u000b\u0010B\u001a\u00020A8\u0002X\u0082\u0004¨\u0006F"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;", "", "corePoolSize", "maxPoolSize", "", "idleWorkerKeepAliveNs", "", "schedulerName", "<init>", "(IIJLjava/lang/String;)V", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "worker", "oldIndex", "newIndex", "", "parkedWorkersStackTopUpdate", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V", "", "parkedWorkersStackPush", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z", "state", "availableCpuPermits", "(J)I", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "command", "execute", "(Ljava/lang/Runnable;)V", "close", "()V", "timeout", "shutdown", "(J)V", "block", "Lkotlinx/coroutines/scheduling/TaskContext;", "taskContext", "fair", "dispatch", "(Ljava/lang/Runnable;ZZ)V", "Lkotlinx/coroutines/scheduling/Task;", "createTask", "(Ljava/lang/Runnable;Z)Lkotlinx/coroutines/scheduling/Task;", "signalCpuWork", "toString", "()Ljava/lang/String;", "task", "runSafely", "(Lkotlinx/coroutines/scheduling/Task;)V", "I", "J", "Ljava/lang/String;", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalCpuQueue", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalBlockingQueue", "Lkotlinx/coroutines/internal/ResizableAtomicArray;", "workers", "Lkotlinx/coroutines/internal/ResizableAtomicArray;", "isTerminated", "()Z", "Lkotlinx/atomicfu/AtomicLong;", "parkedWorkersStack", "controlState", "Lkotlinx/atomicfu/AtomicBoolean;", "_isTerminated", "Companion", "Worker", "WorkerState", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,1041:1\n286#1:1044\n284#1:1045\n284#1:1046\n286#1:1047\n281#1:1050\n282#1,5:1051\n292#1:1057\n284#1:1058\n285#1:1059\n284#1:1062\n285#1:1063\n281#1:1064\n289#1:1065\n284#1:1066\n284#1:1069\n285#1:1070\n286#1:1071\n77#2:1042\n77#2:1056\n77#2:1067\n1#3:1043\n29#4:1048\n29#4:1060\n16#5:1049\n16#5:1061\n619#6:1068\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n282#1:1044\n289#1:1045\n290#1:1046\n299#1:1047\n348#1:1050\n377#1:1051,5\n400#1:1057\n444#1:1058\n445#1:1059\n481#1:1062\n482#1:1063\n488#1:1064\n497#1:1065\n497#1:1066\n578#1:1069\n579#1:1070\n580#1:1071\n120#1:1042\n397#1:1056\n514#1:1067\n348#1:1048\n477#1:1060\n348#1:1049\n477#1:1061\n521#1:1068\n*E\n"})
/* loaded from: classes3.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    public static final int MAX_SUPPORTED_POOL_SIZE = 2097150;
    public static final int MIN_SUPPORTED_POOL_SIZE = 1;
    private volatile /* synthetic */ int _isTerminated$volatile;
    private volatile /* synthetic */ long controlState$volatile;

    @JvmField
    public final int corePoolSize;

    @JvmField
    @NotNull
    public final GlobalQueue globalBlockingQueue;

    @JvmField
    @NotNull
    public final GlobalQueue globalCpuQueue;

    @JvmField
    public final long idleWorkerKeepAliveNs;

    @JvmField
    public final int maxPoolSize;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    @JvmField
    @NotNull
    public final String schedulerName;

    @JvmField
    @NotNull
    public final ResizableAtomicArray<Worker> workers;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f2429xfbe0c504 = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f2430x3271d0aa = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2431x1378447b = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");

    @JvmField
    @NotNull
    public static final Symbol NOT_IN_STACK = new Symbol("NOT_IN_STACK");

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\b¢\u0006\u0004\b\u0018\u0010\u0019R*\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0014\u0010!\u001a\u00020 8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010#\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010$R$\u0010&\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0016\u0010\u0016\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010,R\u0012\u00100\u001a\u00020-8Æ\u0002¢\u0006\u0006\u001a\u0004\b.\u0010/R\b\u00102\u001a\u0002018\u0006¨\u00063"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "Ljava/lang/Thread;", "", "index", "<init>", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "newState", "", "tryReleaseCpu", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z", "", "run", "()V", "", "runSingleTask", "()J", "isIo", "()Z", "upperBound", "nextInt", "(I)I", "mayHaveLocalTasks", "Lkotlinx/coroutines/scheduling/Task;", "findTask", "(Z)Lkotlinx/coroutines/scheduling/Task;", "indexInArray", "I", "getIndexInArray", "()I", "setIndexInArray", "(I)V", "Lkotlinx/coroutines/scheduling/WorkQueue;", "localQueue", "Lkotlinx/coroutines/scheduling/WorkQueue;", "state", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "nextParkedWorker", "Ljava/lang/Object;", "getNextParkedWorker", "()Ljava/lang/Object;", "setNextParkedWorker", "(Ljava/lang/Object;)V", "Z", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "getScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "scheduler", "Lkotlinx/atomicfu/AtomicInt;", "workerCtl", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 5 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,1041:1\n298#2,2:1042\n286#2:1044\n300#2,4:1045\n305#2:1049\n295#2,2:1050\n295#2,2:1055\n281#2:1059\n290#2:1060\n284#2:1061\n281#2:1062\n1#3:1052\n77#4:1053\n77#4:1054\n29#5:1057\n16#6:1058\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n684#1:1042,2\n684#1:1044\n684#1:1045,4\n699#1:1049\n773#1:1050,2\n821#1:1055,2\n872#1:1059\n898#1:1060\n898#1:1061\n971#1:1062\n812#1:1053\n815#1:1054\n868#1:1057\n868#1:1058\n*E\n"})
    /* loaded from: classes3.dex */
    public final class Worker extends Thread {

        /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
        public static final /* synthetic */ AtomicIntegerFieldUpdater f2432x9e171bf9 = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl$volatile");
        private volatile int indexInArray;

        @JvmField
        @NotNull
        public final WorkQueue localQueue;

        @JvmField
        public boolean mayHaveLocalTasks;

        @Nullable
        private volatile Object nextParkedWorker;

        @JvmField
        @NotNull
        public WorkerState state;
        private volatile /* synthetic */ int workerCtl$volatile;

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final Ref.ObjectRef f2433xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public long f2434x3271d0aa;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
        public long f2435x1378447b;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
        public int f2436x75d576dc;

        public Worker(int i) {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.this.getClass().getClassLoader());
            this.localQueue = new WorkQueue();
            this.f2433xfbe0c504 = new Ref.ObjectRef();
            this.state = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.NOT_IN_STACK;
            int nanoTime = (int) System.nanoTime();
            this.f2436x75d576dc = nanoTime == 0 ? 42 : nanoTime;
            setIndexInArray(i);
        }

        @Nullable
        public final Task findTask(boolean mayHaveLocalTasks) {
            Task m2367xfbe0c504;
            Task m2367xfbe0c5042;
            CoroutineScheduler coroutineScheduler;
            long j;
            WorkerState workerState = this.state;
            WorkerState workerState2 = WorkerState.CPU_ACQUIRED;
            boolean z = true;
            CoroutineScheduler coroutineScheduler2 = CoroutineScheduler.this;
            if (workerState != workerState2) {
                AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.f2430x3271d0aa;
                do {
                    coroutineScheduler = CoroutineScheduler.this;
                    j = atomicLongFieldUpdater.get(coroutineScheduler);
                    if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                        Task pollBlocking = this.localQueue.pollBlocking();
                        if (pollBlocking == null) {
                            Task removeFirstOrNull = coroutineScheduler2.globalBlockingQueue.removeFirstOrNull();
                            if (removeFirstOrNull == null) {
                                return m2368x3271d0aa(1);
                            }
                            return removeFirstOrNull;
                        }
                        return pollBlocking;
                    }
                } while (!CoroutineScheduler.f2430x3271d0aa.compareAndSet(coroutineScheduler, j, j - 4398046511104L));
                this.state = WorkerState.CPU_ACQUIRED;
            }
            if (mayHaveLocalTasks) {
                if (nextInt(coroutineScheduler2.corePoolSize * 2) != 0) {
                    z = false;
                }
                if (!z || (m2367xfbe0c5042 = m2367xfbe0c504()) == null) {
                    Task poll = this.localQueue.poll();
                    if (poll == null) {
                        if (!z && (m2367xfbe0c504 = m2367xfbe0c504()) != null) {
                            return m2367xfbe0c504;
                        }
                    } else {
                        return poll;
                    }
                } else {
                    return m2367xfbe0c5042;
                }
            } else {
                Task m2367xfbe0c5043 = m2367xfbe0c504();
                if (m2367xfbe0c5043 != null) {
                    return m2367xfbe0c5043;
                }
            }
            return m2368x3271d0aa(3);
        }

        public final int getIndexInArray() {
            return this.indexInArray;
        }

        @Nullable
        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        @NotNull
        public final CoroutineScheduler getScheduler() {
            return CoroutineScheduler.this;
        }

        public final /* synthetic */ int getWorkerCtl$volatile() {
            return this.workerCtl$volatile;
        }

        public final boolean isIo() {
            if (this.state == WorkerState.BLOCKING) {
                return true;
            }
            return false;
        }

        public final int nextInt(int upperBound) {
            int i = this.f2436x75d576dc;
            int i2 = i ^ (i << 13);
            int i3 = i2 ^ (i2 >> 17);
            int i4 = i3 ^ (i3 << 5);
            this.f2436x75d576dc = i4;
            int i5 = upperBound - 1;
            if ((i5 & upperBound) == 0) {
                return i4 & i5;
            }
            return (i4 & Integer.MAX_VALUE) % upperBound;
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x0002, code lost:
        
            continue;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            loop0: while (true) {
                boolean z = false;
                while (!CoroutineScheduler.this.isTerminated()) {
                    WorkerState workerState = this.state;
                    WorkerState workerState2 = WorkerState.TERMINATED;
                    if (workerState == workerState2) {
                        break loop0;
                    }
                    Task findTask = findTask(this.mayHaveLocalTasks);
                    if (findTask != null) {
                        this.f2435x1378447b = 0L;
                        this.f2434x3271d0aa = 0L;
                        if (this.state == WorkerState.PARKING) {
                            this.state = WorkerState.BLOCKING;
                        }
                        boolean z2 = findTask.taskContext;
                        CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
                        if (z2) {
                            if (tryReleaseCpu(WorkerState.BLOCKING)) {
                                coroutineScheduler.signalCpuWork();
                            }
                            coroutineScheduler.runSafely(findTask);
                            CoroutineScheduler.f2430x3271d0aa.addAndGet(coroutineScheduler, -2097152L);
                            if (this.state != workerState2) {
                                this.state = WorkerState.DORMANT;
                            }
                        } else {
                            coroutineScheduler.runSafely(findTask);
                        }
                    } else {
                        this.mayHaveLocalTasks = false;
                        if (this.f2435x1378447b != 0) {
                            if (!z) {
                                z = true;
                            } else {
                                tryReleaseCpu(WorkerState.PARKING);
                                Thread.interrupted();
                                LockSupport.parkNanos(this.f2435x1378447b);
                                this.f2435x1378447b = 0L;
                            }
                        } else if (this.nextParkedWorker != CoroutineScheduler.NOT_IN_STACK) {
                            f2432x9e171bf9.set(this, -1);
                            while (this.nextParkedWorker != CoroutineScheduler.NOT_IN_STACK && f2432x9e171bf9.get(this) == -1 && !CoroutineScheduler.this.isTerminated()) {
                                WorkerState workerState3 = this.state;
                                WorkerState workerState4 = WorkerState.TERMINATED;
                                if (workerState3 == workerState4) {
                                    break;
                                }
                                tryReleaseCpu(WorkerState.PARKING);
                                Thread.interrupted();
                                if (this.f2434x3271d0aa == 0) {
                                    this.f2434x3271d0aa = System.nanoTime() + CoroutineScheduler.this.idleWorkerKeepAliveNs;
                                }
                                LockSupport.parkNanos(CoroutineScheduler.this.idleWorkerKeepAliveNs);
                                if (System.nanoTime() - this.f2434x3271d0aa >= 0) {
                                    this.f2434x3271d0aa = 0L;
                                    CoroutineScheduler coroutineScheduler2 = CoroutineScheduler.this;
                                    synchronized (coroutineScheduler2.workers) {
                                        try {
                                            if (!coroutineScheduler2.isTerminated()) {
                                                if (((int) (CoroutineScheduler.f2430x3271d0aa.get(coroutineScheduler2) & 2097151)) > coroutineScheduler2.corePoolSize) {
                                                    if (f2432x9e171bf9.compareAndSet(this, -1, 1)) {
                                                        int i = this.indexInArray;
                                                        setIndexInArray(0);
                                                        coroutineScheduler2.parkedWorkersStackTopUpdate(this, i, 0);
                                                        int andDecrement = (int) (CoroutineScheduler.f2430x3271d0aa.getAndDecrement(coroutineScheduler2) & 2097151);
                                                        if (andDecrement != i) {
                                                            Worker worker = coroutineScheduler2.workers.get(andDecrement);
                                                            Intrinsics.checkNotNull(worker);
                                                            Worker worker2 = worker;
                                                            coroutineScheduler2.workers.setSynchronized(i, worker2);
                                                            worker2.setIndexInArray(i);
                                                            coroutineScheduler2.parkedWorkersStackTopUpdate(worker2, andDecrement, i);
                                                        }
                                                        coroutineScheduler2.workers.setSynchronized(andDecrement, null);
                                                        this.state = workerState4;
                                                    }
                                                }
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                }
                            }
                        } else {
                            CoroutineScheduler.this.parkedWorkersStackPush(this);
                        }
                    }
                }
                break loop0;
            }
            tryReleaseCpu(WorkerState.TERMINATED);
        }

        public final long runSingleTask() {
            boolean z;
            Task task;
            if (this.state == WorkerState.CPU_ACQUIRED) {
                z = true;
            } else {
                z = false;
            }
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            if (z) {
                task = this.localQueue.pollCpu();
                if (task == null && (task = coroutineScheduler.globalBlockingQueue.removeFirstOrNull()) == null) {
                    task = m2368x3271d0aa(2);
                }
            } else {
                Task pollBlocking = this.localQueue.pollBlocking();
                if (pollBlocking == null && (pollBlocking = coroutineScheduler.globalBlockingQueue.removeFirstOrNull()) == null) {
                    task = m2368x3271d0aa(1);
                } else {
                    task = pollBlocking;
                }
            }
            if (task == null) {
                long j = this.f2435x1378447b;
                if (j == 0) {
                    return -1L;
                }
                return j;
            }
            coroutineScheduler.runSafely(task);
            if (!z) {
                CoroutineScheduler.f2430x3271d0aa.addAndGet(coroutineScheduler, -2097152L);
            }
            return 0L;
        }

        public final void setIndexInArray(int i) {
            String valueOf;
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.schedulerName);
            sb.append("-worker-");
            if (i == 0) {
                valueOf = "TERMINATED";
            } else {
                valueOf = String.valueOf(i);
            }
            sb.append(valueOf);
            setName(sb.toString());
            this.indexInArray = i;
        }

        public final void setNextParkedWorker(@Nullable Object obj) {
            this.nextParkedWorker = obj;
        }

        public final /* synthetic */ void setWorkerCtl$volatile(int i) {
            this.workerCtl$volatile = i;
        }

        public final boolean tryReleaseCpu(@NotNull WorkerState newState) {
            boolean z;
            WorkerState workerState = this.state;
            if (workerState == WorkerState.CPU_ACQUIRED) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                CoroutineScheduler.f2430x3271d0aa.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState != newState) {
                this.state = newState;
            }
            return z;
        }

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final Task m2367xfbe0c504() {
            int nextInt = nextInt(2);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            if (nextInt == 0) {
                Task removeFirstOrNull = coroutineScheduler.globalCpuQueue.removeFirstOrNull();
                if (removeFirstOrNull != null) {
                    return removeFirstOrNull;
                }
                return coroutineScheduler.globalBlockingQueue.removeFirstOrNull();
            }
            Task removeFirstOrNull2 = coroutineScheduler.globalBlockingQueue.removeFirstOrNull();
            if (removeFirstOrNull2 != null) {
                return removeFirstOrNull2;
            }
            return coroutineScheduler.globalCpuQueue.removeFirstOrNull();
        }

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public final Task m2368x3271d0aa(int i) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.f2430x3271d0aa;
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            int i2 = (int) (atomicLongFieldUpdater.get(coroutineScheduler) & 2097151);
            if (i2 < 2) {
                return null;
            }
            int nextInt = nextInt(i2);
            long j = Long.MAX_VALUE;
            for (int i3 = 0; i3 < i2; i3++) {
                nextInt++;
                if (nextInt > i2) {
                    nextInt = 1;
                }
                Worker worker = coroutineScheduler.workers.get(nextInt);
                if (worker != null && worker != this) {
                    WorkQueue workQueue = worker.localQueue;
                    Ref.ObjectRef<Task> objectRef = this.f2433xfbe0c504;
                    long trySteal = workQueue.trySteal(i, objectRef);
                    if (trySteal == -1) {
                        Task task = objectRef.element;
                        objectRef.element = null;
                        return task;
                    }
                    if (trySteal > 0) {
                        j = Math.min(j, trySteal);
                    }
                }
            }
            if (j == Long.MAX_VALUE) {
                j = 0;
            }
            this.f2435x1378447b = j;
            return null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class WorkerState {
        public static final WorkerState BLOCKING;
        public static final WorkerState CPU_ACQUIRED;
        public static final WorkerState DORMANT;
        public static final WorkerState PARKING;
        public static final WorkerState TERMINATED;

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public static final /* synthetic */ WorkerState[] f2438xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public static final /* synthetic */ EnumEntries f2439x3271d0aa;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        static {
            ?? r5 = new Enum("CPU_ACQUIRED", 0);
            CPU_ACQUIRED = r5;
            ?? r6 = new Enum("BLOCKING", 1);
            BLOCKING = r6;
            ?? r7 = new Enum("PARKING", 2);
            PARKING = r7;
            ?? r8 = new Enum("DORMANT", 3);
            DORMANT = r8;
            ?? r9 = new Enum("TERMINATED", 4);
            TERMINATED = r9;
            WorkerState[] workerStateArr = {r5, r6, r7, r8, r9};
            f2438xfbe0c504 = workerStateArr;
            f2439x3271d0aa = EnumEntriesKt.enumEntries(workerStateArr);
        }

        @NotNull
        public static EnumEntries<WorkerState> getEntries() {
            return f2439x3271d0aa;
        }

        public static WorkerState valueOf(String str) {
            return (WorkerState) Enum.valueOf(WorkerState.class, str);
        }

        public static WorkerState[] values() {
            return (WorkerState[]) f2438xfbe0c504.clone();
        }
    }

    public CoroutineScheduler(int i, int i2, long j, @NotNull String str) {
        this.corePoolSize = i;
        this.maxPoolSize = i2;
        this.idleWorkerKeepAliveNs = j;
        this.schedulerName = str;
        if (i < 1) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Core pool size ", " should be at least 1").toString());
        }
        if (i2 < i) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3329x34271fae(i2, i, "Max pool size ", " should be greater than or equals to core pool size ").toString());
        }
        if (i2 > 2097150) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i2, "Max pool size ", " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j > 0) {
            this.globalCpuQueue = new GlobalQueue();
            this.globalBlockingQueue = new GlobalQueue();
            this.workers = new ResizableAtomicArray<>((i + 1) * 2);
            this.controlState$volatile = i << 42;
            return;
        }
        throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
    }

    public static /* synthetic */ void dispatch$default(CoroutineScheduler coroutineScheduler, Runnable runnable, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        coroutineScheduler.dispatch(runnable, z, z2);
    }

    public final int availableCpuPermits(long state) {
        return (int) ((state & 9223367638808264704L) >> 42);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        shutdown(WorkRequest.MIN_BACKOFF_MILLIS);
    }

    @NotNull
    public final Task createTask(@NotNull Runnable block, boolean taskContext) {
        long nanoTime = TasksKt.schedulerTimeSource.nanoTime();
        if (block instanceof Task) {
            Task task = (Task) block;
            task.submissionTime = nanoTime;
            task.taskContext = taskContext;
            return task;
        }
        return TasksKt.asTask(block, nanoTime, taskContext);
    }

    public final void dispatch(@NotNull Runnable block, boolean taskContext, boolean fair) {
        AbstractTimeSource abstractTimeSource;
        long j;
        Worker worker;
        boolean addLast;
        WorkerState workerState;
        abstractTimeSource = AbstractTimeSourceKt.f1751xfbe0c504;
        if (abstractTimeSource != null) {
            abstractTimeSource.trackTask();
        }
        Task createTask = createTask(block, taskContext);
        boolean z = createTask.taskContext;
        if (z) {
            j = f2430x3271d0aa.addAndGet(this, VpnProfile.MAX_EMBED_FILE_SIZE);
        } else {
            j = 0;
        }
        Thread currentThread = Thread.currentThread();
        Worker worker2 = null;
        if (currentThread instanceof Worker) {
            worker = (Worker) currentThread;
        } else {
            worker = null;
        }
        if (worker != null && Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            worker2 = worker;
        }
        if (worker2 != null && (workerState = worker2.state) != WorkerState.TERMINATED && (createTask.taskContext || workerState != WorkerState.BLOCKING)) {
            worker2.mayHaveLocalTasks = true;
            createTask = worker2.localQueue.add(createTask, fair);
        }
        if (createTask != null) {
            if (createTask.taskContext) {
                addLast = this.globalBlockingQueue.addLast(createTask);
            } else {
                addLast = this.globalCpuQueue.addLast(createTask);
            }
            if (!addLast) {
                throw new RejectedExecutionException(AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), this.schedulerName, " was terminated"));
            }
        }
        if (z) {
            if (!m2366x1378447b() && !m2365x3271d0aa(j)) {
                m2366x1378447b();
                return;
            }
            return;
        }
        signalCpuWork();
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable command) {
        dispatch$default(this, command, false, false, 6, null);
    }

    public final boolean isTerminated() {
        if (f2431x1378447b.get(this) == 1) {
            return true;
        }
        return false;
    }

    public final boolean parkedWorkersStackPush(@NotNull Worker worker) {
        long j;
        long j2;
        int indexInArray;
        if (worker.getNextParkedWorker() != NOT_IN_STACK) {
            return false;
        }
        do {
            j = f2429xfbe0c504.get(this);
            j2 = (VpnProfile.MAX_EMBED_FILE_SIZE + j) & (-2097152);
            indexInArray = worker.getIndexInArray();
            worker.setNextParkedWorker(this.workers.get((int) (2097151 & j)));
        } while (!f2429xfbe0c504.compareAndSet(this, j, j2 | indexInArray));
        return true;
    }

    public final void parkedWorkersStackTopUpdate(@NotNull Worker worker, int oldIndex, int newIndex) {
        while (true) {
            long j = f2429xfbe0c504.get(this);
            int i = (int) (2097151 & j);
            long j2 = (VpnProfile.MAX_EMBED_FILE_SIZE + j) & (-2097152);
            if (i == oldIndex) {
                if (newIndex == 0) {
                    Object nextParkedWorker = worker.getNextParkedWorker();
                    while (true) {
                        if (nextParkedWorker == NOT_IN_STACK) {
                            i = -1;
                            break;
                        }
                        if (nextParkedWorker == null) {
                            i = 0;
                            break;
                        }
                        Worker worker2 = (Worker) nextParkedWorker;
                        i = worker2.getIndexInArray();
                        if (i != 0) {
                            break;
                        } else {
                            nextParkedWorker = worker2.getNextParkedWorker();
                        }
                    }
                } else {
                    i = newIndex;
                }
            }
            if (i >= 0) {
                if (f2429xfbe0c504.compareAndSet(this, j, j2 | i)) {
                    return;
                }
            }
        }
    }

    public final void runSafely(@NotNull Task task) {
        AbstractTimeSource abstractTimeSource;
        AbstractTimeSource abstractTimeSource2;
        try {
            task.run();
        } catch (Throwable th) {
            try {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
                abstractTimeSource2 = AbstractTimeSourceKt.f1751xfbe0c504;
                if (abstractTimeSource2 == null) {
                }
            } finally {
                abstractTimeSource = AbstractTimeSourceKt.f1751xfbe0c504;
                if (abstractTimeSource != null) {
                    abstractTimeSource.unTrackTask();
                }
            }
        }
    }

    public final void shutdown(long timeout) {
        Worker worker;
        int i;
        Task removeFirstOrNull;
        if (!f2431x1378447b.compareAndSet(this, 0, 1)) {
            return;
        }
        Thread currentThread = Thread.currentThread();
        Worker worker2 = null;
        if (currentThread instanceof Worker) {
            worker = (Worker) currentThread;
        } else {
            worker = null;
        }
        if (worker != null && Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            worker2 = worker;
        }
        synchronized (this.workers) {
            i = (int) (f2430x3271d0aa.get(this) & 2097151);
        }
        if (1 <= i) {
            int i2 = 1;
            while (true) {
                Worker worker3 = this.workers.get(i2);
                Intrinsics.checkNotNull(worker3);
                Worker worker4 = worker3;
                if (worker4 != worker2) {
                    while (worker4.getState() != Thread.State.TERMINATED) {
                        LockSupport.unpark(worker4);
                        worker4.join(timeout);
                    }
                    worker4.localQueue.offloadAllWorkTo(this.globalBlockingQueue);
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        this.globalBlockingQueue.close();
        this.globalCpuQueue.close();
        while (true) {
            if (worker2 != null) {
                removeFirstOrNull = worker2.findTask(true);
                if (removeFirstOrNull != null) {
                    continue;
                    runSafely(removeFirstOrNull);
                }
            }
            removeFirstOrNull = this.globalCpuQueue.removeFirstOrNull();
            if (removeFirstOrNull == null && (removeFirstOrNull = this.globalBlockingQueue.removeFirstOrNull()) == null) {
                break;
            }
            runSafely(removeFirstOrNull);
        }
        if (worker2 != null) {
            worker2.tryReleaseCpu(WorkerState.TERMINATED);
        }
        f2429xfbe0c504.set(this, 0L);
        f2430x3271d0aa.set(this, 0L);
    }

    public final void signalCpuWork() {
        if (m2366x1378447b() || m2365x3271d0aa(f2430x3271d0aa.get(this))) {
            return;
        }
        m2366x1378447b();
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList();
        int currentLength = this.workers.currentLength();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < currentLength; i6++) {
            Worker worker = this.workers.get(i6);
            if (worker != null) {
                int size$kotlinx_coroutines_core = worker.localQueue.getSize$kotlinx_coroutines_core();
                int i7 = WhenMappings.$EnumSwitchMapping$0[worker.state.ordinal()];
                if (i7 != 1) {
                    if (i7 != 2) {
                        if (i7 != 3) {
                            if (i7 != 4) {
                                if (i7 == 5) {
                                    i5++;
                                } else {
                                    throw new NoWhenBranchMatchedException();
                                }
                            } else {
                                i4++;
                                if (size$kotlinx_coroutines_core > 0) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(size$kotlinx_coroutines_core);
                                    sb.append('d');
                                    arrayList.add(sb.toString());
                                }
                            }
                        } else {
                            i++;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(size$kotlinx_coroutines_core);
                            sb2.append('c');
                            arrayList.add(sb2.toString());
                        }
                    } else {
                        i2++;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(size$kotlinx_coroutines_core);
                        sb3.append('b');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    i3++;
                }
            }
        }
        long j = f2430x3271d0aa.get(this);
        return this.schedulerName + '@' + DebugStringsKt.getHexAddress(this) + "[Pool Size {core = " + this.corePoolSize + ", max = " + this.maxPoolSize + "}, Worker States {CPU = " + i + ", blocking = " + i2 + ", parked = " + i3 + ", dormant = " + i4 + ", terminated = " + i5 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.globalCpuQueue.getSize() + ", global blocking queue size = " + this.globalBlockingQueue.getSize() + ", Control State {created workers= " + ((int) (2097151 & j)) + ", blocking tasks = " + ((int) ((4398044413952L & j) >> 21)) + ", CPUs acquired = " + (this.corePoolSize - ((int) ((9223367638808264704L & j) >> 42))) + "}]";
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final int m2364xfbe0c504() {
        synchronized (this.workers) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = f2430x3271d0aa;
                long j = atomicLongFieldUpdater.get(this);
                int i = (int) (j & 2097151);
                int coerceAtLeast = AbstractC0296x1378447b.coerceAtLeast(i - ((int) ((j & 4398044413952L) >> 21)), 0);
                if (coerceAtLeast >= this.corePoolSize) {
                    return 0;
                }
                if (i >= this.maxPoolSize) {
                    return 0;
                }
                int i2 = ((int) (f2430x3271d0aa.get(this) & 2097151)) + 1;
                if (i2 > 0 && this.workers.get(i2) == null) {
                    Worker worker = new Worker(i2);
                    this.workers.setSynchronized(i2, worker);
                    if (i2 == ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                        int i3 = coerceAtLeast + 1;
                        worker.start();
                        return i3;
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalArgumentException("Failed requirement.");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final boolean m2365x3271d0aa(long j) {
        if (AbstractC0296x1378447b.coerceAtLeast(((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21)), 0) < this.corePoolSize) {
            int m2364xfbe0c504 = m2364xfbe0c504();
            if (m2364xfbe0c504 == 1 && this.corePoolSize > 1) {
                m2364xfbe0c504();
            }
            if (m2364xfbe0c504 > 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final boolean m2366x1378447b() {
        Symbol symbol;
        int i;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f2429xfbe0c504;
            long j = atomicLongFieldUpdater.get(this);
            Worker worker = this.workers.get((int) (2097151 & j));
            if (worker == null) {
                worker = null;
            } else {
                long j2 = (VpnProfile.MAX_EMBED_FILE_SIZE + j) & (-2097152);
                Object nextParkedWorker = worker.getNextParkedWorker();
                while (true) {
                    symbol = NOT_IN_STACK;
                    if (nextParkedWorker == symbol) {
                        i = -1;
                        break;
                    }
                    if (nextParkedWorker == null) {
                        i = 0;
                        break;
                    }
                    Worker worker2 = (Worker) nextParkedWorker;
                    i = worker2.getIndexInArray();
                    if (i != 0) {
                        break;
                    }
                    nextParkedWorker = worker2.getNextParkedWorker();
                }
                if (i >= 0 && atomicLongFieldUpdater.compareAndSet(this, j, j2 | i)) {
                    worker.setNextParkedWorker(symbol);
                }
            }
            if (worker == null) {
                return false;
            }
            if (Worker.f2432x9e171bf9.compareAndSet(worker, -1, 0)) {
                LockSupport.unpark(worker);
                return true;
            }
        }
    }

    public /* synthetic */ CoroutineScheduler(int i, int i2, long j, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? TasksKt.IDLE_WORKER_KEEP_ALIVE_NS : j, (i3 & 8) != 0 ? TasksKt.DEFAULT_SCHEDULER_NAME : str);
    }
}
